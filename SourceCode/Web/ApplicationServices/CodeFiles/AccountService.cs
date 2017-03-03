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
    public class AccountService : WebService
    {
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public UserModel GetUserDetails(string email)
        {
            try
            {
                return new UserFacade().GetUserDetails(email);
            }
            catch (Exception)
            {
                throw;
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public List<UserModel> GetUserDetailsByOrganizationID(int orgid, string userName = "")
        {
            try
            {
                return new UserFacade().GetUserDetailsByOrganizationID(orgid, userName);
            }
            catch (Exception)
            {
                throw;
            }
        }
        
    }


}
