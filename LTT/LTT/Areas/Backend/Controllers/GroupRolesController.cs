using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Controllers
{
    public class GroupRolesController : BaseController
    {
        // GET: Backend/GroupRolesController
        Repository<Grouprole> _groupRole;
        public GroupRolesController()
        {
            _groupRole = new Repository<Grouprole>();
        }

        // GET: Admin/GroupRoles
        public ActionResult GetRoles(int id)
        {
            LTTDB db = new LTTDB();
            var data = db.Grouproles
                .Where(x => x.Groupid == id)
                .Select(x => new
                {
                    RoleId = x.Roleid,
                    BusinessId = x.Businessid
                }).ToList();
            return Json(data, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdatePermission(Grouprole gr)
        {
            // Kiểm tra quyền đã được gán hay chưa
            if (_groupRole.GetAll().Any(x => x.Groupid == gr.Groupid && x.Roleid == gr.Roleid && x.Businessid == gr.Businessid))
            {
                // nếu có thì xóa (hủy quyền)
                // lấy đối tượng cần xóa
                var obj = _groupRole.GetAll().FirstOrDefault(x => x.Roleid == gr.Roleid && x.Roleid == gr.Roleid && x.Businessid == gr.Businessid);
                _groupRole.Remove(obj);
                return Json(new
                {
                    Status = 200,
                    Message = "Hủy quyền thành công!"
                }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                _groupRole.Add(gr);
                return Json(new
                {
                    Status = 200,
                    Message = "Gán quyền thành công!"
                }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}