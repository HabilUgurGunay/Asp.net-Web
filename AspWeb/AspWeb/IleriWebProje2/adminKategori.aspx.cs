using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString);
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

            DataTable dt = new DataTable();
            dt = Kategori_oku();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[2].Text = "Kategori ID";
            GridView1.HeaderRow.Cells[3].Text = "Kategori Adı";
        }

        DataTable Kategori_oku()
        {
            baglan.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from kategori", baglan);
            DataTable dt = new DataTable();
            da.Fill(dt);
            baglan.Close();
            return dt;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand ekle = new SqlCommand("insert into Kategori values(@kategori)", baglan);
            ekle.Parameters.AddWithValue("@kategori", TextBox3.Text);
            ekle.ExecuteNonQuery();
            baglan.Close();
            Response.Redirect("adminKategori.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = Kategori_oku();

            int secilenSatir = Convert.ToInt32(e.CommandArgument);

            TextBox2.Text = dt.Rows[secilenSatir][0].ToString();
            TextBox3.Text = dt.Rows[secilenSatir][1].ToString();
            Panel3.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand guncelle = new SqlCommand("update Kategori set kat_ad=@kategori where kat_id=@id", baglan);
            guncelle.Parameters.AddWithValue("@kategori", TextBox3.Text);
            guncelle.Parameters.AddWithValue("@id", TextBox2.Text);
            guncelle.ExecuteNonQuery();
            baglan.Close();
            Response.Redirect("adminKategori.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string secilenKategori = e.Values[0].ToString();
            baglan.Open();
            SqlCommand sil = new SqlCommand("delete from Kategori where kat_id=@id", baglan);
            sil.Parameters.AddWithValue("@id", secilenKategori);
            sil.ExecuteNonQuery();
            baglan.Close();
            Response.Redirect("adminKategori.aspx");
        }

    }
}