using LTT.BAL.Repositories;
using LTT.Models.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using Group = LTT.Models.DataModels.Group;

namespace LTT.Areas.Backend.Controllers
{
    // GET: Backend/Groups
    public class GroupsController : BaseController
    {
        Repository<Group> _group;
        Repository<Business> _business;
        Repository<Role> _role;
        Repository<Grouprole> _groupRole;
        public GroupsController()
        {
            _group = new Repository<Group>();
            _business = new Repository<Business>();
            _role = new Repository<Role>();
            _groupRole = new Repository<Grouprole>();
        }
        public ActionResult Index()
        {
            ViewBag.Businesses = _business.GetAll();
            ViewBag.Roles = _role.GetAll();
            return View(_group.GetAll());
        }

    }
}