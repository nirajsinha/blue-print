using System.Web;
using System.Web.Mvc;

namespace Confluence.Blueprint.Web.Controllers
{
    public class ErrorController : BaseController
    {
        public ActionResult DetailedError()
        {
            return PartialView();
        }

    }
}