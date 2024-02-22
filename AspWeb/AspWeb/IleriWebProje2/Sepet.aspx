<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="IleriWebProje2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
    <div id="sepetana">
        <div id="sepeticerik">
           <div id="sepetresim">
               <img src="img/<%# Eval("resim")%>" class="sepetresimm"/>
           </div>
            <div id="sepeturunbilgi">
                <span>Ürünün Adı : <%#Eval ("urun_ad") %></span><br />
                <br />
                <span>Ürün Adeti : <%#Eval("adet") %></span><br /><br />
                <span>Ürünün Fiyatı :<%#Eval("fiyat") %></span></div>
            <div class="temizle"></div>
        </div>
        
                </ItemTemplate>
</asp:ListView>
    <div id="sepetkaydırma">
                <asp:Label ID="Label3" runat="server" CssClass="kayitbutton" Text="Sepetteki Ürün Miktarı :"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" CssClass="KayitText" Text="ürünmiktar"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Sepet Tutarı" CssClass="kayitbutton"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Satın Al" CssClass="sepetsatinal" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Temizle" CssClass="sepetsatinal" OnClick="Button2_Click" />
        &nbsp;:
            <asp:Label ID="Label2" runat="server" CssClass="KayitText" Text="Miktar"></asp:Label>
        </div>
    </div>            
</asp:Content>
