using System.Web;
using System.Web.Mvc;

namespace IDS311_2021_03_Equipo_1
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
