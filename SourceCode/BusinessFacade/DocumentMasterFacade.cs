using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using Framework.Data;
namespace Confluence.Blueprint.BusinessFacade
{
    public class DocumentMasterFacade
    {

        public bool Save(DocumentMasterModel model)
        {
            int DocMasterID = 0;

            DocMasterID = (int)Db.ExecuteScalar("prcSaveDocumentMaster", CommandType.StoredProcedure,
                               Db.CreateParameter("@DocumentMasterID", model.DocumentMasterID),
	                           Db.CreateParameter("@OrganizationID", model.OrganizationID),
	                           Db.CreateParameter("@IssueApplicable", model.IssueApplicable),
	                           Db.CreateParameter("@VersionOrRevision", model.VersionOrRevision),
	                           Db.CreateParameter("@InitialNumber", model.InitialNumber),
	                           Db.CreateParameter("@IncrementBy", model.IncrementBy),
	                           Db.CreateParameter("@DocumentName1", model.DocumentName1),
	                           Db.CreateParameter("@DocumentType1", model.DocumentType1),
	                           Db.CreateParameter("@DocumentName2", model.DocumentName2),
	                           Db.CreateParameter("@DocumentType2", model.DocumentType2),
	                           Db.CreateParameter("@DocumentName3", model.DocumentName3),
	                           Db.CreateParameter("@DocumentType3", model.DocumentType3),
	                           Db.CreateParameter("@DocumentName4", model.DocumentName4),
	                           Db.CreateParameter("@DocumentType4", model.DocumentType4),
	                           Db.CreateParameter("@SerialNumber", model.SerialNumber)
                               );

            return DocMasterID > 0 ? true : false;
        }
        private int GetEnumType(string value)
        {

            DocumentNumberingTypes type = (DocumentNumberingTypes)Enum.Parse(typeof(DocumentNumberingTypes), value);
            return (int)type;
        }
        public DocumentMasterModel GetMasterData(int OrgID)
        {
            DocumentMasterModel model = new DocumentMasterModel();
            model.OrganizationID = OrgID;

            DataSet ds = Db.ExecuteDataSet("prcGetDocumentMasterDetails", CommandType.StoredProcedure,
                        Db.CreateParameter("@OrganizationID", OrgID)
                        );
            List<DocumentMasterModel> docMasterInfo = new List<DocumentMasterModel>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docMasterInfo = Db.MapReader<DocumentMasterModel>(ds.Tables[0]).ToList();
            }
            if (docMasterInfo.Count > 0) model = docMasterInfo[0];
            return model;
        }

    }
    
}