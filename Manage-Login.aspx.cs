using Employee.BLL;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_Login : System.Web.UI.Page
{
    clsLogin objLogin = new clsLogin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillLoginDetails();
        }
    }

    protected void FillLoginDetails()
    {
        gvMaster.DataSource = objLogin.SelectAll();
        gvMaster.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage-Login-Add.aspx");
    }

    protected void gvMaster_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().ToUpper() == "EDIT")
        {
            Response.Redirect("Manage-Login-Add.aspx?LoginId=" + e.CommandArgument.ToString());
        }
        if (e.CommandName.ToString().ToUpper() == "DELETE")
        {
            objLogin.LoginId = Convert.ToInt32(e.CommandArgument.ToString());
            objLogin.Delete();
            lblMessage.Text = "Login deletado com sucesso!";
        }
    }

    protected void gvMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillLoginDetails();
    }

    protected void gvMaster_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lbDelete = (LinkButton)e.Row.FindControl("lbDelete");
            lbDelete.Attributes.Add("onclick", "return confirm('Deseja realmente deletar este login?');");
        }
    }

    protected void gvMaster_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvMaster.PageIndex = e.NewPageIndex;
        FillLoginDetails();
    }

    public string getRights(int nRights)
    {
        if (nRights == 1)
        {
            return "Admin";
        }
        if (nRights == 2)
        {
            return "Gerente";
        }
        return "User";
    }
}
