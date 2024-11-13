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

public partial class Admin_View_STD : System.Web.UI.Page
{
    SDS.SELECT_ADDEDUDataTable SDT = new SDS.SELECT_ADDEDUDataTable();
    SDSTableAdapters.SELECT_ADDEDUTableAdapter Sadapter = new SDSTableAdapters.SELECT_ADDEDUTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        SDT = Sadapter.SELECT_ADDEDUCATION();
        GridView1.DataSource = SDT;
        GridView1.DataBind();
            
    }
}
