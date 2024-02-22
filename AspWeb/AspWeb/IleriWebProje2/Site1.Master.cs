using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlAnchor htmlAnchor = FindControl("Girisss") as HtmlAnchor;
            HtmlAnchor htmlAnchorr = FindControl("Kayittt") as HtmlAnchor;
            HtmlAnchor htmlAnchorrr = FindControl("A1") as HtmlAnchor;

            if (htmlAnchor != null)
            {

                if (Context.User.Identity.IsAuthenticated)
                {
                    htmlAnchor.Style.Add("display", "none");
                    htmlAnchorr.Style.Add("display", "none");
                }
                else
                {
                    htmlAnchorrr.Style.Add("display", "none");

                }

            }
            baglan.Open();
            SqlCommand oku = new SqlCommand("select * from Kategori", baglan);
            SqlDataReader dr = oku.ExecuteReader();
            ListView1.DataSource = dr;
            ListView1.DataBind();
            baglan.Close();
        }
    }
}