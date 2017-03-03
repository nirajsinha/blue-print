using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;

namespace Confluence.Blueprint.Models
{


    public class DocumentLibraryModel
    {
        public Document Document { get; set; }
        public List<DepartmentModel> Departments = new List<DepartmentModel>();
    }
        
}
