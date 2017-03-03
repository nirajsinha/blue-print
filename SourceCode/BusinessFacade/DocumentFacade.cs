using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using Framework.Data;
namespace Confluence.Blueprint.BusinessFacade
{
    public class DocumentFacade
    {

        public Document Save(Document doc)
        {
            // Generates version and next version from configuration and saves the document
            
            DataSet ds = Db.ExecuteDataSet("prcSaveDocument", CommandType.StoredProcedure,
                            Db.CreateParameter("@DepartmentID", doc.DepartmentID),
                            Db.CreateParameter("@SubDepartmentID", doc.SubDepartmentID),
                            Db.CreateParameter("@DocumentType", doc.DocumentType),
                            Db.CreateParameter("@DocumentName", doc.DocumentName),
                            Db.CreateParameter("@FileType", doc.FileType),
                             Db.CreateParameter("@CreatedBy", doc.CreatedBy)
                            );
           
            List<Document> docInfo = new List<Document>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<Document>(ds.Tables[0]).ToList();
            }
            if (docInfo.Count > 0) return docInfo[0];
            return new Document();

        }
        
        public Document GetDocumentDetails(int DocID)
        {
            Document doc = new Document();
            
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentDetails", CommandType.StoredProcedure,
                        Db.CreateParameter("@DocumentID", DocID)
                        );
            List<Document> docInfo = new List<Document>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<Document>(ds.Tables[0]).ToList();
            }
            if (docInfo.Count > 0) doc = docInfo[0];
            
            return doc;
        }

        public DocumentChangeRequest GetDocumentChangeRequest(int docid, int dcr)
        {
            DocumentChangeRequest doc = new DocumentChangeRequest();
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentChangeRequest", CommandType.StoredProcedure,
                        Db.CreateParameter("@DocumentID", docid),
                        Db.CreateParameter("@DocumentChangeRequestID", dcr)
                        );
            List<DocumentChangeRequest> docInfo = new List<DocumentChangeRequest>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<DocumentChangeRequest>(ds.Tables[0]).ToList();
            }
            if (docInfo.Count > 0) doc = docInfo[0];

            return doc;
        }

        public List<DocumentChangeRequest> GetDocumentChangeRequestList(int orgid)
        {
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentChangeRequestList", CommandType.StoredProcedure,
                 Db.CreateParameter("@OrganizationID", orgid));
            List<DocumentChangeRequest> docInfo = new List<DocumentChangeRequest>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<DocumentChangeRequest>(ds.Tables[0]).ToList();
            }

            return docInfo;
        }

        public int SaveChangeRequest(DocumentChangeRequest doc, string userEmail, int OrgID)
        {
            // Generates version and next version from configuration and saves the document
            try
            {
                int workflowId = 3; // waiting for approval
                if (!string.IsNullOrWhiteSpace(doc.Comment1)) workflowId = 4; //approved
                if (!string.IsNullOrWhiteSpace(doc.Comment3)) 
                {
                    workflowId = 6; //published
                    doc.IsPublished = "1";
                }
                
                int reqNumber = Db.ExecuteNonQuery("prcSaveDocumentChangeRequest", CommandType.StoredProcedure,
                                Db.CreateParameter("@DocumentChangeRequestID", doc.DocumentChangeRequestID),
                                Db.CreateParameter("@RequestNumber", doc.RequestNumber),
                                Db.CreateParameter("@DocumentID", doc.DocumentID),
                                Db.CreateParameter("@DepartmentID", doc.DepartmentID),
                                Db.CreateParameter("@Detail", doc.Detail),
                                Db.CreateParameter("@Reason", doc.Reason),
                                 Db.CreateParameter("@Comment1", doc.Comment1),
                                 Db.CreateParameter("@Comment2", doc.Comment2),
                                 Db.CreateParameter("@Comment3", doc.Comment3),
                                 Db.CreateParameter("@Comment1By", doc.Comment1By),
                                 Db.CreateParameter("@Comment2By", doc.Comment2By),
                                 Db.CreateParameter("@Comment3By", doc.Comment3By),
                                 Db.CreateParameter("@EffectiveDate", DateTime.ParseExact(doc.EffectiveDate,"dd-MM-yyyy", null)),
                                 Db.CreateParameter("@IsActive", 1),
                                 Db.CreateParameter("@CreatedBy", userEmail),
                                 Db.CreateParameter("@EffectedDocumentIDs", doc.EffectedDocumentIDs.TrimEnd(',')),
                                 Db.CreateParameter("@WorkflowStatusID", workflowId),
                                 Db.CreateParameter("@IsPublished", doc.IsPublished),
                                 Db.CreateParameter("@OrganizationID", OrgID)
                                );

                return reqNumber;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool CheckoutDocument(int DocID, bool checkStatus, string checkedBy)
        {
            Document doc = new Document();

            DataSet ds = Db.ExecuteDataSet("prcCheckOutDocument", CommandType.StoredProcedure,
                        Db.CreateParameter("@DocumentID", DocID),
                        Db.CreateParameter("@CheckOut", checkStatus),
                        Db.CreateParameter("@CheckedBy", checkedBy)
                        );
            List<Document> docInfo = new List<Document>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<Document>(ds.Tables[0]).ToList();
            }
            if (docInfo.Count > 0) doc = docInfo[0];
            return !doc.CheckInStatus;
        }
        public bool DeleteDocument(int DocID, string updatedBy)
        {
            bool success = false;
            DataSet ds = Db.ExecuteDataSet("prcDeleteDocument", CommandType.StoredProcedure,
                        Db.CreateParameter("@DocumentID", DocID),
                        Db.CreateParameter("@ModifiedBy", updatedBy)
                        );

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                success = ds.Tables[0].Rows[0][0].ToString().Equals("1")? true:false;
            }
            
            return success;
        }
        public List<Document> GetDocumentList(int orgID)
        {
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentList", CommandType.StoredProcedure,
                        Db.CreateParameter("@OrgID", orgID)
                        );
            List<Document> docInfo = new List<Document>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<Document>(ds.Tables[0]).ToList();
            }
            return docInfo;
        }

        public List<Document> GetDocumentDetailsList(int orgID, int userId, int deptID = 0, int subDeptID = 0)
        {
            List<Document> doclist = new List<Document>();
            List<Document> docInfo = GetDocumentList(orgID);
            if (deptID > 0)
                docInfo = docInfo.FindAll(delegate(Document s) { return s.DepartmentID == deptID; });
            if (subDeptID > 0)
                docInfo = docInfo.FindAll(delegate(Document s) { return (s.DepartmentID == deptID && s.SubDepartmentID == subDeptID); });


            foreach (Document doc in docInfo)
            {
                Document doc1 = GetDocumentDetails(doc.DocumentID);
                if (doc1 != null && doc1.IsActive)
                {
                    bool authorized = ValidateDocumentPermission(userId, doc1.DocumentID);
                    if(authorized)
                    {
                        doc1.CreatedBy = doc.CreatedBy; // preserve old values
                        doclist.Add(doc1);
                    }
                }
            }
            
            return doclist;
        }
        public List<Document> GetDocumentHistory(int docid)
        {
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentHistory", CommandType.StoredProcedure,
                        Db.CreateParameter("@DocumentID", docid)
                        );
            List<Document> docInfo = new List<Document>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docInfo = Db.MapReader<Document>(ds.Tables[0]).ToList();
            }
            return docInfo;
        }
        public bool ExecuteDocumentWorkflow(int docid, string nextWorkflowStatus = "")
        {
            try
            {
                Db.ExecuteNonQuery("prcExecuteWorkflow", CommandType.StoredProcedure,
                            Db.CreateParameter("@DocumentID", docid),
                            Db.CreateParameter("@NextWorkflowStatus", nextWorkflowStatus)
                            );

                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool ValidateDocumentPermission(int userid, int docid)
        {
            try
            {
                if (userid == 0) return true;
                int success = (int)Db.ExecuteScalar("prcValidateDocumentPermission", CommandType.StoredProcedure,
                            Db.CreateParameter("@UserID", userid),
                            Db.CreateParameter("@DocumentID", docid)
                            );

                return Convert.ToBoolean(success);
            }
            catch
            {
                throw;
            }
        }
		public string GenerateChangeRequestNumber(int deptid)
        {
            try
            {
                return Db.ExecuteScalar("prcGenerateChangeRequestNumber", CommandType.StoredProcedure,
                            Db.CreateParameter("@DepartmentID", deptid)
                            ).ToString();
            }
            catch
            {
                throw;
            }
        }

    }
    
}