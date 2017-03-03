using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Confluence.Blueprint.Models;
using System.Transactions;
using Confluence.Blueprint.BusinessFacade;
using Confluence.Blueprint.Web.Helpers;
using Confluence.Blueprint.Web.ApplicationServices;
using Confluence.Blueprint.Web.Filters;
using Framework.Common;

namespace Confluence.Blueprint.Web.Controllers.DMS
{
    public class DocumentLibraryController : BaseController
    {

        //
        // GET: /Account
        [Authorize]
        [HttpGet]
        public ActionResult Index()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            DocumentLibraryModel model = new DocumentLibraryModel();
            OrganizationModel orgModel = new OrganizationService().GetOrganizationByID(OrgID);
            foreach (DepartmentModel dept in orgModel.Departments)
            {
                DepartmentModel temp = new DepartmentService().GetDepartmentDetails(dept.DepartmentID);
                dept.SubDepartments = temp.SubDepartments;
                model.Departments.Add(temp);
            }
            return View(model);
        }
        //
        // GET: /Account
        [Authorize]
        public ActionResult Upload()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            List<DepartmentModel> depts = new OrganizationService().GetOrganizationByID(OrgID).Departments;
            ViewBag.Departments = depts;
            ViewBag.SubDepartments = new List<SubDepartmentModel>();
            Document docmodel = new Document();
            return View("Upload", docmodel);
        }
        
        //
        // POST: /Upload
        [HttpPost]
        public ActionResult Upload(Document model, HttpPostedFileBase uploadFile)
        {
            // Verify that the user selected a file

            if (model != null && uploadFile != null && uploadFile.ContentLength > 0)
            {
                
                try
                {
                    
                    int UserID = int.Parse(Request.Cookies["UserID"].Value);
                    bool authorized = Framework.Security.SecurityBase.IsUserRoleAuthorized(UserID, model.DepartmentID, model.SubDepartmentID, "Doc Upload");
                    if (!authorized) throw new Exception("Access denied! You donot have permission to upload any document for the department/subdepartment.");
                    using (TransactionScope trans = new TransactionScope())
                    {
                        // extract only the fielname
                        var fileName = Path.GetFileName(uploadFile.FileName);

                        // Save file
                        model.FileType = new FileInfo(fileName).Extension;
                        model.CreatedBy = Request.Cookies["UserEmail"].Value;
                        Document newDocinfo = new DocumentFacade().Save(model);
                        
                        string rootpath = Server.MapPath("~/WorkSpaces/" + newDocinfo.PhysicalPath);

                        var path = Path.Combine(rootpath, model.DocumentName + model.FileType);
                        if(DocumentHelper.CreatePath(path))
                        {
                            // Save meta data
                            var metadata_path = Path.Combine(Server.MapPath("~/WorkSpaces/" + newDocinfo.MetaDataPath), model.DocumentName + ".xml");
                            string metadata = XmlHelper.Serialize(newDocinfo, newDocinfo.GetType());
                            System.IO.File.WriteAllText(metadata_path, metadata);
                            // Save document
                            uploadFile.SaveAs(path);
                            trans.Complete();
                        }
                    }
                    // build response message
                    var dept = new DepartmentService().GetDepartmentDetails(model.DepartmentID);
                    string deptName = dept.DepartmentName;

                    // build response message
                    string subDeptName = "";
                    if (model.SubDepartmentID > 0)
                    {
                        var subdept = new SubDepartmentService().GetSubDepartmentDetails(model.SubDepartmentID);
                        subDeptName = "/" + subdept.SubDepartmentName;
                    }

                    this.ShowMessage(Helpers.MessageType.Success, "New document for " + deptName + subDeptName + " created/revised successfully");
                    return RedirectToAction("Index", "DocumentLibrary");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", ex.Message);
                }
            }
            
            // Rebuild data
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            List<DepartmentModel> depts = new OrganizationService().GetOrganizationByID(OrgID).Departments;
            ViewBag.Departments = depts;
            ViewBag.SubDepartments = new List<SubDepartmentModel>();
            

           
            return View(model);
        }
        //
        // GET: /Account
        [Authorize]
        public ActionResult Revise(int id)
        {
            
            Document docmodel = new DocumentFacade().GetDocumentDetails(id);
            var dept = new DepartmentService().GetDepartmentDetails(docmodel.DepartmentID);
            docmodel.DepartmentName = dept.DepartmentName;
            if (dept.SubDepartments != null)
            {
                var subdept = dept.SubDepartments.Where(item => item.SubDepartmentID.Equals(docmodel.SubDepartmentID)).ToList();
                if (subdept.Count > 0)
                {
                    docmodel.SubDepartmentName = subdept[0].SubDepartmentName;
                }
            }
            return View("Revise", docmodel);
        }

        //
        // GET: /Account
        public ActionResult DCR()
        {
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            DocumentFacade facade = new DocumentFacade();
            List<DocumentChangeRequest> list = new List<DocumentChangeRequest>();
            list = facade.GetDocumentChangeRequestList(OrgID);
            ViewBag.DCRs = list;

            return View("DCR");

        }
        //
        // GET: /Account
        [JsonExceptionFilter]
        public ActionResult ChangeRequest(int id, int dcr)
        {

            bool isAuthorized = CheckDocumentLevelPermissions(id, "Raise Change Request");
            ViewBag.HideGenerateButton = false;
            if (isAuthorized)
            {
                DocumentFacade facade = new DocumentFacade();
                DocumentChangeRequest dcrmodel = new DocumentChangeRequest();
                
                dcrmodel = facade.GetDocumentChangeRequest(id, dcr);
                    
                dcrmodel.SelectedDocument = facade.GetDocumentDetails(id > 0 ? id : dcrmodel.DocumentID);
                if (!string.IsNullOrWhiteSpace(dcrmodel.RequestNumber))
                    ViewBag.HideGenerateButton = true;

                int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
                List<Document> doclist = new DocumentFacade().GetDocumentDetailsList(OrgID, 0, dcrmodel.SelectedDocument.DepartmentID, 0);
                    
                // Build document list from department docs
                List<EffectedDocuments> effDocList= new List<EffectedDocuments>();
                foreach(Document doc in doclist)
                {
                    effDocList.Add(new EffectedDocuments(){DocumentID = doc.DocumentID, DocumentName = doc.DocumentName, DocumentNumber = doc.DocumentNumber, VersionString= doc.VersionString, NextVersion= doc.NextVersion.ToString("N")});
                }
                dcrmodel.DepartmentDocumentsList = effDocList;

                List<EffectedDocuments> result = new List<EffectedDocuments>();
                if (!string.IsNullOrWhiteSpace(dcrmodel.EffectedDocumentIDs))
                {
                    List<string> items = dcrmodel.EffectedDocumentIDs.Split(',').ToList();
                    result = effDocList.Where(item => items.Any(category => category.Equals(item.DocumentID.ToString()))).ToList();
                }
                // Build effected documents list for change request
                dcrmodel.EffectedDocuments = result;

                ViewData["DocList"] = JsonHelper.JsonSerializer(effDocList, typeof(List<EffectedDocuments>));
                    
                // return Json(doclist, JsonRequestBehavior.AllowGet);
               
                return View("ChangeRequest", dcrmodel);
            }
            else
            {
                throw new Exception("Access denied! You donot have permissions on change request.");
            }

        }
        //
        // GET: /Account
        [HttpPost]
        public ActionResult SaveChangeRequest(DocumentChangeRequest model)
        {
            model.Comment1By = Request.Cookies["UserName"].Value;
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            int requestNumber = new DocumentFacade().SaveChangeRequest(model, Request.Cookies["UserEmail"].Value, OrgID);
            TempData.Clear();
            this.ShowMessage(Helpers.MessageType.Success, "Change request submitted successfully.");
            return RedirectToAction("Index", "DocumentLibrary");
        }
        public void Download(string FileName, string FileType)
        {
            string fileName = Server.MapPath("~/WorkSpaces/" + FileName);
            FileInfo f = new FileInfo(fileName);
            byte[] content = System.IO.File.ReadAllBytes(fileName);
            Response.ClearHeaders();
            Response.ClearContent();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Length", content.Length.ToString());
            Response.AppendHeader("content-disposition", "attachment; filename=" + f.Name);
            Response.BinaryWrite(content);
            Response.BufferOutput = false;
            Response.Flush();
            Response.Close();
            Response.End();
            
        }
        
        [HttpGet]
        public ActionResult Viewer(string SourceFile, string FileType, string DocNumber, string DocVer, string FileName)
        {
            SourceFile = Server.UrlDecode(SourceFile);
            DocumentViewer model = new DocumentViewer();
            model.DocNumber = Server.UrlDecode(DocNumber);
            model.DocVer = DocVer;
            model.FileName = Server.UrlDecode(FileName);
            if (FileType.Equals(".pdf"))
            {
                model.DocumentPath = "/WorkSpaces/" + SourceFile;
            }
            else
            {
                try
                {
                    SourceFile = Server.MapPath("~/WorkSpaces/" + SourceFile);
                    string response = DocumentHelper.ConvertToMht(SourceFile, FileType);
                    response = response.Replace(Server.MapPath("~/WorkSpaces/"), "/WorkSpaces/").Replace("\\", "/");
                    model.DocumentPath = response;
                }
                catch(Exception ex) {
                    
                }
            }
            return PartialView(model);
        }


		[AcceptVerbs(HttpVerbs.Get)]
        public JsonResult CheckPublishPermission()
        {
            if (Request.Cookies["RoleGroup"].Value.Equals("Administrators"))
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            return Json(false, JsonRequestBehavior.AllowGet);
        }
        
        public JsonResult ExecuteDocumentWorkflow(int DocID)
        {
            return Json(new DocumentFacade().ExecuteDocumentWorkflow(DocID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult PublishDocument(int DocID)
        {
            return Json(new DocumentFacade().ExecuteDocumentWorkflow(DocID, "Published"), JsonRequestBehavior.AllowGet);
        }

		[AcceptVerbs(HttpVerbs.Get)]
        public JsonResult GenerateChangeRequestNumber(int id)
        {
            return Json(new DocumentFacade().GenerateChangeRequestNumber(id), JsonRequestBehavior.AllowGet);
        }
        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult GetChangeRequestNumber(int id)
        {
            return Json(new DocumentFacade().GetDocumentChangeRequest(id,0).RequestNumber ?? "", JsonRequestBehavior.AllowGet);
        }
        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult LoadSubDepartmentsByDepartment(int id)
        {
            var modelList = new DepartmentService().GetDepartmentDetails(id).SubDepartments;
            if (modelList != null)
            {
                var modelData = modelList.Select(m => new SelectListItem()
                {
                    Text = m.SubDepartmentName,
                    Value = m.SubDepartmentID.ToString(),

                });
                return Json(modelData, JsonRequestBehavior.AllowGet);
            }
            return Json(new object(), JsonRequestBehavior.AllowGet);

        }

        public JsonResult BuildDocumentList(string dept, string subdept)
        {
            var doclist = new List<Document>();
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            int UserID = 0;
            int.TryParse(Request.Cookies["UserID"].Value, out UserID);
            string UserEmail = Request.Cookies["UserEmail"].Value;
            doclist = new DocumentFacade().GetDocumentDetailsList(OrgID, UserID, Convert.ToInt32(dept), Convert.ToInt32(subdept));
            return Json( doclist , JsonRequestBehavior.AllowGet);
        }

        [JsonExceptionFilter]
        public JsonResult GetDocumentHistory(int id)
        {
            bool isAuthorized = CheckDocumentLevelPermissions(id, "Doc History");
            if (isAuthorized)
            {
                var doclist = new List<Document>();
                doclist = new DocumentFacade().GetDocumentHistory(id);
                return Json(doclist, JsonRequestBehavior.AllowGet);
            }
            else
            {
                throw new Exception("Access denied! You donot have permissions to view history.");
            }
        }
        
        [JsonExceptionFilter]
        public JsonResult CheckoutDocument(int docid, bool status)
        {
            // Check permission
            bool isAuthorized = CheckDocumentLevelPermissions(docid, "Doc Review");
            if (isAuthorized)
            {
                string user = Request.Cookies["UserEmail"].Value;
                bool success = new DocumentFacade().CheckoutDocument(docid, status, user);
                return Json(success);
            }
            else
            {
                throw new Exception("Access denied! You donot have permissions to review/revise the document.");
            }
        }

        [JsonExceptionFilter]
        public JsonResult DeleteDocument(int docid)
        {
            // Check permission
            bool isAuthorized = CheckDocumentLevelPermissions(docid, "Doc Delete");
            if (isAuthorized)
            {
                string user = Request.Cookies["UserEmail"].Value;
                bool success = new DocumentFacade().DeleteDocument(docid, user);
                return Json(success);
            }
            else
            {
                throw new Exception("Access denied! You donot have permissions to delete the document.");
            }
        }
        public JsonResult SearchDocType(string docType)
        {
            var docTypelist = new List<Tuple<string, string>>();
            
            int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
            docTypelist = BuildDocTypeList(OrgID);
            
            var searchedlist = from user in docTypelist
                               where user.Item2.ToUpper().Contains(docType.ToUpper())
                               select user;
            return Json(new { Items = searchedlist });
        }
        
        #region Methods
        private void BuildDocumentTree()
        {
            string dir;
            // If path not selected form document tree, set default to workspaces' root
            if (Request.Form["dir"] == null || Request.Form["dir"].Length <= 0)
            {
                int OrgID = int.Parse(Request.Cookies["OrgID"].Value);
                OrganizationModel model = new OrganizationService().GetOrganizationByID(OrgID);
                dir = Server.MapPath("~/WorkSpaces/" + model.OrganizationID + "/");
            }
            else  dir = Server.UrlDecode(Request.Form["dir"]);

            DirectoryInfo di = new System.IO.DirectoryInfo(dir);
            Response.Write("<ul class=\"jqueryFileTree\" style=\"display: none;\">\n");

            // Check file metadata file exists. If exists then exclude those folders from folder list
            FileInfo[] di_files = di.GetFiles();
            foreach (DirectoryInfo di_child in di.GetDirectories())
            {
                bool isFileExists = false;
                foreach (FileInfo fi in di_files)
                {
                    if (fi.Name.Replace(".xml", "").Equals(di_child.Name)) isFileExists = true;
                }
                if (!isFileExists)
                {
                    Response.Write("\t<li class=\"directory collapsed\"><a href=\"#\" rel=\"" + dir + di_child.Name + "/\">" + di_child.Name + "</a></li>\n");
                }
            }
            foreach (FileInfo fi in di_files)
            {
                // Check files based on metadata and load in files
                if (fi.Extension.Contains("xml"))
                {
                    Document doc = (Document)XmlHelper.Deserialize(System.IO.File.ReadAllText(fi.FullName), typeof(Document));
                    string docpath = Server.MapPath("~/WorkSpaces/" + doc.PhysicalPath + doc.DocumentName + doc.FileType);
                    Response.Write("\t<li class=\"file ext_" + doc.FileType.Substring(1).ToLower() + "\"><a href=\"#\" rel=\"" + doc.DocumentID + "\">" + fi.Name.Replace(".xml", doc.FileType) + "</a></li>\n");
                }
            }
            Response.Write("</ul>");
            
        }
        private List<Tuple<string,string>> BuildDocTypeList(int OrgID)
        {
            List<SubLevel> doclevels = new DocumentLevelsFacade().GetDocumentLevels(OrgID);
            List<Tuple<string, string>> result = new List<Tuple<string, string>>();
            foreach (SubLevel doc in doclevels)
            {
                result.Add(new Tuple<string, string>(doc.Name, doc.Abbreviate ));
            }

            return result;
        }
        private List<Tuple<string>> BuildDocTypeList_OldCode(int OrgID)
        {
            List<Level> doclevels = new DocumentLevelService().GetDocumentLevelList(OrgID);

            // Build doc hierarchy for all levels
            List<DocType> templist = new List<DocType>();
            Level firstlevel = doclevels[0];
            for (int s = 0; s < firstlevel.sublevels.Count; s++)
            {
                SubLevel sub = firstlevel.sublevels[s];
                DocType doc = new DocType() { DocName = sub.Abbreviate, Description = sub.Name };
                AddRecursive (doc, 1, doclevels);
                templist.Add(doc);
            }

            // Get all lowermost levels into doctypelist
            List<DocType> docTypelist = new List<DocType>();
            foreach (DocType type in templist)
            {
                docTypelist.AddRange(type.AllChilds);
            }

            // Process all childs to doc name list
            List<Tuple<string>> result = new List<Tuple<string>>();
            foreach (DocType doc in docTypelist)
            {
                result.Add(new Tuple<string>(doc.DocPath));
            }

            return result;
        }
        private void AddRecursive(DocType doc, int nextLevel, List<Level> doclevels)
        {
            if (nextLevel < doclevels.Count)
            {
                Level lev = doclevels[nextLevel];
                foreach (SubLevel sub in lev.sublevels)
                {
                    doc.Childs.Add(new DocType() { DocName = sub.Abbreviate, Description = sub.Name, Parent = doc });
                }
                foreach (DocType ty in doc.Childs)
                {
                    AddRecursive(ty, nextLevel + 1, doclevels);
                }
            }
        }
        private bool CheckDocumentLevelPermissions(int docid, string role)
        {
            int UserID = int.Parse(Request.Cookies["UserID"].Value);
            Document doc = new DocumentFacade().GetDocumentDetails(docid);
            return Framework.Security.SecurityBase.IsUserRoleAuthorized(UserID, doc.DepartmentID, doc.SubDepartmentID, role);
        }
        #endregion

    }
    

}
