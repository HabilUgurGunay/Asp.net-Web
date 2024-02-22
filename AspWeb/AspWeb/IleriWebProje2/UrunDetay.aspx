<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="IleriWebProje2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
           <asp:ListView ID="ListView1" runat="server">
    <ItemTemplate>
		<div id="asd">
        <div id="detays">
			<div id="dSol">
			<hgroup class="baslik"><h1><%# Eval("urunAd") %></h1></hgroup>
			<div class="aciklama"><%# Eval("aciklama") %> </div>
			<span class="yazi">Satış Fiyatı: <h3><%# Eval("fiyat") %></h3></span>  <br/>
			<span class="yazi">Liste Fiyatı: <p><%# Eval("eski_fiyat") %></p></span>
			<span class="yazi">Ürünün Durumu: <p><%# Eval("durum") %></p></span>
			<span class="yazi">Adet:
				<asp:DropDownList ID="DropDownList1" runat="server">
						<asp:ListItem>Adet Seçin</asp:ListItem>
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
			           </asp:DropDownList></span>
        <span>
			<asp:Button ID="Button1" runat="server" Text="Sepete Ekle" CssClass="Button1" OnClick="Button1_Click"  /></span>
        
        <div class="temizle"></div>
		
	</div>
	<div id="dSag">
		<a href="#">
			<figure><img src="img/<%# Eval("resim") %>" alt="Yazı Başlığı"/></figure>
		</a>
	</div>
    <div class="temizle"></div>
    <span> <h3>Özellikler</h3></span>
    <div id="ozellik" class ="aciklama"><%# Eval("ozellik") %> </div>
</div>
			</div>
    </ItemTemplate>
</asp:ListView>
</asp:Content>
