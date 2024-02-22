<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminUrunEkle.aspx.cs" Inherits="IleriWebProje2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">

        .auto-style2 {
            border-radius: 20px;
            background-color: darkgray;
            font-family: 'Book Antiqua';
            font-weight: bold;
            font-size: 18px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 262px;
        }
        .auto-style5 {
            width: 262px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style9 {
            width: 262px;
            height: 36px;
        }
        .auto-style10 {
            height: 36px;
        }
        .auto-style11 {
            width: 262px;
            height: 41px;
        }
        .auto-style12 {
            height: 41px;
        }
        .auto-style13 {
            width: 262px;
            height: 42px;
        }
        .auto-style14 {
            height: 42px;
        }
        .auto-style15 {
            width: 262px;
            height: 40px;
        }
        .auto-style16 {
            height: 40px;
        }
        .auto-style17 {
            width: 262px;
            height: 39px;
        }
        .auto-style18 {
            height: 39px;
        }
        .auto-style19 {
            width: 262px;
            height: 38px;
        }
        .auto-style20 {
            height: 38px;
        }
        .auto-style21 {
            width: 262px;
            height: 37px;
        }
        .auto-style22 {
            height: 37px;
        }
        .auto-style23 {
            border-radius: 20px;
            background-color: darkgray;
            font-family: 'Book Antiqua';
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 0px;
        }
    </style>
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
<asp:Panel ID="Panel3" runat="server" Height="510px">
    <table class="auto-style3">
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" CssClass="kayitbutton" Text="Ürün ID : "></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" CssClass="kayitbutton" Text="Ürün Kategorisini Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" CssClass="kayitbutton" Text="Ürün Adını Giriniz :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label4" runat="server" CssClass="kayitbutton" Text="Ürün Açıklamasını Giriniz : "></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style2" Height="22px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label5" runat="server" CssClass="kayitbutton" Text="Ürün Özelliklerini Giriniz : "></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style2" Height="22px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label6" runat="server" CssClass="kayitbutton" Text="Ürün Fiyatını Giriniz : "></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label7" runat="server" CssClass="kayitbutton" Text="Ürün Eski Fiyatını Giriniz : "></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label8" runat="server" CssClass="kayitbutton" Text="Ürün Resmini Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="auto-style23" EnableTheming="True" />
                &nbsp;
                <asp:Label ID="Label12" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" CssClass="kayitbutton" Text="Ürün Statüsünü Seçiniz"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2">
                    <asp:ListItem Value="0">--Ürün Statüsünü Seçin--</asp:ListItem>
                    <asp:ListItem>Manşet</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label10" runat="server" CssClass="kayitbutton" Text="Ürünün Durumunu Seçiniz"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style2">
                    <asp:ListItem Value="0">--Ürün Durumunu Seçiniz--</asp:ListItem>
                    <asp:ListItem>Sıfır</asp:ListItem>
                    <asp:ListItem>İkinci El</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="Label11" runat="server" CssClass="kayitbutton" Text="Ürünün Stoğunu Giriniz : "></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style2" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="Button12" runat="server" CssClass="auto-style2" OnClick="Button12_Click" Text="Ekle" Width="121px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" CssClass="auto-style2" OnClick="Button10_Click" Text="Güncelle" Width="121px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button11" runat="server" CssClass="auto-style2" OnClick="Button11_Click" Text="İptal" Width="121px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
</asp:Panel>
<asp:Panel ID="Panel4" runat="server" Height="430px">
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style2" OnRowCommand="GridView2_RowCommand" OnRowDeleting="GridView2_RowDeleting">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" >
            <ControlStyle BackColor="#A7A7A7" CssClass="auto-style2" />
            </asp:CommandField>
            <asp:TemplateField>
                <ItemTemplate>
                    <img src="img/<%#Eval("resim")%>" style="width:50px;height:50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ControlStyle BackColor="#A7A7A7" CssClass="auto-style2" />
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
</asp:Panel>
</asp:Content>
