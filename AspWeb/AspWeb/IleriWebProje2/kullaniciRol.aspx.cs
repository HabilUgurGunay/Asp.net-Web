using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm11 : System.Web.UI.Page
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

            if (Page.IsPostBack == false)
            {
                kullanicilari_listele();
                rolleri_listele();
            }
        }
        void kullanicilari_listele()
        {
            MembershipUserCollection kullanicilar = Membership.GetAllUsers();
            DropDownList1.DataSource = kullanicilar;
            DropDownList1.DataBind();
        }

        void rolleri_listele()
        {
            string[] roller = Roles.GetAllRoles();
            DropDownList2.DataSource = roller;
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label4.Text = "Lütfen Kullanıcı Adı Giriniz!";
                return;
            }
            string kullanici_adi = TextBox1.Text;

            MembershipUser kullanici = Membership.GetUser(kullanici_adi);
            if (kullanici == null)
            {
                Label4.Text = "Bu Kullanıcı Kayıtlı Değil. Sistemde kayıtlı bir kullanıcı giriniz! ";
                return;
            }

            string secilen_rol = DropDownList2.SelectedValue.ToString();
            if (Roles.IsUserInRole(kullanici_adi, secilen_rol) == true)
            {
                Label4.Text = "Bu kullanıcı Seçilen Role Zaten Eklenmiş, Lütfen Farklı bir kullanıcı ya da rol seçiniz!";
                return;
            }

            Roles.AddUserToRole(kullanici_adi, secilen_rol);
            Response.Redirect("kullaniciRol.aspx");

        }

        void kullanici_Rollerini_Listele()
        {
            string secilen_kullanici = DropDownList1.SelectedValue;
            string[] roller = Roles.GetRolesForUser(secilen_kullanici);
            GridView1.DataSource = roller;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            kullanici_Rollerini_Listele();
            GridView1.Visible = true;
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            kullanici_Rollerini_Listele();
            Visible = true;
            GridView1.Visible = true;
        }
    }
}