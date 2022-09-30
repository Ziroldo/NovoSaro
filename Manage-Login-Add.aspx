<%@ Page Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="Manage-Login-Add.aspx.cs" Inherits="Manage_Login_Add" %>
<%@ Register Src="includes/ucRightMenu.ascx" TagName="ucRightMenu" TagPrefix="uc1" %>
<asp:Content ID="cMainContent" runat="server" ContentPlaceHolderID="cphMain">
    <div class="title">Adicionar/Editar Login<br /><br /></div>
        <table cellpadding="5" cellspacing="5" border="0" width="450" align="center">
        <tr>
        <td colspan="2" align="center"><asp:label ID="lblMessage" runat="server" /></td>
        </tr>
        <tr>
        <td>Nome</td>
        <td><asp:TextBox ID="txtName" runat="server" CssClass="input300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="*" Font-Bold="True" Font-Size="Small">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td>Email</td>
        <td><asp:TextBox ID="txtEmail" runat="server" CssClass="input300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="*" Font-Bold="True" Font-Size="Small">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="*" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>Login</td>
        <td><asp:TextBox ID="txtUsername" runat="server" CssClass="input300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername"
                ErrorMessage="*" Font-Bold="True" Font-Size="Small">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td>Senha</td>
        <td><asp:TextBox ID="txtPassword" runat="server" CssClass="input300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="*" Font-Bold="True" Font-Size="Small">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td>Direitos</td>
        <td>
            <asp:DropDownList ID="ddlRights" runat="server" style="width:300px">
                <asp:ListItem Value="2">Gerente</asp:ListItem>
                <asp:ListItem Value="1">Administrador</asp:ListItem>
                <asp:ListItem Value="0">Usuário</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <asp:Button ID="btnSave" runat="server" CssClass="buttonBlue" Text="Salvar" OnClick="btnSave_Click" />
        <asp:Button ID="btnUpdate" runat="server" CssClass="buttonBlue" Text="Atualizar" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnCancel" runat="server" CssClass="buttonBlue" Text="Cancelar" CausesValidation="False" OnClick="btnCancel_Click" />
        </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="cRightMenu" runat="server" ContentPlaceHolderID="cphRight">
    <uc1:ucRightMenu ID="UcRightMenu1" runat="server" />
</asp:Content>