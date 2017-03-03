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
using Confluence.Blueprint.Web.Controllers;
using Framework.Security;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class DocumentMasterController : BaseController
    {

        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            DocumentMasterModel model = new DocumentMasterFacade().GetMasterData(OrgID);
            
            return View(model);
            
        }
        
        [HttpPost]
        public ActionResult Index(DocumentMasterModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    bool success = new DocumentMasterFacade().Save(model);
                    if (success)
                    {
                        this.ShowMessage(Helpers.MessageType.Success, "Master data configured successfully.");
                        return RedirectToAction("Index", "Admin");
                    }
                }
                
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMassage(ex.Message);
            }
            return View(model);           
        }

        
        
    }
}
