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
    public class RedirectController : BaseController
    {
        public RedirectResult Index(string Url, string MessageType, string Message)
        {
            Helpers.MessageType mType = (Helpers.MessageType) Enum.Parse(typeof(Helpers.MessageType), MessageType, true);
            this.ShowMessage(mType, Message);
            return Redirect(Url);
        }


    }
    
}
