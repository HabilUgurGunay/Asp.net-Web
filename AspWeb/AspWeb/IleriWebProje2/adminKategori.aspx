<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKategori.aspx.cs" Inherits="IleriWebProje2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" Height="159px">
    <br />
    <br />
    <asp:Button ID="Button5" runat="server" CssClass="auto-style2" Text="Yeni Ekle" Font-Bold="True" Font-Size="Larger" Height="58px" Width="154px" OnClick="Button5_Click" />
</asp:Panel>
<asp:Panel ID="Panel3" runat="server" Height="258px">
    <asp:Label ID="Label1" runat="server" Text="Kategori ID : " CssClass="kayitbutton"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="kayitbutton" Text="Kategori Adı : "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button6" runat="server" CssClass="auto-style2" Text="Ekle" Width="120px" OnClick="Button6_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" CssClass="auto-style2" Text="Güncelle" Width="121px" OnClick="Button7_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" CssClass="auto-style2" Text="İptal" Width="121px" OnClick="Button8_Click" />
</asp:Panel>
<asp:Panel ID="Panel4" runat="server" Height="335px">
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="228px" Width="319px" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Panel>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
