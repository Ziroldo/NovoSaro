using System;

public partial class _default : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["LoginName"] == null) || (Session["LoginName"].ToString() == ""))
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            //lblHeaderMessage.Text = "BemVindo " + Session["LoginName"].ToString();
        }
    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session["LoginName"] = null;
        Session["Rights"] = null;
        Response.Redirect("login.aspx");
    }
}
