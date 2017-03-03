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
    public class SubDepartmentController : Controller
    {

        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel model = new OrganizationService().GetOrganizationByID(OrgID);
            foreach (DepartmentModel dept in model.Departments)
            {
                DepartmentModel temp = new DepartmentService().GetDepartmentDetails(dept.DepartmentID);
                dept.SubDepartments = temp.SubDepartments;
            }
            return View(model);
        }
        //
        // GET: /Department/1
        [HttpGet]
        public ActionResult Details(int id)
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel orgmodel = new OrganizationService().GetOrganizationByID(OrgID);
            ViewBag.Departments = orgmodel.Departments;

            SubDepartmentModel model = new SubDepartmentService().GetSubDepartmentDetails(id);
            return View("Modify", model);

        }
        [RequiredRole("Administrators")]
        public ActionResult Create()
        {

            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel orgmodel = new OrganizationService().GetOrganizationByID(OrgID);
            ViewBag.Departments = orgmodel.Departments;
            
            SubDepartmentModel model = new SubDepartmentModel();
            model.SubDepartmentID = 0;
            return View(model);
        }
        [RequiredRole("Administrators")]
        public JsonResult Save(SubDepartmentModel model)
        {
            int newDeptId = 0;
            try
            {
                if (ModelState.IsValid)
                {
                    if (model.DepartmentID == 0)
                        throw new ApplicationException("Please create department before creating sub departments.");
                    newDeptId = new SubDepartmentFacade().CreateOrModify(model);

                }
            }
            catch (Exception ex)
            {
                return this.Json("{\"Error\": \"" + ex.Message + "\"}");
            }
            string jsonResult = "{\"ID\":\"" + newDeptId + "\",\"Name\": \"" + model.SubDepartmentName + "\"}";
            return this.Json(jsonResult);

        }
        [RequiredRole("Administrators")]
        public ActionResult Delete()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            OrganizationModel model = new OrganizationService().GetOrganizationByID(OrgID);
            foreach (DepartmentModel dept in model.Departments)
            {
                DepartmentModel temp = new DepartmentService().GetDepartmentDetails(dept.DepartmentID);
                dept.SubDepartments = temp.SubDepartments;
            }
            return View("Delete", model);
        }
        [HttpPost]
        public JsonResult Delete(string deptIds, string reason)
        {
            bool successStatus = false;
            try
            {
                successStatus = new SubDepartmentFacade().Delete(deptIds, reason);
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
