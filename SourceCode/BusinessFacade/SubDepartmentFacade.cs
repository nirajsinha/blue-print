using System;
using System.Collections.Generic;
using System.Globalization;
using Confluence.Blueprint.Models;
using Framework.Data;
using System.Data;
namespace Confluence.Blueprint.BusinessFacade
{

    public class SubDepartmentFacade
    {
        public int CreateOrModify(SubDepartmentModel model)
        {

            int deptId = (int)Db.ExecuteScalar("prcSaveSubDepartment", CommandType.StoredProcedure,
                        Db.CreateParameter("@DepartmentID", model.DepartmentID),
                        Db.CreateParameter("@SubDepartmentID", model.SubDepartmentID),
                        Db.CreateParameter("@SubDepartmentName", model.SubDepartmentName),
                        Db.CreateParameter("@SubDepartmentAbbreviate", model.SubDepartmentAbbreviate),
                        Db.CreateParameter("@HODName", model.HODName),
                        Db.CreateParameter("@LLNumber", model.LLNumber),
                        Db.CreateParameter("@MobileNumber", model.MobileNumber),
                        Db.CreateParameter("@EmailId", model.EmailId),
                        Db.CreateParameter("@ReviewerName", model.ReviewerName),
                        Db.CreateParameter("@ReviewerLLNumber", model.ReviewerLLNumber),
                        Db.CreateParameter("@ReviewerMobileNumber", model.ReviewerMobileNumber),
                        Db.CreateParameter("@ReviewerEmailID", model.ReviewerEmailID),
                        Db.CreateParameter("@IsHODApprover", model.IsHODApprover ? 1 : 0),
                        Db.CreateParameter("@ApproverName", model.ApproverName),
                        Db.CreateParameter("@ApproverLLNumber", model.ApproverLLNumber),
                        Db.CreateParameter("@ApproverMobileNumber", model.ApproverMobileNumber),
                        Db.CreateParameter("@ApproverEmailID", model.ApproverEmailID)
                        );
            return deptId;

        }
        public bool Delete(string ids, string reason)
        {

            int success = (int)Db.ExecuteScalar("prcDeleteSubDepartments", CommandType.StoredProcedure,
                        Db.CreateParameter("@SubDepartmentIDs", ids),
                        Db.CreateParameter("@DeleteReason", reason)
                        );
            return success == 1 ? true : false;
        }

        public SubDepartmentModel GetSubDepartmentDetail(int deptid)
        {
            SubDepartmentModel model = new SubDepartmentModel();
            DataSet ds = Db.ExecuteDataSet("prcGetSubDepartmentDetails", CommandType.StoredProcedure,
                                           Db.CreateParameter("@SubDepartmentID", deptid)
                                           );
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                IList<SubDepartmentModel> sdInfo = Db.MapReader<SubDepartmentModel>(ds.Tables[0]);
                model = sdInfo[0];
            }

            return model;
        }

    }

    
}
