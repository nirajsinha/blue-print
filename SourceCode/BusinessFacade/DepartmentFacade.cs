using System;
using System.Collections.Generic;
using System.Globalization;
using Confluence.Blueprint.Models;
using System.Collections.Generic;
using System.Linq;
using Framework.Data;
using System.Data;
namespace Confluence.Blueprint.BusinessFacade
{

    public class DepartmentFacade
    {
        public int CreateOrModify(DepartmentModel model)
        {
            
            int deptId = (int)Db.ExecuteScalar("prcSaveDepartment", CommandType.StoredProcedure,
                        Db.CreateParameter("@DepartmentID", model.DepartmentID),
	                    Db.CreateParameter("@OrganizationID", model.OrganizationID),
	                    Db.CreateParameter("@DepartmentName", model.DepartmentName),
	                    Db.CreateParameter("@DepartmentAbbreviate", model.DepartmentAbbreviate),
	                    Db.CreateParameter("@HODName", model.HODName),
	                    Db.CreateParameter("@LLNumber", model.LLNumber),
	                    Db.CreateParameter("@MobileNumber", model.MobileNumber),
	                    Db.CreateParameter("@EmailId", model.EmailId),
                        Db.CreateParameter("@SubProcess", model.SubProcess ? 1 : 0),
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
           
            int success = (int)Db.ExecuteScalar("prcDeleteDepartments", CommandType.StoredProcedure,
                        Db.CreateParameter("@DepartmentIDs", ids),
                        Db.CreateParameter("@DeleteReason", reason)
                        );
            return success == 1 ? true : false;
        }

        public DepartmentModel GetDepartmentDetail(int deptid)
        {
            DepartmentModel model = new DepartmentModel();
            DataSet ds = Db.ExecuteDataSet("prcGetDepartmentDetails", CommandType.StoredProcedure,
                                           Db.CreateParameter("@DepartmentID", deptid)
                                           );
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                IList<DepartmentModel> orgInfo = Db.MapReader<DepartmentModel>(ds.Tables[0]);
                model = orgInfo[0];
                if (ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
                {
                    IList<SubDepartmentModel> deptInfo = Db.MapReader<SubDepartmentModel>(ds.Tables[1]);
                    model.SubDepartments = deptInfo.ToList<SubDepartmentModel>();
                }
            }

            return model;
        }

        
    }
    
    
}
