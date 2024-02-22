using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                baglan.Open();
                SqlCommand oku = new SqlCommand("select * from urun where kat_id=@id", baglan);
                oku.Parameters.AddWithValue("@id", Request.QueryString["kategoriID"]);
                SqlDataReader dr = oku.ExecuteReader();
                ListView1.DataSource = dr;
                ListView1.DataBind();
                baglan.Close();
            }
        }
    }
}