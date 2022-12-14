<%@ Page Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="Manage-Login.aspx.cs" Inherits="Manage_Login" %>
<%@ Register Src="includes/ucRightMenu.ascx" TagName="ucRightMenu" TagPrefix="uc1" %>
<asp:Content ID="cMainContent" runat="server" ContentPlaceHolderID="cphMain">
    <div class="title">Gerenciar Login<br /><br /></div>
        <div style="text-align:center"><asp:Label ID="lblMessage" runat="server"></asp:Label></div>
        <div style="text-align:right"><asp:Button ID="btnSave" runat="server" CssClass="buttonBlue" Text="Adicionar Novo Login" OnClick="btnSave_Click" Width="116px" /></div>
        <asp:GridView ID="gvMaster" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Both" BorderStyle="Solid" BorderColor="#000000" Width="100%" OnRowCommand="gvMaster_RowCommand" OnRowDataBound="gvMaster_RowDataBound" OnRowDeleting="gvMaster_RowDeleting" AllowPaging="True" OnPageIndexChanging="gvMaster_PageIndexChanging" PageSize="10">
            
            <Columns>
                <asp:TemplateField HeaderText="Direitos">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblRights" Text='<%# getRights(Convert.ToInt32(Eval("Rights"))) %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="70px" HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="LoginName" HeaderText="Nome">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Username" HeaderText="Login">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Editar">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lbEdit" Text="Editar" CommandName="Edit" CommandArgument='<%# Eval("LoginId") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="50px" HorizontalAlign="Center"  />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Deletar">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lbDelete" Text="Deletar" CommandName="Delete" CommandArgument='<%# Eval("LoginId") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="50px" HorizontalAlign="Center"  />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Font-Bold="true"  />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <AlternatingRowStyle BackColor="#EFF3FB" />
        </asp:GridView>
    
    
    
</asp:Content>
<asp:Content ID="cRightMenu" runat="server" ContentPlaceHolderID="cphRight">
    <uc1:ucRightMenu ID="UcRightMenu1" runat="server" />
</asp:Content>