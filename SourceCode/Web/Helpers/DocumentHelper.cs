using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
namespace Confluence.Blueprint.Web.Helpers
{
    public class DocumentHelper
    {
        public static bool CreatePath(string path)
        {
            try
            {
                // create path if not exists
                new FileInfo(path).Directory.Create();
                return true;
            }
            catch
            {
                throw;
            }
        }

        public static string ConvertToMht(string SourceFile, string FileType)
        {
            DocumentManager.DocumentManager docService = new DocumentManager.DocumentManager();
            return docService.ConvertToMht(SourceFile, FileType);
        }
        
    }
}