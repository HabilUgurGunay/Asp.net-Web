using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                if (!Roles.IsUserInRole("Admin"))
                {
                    Response.Redirect("Giris.aspx?returnURL=" + Request.RawUrl);
                }
            }
            else
            {
                Response.Redirect("Giris.aspx?returnURL=" + Request.RawUrl);
            }
        }
    }
}