using System;
using System.Collections.Generic;
using System.Globalization;
using Confluence.Blueprint.Models;
using System.Data;
using Confluence.Blueprint.BusinessFacade;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Script.Serialization;

namespace Confluence.Blueprint.Web.ApplicationServices
{
    
    [ScriptService]
    [WebService(Namespace = "http://tempuri2.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class CommonService : WebService
    {
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public UserDashboard GetUserDashboard(int UserID)
        {
            try
            {
                return new CommonFacade().GetDashboardData(UserID);
            }
            catch (Exception)
            {
                throw;
            }
        }
        
    }


}
