using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace LTT.Areas.Backend.Models
{
    public class CustomizeAuthAttribute : AuthorizeAttribute
    {
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (HttpContext.Current.Session["admin"] == null)
            {
                return false;
            }
            var _user = (Admin)HttpContext.Current.Session["admin"];
            // lấy các quyền mà action yêu cầu
            var requiredRoles = this.Roles.Split(',').Where(x => !String.IsNullOrEmpty(x)).ToList();
            // lấy tên controller hiện tại
            var rd = httpContext.Request.RequestContext.RouteData;
            string _ctrl = rd.GetRequiredString("controller");
            if (requiredRoles.Count > 0) // Có yêu cầu quyền
            {
                // Lấy các quyền của user hiện tại
                var _roles = HttpContext.Current.Session["roles"] as IEnumerable<string>;
                // Kiểm tra xem có tồn tại các quyền yêu cầu trong số quyền đã gán hay không
                var check = false;
                foreach (var item in requiredRoles)
                {
                    var _r = _ctrl + "_" + item;
                    if (_roles.Any(x => x == _r))
                    {
                        check = true;
                        break;
                    }
                }
                if (check)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return true;
        }
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            filterContext.Result = new RedirectToRouteResult(new
                    RouteValueDictionary(new { controller = "Home", action = "Index", Area = "Backend" }));
            base.HandleUnauthorizedRequest(filterContext);
        }
    }
}