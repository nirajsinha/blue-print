using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Confluence.Blueprint.Models
{
    public class DocumentLevelsModel
    {
        public List<Level> levels = new List<Level>();
    }
    public class Level
    {
        public int OrganizationID { get; set; }
        public int LevelID { get; set; }
        public List<SubLevel> sublevels = new List<SubLevel>();

    }
    
    public class SubLevel
    {
        public int LevelID { get; set; }
        public int SubLevelID { get; set; }

        [Display(Name = "Document Name")]
        public string Name { get; set; }

        [Display(Name = "Abbreviate")]
        public string Abbreviate { get; set; }
        public bool IsActive { get; set; }

    }
    
}