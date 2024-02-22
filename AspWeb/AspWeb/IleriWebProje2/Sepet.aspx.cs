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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString);
        static int SatisAdet=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglan.Open();
            string kullanıcı_ad = Membership.GetUser().UserName;
            SqlCommand oku = new SqlCommand("select * from Sepet where kullanici_adi=@id", baglan);
            oku.Parameters.AddWithValue("@id", kullanıcı_ad);
            SqlDataReader dr = oku.ExecuteReader();
            ListView1.DataSource = dr;
            ListView1.DataBind();
            baglan.Close();

            baglan.Open();
            SqlCommand oku2 = new SqlCommand("select * from Sepet where kullanici_adi=@id",baglan);
            oku2.Parameters.AddWithValue("@id", kullanıcı_ad);
            SqlDataAdapter da= new SqlDataAdapter(oku2);
            DataTable dt=new DataTable();
            da.Fill(dt);
            int toplam = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                toplam += Convert.ToInt32(dt.Rows[i][3].ToString());
            }
            Label4.Text = toplam.ToString();
            baglan.Close();

            baglan.Open();
            SqlCommand oku3 = new SqlCommand("select * from Sepet where kullanici_adi=@id", baglan);
            oku3.Parameters.AddWithValue("@id", kullanıcı_ad);
            SqlDataAdapter da1 = new SqlDataAdapter(oku3);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            int toplam1 = 0;
            int sayi1 = 0;
            int sayi2=0;
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                sayi1 = Convert.ToInt32(dt1.Rows[i][4].ToString());
                sayi2= Convert.ToInt32(dt1.Rows[i][3].ToString());
                toplam1 += sayi1 * sayi2;

            }
            Label2.Text = toplam1.ToString();
            baglan.Close();

        }

        void siparis_kayit()
        {
            string kullanici = Membership.GetUser().UserName;

            using (SqlConnection baglan = new SqlConnection(WebConfigurationManager.ConnectionStrings["siteDB"].ConnectionString))
            {
                baglan.Open();

                using (SqlCommand oku = new SqlCommand("select * from Sepet where kullanici_adi=@id", baglan))
                {
                    oku.Parameters.AddWithValue("@id", kullanici);

                    using (SqlDataAdapter da = new SqlDataAdapter(oku))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            string urun_id = dt.Rows[i][1].ToString();
                            int adet = Convert.ToInt32(dt.Rows[i][3]);

                            using (SqlCommand ekle = new SqlCommand("insert into Satis values(@uyeid, @urunid, @satilanadet)", baglan))
                            {
                                ekle.Parameters.AddWithValue("@uyeid", kullanici);
                                ekle.Parameters.AddWithValue("@urunid", urun_id);
                                ekle.Parameters.AddWithValue("@satilanadet", adet);

                                ekle.ExecuteNonQuery();
                            }
                        }
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            siparis_kayit();
            kayitsil();
            Response.Redirect("Sepet.aspx");
         
        }

        void kayitsil()
        {
            baglan.Open();
            string kullanici = Membership.GetUser().UserName;
            SqlCommand sil = new SqlCommand("delete from Sepet where kullanici_adi=@kadi",baglan);
            sil.Parameters.AddWithValue("@kadi", kullanici);
            sil.ExecuteNonQuery();
            baglan.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            kayitsil();
        }

    } 
}

   