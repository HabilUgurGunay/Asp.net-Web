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
    public partial class WebForm8 : System.Web.UI.Page
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

            if (Page.IsPostBack == false)
            {
                baglan.Open();
                SqlCommand oku = new SqlCommand("select * from Kategori", baglan);
                SqlDataReader gelen_veri = oku.ExecuteReader();

                DropDownList1.Items.Add("Kategori Seçin");
                while (gelen_veri.Read() == true)
                {
                    ListItem yeni = new ListItem();
                    yeni.Text = gelen_veri[1].ToString();
                    yeni.Value = gelen_veri[0].ToString();
                    DropDownList1.Items.Add(yeni);
                }
                baglan.Close();

            }

            DataTable dt = UrunDoldur();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex > 0 && DropDownList2.SelectedIndex > 0 && DropDownList3.SelectedIndex > 0)
            {
                if (FileUpload2.HasFile == true)
                {
                    string secilen_dosya = FileUpload2.FileName;
                    string uzanti = System.IO.Path.GetExtension(secilen_dosya);
                    if (uzanti == ".jpg" || uzanti == ".jpeg" || uzanti == ".png" || uzanti == ".jfif")
                    {
                        FileUpload2.SaveAs(Server.MapPath("img/") + secilen_dosya);
                        baglan.Open();
                        SqlCommand ekle = new SqlCommand("insert urun values (@kategori,@urun,@aciklama,@ozellik,@fiyat,@eski,@resim,@statu,@durum,@stok)", baglan);
                        ekle.Parameters.AddWithValue("@kategori", DropDownList1.SelectedValue);
                        ekle.Parameters.AddWithValue("@urun", TextBox6.Text);
                        ekle.Parameters.AddWithValue("@aciklama", TextBox9.Text);
                        ekle.Parameters.AddWithValue("@ozellik", TextBox10.Text);
                        ekle.Parameters.AddWithValue("@fiyat", TextBox4.Text);
                        ekle.Parameters.AddWithValue("@eski", TextBox5.Text);
                        ekle.Parameters.AddWithValue("@resim", secilen_dosya);
                        ekle.Parameters.AddWithValue("@statu", DropDownList2.SelectedValue);
                        ekle.Parameters.AddWithValue("@durum", DropDownList3.SelectedValue);
                        ekle.Parameters.AddWithValue("@stok", TextBox8.Text);
                        ekle.ExecuteNonQuery();
                        baglan.Close();
                        Response.Redirect("adminUrunEkle.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Geçersiz dosya uzantisi')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Lütfen önce ürün resmini seçin')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Lütfen ürün kategorisini,ürün statüsünü ve ürün durumunu seçin')</script>");
            }
        }

        DataTable UrunDoldur()
        {
            SqlCommand okuUrun = new SqlCommand("select * from urun", baglan);
            SqlDataAdapter da = new SqlDataAdapter(okuUrun);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string urun_resmi;
            if (FileUpload2.HasFile == false)
            {
                urun_resmi = Label12.Text;
            }
            else
            {
                urun_resmi = FileUpload2.FileName;
            }

            string uzanti = System.IO.Path.GetExtension(urun_resmi);
            if (uzanti == ".jpg" || uzanti == ".jpeg" || uzanti == ".png" || uzanti == ".jfif")
            {
                baglan.Open();
                SqlCommand guncelle = new SqlCommand("update urun set kat_id=@kategori, urunAd=@urun,aciklama=@aciklama,ozellik=@ozellik,fiyat=@fiyat,eski_fiyat=@eski,@resim=resim,statu=@statu,durum=@durum,stok=@stok where urunId=@id",baglan);
                guncelle.Parameters.AddWithValue("@kategori", DropDownList1.SelectedValue);
                guncelle.Parameters.AddWithValue("@urun", TextBox6.Text);
                guncelle.Parameters.AddWithValue("@aciklama", TextBox9.Text);
                guncelle.Parameters.AddWithValue("@ozellik", TextBox10.Text);
                guncelle.Parameters.AddWithValue("@fiyat", TextBox4.Text);
                guncelle.Parameters.AddWithValue("@eski", TextBox5.Text);
                guncelle.Parameters.AddWithValue("@resim", urun_resmi);
                guncelle.Parameters.AddWithValue("@statu", DropDownList2.SelectedValue);
                guncelle.Parameters.AddWithValue("@durum", DropDownList3.SelectedValue);
                guncelle.Parameters.AddWithValue("@stok", TextBox8.Text);
                guncelle.Parameters.AddWithValue("@id", TextBox2.Text);
                guncelle.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("adminUrunEkle.aspx");

            }
            else
            {
                Response.Write("<script>alert('Geçersiz Dosya Uzantısı')</script>");
            }




        }

        protected void Button11_Click(object sender, EventArgs e)
        {

            Panel3.Visible = false;
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Panel2.Visible = true;
            DataTable dt = UrunDoldur();
            int secilen_satir_indeksi = Convert.ToInt32(e.CommandArgument);
            TextBox2.Text = dt.Rows[secilen_satir_indeksi][0].ToString();
            DropDownList1.SelectedValue = dt.Rows[secilen_satir_indeksi][1].ToString();
            TextBox6.Text = dt.Rows[secilen_satir_indeksi][2].ToString();
            TextBox9.Text = dt.Rows[secilen_satir_indeksi][3].ToString();
            TextBox10.Text = dt.Rows[secilen_satir_indeksi][4].ToString();
            TextBox4.Text = dt.Rows[secilen_satir_indeksi][5].ToString();
            TextBox5.Text = dt.Rows[secilen_satir_indeksi][6].ToString();
            Label12.Text = dt.Rows[secilen_satir_indeksi][7].ToString();
            DropDownList2.Text = dt.Rows[secilen_satir_indeksi][8].ToString();
            DropDownList3.Text = dt.Rows[secilen_satir_indeksi][9].ToString();
            TextBox8.Text = dt.Rows[secilen_satir_indeksi][10].ToString();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlCommand sil = new SqlCommand("delete from urun where urunId=@id",baglan);
            baglan.Open();
            sil.Parameters.AddWithValue("@id", e.Values[0].ToString());
            sil.ExecuteNonQuery();
            baglan.Close();
            Response.Redirect("adminUrunEkle.aspx");
        }
    }
}