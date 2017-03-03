using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Confluence.Blueprint.Models;
using System.Data;
using Framework.Data;

namespace Confluence.Blueprint.BusinessFacade
{
    public class CommonFacade
    {
        public UserDashboard GetDashboardData(int UserID)
        {
            UserDashboard dash = new UserDashboard();
            DataSet ds = Db.ExecuteDataSet("prcGetUserDashboardData", CommandType.StoredProcedure,
                        Db.CreateParameter("@UserID", UserID)
                        );
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                dash.TotalAssignedCount = Convert.ToInt32(ds.Tables[0].Rows[0]["TotalAssignedCount"]);
                dash.TotalUploadedCount = Convert.ToInt32(ds.Tables[0].Rows[0]["TotalUploadedCount"]);
                dash.TotalDocsCount = Convert.ToInt32(ds.Tables[0].Rows[0]["TotalDocsCount"]);
            }
            return dash;
        }
    }
}
