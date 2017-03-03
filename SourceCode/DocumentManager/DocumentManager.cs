using System;
using System.Collections.Generic;
using System.Web;
using System.Globalization;
using System.Xml;


namespace Confluence.Blueprint.DocumentManager
{
    /// <summary>
    /// Summary description for CommonService
    /// </summary>
    public class DocumentManager
    {
        public DocumentManager()
        {
        }

        public string ConvertToMht(string SourceFile, string FileType)
        {
            try
            {
                string TargetFile = string.Empty;
                DocConverter.IDocConverter converter = null;
                switch (FileType.ToLower())
                { 
                    case ".docx":
                        converter = new DocConverter.WordDocConverter(SourceFile);
                        break;
                    case ".xlsx":
                        converter = new DocConverter.ExcelDocConverter(SourceFile);
                        break;
                    default:
                        break;
                }
                if (converter != null)
                {
                    /*
                    string path = System.IO.Path.GetFileNameWithoutExtension(SourceFile);
                    string dir = System.IO.Path.GetDirectoryName(SourceFile);
                    
                    System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
                    //startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
                    startInfo.CreateNoWindow = true;
                    startInfo.UseShellExecute = false;
                    startInfo.WorkingDirectory = @"C:\My Folder\Projects\eqms\SourceCode\DocumentManager\OpenXMLViewer";
                    startInfo.FileName = @"C:\My Folder\Projects\eqms\SourceCode\DocumentManager\OpenXMLViewer\OpenXMLViewer.exe";
                    startInfo.Arguments = " \"" + SourceFile + " \"" + dir + "\" IE";
                    
                    var process = System.Diagnostics.Process.Start(startInfo);
                    process.WaitForExit();

                    TargetFile = SourceFile.Replace(".docx", ".html"); 
                    */
                    TargetFile = converter.Convert();

                }
                else
                {
                    TargetFile = string.Empty;
                }

                

                return TargetFile;
            }

            catch (Exception ex)
            {
                throw;
            }
        }


    }
}