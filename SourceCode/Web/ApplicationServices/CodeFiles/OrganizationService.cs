using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Script.Serialization;
using Confluence.Blueprint.BusinessFacade;
namespace Confluence.Blueprint.Web.ApplicationServices
{
    [ScriptService]
    [WebService(Namespace="http://tempuri2.org/")]
    [WebServiceBinding(ConformsTo =WsiProfiles.BasicProfile1_1)]
    public class OrganizationService : WebService
    {
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public OrganizationModel GetOrganizationByUserEmail(string userEmail)
        {
            return new OrganizationFacade().GetOrganization(userEmail);
        }
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public OrganizationModel GetOrganizationByID(int orgid)
        {
            return new OrganizationFacade().GetOrganization(orgid);
        }
       
    }
    
}