using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Security;

namespace Confluence.Blueprint.Models
{

    public class UserDashboard
    {
        public int TotalAssignedCount { get; set; }
        public int TotalUploadedCount { get; set; }
        public int TotalDocsCount { get; set; }
        
    }
        
}
