<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRightMenu.ascx.cs" Inherits="includes_ucRightMenu" %>
<ul class="menu">
    <div id="divAdmin" runat="server">
        <li><a href="Manage-Login.aspx">ADICIONAR LOGIN</a></li>
    </div>
    <div id="divGerente" runat="server">
        <li><a href="Manage-Department.aspx">HABILITAR ESTABELECIMENTO<br>(Acreditação/Recertificação)</a></li>
        <li><a href="Manage-Employee.aspx">CADASTRO DE PROFISSIONAIS</a></li>
        <li><a href="Master-List-Employee-Report.aspx">PLANO DE AÇÃO</a></li>
        <li><a href="Employee-Service-Report.aspx">RELATÓRIOS</a></li>
    </div>
    <li><a href="Formulario.aspx">FORMULÁRIO<br>(Acreditação/Recertificação)</a></li>
    
    <li><asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click">SAIR</asp:LinkButton></li>
</ul>
<br />
<%--<div class="section_box">
      <div class="subtitle">Aniversariantes</div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:DataList ID="dlBirthday" runat="server" Width="100%">
        <ItemTemplate>
        <b><asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label></b><br />
        <asp:Label ID="lblDOB" runat="server" Text='<%# Convert.ToDateTime(Eval("DOB")).ToString("dd MMM, yyyy") %>'></asp:Label><br /><hr style="border:dotted 1px #333333" />
        </ItemTemplate>
        </asp:DataList>
        <br />
</div>--%>
<br />
<%--<div class="section_box">
      <div class="subtitle">Total de Funcionários</div>
        <br />
        <center><h1><asp:Label ID="lblEmpCount" runat="server"></asp:Label></h1></center>
</div>--%>