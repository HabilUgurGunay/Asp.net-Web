<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kullaniciRolEkle.aspx.cs" Inherits="IleriWebProje2.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
     .auto-style2 {
         width: 100%;
     }
     .auto-style4 {
         width: 300px;
         height: 57px;
     }
     .auto-style5 {
         height: 57px;
     }
     .auto-style6 {
         width: 300px;
         height: 51px;
     }
     .auto-style7 {
         height: 51px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="446px">
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" CssClass="kayitbutton" Text="Eklenecek Rol Adını Giriniz : "></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="kayitbutton"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" CssClass="kayitbutton" OnClick="Button1_Click" Text="Rol Ekle" />
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="224px" OnRowDeleting="GridView1_RowDeleting" Width="320px">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle CssClass="kayitbutton" Width="60px" />
                        </asp:CommandField>
                    </Columns>
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
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
