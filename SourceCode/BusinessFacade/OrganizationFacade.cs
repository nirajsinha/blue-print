using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using Framework.Data;
namespace Confluence.Blueprint.BusinessFacade
{
    public class OrganizationFacade
    {
        public int CreateOrModify(OrganizationModel model, int UserID)
        {
            try
            {

                int orgId = (int)Db.ExecuteScalar("prcSaveOrganization", CommandType.StoredProcedure,
                                Db.CreateParameter("@OrganizationID", model.OrganizationID),
                                Db.CreateParameter("@OrganizationName", model.OrganizationName),
                                Db.CreateParameter("@OrganizationAbreviation", model.OrganizationAbbreviate),
                                Db.CreateParameter("@OrganizationAddress", model.Address),
                                Db.CreateParameter("@ContactNumber", model.ContactNumber),
                                Db.CreateParameter("@FaxNumber", model.FaxNumber),
                                Db.CreateParameter("@EmailId", model.MDEmail),
                                Db.CreateParameter("@Website", model.WebSite),
                                Db.CreateParameter("@CorporateAddress", model.CorporateAddress),
                                Db.CreateParameter("@OfficePhoneNumber", model.OfficePhoneNumber),
                                Db.CreateParameter("@UserID", UserID),
                                Db.CreateParameter("@TerminologyID", model.TerminologyID)
                                );
                return orgId;
               
            }
            catch (Exception)
            {
                throw;
            }

            return 0;
        }
        public OrganizationModel GetOrganization(string userEmail)
        {
            OrganizationModel model = new OrganizationModel();
            DataSet ds = Db.ExecuteDataSet("prcGetOrganizationDetailsByUserEmail", CommandType.StoredProcedure,
                                           Db.CreateParameter("@UserEmail", userEmail)
                                           );
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                IList<OrganizationModel> orgInfo = Db.MapReader<OrganizationModel>(ds.Tables[0]);
                model = orgInfo[0];
                if (ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
                {
                    IList<DepartmentModel> deptInfo = Db.MapReader<DepartmentModel>(ds.Tables[1]);
                    model.Departments = deptInfo.ToList<DepartmentModel>();
                }
            }

            return model;
        }
        public OrganizationModel GetOrganization(int orgid)
        {
            OrganizationModel model = new OrganizationModel();
            DataSet ds = Db.ExecuteDataSet("prcGetOrganizationDetails", CommandType.StoredProcedure,
                                           Db.CreateParameter("@OrganizationID", orgid)
                                           );
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                IList<OrganizationModel> orgInfo = Db.MapReader<OrganizationModel>(ds.Tables[0]);
                model = orgInfo[0];
                if (ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
                {
                    IList<DepartmentModel> deptInfo = Db.MapReader<DepartmentModel>(ds.Tables[1]);
                    model.Departments = deptInfo.ToList<DepartmentModel>();
                    if (ds.Tables.Count > 2 && ds.Tables[2].Rows.Count > 0)
                    {
                        List<SubDepartmentModel> subdeptInfo = Db.MapReader<SubDepartmentModel>(ds.Tables[2]).ToList();
                        foreach (DepartmentModel d in model.Departments)
                        {
                            List<SubDepartmentModel> sdList = subdeptInfo.FindAll(delegate(SubDepartmentModel s) { return d.DepartmentID == s.DepartmentID; });
                            d.SubDepartments = sdList;
                        }
                    }
                }
            }

            return model;
        }
       
    }
    
}