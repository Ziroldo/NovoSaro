using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee.BLL;

public partial class Manage_Employee : System.Web.UI.Page
{
    clsEmployee objEmployee = new clsEmployee();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PreencherDetalhesFuncionario();
        }
    }

    protected void PreencherDetalhesFuncionario()
    {
        if (chkStatus.Checked)
        {
            gvMaster.DataSource = objEmployee.SelectInActive();
        }
        else
        {
            gvMaster.DataSource = objEmployee.Select();
        }
        gvMaster.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage-Employee-Add.aspx");
    }

    protected void gvMaster_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().ToUpper() == "ONJOB")
        {
            Response.Redirect("Manage-Employee-Trainings.aspx?EmpId=" + e.CommandArgument.ToString() + "&JobType=1");
        }

        if (e.CommandName.ToString().ToUpper() == "OFFJOB")
        {
            Response.Redirect("Manage-Employee-Trainings.aspx?EmpId=" + e.CommandArgument.ToString() + "&JobType=2");
        }

        if (e.CommandName.ToString().ToUpper() == "EDIT")
        {
            Response.Redirect("Manage-Employee-Add.aspx?EmployeeId=" + e.CommandArgument.ToString());
        }
        if (e.CommandName.ToString().ToUpper() == "DELETE")
        {
            objEmployee.EmployeeId = Convert.ToInt32(e.CommandArgument.ToString());
            objEmployee.Delete();
            lblMessage.Text = "Funcionário deletado com sucesso!";
        }
    }

    protected void gvMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        PreencherDetalhesFuncionario();
    }

    protected void gvMaster_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lbDelete = (LinkButton)e.Row.FindControl("lbDelete");
            lbDelete.Attributes.Add("onclick", "return confirm('Deseja deletar esse registro?');");
        }
    }

    protected void gvMaster_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvMaster.PageIndex = e.NewPageIndex;
        PreencherDetalhesFuncionario();
    }

    protected void chkStatus_CheckedChanged(object sender, EventArgs e)
    {
        PreencherDetalhesFuncionario();
    }
}
