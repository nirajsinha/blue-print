using System.Web.Mvc;
using Confluence.Blueprint.Web.Helpers;

namespace Confluence.Blueprint.Web.Controllers
{
	public static class ControllerExtensions
	{
		public static void ShowMessage(this BaseController controller, MessageType messageType, string message, bool showAfterRedirect = true)
		{
			var messageTypeKey = messageType.ToString();
			if (showAfterRedirect)
			{
				controller.TempData[messageTypeKey] = message;
			}
			else
			{
				controller.ViewData[messageTypeKey] = message;
			}
		}
	}

    

}