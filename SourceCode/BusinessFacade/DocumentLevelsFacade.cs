using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using Framework.Data;
namespace Confluence.Blueprint.BusinessFacade
{
    public class DocumentLevelsFacade
    {
        
        public bool Save(List<Level> levels)
        {
            int success = 0;
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                int initialCall = 1; // It will deactivate all previous records
                foreach (Level level in levels)
                {
                    foreach (SubLevel subLevel in level.sublevels)
                    {
                        success = (int)Db.ExecuteScalar("prcSaveDocumentLevels", CommandType.StoredProcedure,
                                    Db.CreateParameter("@OrganizationID", level.OrganizationID),
                                    Db.CreateParameter("@LevelID", subLevel.LevelID),
                                    Db.CreateParameter("@SubLevelID", subLevel.SubLevelID),
                                    Db.CreateParameter("@Name", subLevel.Name),
                                    Db.CreateParameter("@Abbreviate", subLevel.Abbreviate),
                                    Db.CreateParameter("@DeactivateOld", initialCall)
                                    );
                        initialCall = 0;
                    }
                }
                scope.Complete();
            }
            return success == 1 ? true : false;
        }

        public List<SubLevel> GetDocumentLevels(int OrgID)
        {
            DataSet ds = Db.ExecuteDataSet("prcGetDocumentLevels", CommandType.StoredProcedure,
                        Db.CreateParameter("@OrganizationID", OrgID)
                        );
            IList<SubLevel> docLevelInfo = new List<SubLevel>();
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                docLevelInfo = Db.MapReader<SubLevel>(ds.Tables[0]);
            }

            return docLevelInfo.ToList<SubLevel>();
        }

        public bool CheckAssociatedDocuments(int OrgID, string DocType)
        {
            object obj = Db.ExecuteScalar("prcCheckAssociatedDocuments", CommandType.StoredProcedure,
                        Db.CreateParameter("@OrganizationID", OrgID),
                        Db.CreateParameter("@DocType", DocType)
                        );
            
            return Convert.ToBoolean(obj);
        }
    }
    
}