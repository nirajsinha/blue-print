using System;
using System.Collections.Generic;
using System.Globalization;
using Confluence.Blueprint.Models;
using Framework.Data;
using System.Data;

namespace Confluence.Blueprint.BusinessFacade
{

    public class LogOnFacade
    {

        public bool ChangePassword(int userId, string newPassword)
        {
            try
            {

                int success =(int) Db.ExecuteScalar("prcChangePassword", CommandType.StoredProcedure,
                                Db.CreateParameter("@UserID", userId),
                                Db.CreateParameter("@NewPassword", newPassword)
                             );
                
                return success == 1 ? true: false;
            }
            catch (Exception)
            {
                throw;
            }
        }


        
    }

    public class UserFacade
    {
        public int CreateOrModify(UserModel model)
        {
            int userid = 0;
            int success = 0;
            try
            {
                userid = (int)Db.ExecuteScalar("prcSaveUser", CommandType.StoredProcedure,
                                Db.CreateParameter("@UserID", model.UserID),
                                Db.CreateParameter("@Name", model.Name),
                                Db.CreateParameter("@DepartmentID", model.Departments.Count > 0 ? model.Departments[0].DepartmentID : model.DepartmentID),
	                            Db.CreateParameter("@SubDepartmentID", model.SubDepartmentID),
	                            Db.CreateParameter("@RoleGroupName", model.RoleGroupName),
	                            Db.CreateParameter("@UserEmail", model.UserEmail),
	                            Db.CreateParameter("@Phone", model.Phone),
	                            Db.CreateParameter("@Mobile", model.Mobile),
	                            Db.CreateParameter("@Password", model.Password),
	                            Db.CreateParameter("@TempPassword", model.TempPassword),
                                Db.CreateParameter("@CertificationText",model.Certifications),
                                Db.CreateParameter("@TrainingDate", model.TrainingDate)
                             );
                foreach (DepartmentModel group in model.Departments)
                {
                    if (group.SubDepartments != null && group.SubDepartments.Count > 0)
                    {
                        foreach (SubDepartmentModel sub in group.SubDepartments)
                        {
                            foreach (RoleGroup role in sub.SubDepartmentRoleGroups)
                            {
                                success = SaveUserRoleGroup(role.UserRoleGroupID, userid, role.RoleGroupID, group.DepartmentID, sub.SubDepartmentID, role.IsGranted);
                                if (success == 0) break;
                            }
                        }
                    }
                    else
                    {
                        foreach (RoleGroup role in group.DepartmentRoleGroups)
                        {
                            success = SaveUserRoleGroup(role.UserRoleGroupID, userid, role.RoleGroupID, group.DepartmentID, 0, role.IsGranted);
                            if (success == 0) break;
                        }
                    }
                    if (success == 0) break;
                }

                //return success == 1 ? true : false;
            }
            catch (Exception)
            {
                throw;
            }
            return userid;
        }
        private int SaveUserRoleGroup(int userrgId, int userId, int rolegroup, int dept, int subdept, bool granted)
        {	
            int success = (int)Db.ExecuteScalar("prcSaveUserRoleGroup", CommandType.StoredProcedure,
                                            Db.CreateParameter("@UserRoleGroupID", userrgId),                            
                                            Db.CreateParameter("@UserID", userId),
                                            Db.CreateParameter("@RoleGroupID", rolegroup),
                                            Db.CreateParameter("@DepartmentID", dept),
                                            Db.CreateParameter("@SubDepartmentID", subdept),
                                            Db.CreateParameter("@IsGranted", granted)
                                            );
            return success;
           
        }
        
        public UserModel GetUserDetails(string email)
        {
            try
            {

                DataSet ds = Db.ExecuteDataSet("prcGetUserDetailsByEmail", CommandType.StoredProcedure,
                                Db.CreateParameter("@UserEmail", email)
                             );
                UserModel model = new UserModel();

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    IList<UserModel> userList = Db.MapReader<UserModel>(ds.Tables[0]);
                    model = userList[0];
                }
                return model;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public UserModel GetUserDetails(int id)
        {
            try
            {

                DataSet ds = Db.ExecuteDataSet("prcGetUserDetailsByID", CommandType.StoredProcedure,
                                Db.CreateParameter("@UserID", id)
                             );
                UserModel model = new UserModel();

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    IList<UserModel> userList = Db.MapReader<UserModel>(ds.Tables[0]);
                    model = userList[0];
                    if (!string.IsNullOrWhiteSpace(model.Certifications))
                    {
                        model.AuditCertifications = new List<string>(model.Certifications.Split(','));
                    }
                }
                return model;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<UserModel> GetUserDetailsByOrganizationID(int orgid, string userName = "")
        {
            try
            {

                DataSet ds = Db.ExecuteDataSet("prcGetUserDetailsByOrganizationID", CommandType.StoredProcedure,
                                Db.CreateParameter("@OrganizationID", orgid),
                                Db.CreateParameter("@UserName", userName)
                             );
                List<UserModel> model = new List<UserModel>();

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    IList<UserModel> userList = Db.MapReader<UserModel>(ds.Tables[0]);
                    model = userList as List<UserModel>;
                }
                return model;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool Delete(string email)
        {
            try
            {
                int success = (int)Db.ExecuteScalar("prcDeleteUser", CommandType.StoredProcedure,
                                Db.CreateParameter("@UserEmail", email)
                             );
                return success == 1 ? true : false;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }


}
