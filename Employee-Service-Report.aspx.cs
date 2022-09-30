using System;
using System.Data;
using System.Web.UI;
using Employee.BLL;

public partial class Employee_Service_Report : System.Web.UI.Page
{
    clsEmployee objEmployee = new clsEmployee();
    clsDeparment objDeparment = new clsDeparment();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PreencherAnos();
            PreencherDetalhesFuncionario();           
        }
    }

    protected void PreencherDetalhesFuncionario()
    {
        if (ddlExperience.SelectedValue == "Ver Todos")
        {
            objEmployee.Years = -1;
        }
        else
        {
            objEmployee.Years = Convert.ToInt32(ddlExperience.SelectedValue);
        }
        gvMaster.DataSource = objEmployee.SelectByExperience();
        gvMaster.DataBind();
    }
    protected void PreencherAnos()
    {
        ddlExperience.Items.Add("Ver Todos");
        DataTable dt = new DataTable();
        dt = objEmployee.ViewYears().Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            ddlExperience.Items.Add(dr[0].ToString());
        }
    }
    protected void ddlExperience_SelectedIndexChanged(object sender, EventArgs e)
    {
        PreencherDetalhesFuncionario();
    }
}
