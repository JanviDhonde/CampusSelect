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

public partial class Admin_ViewMore_STD : System.Web.UI.Page
{
    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter CAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            CDT = CAdapter.SELECT_ADDJOB_BYJID(Convert.ToInt32(Session["vjid"].ToString()));
            //CDT = CAdapter.SELECT_ADDJOB_BYJID(Convert.ToInt32(Session["JID"].ToString()));
            lblCompanyName0.Text = CDT.Rows[0]["Company_Name"].ToString();
            lblAge.Text = CDT.Rows[0]["Max_Age"].ToString();
            lblCategory.Text = CDT.Rows[0]["JobCategory"].ToString();
            lblCompanyName.Text = CDT.Rows[0]["Company_Name"].ToString();
            lblDesc.Text = CDT.Rows[0]["JobDescription"].ToString();
            lblExtraSkill.Text = CDT.Rows[0]["Extra_Skill"].ToString();
            lblJobLocation.Text = CDT.Rows[0]["JobLocation"].ToString();
            lblLastApplyDate.Text = CDT.Rows[0]["Last_ApplyDate"].ToString();
            lblMinQualification.Text = CDT.Rows[0]["Min_Qualification"].ToString();
            lblMinSalary.Text = CDT.Rows[0]["ExpectedSalary"].ToString();
            lblRole.Text = CDT.Rows[0]["Role"].ToString();
            lblSkill.Text = CDT.Rows[0]["RequiredSkill"].ToString();
            lblWorkingHour.Text = CDT.Rows[0]["Working_hour"].ToString();
        }
    }
    protected void btnremove_Click(object sender, EventArgs e)
    {

    }
}
