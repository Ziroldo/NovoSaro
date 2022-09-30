using Employee.BLL;
using System;
using System.Data;

public partial class login : System.Web.UI.Page
{
    clsLogin objLogin = new clsLogin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        objLogin.Username = txtUsername.Value;
        objLogin.Password = txtPassword.Value;
        DataTable dtUser = new DataTable();
        dtUser = objLogin.ValidateLogin();
        if (dtUser.Rows.Count == 0)
        {
            //lblMessage.Text = "Login inválido!";
        }
        else
        {
            DataRow drLogin;
            drLogin = dtUser.Rows[0];
            Session["LoginName"] = drLogin["LoginName"].ToString();
            Session["Rights"] = drLogin["Rights"].ToString();
            Response.Redirect("default.aspx");
        }
    }
}
