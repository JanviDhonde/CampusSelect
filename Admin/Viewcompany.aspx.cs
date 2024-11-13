using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Viewcompany : System.Web.UI.Page
{
    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    CDS.ADDJOB_SELECTDataTable JDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter JAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPA = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    DS_EXAM.SELECT_QUESTIONDataTable QDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            CDT = CAdapter.selectBY_CID(Convert.ToInt32(Session["vcid"].ToString()));

            lblcopanyname.Text = CDT.Rows[0]["cname"].ToString();
            lbladdress.Text = CDT.Rows[0]["address"].ToString();
            lblcity.Text = CDT.Rows[0]["city"].ToString();
            lblstate.Text = CDT.Rows[0]["state"].ToString();
            lblpin.Text = CDT.Rows[0]["pincode"].ToString();
            lblemail.Text = CDT.Rows[0]["emailid"].ToString();
            lblcperson.Text = CDT.Rows[0]["contact_person"].ToString();
            lblmobile.Text = CDT.Rows[0]["mobileno"].ToString();
            lblwebsite.Text = CDT.Rows[0]["website"].ToString();
            lbluname.Text = CDT.Rows[0]["uname"].ToString();
            lblpassword.Text = CDT.Rows[0]["password"].ToString();


        }

    }
    protected void btnremove_Click(object sender, EventArgs e)
    {
        CAdapter.Delete(Convert.ToInt32(Session["vcid"].ToString()));

        JAdapter.Delete(Convert.ToInt32(Session["vcid"].ToString()));

        QPA.Delete(Convert.ToInt32(Session["vcid"].ToString()));

        QAdapter.Delete(Convert.ToInt32(Session["vcid"].ToString()));

        Response.Redirect("ViewCMP.aspx");

    }
}