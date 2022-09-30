using Employee.BLL;
using System;

public partial class includes_ucRightMenu : System.Web.UI.UserControl
{
    clsEmployee objEmployee = new clsEmployee();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Rights"].ToString() == "0")
        {
            divAdmin.Visible = false;
            divGerente.Visible = false;
        }
        if (!IsPostBack)
        {
            //lblEmpCount.Text = objEmployee.EmployeeCount();
            //dlBirthday.DataSource = objEmployee.Birthday();
            //dlBirthday.DataBind();
            //if (dlBirthday.Items.Count == 0)
            //{
            //    lblMessage.Text = "Sem aniversariantes";
            //}
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["LoginName"] = null;
        Session["Rights"] = null;
        Response.Redirect("login.aspx");
    }
}
