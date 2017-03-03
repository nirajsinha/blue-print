using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System.Web;

namespace Framework.Security
{
    public class RequiredRoleAttribute : AuthorizeAttribute
    {
        private string _GroupName = string.Empty;

        public RequiredRoleAttribute(string GroupName)
        {
            _GroupName = GroupName;
        }
        
        //public bool CheckUserAuthorization
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
                        
            var isAuthorized = base.AuthorizeCore(httpContext);
            if (!isAuthorized)
            {
                // The user is not authorized => no need to continue
                return false;
            }
            
            // At this stage we know that the user is authorized => we can fetch the username
            string username = httpContext.User.Identity.Name;

            string userGroup = httpContext.Request.Cookies["RoleGroup"] == null ? "" : httpContext.Request.Cookies["RoleGroup"].Value;
            if (userGroup.Contains(_GroupName))
            {
                return true;
            }
            //// All that's left is to verify if the current user is authorized for action
            //var IsRoleAuthorized = IsUserRoleAuthorized(username);
            //if (IsRoleAuthorized) return true;

            // string returnUrl = httpContext.Request.AppRelativeCurrentExecutionFilePath;
            // Redirect to access denied if user is not authorized for the role
            httpContext.Response.Redirect("~/Home/AccessDenied"); //?ReturnUrl=" + httpContext.Server.UrlDecode(returnUrl));

            return false;
        }

        //private bool IsUserRoleAuthorized(string username)
        //{

        //    // query the backend to perform the necessary verifications
        //    return SecurityBase.IsUserRoleAuthorized( username);
        //}
    }
}
