using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IleriWebProje2
{
    public partial class WebForm12 : System.Web.UI.Page
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

            rolleri_listele();
        }
        void rolleri_listele()
        {
            string[] roller = Roles.GetAllRoles();
            GridView1.DataSource = roller;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[1].Text = "Tanımlı Roller";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Lütfen Bir Rol Adı Giriniz!";
                return;
            }

            string rol_adi = TextBox1.Text;
            if (Roles.RoleExists(rol_adi) == true)
            {
                Label1.Text = "Bu Rol Zaten Kayıtlı, Farklı Bir Rol Giriniz!";
                return;
            }

            Roles.CreateRole(rol_adi);
            Label1.Text = "Rol Kaydı Tamamlandı!";
            rolleri_listele();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string silinecek_rol = e.Values[0].ToString();
            Roles.DeleteRole(silinecek_rol);
            rolleri_listele();
        }
    }
}