using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Confluence.Blueprint.Models
{
    public class OrganizationModel
    {
        
        public int OrganizationID { get; set; }

        [Display(Name = "Name of Organization")]
        [Required]
        public string OrganizationName { get; set; }

        [Display(Name = "Abbreviate")]
        public string OrganizationAbbreviate { get; set; }

        [Display(Name = "Office Address")]
        public string Address { get; set; }

        [Display(Name = "Corporate Address")]
        public string CorporateAddress { get; set; }

        [Display(Name = "MD's email id")]
        public string MDEmail { get; set; }

        [Display(Name = "Contact Number (Mobile)")]
        public string ContactNumber { get; set; }

        [Display(Name = "Office LL Number")]
        public string OfficePhoneNumber { get; set; }

        [Display(Name = "Fax Number")]
        public string FaxNumber { get; set; }

        [Display(Name = "Web Site")]
        public string WebSite { get; set; }

        public bool CorporateLogoUploaded { get; set; }

        public List<DepartmentModel> Departments { get; set; }

        public int TerminologyID { get; set; }
        
        [Display(Name = "Terminologies")]
        public Terminologies TerminologiesEnum
        {
            get
            { return Convert(TerminologyID); }
            set
            { 
                TerminologyID = (int)value;
            }
        }

        private Terminologies Convert(int type)
        {
            return (Terminologies)type;
        }

               
    }
    public enum Terminologies
    {
        Department = 1,
        Process = 2,
        Group =3
    }
}