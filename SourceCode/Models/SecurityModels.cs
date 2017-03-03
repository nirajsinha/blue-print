using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;


namespace Confluence.Blueprint.Models
{
    public class LicenseModel
    {
       
        [Display(Name = "This product is licensed to ")]
        public string Organization { get ; set; }

        [Display(Name = "Max. number of users allowed")]
        public int MaxUserCount { get; set; }

        [Display(Name = "License Validity")]
        public bool IsLicenseValid { get; set; }

        [Display(Name = "Is License Active")]
        public bool IsLicenseActivated { get; set; }

        [Display(Name = "LicenseError")]
        public string LicenseError { get; set; }

        [Display(Name = "License Type")]
        public string LicenseType { get; set; }

      
    }
    public class RoleGroup
    {
        public int RoleGroupID { get; set; }
	    public string RoleGroupName { get; set; }
        public List<Role> Roles { get; set; }
        public bool IsGranted { get; set; }
        public int UserRoleGroupID { get; set; }
	}
    
    public class Role{
        public int RoleID { get; set; }
	    public string RoleName { get; set; }
        public bool IsGranted { get; set; }
        public int RoleGroupConfigurationID { get; set; }
    }
    
    public class RoleGroupConfigurationModel{
        public List<RoleGroup> RoleGroups { get; set; }
        
	    
    }
    public class RoleGroupConfiguration
    {
        public int RoleGroupConfigurationID { get; set; }
        public int OrganizationID { get; set; }
        public int RoleGroupID { get; set; }
        public string RoleGroupName { get; set; }
        public int RoleID { get; set; }
        public string RoleName { get; set; }
        public bool IsGranted { get; set; }

    }
    

}