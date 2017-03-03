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

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            return View();
        }
              
    }
}
