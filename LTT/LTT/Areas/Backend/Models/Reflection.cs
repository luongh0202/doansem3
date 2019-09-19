using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace LTT.Areas.Backend.Models
{
    public class Reflection
    {
        /// <summary>
        /// Method get all controller
        /// </summary>
        /// <param name="namespaces">Namespace name</param>
        /// <returns></returns>
        public List<Type> GetControllers(string namespaces)
        {
            Assembly assembly = Assembly.GetExecutingAssembly();
            IEnumerable<Type> types = assembly.GetTypes()
                .Where(t => typeof(Controller).IsAssignableFrom(t) && t.Namespace.Contains(namespaces))
                .OrderBy(x => x.Name);
            return types.ToList();
        }
    }
}