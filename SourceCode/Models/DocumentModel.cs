using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;

namespace Confluence.Blueprint.Models
{

    
    public class Document
    {
        public int DocumentID { get; set; }
        public int OrganizationID { get; set; }
        [Display(Name = "Select Department")]
        public int DepartmentID { get; set; }
        [Display(Name = "Select Sub-Department")]
        public int SubDepartmentID { get; set; }
        [Display(Name = "Type of Document")]
        public string DocumentType { get; set; }
        [Display(Name = "Document Number")]
        public string DocumentNumber { get; set; }

        public string WorkflowStatusName { get; set; }
        
        [Display(Name = "Document Name")]
        public string DocumentName { get; set; }
        public string PhysicalPath { get; set; }
        public string MetaDataPath { get; set; }
        public decimal Version { get; set; }
        public string VersionString
        {
            get
            {
                return Version.ToString("N");
            }
        }
        public decimal NextVersion { get; set; }
        public bool CheckInStatus { get; set; }
        public string CheckInStatusString
        {
            get
            {
                return !CheckInStatus ? "Locked": "";
            }
        }
        public bool IsActive { get; set; }
        public string FileType { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int AssignedTo { get; set; }
        // Below are Revision parameters
        
        public string DepartmentName { get; set; }
        public string SubDepartmentName { get; set; }
        [Display(Name = "Request Number")]
        public string ChangeRequestNumber { get; set; }
        
        
    }
    public class DocumentViewer
    {
        public string DocumentPath { get; set; }
        public string FileName { get; set; }
        public string DocNumber { get; set; }
        public string DocVer { get; set; }
    }
    
    public class DocumentChangeRequest
    {
        public int DocumentChangeRequestID { get; set; }
	    public string RequestNumber { get; set; }
	    public int DocumentID { get; set; }
        public string DocumentNumber { get; set; }
		public int DepartmentID { get; set; }
        public string DepartmentName { get; set; }
	    public string Detail { get; set; }
	    public string Reason { get; set; }
	    public string Comment1 { get; set; }
	    public string Comment2 { get; set; }
	    public string Comment3 { get; set; }
	    public string Comment1By { get; set; }
	    public string Comment2By { get; set; }
	    public string Comment3By { get; set; }
	    public string EffectiveDate { get; set; }
	    public bool IsActive { get; set; }
	    public string CreatedOn { get; set; }
        public string CreatedBy { get; set; }

        public Document SelectedDocument { get; set; }
        public string EffectedDocumentIDs { get; set; }
        public List<EffectedDocuments> EffectedDocuments { get; set; }
        public List<EffectedDocuments> DepartmentDocumentsList { get; set; }
        public string WorkflowStatusName { get; set; }
        public string IsPublished { get; set; }
    }
    public class EffectedDocuments
    {
        public int DocumentID { get; set; }
        public string DocumentNumber { get; set; }
        public string DocumentName { get; set; }
        public string VersionString { get; set; }
        public string NextVersion { get; set; }
    }
}
