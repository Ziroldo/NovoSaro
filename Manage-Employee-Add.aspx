<%@ Page Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="Manage-Employee-Add.aspx.cs" Inherits="Manage_Employee_Add" %>
<%@ Register Src="includes/ucRightMenu.ascx" TagName="ucRightMenu" TagPrefix="uc1" %>
<asp:Content ID="cMainContent" runat="server" ContentPlaceHolderID="cphMain">

    <div class="title">Adicionar/Editar Funcionários<br /><br /></div>
        <table cellpadding="5" cellspacing="5" border="0" width="450" align="center">
        <tr>
        <td colspan="2" align="center">
            <asp:Image ID="imgPhoto" runat="server" Height="100px" Width="100px" /></td>
        </tr>
        <tr>
        <td>Nome</td>
        <td><asp:TextBox ID="txtName" runat="server" CssClass="input300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="*" Font-Bold="True" Font-Size="Small">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td>
            Cargo</td>
        <td><asp:TextBox ID="txtDesignation" runat="server" CssClass="input300"></asp:TextBox></td>
        </tr>
        <tr>
        <td>Grau</td>
        <td><asp:TextBox ID="txtDegree" runat="server" CssClass="input300"></asp:TextBox></td>
        </tr>
        <tr>
        <td>
            Estabelecimento</td>
        <td>
            <asp:DropDownList ID="ddlDepartment" runat="server" Style="width: 300px">
            </asp:DropDownList></td>
        </tr>
         <%--   <tr>
                <td>
                    Data Admissão</td>
                <td>
                    <asp:TextBox ID="txtDOJ" runat="server" CssClass="input300"></asp:TextBox>&nbsp;<a href="javascript:NewCal('<%=txtDOJ.ClientID %>','mmddyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
            </tr>
            <tr>
                <td>
                    Confirmado em</td>
                <td>
                    <asp:TextBox ID="txtDOC" runat="server" CssClass="input300"></asp:TextBox>&nbsp;<a href="javascript:NewCal('<%=txtDOC.ClientID %>','mmddyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
            </tr>--%>
            
            <tr>
                <td>
                    Status</td>
                <td><asp:DropDownList ID="ddlStatus" runat="server" Style="width: 300px">
                    <asp:ListItem Value="1">Ativo</asp:ListItem>
                    <asp:ListItem Value="0">Inativo</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
          <%--  <tr>
                <td align="center" colspan="2">
                    <strong>Dados Pessoais</strong></td>
            </tr>
        <tr>
        <td>
            Nascimento</td>
        <td><asp:TextBox ID="txtDOB" runat="server" CssClass="input300"></asp:TextBox>&nbsp;<a href="javascript:NewCal('<%=txtDOB.ClientID %>','mmddyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
        </tr>
        <tr>
        <td>
            Endereço</td>
        <td><asp:TextBox ID="txtAddress" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Cidade</td>
        <td><asp:TextBox ID="txtCity" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Estado</td>
        <td><asp:TextBox ID="txtState" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Cep</td>
        <td><asp:TextBox ID="txtZipcode" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Fone</td>
        <td><asp:TextBox ID="txtPhone" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Celular</td>
        <td><asp:TextBox ID="txtMobile" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            Email</td>
        <td><asp:TextBox ID="txtEmail" runat="server" CssClass="input300"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td>
                    Foto</td>
                <td>
                    <asp:FileUpload ID="filePhoto" runat="server" CssClass="input300" /></td>
            </tr>--%>
            <tr>
                <td align="center" colspan="2">
                    <strong>Comentários e observações<asp:TextBox ID="txtPhoto" runat="server" Visible="false"></asp:TextBox></strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtBio" runat="server" style="height:70px; width:450px" TextMode="MultiLine"></asp:TextBox></td>
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