using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;
using System.Web.Mvc;

namespace Confluence.Blueprint.Models
{

    public class ChangePasswordModel 
    {
        [Required(ErrorMessage = "Old password is required.")]
        [Display(Name = "Old Password")]
        public string OldPassword { get; set; }

        [Required]
        [Display(Name = "New Password")]
        public string NewPassword { get; set; }
        
        [Required]
        [Display(Name = "Confirm New Password")]
        public string ConfirmPassword { get; set; }
    }

    public class LogOnModel 
    {
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [Required(ErrorMessage = "Email is required.")]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password is required.")]
        [Display(Name = "Password")]
        public string Password { get; set; }
        
        public string ReturnUrl { get; set; }
        public bool RememberMe { get; set; }

        public string UserName { get; set; }
        public string RoleGroup { get; set; }

        public string LicenseMessage { get; set; }

        

    }

    public class UserModel 
    {

        [Display(Name = "User ID")]
        public int UserID { get; set; }

        [Display(Name = "Organization")]
        public int OrganizationID { get; set; }

        [Display(Name = "Department")]
        public int DepartmentID { get; set; }

        [Display(Name = "Sub Department")]
        public string SubDepartmentID { get; set; }

        [Display(Name = "User Name")]
        public string Name { get; set; }

        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Password")]
        public string TempPassword { get; set; }

        [Display(Name = "RoleGroup")]
        public string RoleGroupName { get; set; }

        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        [Display(Name = "Confirm Password")]
        public string ConfirmPassword { get; set; }

        [Display(Name = "Phone")]
        public string Phone { get; set; }

        [Display(Name = "Mobile")]
        public string Mobile { get; set; }

        [Display(Name = "Email")]
        public string UserEmail { get; set; }

        public List<DepartmentModel> Departments { get; set; }
        public List<string> AuditCertifications { get; set; }
        public string Certifications { get; set; }
        public DateTime? TrainingDate { get; set; }

    }

    public class UserRoleGroup{
	    public int UserRoleGroupID { get; set; }
	    public int UserID { get; set; }
        public int RoleGroupID { get; set; }
	    public int DepartmentID { get; set; }
	    public int SubDepartmentID { get; set; }
        public int IsActive { get; set; }
        
    }
    
}
