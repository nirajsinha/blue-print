using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Framework.Data;
using Confluence.Blueprint.Models;
using Confluence.Blueprint.BusinessFacade;

namespace Framework.Security
{
    public class SecurityProvider
    {
        public static RoleGroupConfigurationModel GetRoleGroupConfiguration(int orgId)
        {
            DataSet configDataSet = Db.ExecuteDataSet("prcGetRoleGroupConfiguration", CommandType.StoredProcedure,
                                           Db.CreateParameter("@OrganizationID", orgId)
                                           );
            
            RoleGroupConfigurationModel cm = new RoleGroupConfigurationModel();
            
            if (configDataSet != null && configDataSet.Tables.Count > 2 )
            {
                List<RoleGroupConfiguration> configList = new List<RoleGroupConfiguration>();
                if (configDataSet.Tables[0] != null && configDataSet.Tables[0].Rows.Count > 0)
                {
                    configList = Db.MapReader<RoleGroupConfiguration>(configDataSet.Tables[0]).ToList();
                }
                IList<RoleGroup> rgList = Db.MapReader<RoleGroup>(configDataSet.Tables[1]);
                IList<Role> roleList = Db.MapReader<Role>(configDataSet.Tables[2]);
                cm.RoleGroups = new List<RoleGroup>();
                foreach (RoleGroup rg in rgList)
                {
                    RoleGroup newGroup = new RoleGroup() {  RoleGroupID = rg.RoleGroupID, RoleGroupName = rg.RoleGroupName};
                    newGroup.Roles = new List<Role>();
                    foreach (Role r in roleList)
                    {
                        Role newRole = new Role() { RoleID = r.RoleID, IsGranted = false, RoleGroupConfigurationID = 0, RoleName = r.RoleName };
                        newGroup.Roles.Add(newRole);
                    }
                    cm.RoleGroups.Add(newGroup);
                }
                    
                

                foreach (RoleGroupConfiguration rgconf in configList)
                {
                    RoleGroup rolegroup = cm.RoleGroups.Find(delegate(RoleGroup _field)
                    {
                        if (_field.RoleGroupID == rgconf.RoleGroupID)
                        {
                            return true;
                        }
                        return false;
                    });
                    if (rolegroup != null)
                    {
                        Role role = rolegroup.Roles.Find(delegate(Role _field)
                        {
                            if (_field.RoleID == rgconf.RoleID)
                            {
                                return true;
                            }
                            return false;
                        });
                        if (role != null)
                        {
                            role.IsGranted = rgconf.IsGranted;
                            role.RoleGroupConfigurationID = rgconf.RoleGroupConfigurationID;
                        }
                    }
                }
            }
                
           

            return cm;
        }
        public static List<RoleGroup> GetRoleGroups(int orgId)
        {
            DataSet configDataSet = Db.ExecuteDataSet("prcGetRoleGroupConfiguration", CommandType.StoredProcedure,
                                           Db.CreateParameter("@OrganizationID", orgId)
                                           );

            List<RoleGroup> config = new List<RoleGroup>();
            if (configDataSet != null && configDataSet.Tables.Count > 1)
            {
                config = Db.MapReader<RoleGroup>(configDataSet.Tables[1]).ToList();
            }

            return config;
        }
        public static OrganizationModel GetDepartmentRoleGroups(int userId, int orgid)
        {
            OrganizationModel org = new OrganizationFacade().GetOrganization(orgid);
            DataSet configDataSet = Db.ExecuteDataSet("prcGetUserRoleGroupConfiguration", CommandType.StoredProcedure,
                                           Db.CreateParameter("@UserID", userId)
                                           );

            if (configDataSet != null && configDataSet.Tables.Count > 1)
            {
                List<UserRoleGroup> configList = new List<UserRoleGroup>();
                if (configDataSet.Tables[0] != null && configDataSet.Tables[0].Rows.Count > 0)
                {
                    configList = Db.MapReader<UserRoleGroup>(configDataSet.Tables[0]).ToList();
                }
                List<RoleGroup> rgList = Db.MapReader<RoleGroup>(configDataSet.Tables[1]).ToList();

                foreach (DepartmentModel dept in org.Departments)
                {
                    if (dept.SubDepartments != null && dept.SubDepartments.Count > 0)
                    {
                        foreach (SubDepartmentModel subdept in dept.SubDepartments)
                        {
                            subdept.SubDepartmentRoleGroups = rgList.ConvertAll(rolegroup => new RoleGroup() {  RoleGroupID = rolegroup.RoleGroupID, RoleGroupName = rolegroup.RoleGroupName});
                        }
                    }
                    else
                    {
                        dept.DepartmentRoleGroups = rgList.ConvertAll(rolegroup => new RoleGroup() { RoleGroupID = rolegroup.RoleGroupID, RoleGroupName = rolegroup.RoleGroupName });
                    }
                }

                // loop thriugh user groups and build list
                foreach (UserRoleGroup rgconf in configList)
                {
                    // find department else subdepartments to map data
                    int deptid = rgconf.DepartmentID;
                    int subdeptid = rgconf.SubDepartmentID;
                    int rolegroupid = rgconf.RoleGroupID;
                    if (deptid > 0)
                    {
                        DepartmentModel deptModel = org.Departments.Find(delegate(DepartmentModel _field)
                        {
                            if (_field.DepartmentID == deptid)
                            {
                                return true;
                            }
                            return false;
                        });
                        if (deptModel != null)
                        {
                            if (subdeptid > 0)
                            {
                                SubDepartmentModel subdeptmodel = deptModel.SubDepartments.Find(delegate(SubDepartmentModel _field)
                                {
                                    if (_field.SubDepartmentID == subdeptid)
                                    {
                                        return true;
                                    }
                                    return false;
                                });
                                if (subdeptmodel != null)
                                {
                                    RoleGroup sdrolegroup = subdeptmodel.SubDepartmentRoleGroups.Find(delegate(RoleGroup _field)
                                    {
                                        if (_field.RoleGroupID == rolegroupid)
                                        {
                                            return true;
                                        }
                                        return false;
                                    });
                                    if (sdrolegroup != null)
                                    {
                                        sdrolegroup.IsGranted = Convert.ToBoolean(rgconf.IsActive);
                                        sdrolegroup.UserRoleGroupID = rgconf.UserRoleGroupID;
                                    }

                                }
                            }
                            else
                            {
                                RoleGroup sdrolegroup = deptModel.DepartmentRoleGroups.Find(delegate(RoleGroup _field)
                                {
                                    if (_field.RoleGroupID == rolegroupid)
                                    {
                                        return true;
                                    }
                                    return false;
                                });
                                if (sdrolegroup != null)
                                {
                                    sdrolegroup.IsGranted = Convert.ToBoolean(rgconf.IsActive);
                                    sdrolegroup.UserRoleGroupID = rgconf.UserRoleGroupID;
                                }
                            }
                        }
                    }
                }
            }



            return org;
        }

        public static bool CreateOrModify(RoleGroupConfigurationModel model, int OrgId)
        {
            try
            {
                int success = 0;
                foreach (RoleGroup group in model.RoleGroups)
                {
                    foreach (Role role in group.Roles)
                    {
                        success = (int)Db.ExecuteScalar("prcSaveRoleGroupConfiguration", CommandType.StoredProcedure,
                                        Db.CreateParameter("@RoleGroupConfigurationID", role.RoleGroupConfigurationID),
                                        Db.CreateParameter("@OrganizationID", OrgId),
                                        Db.CreateParameter("@RoleGroupID", group.RoleGroupID),
                                        Db.CreateParameter("@RoleID", role.RoleID),
                                        Db.CreateParameter("@IsGranted", role.IsGranted)
                                        );
                        if (success == 0) break;
                    }
                    if (success == 0) break;
                }
                return Convert.ToBoolean(success);

            }
            catch (Exception)
            {
                throw;
            }

        }
        public static bool IsUserRoleAuthorized(int userid, int departmentid, int subdeptid, string role)
        {

            try
            {
                int success = (int)Db.ExecuteScalar("prcValidateUserRole", CommandType.StoredProcedure,
                                        Db.CreateParameter("@UserID", userid),
                                        Db.CreateParameter("@DepartmentID", departmentid),
                                        Db.CreateParameter("@SubDepartmentID", subdeptid),
                                        Db.CreateParameter("@RoleName", role)
                                        );
                return Convert.ToBoolean(success);

            }
            catch (Exception)
            {
                throw;
            }
        }
        
    }
    

}