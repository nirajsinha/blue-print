using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.Web.ApplicationServices;
using Framework.Security;
using Confluence.Blueprint.Web.Controllers;

namespace Confluence.Blueprint.Web.Controllers
{

    public class BaseController : System.Web.Mvc.Controller
    {
        protected override RedirectResult Redirect(string url)
        {
            return new AjaxAwareRedirectResult(url);
        }

        internal string GetTerminology(int id)
        {
            string Terminology = "Department";
            switch (id)
            {
                case 2:
                    Terminology = "Process";
                    break;
                case 3:
                    Terminology = "Group";
                    break;
            }
            return Terminology;
        }

    }

    public class AjaxAwareRedirectResult : RedirectResult
    {
        public AjaxAwareRedirectResult(string url): base(url)
        {
            
        }

        public override void ExecuteResult(ControllerContext context)
        {
            if (context.RequestContext.HttpContext.Request.IsAjaxRequest())
            {
                string destinationUrl = UrlHelper.GenerateContentUrl(Url, context.HttpContext);

                JavaScriptResult result = new JavaScriptResult()
                {
                    Script = "window.location='" + destinationUrl + "';"
                };
                result.ExecuteResult(context);
            }
            else
                base.ExecuteResult(context);
        }
    }

      
}
