<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Kayit.aspx.cs" Inherits="IleriWebProje2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 231px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div id="kayit">
    <div id="girisvekayit">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="KayitText">Kullanıcı Adı:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="UserName" runat="server" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Kullanıcı Adı gereklidir." ToolTip="Kullanıcı Adı gereklidir." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="KayitText">Parola:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Parola gerekiyor." ToolTip="Parola gerekiyor." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" CssClass="KayitText">Parolayı Onayla:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Parolayı Olayla alanı gereklidir." ToolTip="Parolayı Olayla alanı gereklidir." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="KayitText">E-posta:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="Email" runat="server" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-posta gereklidir." ToolTip="E-posta gereklidir." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" CssClass="KayitText">Güvenlik Sorusu:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="Question" runat="server" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Güvenlik sorusu gereklidir." ToolTip="Güvenlik sorusu gereklidir." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" CssClass="KayitText">Güvenlik Yanıtı:</asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="Answer" runat="server" CssClass="kayitbutton"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Güvenlik yanıtı gereklidir." ToolTip="Güvenlik yanıtı gereklidir." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Parola ve Onay Parolası eşleşmelidir." ValidationGroup="CreateUserWizard1" CssClass="KayitText"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                    <CustomNavigationTemplate>
                        <table border="0" class="kayibutonusag" cellspacing="5" style="width:100%;height:100%;">
                            <tr align="right">
                                <td align="center" colspan="0">
                                    <asp:Button ID="StepNextButton" CssClass="KayitButton1" runat="server" CommandName="MoveNext" Text="Kayıt Ol" ValidationGroup="CreateUserWizard1" />
                                </td>
                            </tr>
                        </table>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</div>
</asp:Content>
