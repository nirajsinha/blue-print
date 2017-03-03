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
using Framework.Security;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class DepartmentController : Controller
    {

        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel model = new OrganizationService().GetOrganizationByID(OrgID);
            return View(model);
        }
        //
        // GET: /Department/1
        [HttpGet]
        public ActionResult Details(int id)
        {
            DepartmentModel model = new DepartmentService().GetDepartmentDetails(id);
            return View("Modify", model);
            
        }
        [RequiredRole("Administrators")]
        public ActionResult Create()
        {
            DepartmentModel model = new DepartmentModel();
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            model.OrganizationID = OrgID;
            return View(model);
        }
        [RequiredRole("Administrators")]
        public JsonResult Save(DepartmentModel model)
        {
            int newDeptId = 0;
            try
            {
                if (ModelState.IsValid)
                {
                    if (model.OrganizationID == 0)
                        throw new ApplicationException("Please create organization before creating departments.");
                    newDeptId = new DepartmentFacade().CreateOrModify(model);

                }
            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            string jsonResult = "{\"ID\":\"" + newDeptId + "\",\"Name\": \"" + model.DepartmentName + "\"}";
            return this.Json(jsonResult);
            
        }
        [RequiredRole("Administrators")]
        public ActionResult Delete()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel model = new OrganizationService().GetOrganizationByID(OrgID);
            return View("Delete", model);
        }
        [HttpPost]
        public JsonResult Delete(string deptIds, string reason)
        {
            bool successStatus = false;
            try
            {
                successStatus = new DepartmentFacade().Delete(deptIds, reason);
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
