using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;

namespace Confluence.Blueprint.Models
{

    public class DepartmentModel 
    {
        public int OrganizationID { get; set; }

        public int DepartmentID { get; set; }

        [Display(Name = "Department Name")]
        public string DepartmentName { get; set; }

        [Display(Name = "Abbreviate")]
        public string DepartmentAbbreviate { get; set; }

        [Display(Name = "HOD Name")]
        public string HODName { get; set; }

        [Display(Name = "LL Number")]
        public string LLNumber { get; set; }

        [Display(Name = "Mobile")]
        public string MobileNumber { get; set; }

        [Display(Name = "Email")]
        public string EmailId { get; set; }

        [Display(Name = "Have sub-process?")]
        public bool SubProcess { get; set; }

        [Display(Name = "Reviewer Name")]
        public string ReviewerName { get; set; }

        [Display(Name = "Reviewer LL Number")]
        public string ReviewerLLNumber { get; set; }

        [Display(Name = "Reviewer Mobile")]
        public string ReviewerMobileNumber { get; set; }

        [Display(Name = "Reviewer Email")]
        public string ReviewerEmailID { get; set; }

        [Display(Name = "Is HOD approver?")]
        public bool IsHODApprover { get; set; }

        [Display(Name = "Approver Name")]
        public string ApproverName { get; set; }

        [Display(Name = "Approver LL Number")]
        public string ApproverLLNumber { get; set; }

        [Display(Name = "Approver Mobile")]
        public string ApproverMobileNumber { get; set; }

        [Display(Name = "Approver Email")]
        public string ApproverEmailID { get; set; }

        public List<SubDepartmentModel> SubDepartments = new List<SubDepartmentModel>();

        public List<RoleGroup> DepartmentRoleGroups { get; set; }
    }
        
}
