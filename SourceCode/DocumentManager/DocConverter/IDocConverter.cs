using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Word;

namespace Confluence.Blueprint.DocumentManager.DocConverter
{
    public interface IDocConverter
    {
        string Convert();
    }
}