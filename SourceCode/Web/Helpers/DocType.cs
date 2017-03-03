using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Confluence.Blueprint.Web.Helpers
{
    public class DocType
    {
        public string DocName { get; set; }
        public string Description { get; set; }
        public DocType Parent { get; set; }
        public List<DocType> Childs = new List<DocType>();

        private List<DocType> _AllChilds = new List<DocType>();
        public List<DocType> AllChilds
        {
            get
            {
                ExtractAllChilds(this);
                return this._AllChilds;
            }
        }
        private void ExtractAllChilds(DocType doc)
        {
            foreach (DocType child in doc.Childs)
            {
                if (child.Childs.Count == 0)
                {
                    _AllChilds.Add(child);
                }
                ExtractAllChilds(child);
            }
        }

        private string _DocPath = string.Empty;
        public string DocPath
        {
            get
            {
                if (string.IsNullOrWhiteSpace(_DocPath)) BuildDocPath(this);
                return _DocPath;
            }
        }
        private void BuildDocPath(DocType doc)
        {

            DocType parent = doc.Parent;
            _DocPath = doc.DocName + "/" + _DocPath;
            if (parent != null)
            {
                BuildDocPath(parent);
            }

        }
    }

    
}