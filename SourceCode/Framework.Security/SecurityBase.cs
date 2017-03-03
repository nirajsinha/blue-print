using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Framework.Data;
using Confluence.Blueprint.Models;
namespace Framework.Security
{
    public class SecurityBase
    {

        public static LicenseModel GetLicense()
        {

            LicenseModel model = new LicenseModel(); 
            try
            {
                LicenseAccess.LicenseComponent LC = new LicenseAccess.LicenseComponent();
                model.Organization = LC.Organizations[0];
                model.MaxUserCount = LC.NoOfUsers;
                model.IsLicenseValid = LC.IsLicenseValid;
                model.IsLicenseActivated = LC.IsActivated;
                model.LicenseType = LC.LicenseType.ToString();
                
            }
            catch (Exception ex)
            {
                model.LicenseError = ex.Message;
            }
            return model;
        }

        public static bool IsUserRoleAuthorized(int userid, int department, int subdepartment, string roleName)
        {
            return SecurityProvider.IsUserRoleAuthorized(userid, department, subdepartment, roleName);
        }
        
    }
    

}