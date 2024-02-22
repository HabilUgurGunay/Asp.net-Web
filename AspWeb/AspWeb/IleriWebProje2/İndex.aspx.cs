using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                if (!IsPostBack)
                {
                    if (Roles.IsUserInRole("Admin"))
                    {
                        Response.Redirect("AdminAnasayfa.aspx");
                    }
                }
            }

            baglan.Open();
            SqlCommand oku=new SqlCommand("Select * from urun",baglan);
            SqlDataReader dr= oku.ExecuteReader();
            ListView1.DataSource = dr;
            ListView1.DataBind();
            baglan.Close();

        }
    }
}