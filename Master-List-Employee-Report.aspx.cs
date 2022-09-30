using System;
using System.Web.UI;
using Employee.BLL;
public partial class Master_List_Employee_Report : System.Web.UI.Page
{
    clsEmployee objEmployee = new clsEmployee();
    clsDeparment objDeparment = new clsDeparment();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PreencherDetalhesFuncionario();
        }
    }

    protected void PreencherDetalhesFuncionario()
    {
        gvMaster.DataSource = objEmployee.Select();
        gvMaster.DataBind();
    }

    public string getDepartmentName(int DeparmentId)
    {
        objDeparment.DepartmentId = DeparmentId;
        objDeparment.SelectById();
        return objDeparment.DepartmentName.ToString();
    }
}
