using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Confluence.Blueprint.Web.Handlers
{
    /// <summary>
    /// Summary description for MhtHandler
    /// </summary>
    public class MhtHandler : IHttpHandler
    {
        public MhtHandler()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public bool IsReusable
        {
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "message/rfc822";
            context.Response.Write(System.IO.File.ReadAllText(context.Server.MapPath(context.Request.FilePath)));
        }
    }
}