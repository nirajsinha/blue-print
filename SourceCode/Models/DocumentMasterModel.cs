using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;

namespace Confluence.Blueprint.Models
{

    public class DocumentMasterModel
    {
        public int OrganizationID { get; set; }

        public int DocumentMasterID { get; set; }
        
        [Display(Name = "Issue")]
        [Required]
        public bool IssueApplicable { get; set; }
        
        [Display(Name = "Version")]
	    public int VersionOrRevision { get; set; } // 1 for version, 2 for revision
        
        [Display(Name = "Version/Revision Initial No.")]
        public decimal InitialNumber { get; set; }
        
        [Display(Name = "Version/Revision Increment by")]
	    public decimal IncrementBy { get; set; }
	    
        public string DocumentName1 { get; set; }
        public DocumentNumberingTypes DocumentType1 { get; set; }
	    public string DocumentName2 { get; set; }
        public DocumentNumberingTypes DocumentType2 { get; set; }
	    public string DocumentName3 { get; set; }
        public DocumentNumberingTypes DocumentType3 { get; set; }
	    public string DocumentName4 { get; set; }
        public DocumentNumberingTypes DocumentType4 { get; set; }
        
        [Display(Name = "Sl No.")]
        [Required]
        public string SerialNumber { get; set; }
	
    }
    public enum DocumentNumberingTypes
    {
        [Display(Name = "Custom")]
        None = 0,
        [Display(Name = "Type of Doc")]
        DocumentType= 1,
        [Display(Name = "Dept. Name")]
        DepartmentName = 2,
        [Display(Name = "Sub-Dept Name")]
        SubDepartmentName = 3,
        [Display(Name = "Org. Name")]
        OrganizationName = 4
    }
        
}
