using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.BusinessFacade;
using Confluence.Blueprint.Web.ApplicationServices;
using System.Reflection;

namespace Confluence.Blueprint.Web.Controllers.Account
{

    public class AccountController : BaseController
    {
        
        //
        // GET: /Account
        public ActionResult Index()
        {
            return View();
        }
        
        //
        // GET: /Account/LogOn
        [HttpGet]
        public ActionResult LogOn(string returnUrl)
        {
            var model = new LogOnModel { ReturnUrl = returnUrl };
            string licInfo = Framework.Security.SecurityBase.GetLicense().LicenseError;
            model.LicenseMessage = licInfo;
            return PartialView(model);

        }
    
        //
        // POST: /Account/LogOn

        [HttpPost]
        public virtual ActionResult LogOn(LogOnModel model)
        {
            
            try
            {
                if (string.IsNullOrWhiteSpace(model.LicenseMessage))
                {
                    if (ModelState.IsValid)
                    {
                        string returnUrl = model.ReturnUrl;
                        OrganizationModel org = new OrganizationService().GetOrganizationByUserEmail(model.Email);
                        UserModel userModel = new AccountService().GetUserDetails(model.Email);
                        
                        // Initial null values for fail safe
                        if (userModel.Password == null) userModel.Password = string.Empty;
                        if (userModel.TempPassword == null) userModel.TempPassword = string.Empty;

                        if (userModel.UserEmail != null && userModel.Password != null && userModel.TempPassword != null )
                        {
                            if (userModel.UserEmail.Equals(model.Email) && (userModel.Password.Equals(model.Password) || userModel.TempPassword.Equals(model.Password)))
                            {
                                
                                Response.Cookies.Add(new HttpCookie("UserID", userModel.UserID.ToString()) { Expires = DateTime.MaxValue });
                                string OrgID = "0";
                                if (userModel.OrganizationID > 0) OrgID = userModel.OrganizationID.ToString();
                                Response.Cookies.Add(new HttpCookie("OrgID", OrgID) { Expires = DateTime.MaxValue });
                                Response.Cookies.Add(new HttpCookie("Terminology", GetTerminology(org.TerminologyID)) { Expires = DateTime.MaxValue });
                                Response.Cookies.Add(new HttpCookie("UserEmail", userModel.UserEmail) { Expires = DateTime.MaxValue });
                                Response.Cookies.Add(new HttpCookie("UserName", userModel.Name) { Expires = DateTime.MaxValue });
                                Response.Cookies.Add(new HttpCookie("RoleGroup", userModel.RoleGroupName) { Expires = DateTime.MaxValue });
                                FormsAuthentication.SetAuthCookie(model.Email, model.RememberMe);
                                if (!string.IsNullOrWhiteSpace(userModel.TempPassword))
                                {
                                    return RedirectToAction("ChangePassword");
                                }
                                else if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/") && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                                {
                                    return Redirect(returnUrl);
                                }
                                else
                                {
                                    return RedirectToAction("Default", "Home");
                                }
                            }
                            else
                            {
                                ModelState.AddModelError("","Invalid credentials. Please try again!");
                            }
                        }
                        else
                        {
                            ModelState.AddModelError("", "Invalid credentials. Please try again!");
                        }
                    }
                }
                

            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            
            // If we got this far, something failed, redisplay form
            return PartialView(model);
        }
        //
        // GET: /Account/LogOff

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            // clear all system generated cookies
            Response.Cookies.Clear();

            // Fail safe. Expire all application cookies 
            if (Response.Cookies["UserID"] != null) Response.Cookies["UserID"].Expires = DateTime.Now.AddYears(-30);
            if (Response.Cookies["OrgID"] != null) Response.Cookies["OrgID"].Expires = DateTime.Now.AddYears(-30);
            if (Response.Cookies["UserEmail"] != null) Response.Cookies["UserEmail"].Expires = DateTime.Now.AddYears(-30);
            if (Response.Cookies["UserName"] != null) Response.Cookies["UserName"].Expires = DateTime.Now.AddYears(-30);
            if (Response.Cookies["RoleGroup"] != null) Response.Cookies["RoleGroup"].Expires = DateTime.Now.AddYears(-30);
                        
            this.ShowMessage(Helpers.MessageType.Warning, "You have been successfully logged out from system. Please close the browser to ensure all traces are deleted.");
            
            return RedirectToAction("Index", "Home");
        
        }
        //
        // GET: /Account/ChangePassword

        [Authorize]
        public ActionResult ChangePassword()
        {
            return View();
        }

        //
        // POST: /Account/ChangePassword

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {

                // ChangePassword will throw an exception rather
                // than return false in certain failure scenarios.

                bool changePasswordSucceeded = new LogOnFacade().ChangePassword(
                            int.Parse(Request.Cookies["UserID"].Value),
                            model.NewPassword
                            );
                if (changePasswordSucceeded)
                {
                    this.ShowMessage(Helpers.MessageType.Success, "Password changed successfully.");
                    return RedirectToAction("Default", "Home");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ChangePassword

        [Authorize]
        public ActionResult EditProfile()
        {
            string email = Request.Cookies["UserEmail"].Value;
            UserModel userModel = new AccountService().GetUserDetails(email);
            return View(userModel);
        }
        [HttpPost]
        public JsonResult EditProfile(UserModel model)
        {
            bool successStatus = false;
            try
            {
                int uid = int.Parse(Request.Cookies["UserID"].Value);
                model.UserID = uid;
                int userid = new UserFacade().CreateOrModify(model);
                successStatus = userid > 0 ? true : false;
            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            string jsonResult = "{\"Success\": \"" + successStatus.ToString() + "\"}";
            return this.Json(jsonResult);
        }

        

    }
}
