using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Confluence.Blueprint.Models;
using Framework.Security;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class SecurityController : Controller
    {
        //
        // GET: /Security/
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            RoleGroupConfigurationModel model = SecurityProvider.GetRoleGroupConfiguration(OrgID);
            return View(model);
        }

        //
        // POST: /Security/
        [RequiredRole("Administrators")]
        [HttpPost]
        public ActionResult Index(RoleGroupConfigurationModel model)
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            if (ModelState.IsValid)
            {
                bool success = SecurityProvider.CreateOrModify(model, OrgID);
            }
            return View(model);
        }
        
    }


}
