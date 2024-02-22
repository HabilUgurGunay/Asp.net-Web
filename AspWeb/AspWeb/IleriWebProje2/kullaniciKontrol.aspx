<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kullaniciKontrol.aspx.cs" Inherits="IleriWebProje2.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
    .auto-style2 {
        margin-top: 26px;
    }
    .auto-style3 {
        width: 100%;
        height: 408px;
    }
    .auto-style9 {
        width: 250px;
    }
    .auto-style12 {
        width: 250px;
        height: 32px;
    }
    .auto-style13 {
        height: 32px;
    }
    .auto-style14 {
        width: 250px;
        height: 37px;
    }
    .auto-style15 {
        height: 37px;
    }
    .auto-style16 {
        width: 250px;
        height: 38px;
    }
    .auto-style17 {
        height: 38px;
    }
    .auto-style18 {
        width: 250px;
        height: 33px;
    }
    .auto-style19 {
        height: 33px;
    }
    .auto-style20 {
        width: 250px;
        height: 34px;
    }
    .auto-style21 {
        height: 34px;
    }
    .auto-style22 {
        width: 250px;
        height: 35px;
    }
    .auto-style23 {
        height: 35px;
    }
    .auto-style24 {
        width: 250px;
        height: 44px;
    }
    .auto-style25 {
        height: 44px;
    }
    .auto-style26 {
        border-radius: 20px;
        background-color: darkgray;
        font-family: 'Book Antiqua';
        font-weight: bold;
        font-size: 18px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="554px">
    <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adını Giriniz : " CssClass="kayitbutton"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style26" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" CssClass="kayitbutton"></asp:Label>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2" Height="396px">
        <table class="auto-style3">
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label3" runat="server" CssClass="kayitbutton" Text="Kullanıcı Adı"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label12" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="Label4" runat="server" CssClass="kayitbutton" Text="E-Mail"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:Label ID="Label13" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label5" runat="server" CssClass="kayitbutton" Text="Hesap Onaylı Mı"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label14" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" CssClass="kayitbutton" Text="Hesap Kilitli Mi"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Label15" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label7" runat="server" CssClass="kayitbutton" Text="Giriş Yapılmış Mı"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label16" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server" CssClass="kayitbutton" Text="Hesabın Oluşturulma Tarihi"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label17" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label9" runat="server" CssClass="kayitbutton" Text="En Son Giriş Tarihi"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label18" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" CssClass="kayitbutton" Text="Parola Değiştirme Zamanı"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label19" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="Label11" runat="server" CssClass="kayitbutton" Text="En Son Aktivasyon Zamanı"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="Label20" runat="server" CssClass="kayitbutton"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="kayitbutton" OnClick="Button1_Click" Text="Hesap Kilidini Aç" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="kayitbutton" OnClick="Button2_Click" Text="Kullanıcıyı Sil" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Panel>
</asp:Content>
