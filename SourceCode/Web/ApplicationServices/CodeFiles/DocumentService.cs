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
    public class DocumentService : WebService
    {
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public Document GetDocumentDetails(int docid)
        {
            return new DocumentFacade().GetDocumentDetails(docid);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public List<Document> GetDocuments(int orgID, int deptID = 0, int subDeptID = 0)
        {
            List<Document> docList = new DocumentFacade().GetDocumentList(orgID);
            if(deptID > 0)
                docList = docList.FindAll(delegate(Document s) { return s.DepartmentID == deptID; });
            if (subDeptID > 0)
                docList = docList.FindAll(delegate(Document s) { return (s.DepartmentID == deptID && s.SubDepartmentID == subDeptID); });
            
            return docList;
        }

                
    }
    
    
}
