<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kullaniciRol.aspx.cs" Inherits="IleriWebProje2.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 213px;
    }
    .auto-style5 {
        width: 158px;
    }
    .auto-style6 {
        width: 213px;
        height: 47px;
    }
    .auto-style8 {
        width: 158px;
        height: 47px;
    }
    .auto-style9 {
        height: 47px;
    }
    .auto-style10 {
        height: 223px;
    }
    .auto-style11 {
        width: 213px;
        height: 54px;
    }
    .auto-style12 {
        height: 54px;
    }
    .auto-style13 {
        width: 241px;
        height: 47px;
    }
    .auto-style14 {
        width: 241px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="422px">
    <table class="auto-style2">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" CssClass="kayitbutton" Text="Kullanıcı Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="kayitbutton" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" CssClass="kayitbutton" Text="Rol Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="kayitbutton">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">
                <asp:GridView ID="GridView1" runat="server" Height="210px" Width="320px">
                </asp:GridView>
            </td>
            <td class="auto-style10" colspan="2">
                <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="210px" Width="320px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label3" runat="server" CssClass="kayitbutton" Text="Kullanıcı Adı Giriniz : "></asp:Label>
            </td>
            <td class="auto-style12" colspan="3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="kayitbutton"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" CssClass="kayitbutton" OnClick="Button1_Click" Text="Kullanıcıyı Role Ata" />
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Panel>
</asp:Content>
