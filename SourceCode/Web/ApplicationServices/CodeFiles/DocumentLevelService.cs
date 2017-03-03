using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Script.Serialization;
using Confluence.Blueprint.BusinessFacade;

namespace Confluence.Blueprint.Web.ApplicationServices
{
    [ScriptService]
    [WebService(Namespace = "http://tempuri2.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class DocumentLevelService : WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetDocumentLevels(int OrgID)
        {
            DocumentLevelsModel model = new DocumentLevelsModel();
            model.levels = this.GetDocumentLevelList(OrgID);
            
            JavaScriptSerializer oseializer = new JavaScriptSerializer();
            var parameters = oseializer.Serialize(model.levels);
            return parameters;
            
        }
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public bool CheckAssociatedDocuments(int OrgID, string DocType)
        {
            return new DocumentLevelsFacade().CheckAssociatedDocuments(OrgID, DocType);

        }
        
        internal List<Level> GetDocumentLevelList(int OrgID)
        {
            DocumentLevelsModel model = new DocumentLevelsModel();
            List<SubLevel> objList = new DocumentLevelsFacade().GetDocumentLevels(OrgID);
            if (objList.Count > 0)
            {
                int l = 0;
                Level lvl = new Level();
                SubLevel sublvl = new SubLevel();
                foreach (SubLevel sublevel in objList)
                {
                    if (sublevel.LevelID != l)
                    {

                        lvl = new Level() { LevelID = sublevel.LevelID, OrganizationID = OrgID };
                        model.levels.Add(lvl);
                        l = lvl.LevelID;
                    }
                    lvl.sublevels.Add(sublevel);
                }

            }

            return model.levels;

        }

    }
    
}