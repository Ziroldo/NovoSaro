<%@ Page Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="Employee-Service-Report.aspx.cs" Inherits="Employee_Service_Report" %>
<%@ Register Src="includes/ucRightMenu.ascx" TagName="ucRightMenu" TagPrefix="uc1" %>
<asp:Content ID="cMainContent" runat="server" ContentPlaceHolderID="cphMain">
    <div class="title" style="text-align:center">
        Relatório de Serviços<br />
        &nbsp;</div>
    <strong>Filtrar Funcionários por </strong>
    <asp:DropDownList ID="ddlExperience" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlExperience_SelectedIndexChanged">
    </asp:DropDownList>
    <strong>experiência<br />
    </strong>
    <br /> 
        
        <asp:GridView ID="gvMaster" runat="server" AutoGenerateColumns="False"
            BorderColor="#000000" BorderStyle="Solid" CellPadding="4" ForeColor="#333333"
            GridLines="Both" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblEmpID" runat="server" Text='<%# "EMP" + Eval("EmployeeId").ToString() %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Width="40px"  />
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Nome">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Designation" HeaderText="Cargo">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DOJ" HeaderText="Admissão" DataFormatString="{0:dd MMM, yyyy}">
                    <ItemStyle HorizontalAlign="Center" Font-Bold="true" Width="80px" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Experience" HeaderText="Anos">
                    <ItemStyle HorizontalAlign="Center" Font-Bold="true" Width="50px" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
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