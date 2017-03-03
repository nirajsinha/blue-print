using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.Web.ApplicationServices;
using Framework.Security;

namespace Confluence.Blueprint.Web.Controllers
{
    public class HomeController : Controller
    {
        [Authorize]
        public ActionResult Default()
        {
            if (Request.Cookies["OrgID"] == null)
                return RedirectToAction("LogOn", "Account");
            return View();

        }
        
        public ActionResult Index()
        {
            return PartialView();
        }
        [Authorize]
        public ActionResult About()
        {
            LicenseModel model = SecurityBase.GetLicense();
            return View(model);
        }

        public ActionResult AccessDenied(string ReturnUrl)
        {
            ViewBag.ReturnUrl = ReturnUrl;
            return View();
        }
    }
}
