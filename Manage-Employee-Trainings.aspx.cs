using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee.BLL;

public partial class Manage_Employee_Trainings : System.Web.UI.Page
{
    clsTrainings objTrainings = new clsTrainings();
    clsEmployee objEmployee = new clsEmployee();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PreencherDetalhesTreinamento();
        }
    }

    protected void PreencherDetalhesTreinamento()
    {
        if (Request["JobType"].ToString() == "1")
        {
            lblTraining.Text = "Treinamento em servi?o";
        }
        else if (Request["JobType"].ToString() == "2")
        {
            lblTraining.Text = "Treinamento fora de servi?o";
        }
        objEmployee.EmployeeId = Convert.ToInt32(Request["EmpId"].ToString());
        objEmployee.SelectById();
        lblEmployeeName.Text = objEmployee.Name.ToString();
        objTrainings.EmployeeId = Convert.ToInt32(Request["EmpId"].ToString());
        objTrainings.JobType = Convert.ToInt32(Request["JobType"].ToString());
        gvMaster.DataSource = objTrainings.SelectByEmployee();
        gvMaster.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage-Employee-Trainings-Add.aspx?EmpId=" + Request["EmpId"].ToString() + "&JobType=" + Request["JobType"].ToString());
    }

    protected void gvMaster_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().ToUpper() == "EDIT")
        {
            Response.Redirect("Manage-Employee-Trainings-Add.aspx?EmpId=" + Request["EmpId"].ToString() + "&JobType=" + Request["JobType"].ToString() + "&TrainingId=" + e.CommandArgument.ToString());
        }
        if (e.CommandName.ToString().ToUpper() == "DELETE")
        {
            objTrainings.TrainingId = Convert.ToInt32(e.CommandArgument.ToString());
            objTrainings.Delete();
            lblMessage.Text = "Treinamentos deletados com sucesso!";
        }
    }

    protected void gvMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        PreencherDetalhesTreinamento();
    }

    protected void gvMaster_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lbDelete = (LinkButton)e.Row.FindControl("lbDelete");
            lbDelete.Attributes.Add("onclick", "return confirm('Deseja realmente deletar?');");
        }
    }

    protected void gvMaster_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvMaster.PageIndex = e.NewPageIndex;
        PreencherDetalhesTreinamento();
    }

    protected void chkStatus_CheckedChanged(object sender, EventArgs e)
    {
        PreencherDetalhesTreinamento();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage-Employee.aspx");
    }

    public string getDurationDate(DateTime dStartDate, DateTime dEndDate)
    {
        string sStartDate = "";
        string sEndDate = "";
        if (dStartDate.CompareTo(Convert.ToDateTime("01/01/1900")) > 0)
        {
            sStartDate = dStartDate.ToString("dd/MM/yyyy");
        }
        else
        {
            sStartDate = "";
        }

        if (dEndDate.CompareTo(Convert.ToDateTime("01/01/1900")) > 0)
        {
            sEndDate = dEndDate.ToString("dd/MM/yyyy");
        }
        else
        {
            sEndDate = "";
        }

        return sStartDate + " - " + sEndDate;
    }
}
