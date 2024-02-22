using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
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
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string kullanici_adi = TextBox1.Text;
            MembershipUser kullanici = Membership.GetUser(kullanici_adi);

            if (kullanici != null)
            {
                Panel2.Visible = true;
                Label12.Text = kullanici.UserName;
                Label13.Text = kullanici.Email;
                if (kullanici.IsApproved == true)
                {
                    Label14.Text = "Onaylı";
                }
                else Label14.Text = "Onaylı Değil";
                if (kullanici.IsLockedOut == true)
                {
                    Label15.Text = "Kullanıcının Hesabı Kilitli";
                    Button1.Visible = true;
                }
                else
                {
                    Label15.Text = "Kullanıcının Hesabı Kilitli Değildir";
                    Button1.Visible = false;
                }
                if (kullanici.IsOnline == true)
                {
                    Label16.Text = "Kullanıcı Çevrimiçi";
                }
                else Label16.Text = "Kullanıcı Çevrimdışı";
                Label17.Text = kullanici.CreationDate.ToString();
                Label18.Text = kullanici.LastLoginDate.ToString();
                Label19.Text = kullanici.LastPasswordChangedDate.ToString();
                Label20.Text = kullanici.LastActivityDate.ToString();
            }
            else Label2.Text = "Bu Kullanıcı Kayıtlı Değil";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MembershipUser kullanici = Membership.GetUser(TextBox1.Text);
            if (kullanici != null && kullanici.IsLockedOut == true)
            {
                kullanici.UnlockUser();
                Response.Redirect("kullaniciKontrol.aspx");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string kullanici_adi = TextBox1.Text;
            Membership.DeleteUser(kullanici_adi);
            Response.Redirect("kullaniciKontrol.aspx");
        }
    }
}