using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Word;

namespace Confluence.Blueprint.DocumentManager.DocConverter
{
   
    public class WordDocConverter : IDocConverter
    {
        #region Variables
        private Microsoft.Office.Interop.Word.Application WordApp;
        private Document aDoc;
        string _sourceFilePath;
        string _destinationFilePath;
        #endregion

        #region Constructor
        /// <summary>
        /// This is the constructor for WordDocComparer
        /// </summary>
        public WordDocConverter(string source)
        {
            _sourceFilePath = source;
            _destinationFilePath = source.Replace("docx","mht");
        }
        #endregion

        #region Public Methods
        public string Convert()
        {
            if (! new System.IO.FileInfo(_destinationFilePath).Exists)
            {

                Microsoft.Office.Interop.Word.Application wordApp = new Microsoft.Office.Interop.Word.Application();
                wordApp.Visible = false;
                wordApp.DisplayAlerts = WdAlertLevel.wdAlertsNone;
                object wordTrue = (object)true;
                object wordFalse = (object)false;


                Microsoft.Office.Interop.Word.WdSaveFormat fltDocFormatTemp = Microsoft.Office.Interop.Word.WdSaveFormat.wdFormatWebArchive;
                object fltDocFormat = fltDocFormatTemp;// 10;
                //For filtered HTML Output



                object missing = Type.Missing;
                object fileToOpen = _sourceFilePath;
                Microsoft.Office.Interop.Word.Document doc1 = wordApp.Documents.Open(ref fileToOpen,
                   ref missing, ref wordFalse, ref wordFalse, ref missing,
                   ref missing, ref missing, ref missing, ref missing,
                   ref missing, ref missing, ref wordTrue, ref missing,
                   ref missing, ref missing, ref missing);

                object tempFile = _destinationFilePath;
                doc1.SaveAs2(ref tempFile, ref fltDocFormat, ref missing, ref missing, ref wordFalse, ref missing, ref wordTrue, ref missing, ref missing,
                    ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref wordTrue, ref missing);


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