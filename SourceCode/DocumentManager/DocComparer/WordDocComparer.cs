using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Word;

namespace Confluence.Blueprint.DocumentManager.DocComparer
{
   
    public class WordDocComparer : IDocComparer
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
        public WordDocComparer(string source, string destination)
        {
            _sourceFilePath = source;
            _destinationFilePath = destination;
        }
        #endregion

        #region Public Methods
        public void Compare1()
        {
            object missing = System.Reflection.Missing.Value;

            object readonlyobj = false;
            object filename = _sourceFilePath;
            object tempfile = "C:\\test3.docx";
            //create a word application object for processing the word file.
            Microsoft.Office.Interop.Word.Application app = new Microsoft.Office.Interop.Word.Application();

            //create a word document object and open the above file..
            Document doc = app.Documents.Open(ref filename, ref missing, ref readonlyobj, ref missing, ref missing
                , ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing);

            doc.TrackRevisions = true;
            doc.ShowRevisions = true;
            doc.PrintRevisions = true;
            doc.Compare(_destinationFilePath, missing, WdCompareTarget.wdCompareTargetNew, true, false, false, false, false);

            doc.Close(ref missing, ref missing, ref missing);
            //app.Quit(ref missing, ref missing, ref missing);
            
        }
     
        public void Compare()
        {
            Microsoft.Office.Interop.Word.Application wordApp = new Microsoft.Office.Interop.Word.Application();
            wordApp.Visible = false;
            wordApp.DisplayAlerts = WdAlertLevel.wdAlertsNone;
            object wordTrue = (object)true;
            object wordFalse = (object)false;

            object fileToOpen = _sourceFilePath;
            object missing = Type.Missing;
            
            Microsoft.Office.Interop.Word.Document doc1 = wordApp.Documents.Open(ref fileToOpen,
               ref missing, ref wordFalse, ref wordFalse, ref missing,
               ref missing, ref missing, ref missing, ref missing,
               ref missing, ref missing, ref wordTrue, ref missing,
               ref missing, ref missing, ref missing);

            object fileToOpen1 = _destinationFilePath;
            Microsoft.Office.Interop.Word.Document doc2 = wordApp.Documents.Open(ref fileToOpen1,
                ref missing, ref wordFalse, ref wordFalse, ref missing,
                ref missing, ref missing, ref missing, ref missing,
                ref missing, ref missing, ref missing, ref missing,
                ref missing, ref missing, ref missing);

            Microsoft.Office.Interop.Word.Document doc = wordApp.CompareDocuments(doc1, doc2, WdCompareDestination.wdCompareDestinationNew, WdGranularity.wdGranularityCharLevel,
                true, true, true, true, true, true, true, true, true, true, "", false);
            
            object tempFile = "c:\\result.docx";
            doc.SaveAs2(ref tempFile, ref missing, ref missing, ref missing, ref wordFalse, ref missing, ref wordTrue, ref missing, ref missing,
                ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref wordTrue, ref missing);
            
            
            try
            {
                doc1.Close();
                doc2.Close();
                doc.Close();
            }
            finally { }

        }
     
        public void CheckIn()
        {
            Microsoft.Office.Interop.Word.Application wordApp = new Microsoft.Office.Interop.Word.Application();
            wordApp.Visible = false;
            wordApp.DisplayAlerts = WdAlertLevel.wdAlertsNone;
            object wordTrue = (object)true;
            object wordFalse = (object)false;

            object fileToOpen = _sourceFilePath;
            object missing = Type.Missing;

            Microsoft.Office.Interop.Word.Document doc1 = wordApp.Documents.Open(ref fileToOpen,
               ref missing, ref wordFalse, ref wordFalse, ref missing,
               ref missing, ref missing, ref missing, ref missing,
               ref missing, ref missing, ref wordTrue, ref missing,
               ref missing, ref missing, ref missing);
            
            if (doc1.CanCheckin())
            {
                doc1.CheckInWithVersion(true, ref missing, false, ref missing);
            }
        }
        #endregion

       
    }
    
}