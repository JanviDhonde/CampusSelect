using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_viewCMP : System.Web.UI.Page
{
    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        CDT = CAdapter.SELECT_COMPANY();
        GridView1.DataSource = CDT;
        GridView1.DataBind();
        lbl.Text= CDT.Rows.Count + " - Records Found !!";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["vcid"] = e.CommandArgument.ToString();
        Response.Redirect("Viewcompany.aspx");
    }
}
