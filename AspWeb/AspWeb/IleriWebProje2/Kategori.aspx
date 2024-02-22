<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="IleriWebProje2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                <asp:ListView ID="ListView1" runat="server">
	<ItemTemplate> 
		<div class="ürün">
            <img class="ürün1" src="img/<%# Eval("resim")%>" /> <span><%# Eval("urunAd")%> </span>
            <br />
            <span class="eskifiyat"><%#Eval("eski_fiyat")%></span><br />
            <span><%#Eval("fiyat")%></span><br />
            <a href="UrunDetay.aspx?urunID=<%#Eval("urunId") %>">
                <span>Sepete Ekle</span>
            </a>
        </div>
	</ItemTemplate>

</asp:ListView>
</asp:Content>
