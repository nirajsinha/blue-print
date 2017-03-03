using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using System.IO;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.BusinessFacade;
using Confluence.Blueprint.Web.ApplicationServices;
using Framework.Security;
using Framework.Common;
using Confluence.Blueprint.Web.Controllers;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class OrganizationController : BaseController
    {

        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            string user = HttpContext.User.Identity.Name;
            OrganizationModel model = new OrganizationService().GetOrganizationByUserEmail(user);
            if (model.OrganizationID > 0)
            {
                if (System.IO.File.Exists(Server.MapPath("~/images/") + model.OrganizationID + "_corporate_logo.png"))
                    model.CorporateLogoUploaded = true;
                return View("Modify", model);
            }

            return View(model);
        }
        [RequiredRole("Administrators")]
        public ActionResult Create()
        {
            OrganizationModel model = new OrganizationModel();
            return View(model);
        }
        [RequiredRole("Administrators")]
        public JsonResult Save(int OrgID, string OrgName, string OrgAbbr, string Addr, string ContactNo, string FaxNo, string MDEmail, string WebSite, string CorporateAddress, string OfficePhoneNumber, int TerminologyID)
        {

            int newOrgId = 0;
            try
            {
                if (ModelState.IsValid)
                {
                    OrganizationModel model = new OrganizationModel()
                    {
                        OrganizationID = OrgID,
                        OrganizationName = OrgName,
                        OrganizationAbbreviate = OrgAbbr,
                        Address = Addr,
                        ContactNumber = ContactNo,
                        FaxNumber = FaxNo,
                        MDEmail = MDEmail,
                        WebSite = WebSite,
                        CorporateAddress = CorporateAddress,
                        OfficePhoneNumber = OfficePhoneNumber,
                        TerminologyID = TerminologyID
                    };
                    if (Request.Cookies["UserID"] == null || Request.Cookies["UserID"].Value.Length == 0)
                        throw new ApplicationException("Session expired. Please logon and try again!");
                    int UserID = int.Parse(Request.Cookies["UserID"].Value);
                    
                    newOrgId = new OrganizationFacade().CreateOrModify(model, UserID);
                                        
                    Response.Cookies.Add(new HttpCookie("Terminology", GetTerminology(TerminologyID)) { Expires = DateTime.MaxValue });
                    
                    if (TempData["TempLogo"] != null && !string.IsNullOrWhiteSpace(TempData["TempLogo"].ToString()))
                    {
                        try
                        {
                            string logoPath = Server.MapPath("~/images/") + newOrgId + "_corporate_logo.png";
                            System.IO.File.Copy(TempData["TempLogo"].ToString(), logoPath, true);
                            System.IO.File.Delete(TempData["TempLogo"].ToString());
                        }
                        catch { }
                    }
                }
            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            string jsonResult = "{\"OrgID\":\"" + newOrgId + "\",\"OrgName\": \"" + OrgName + "\"}";
            return this.Json(jsonResult);
            
        }

        [HttpPost]
        public void Modify()
        {
            if (Request.Files != null && Request.Files.Count > 0)
            {
                HttpPostedFileBase file = Request.Files[0];
                var fileName = Path.GetFileName(file.FileName);
                // Save file
                string filePath = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString()+ new FileInfo(fileName).Extension);
                
                System.IO.File.WriteAllBytes(filePath, Utility.ReadData(file.InputStream));
                TempData["TempLogo"] = filePath;
            }

        }

        
    }
}
