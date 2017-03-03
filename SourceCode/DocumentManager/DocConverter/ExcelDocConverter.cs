using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Excel;

namespace Confluence.Blueprint.DocumentManager.DocConverter
{
   
    public class ExcelDocConverter : IDocConverter
    {
        #region Variables
        private Microsoft.Office.Interop.Excel.Application ExcelApp;
        private Microsoft.Office.Interop.Excel.Workbook aDoc;
        string _sourceFilePath;
        string _destinationFilePath;
        #endregion

        #region Constructor
        /// <summary>
        /// This is the constructor for WordDocComparer
        /// </summary>
        public ExcelDocConverter(string source)
        {
            _sourceFilePath = source;
            _destinationFilePath = source.Replace("xlsx", "mht");
        }
        #endregion

        #region Public Methods
        public string Convert()
        {
            if (!new System.IO.FileInfo(_destinationFilePath).Exists)
            {
                Microsoft.Office.Interop.Excel.Application wordApp = new Microsoft.Office.Interop.Excel.Application();
                wordApp.Visible = false;
                wordApp.DisplayAlerts = false;
                object wordTrue = (object)true;
                object wordFalse = (object)false;


                Microsoft.Office.Interop.Excel.XlFileFormat fltDocFormatTemp = Microsoft.Office.Interop.Excel.XlFileFormat.xlWebArchive;
                Microsoft.Office.Interop.Excel.XlSaveAsAccessMode fltXlSaveAsAccessMode = Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlNoChange;
                object fltDocFormat = fltDocFormatTemp;// 10;
                //For filtered HTML Output



                object missing = Type.Missing;

                Microsoft.Office.Interop.Excel.Workbook doc1 = wordApp.Workbooks.Open(_sourceFilePath,
                   missing, wordFalse, missing,
                   missing, missing, missing, missing,
                   missing, wordFalse, wordFalse, wordFalse,
                   missing, missing, missing);

                object fileName = _destinationFilePath;
                doc1.SaveAs(fileName, fltDocFormat, missing, missing, wordFalse, missing, fltXlSaveAsAccessMode, missing, missing,
                    missing, missing, missing);


                try
                {
                    doc1.Close();
                }
                finally { }
            }
            return _destinationFilePath;
        }
        #endregion


    }

}