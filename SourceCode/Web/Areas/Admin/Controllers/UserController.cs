using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.Web.Helpers;
using Confluence.Blueprint.BusinessFacade;
using Framework.Common;
using Confluence.Blueprint.Web.ApplicationServices;
using Framework.Security;
using Confluence.Blueprint.Web.Controllers;
using System.IO;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class UserController : BaseController
    {
        List<Tuple<string, byte[]>> certs = new List<Tuple<string, byte[]>>();
        public ActionResult ManageUser()
        {
            return ManageUserDetail(0);
        }

        [RequiredRole("Administrators")]
        public ActionResult ManageUserDetail(int id)
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel orgmodel = SecurityProvider.GetDepartmentRoleGroups(id, OrgID);
            UserModel model = new UserFacade().GetUserDetails(id);
            model.Departments = orgmodel.Departments;
            model.UserID = id;
            ViewBag.CertificationsList = new List<string>() { "", "Certified IA", "Internal Training" };
            return View("ManageUser", model);
        }

        [HttpPost]
        public ActionResult ManageUserDetail(UserModel model)
        {
            try
            {
                new UserFacade().CreateOrModify(model);
                SaveCertificates(model.UserID);
                this.ShowMessage(Helpers.MessageType.Success, "Successfully updated User " + model.Name);
                return RedirectToAction("Index", "Admin");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            ViewBag.CertificationsList = new List<string>() { "", "Certified IA", "Internal Training" };
            return View("ManageUser", model);
        }
        [HttpPost]
        public void UploadCertificates()
        {
            if (Request.Files != null && Request.Files.Count > 0)
            {
                if (TempData["certs"] != null) certs = TempData["certs"] as List<Tuple<string, byte[]>>;
                for (int i = 0; i < Request.Files.Count; i++ )
                {
                    HttpPostedFileBase file = Request.Files[i];
                    certs.Add(new Tuple<string, byte[]>(Path.GetFileName(file.FileName), Utility.ReadData(file.InputStream)));
                }
            }
            TempData["certs"] = certs;
        }

        [HttpPost]
        public void RemoveCertificates(string file)
        {
            if (TempData["certs"] != null) certs = TempData["certs"] as List<Tuple<string, byte[]>>;
            Tuple<string, byte[]> temp = null;
            for (int i = 0; i < certs.Count; i++)
            {
                if (certs[i].Item1.Equals(file.Replace("\"","").Replace("'","")))
                {
                    temp = certs[i];
                    break;
                }
            }
            certs.Remove(temp);
            TempData["certs"] = certs;
        }
        private void SaveCertificates(int UserID)
        {
            string OrgID = Request.Cookies["OrgID"].Value;
            string rootpath = Server.MapPath("~/WorkSpaces/" + OrgID + "/Certs/" + UserID + "/");
            
            if (TempData["certs"] != null) certs = TempData["certs"] as List<Tuple<string, byte[]>>;
            for (int i = 0; i < certs.Count; i++)
            {
                Tuple<string, byte[]> temp = certs[i];
                var path = System.IO.Path.Combine(rootpath, temp.Item1);
                if (DocumentHelper.CreatePath(path))
                {
                    System.IO.File.WriteAllBytes(path, temp.Item2);
                }
            }
            
        }

        
        // GET: /Account/Register
        [RequiredRole("Administrators")]
        public ActionResult Register()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            int UserID = int.Parse(Request.Cookies["UserID"].Value);
            OrganizationModel orgmodel = SecurityProvider.GetDepartmentRoleGroups(UserID, OrgID);
            UserModel model = new UserModel();
            model.Departments = orgmodel.Departments;
            model.UserID = 0;
            ViewBag.CertificationsList = new List<string>() { "", "Certified IA", "Internal Training" };
            return View(model);
        }

        [HttpPost]
        public ActionResult Register(UserModel model)
        {
            try
            {
                model.RoleGroupName = "Users";
                // Generate temp passowrd
                
                model.TempPassword = Framework.Common.Utility.GetRandomPasswordString();
                if (ModelState.IsValid)
                {
                    int userid = new UserFacade().CreateOrModify(model);
                    SaveCertificates(userid);
                    if (userid > 0)
                    {
                        try
                        {
                            List<string> toAddress = new List<string>();
                            EmailMessage message = new EmailMessage() { To = model.UserEmail, Subject = "Blueprint Registration Information" };
                            string templatePath = System.Configuration.ConfigurationManager.AppSettings["ChangePasswordTemplate"];
                            if (!string.IsNullOrWhiteSpace(templatePath))
                            {
                                string body = System.IO.File.ReadAllText(templatePath);
                                message.Body = body.Replace("##Name##", model.Name).Replace("##UserEmail##", model.UserEmail).Replace("##TempPassword##", model.TempPassword);
                            }
                            new Email().Send(message);

            
                        }
                        catch (Exception e)
                        { }
                    }

                    this.ShowMessage(Helpers.MessageType.Success, "Successfully created User " + model.Name);
                    return RedirectToAction("Index", "Admin");
                    
                }
                
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
            }
            ViewBag.CertificationsList = new List<string>() { "", "Certified IA", "Internal Training" };
            return View(model);
        }

        public JsonResult ResetPassword(string email)
        {
            bool successStatus = false;
            try
            {
                UserModel userModel = new AccountService().GetUserDetails(email);
                userModel.TempPassword = Framework.Common.Utility.GetRandomPasswordString();
                userModel.Password = "";
                int userid = new UserFacade().CreateOrModify(userModel);
                successStatus = userid > 0 ? true : false;
                if (successStatus)
                {
                    try
                    {
                        List<string> toAddress = new List<string>();
                        EmailMessage message = new EmailMessage() { To = userModel.UserEmail, Subject = "Blueprint Registration Information" };
                        string templatePath = System.Configuration.ConfigurationManager.AppSettings["ChangePasswordTemplate"];
                        if (!string.IsNullOrWhiteSpace(templatePath))
                        {
                            string body = System.IO.File.ReadAllText(templatePath);
                            message.Body = body.Replace("##Name##", userModel.Name).Replace("##UserEmail##", userModel.UserEmail).Replace("##TempPassword##", userModel.TempPassword);
                        }
                        new Email().Send(message);
                    }
                    catch (Exception e)
                    { }
                }

            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            return this.Json("{\"Success\":\"" + successStatus + "\"}");

        }
        public JsonResult Delete(string email)
        {
            bool successStatus = false;
            try
            {
                successStatus = new UserFacade().Delete(email);
            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            return this.Json("{\"Success\":\"" + successStatus + "\"}");

        }
        public JsonResult SearchUser(string UserName)
        {
            var searchedlist = new List<Tuple<string, string>>();
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            searchedlist = GetUsersFilteredUserList(OrgID, UserName);
                       
            return Json(new { Items = searchedlist });
        }

        private List<Tuple<string, string>> GetUsersFilteredUserList(int orgid, string username)
        {
            List<Tuple<string, string>> list = new List<Tuple<string, string>>();
            List<UserModel>  userList = new AccountService().GetUserDetailsByOrganizationID(orgid, username);
            foreach (UserModel user in userList)
            {
                list.Add(new Tuple<string, string>(user.Name, user.UserEmail));
            }

            return list;
        }
    }
}
