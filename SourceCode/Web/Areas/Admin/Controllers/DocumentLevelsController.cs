using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.BusinessFacade;
using Framework.Security;

namespace Confluence.Blueprint.Web.Areas.Admin.Controllers
{
    public class DocumentLevelsController : Controller
    {

        //
        // GET: /Account
        [RequiredRole("Administrators")]
        public ActionResult Index()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult Save(string json)
        {
            List<Level> levels = (List<Level>)Confluence.Blueprint.Web.Helpers.JsonHelper.JsonDeserialize(json, typeof(List<Level>));
            bool successStatus = false;
            try
            {
                successStatus = new DocumentLevelsFacade().Save(levels);
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
