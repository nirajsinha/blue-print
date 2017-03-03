using System;
using System.Collections.Generic;
using System.Globalization;
using Confluence.Blueprint.Models;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Script.Serialization;
using Confluence.Blueprint.BusinessFacade;
namespace Confluence.Blueprint.Web.ApplicationServices
{
    [ScriptService]
    [WebService(Namespace = "http://tempuri2.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class SubDepartmentService : WebService
    {
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public SubDepartmentModel GetSubDepartmentDetails(int subdeptid)
        {
            return new SubDepartmentFacade().GetSubDepartmentDetail(subdeptid);
        }
        
    }

    
}
