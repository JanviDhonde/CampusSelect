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

public partial class Admin_ADMIN_Login : System.Web.UI.Page
{
    DS_Admin.ADMIN_SELECTDataTable ADT = new DS_Admin.ADMIN_SELECTDataTable();
    DS_AdminTableAdapters.ADMIN_SELECTTableAdapter AAdapter = new DS_AdminTableAdapters.ADMIN_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        lblloginMsg.Text = "";
        ADT = AAdapter.SELECT_ADMIN_LOGIN(txtUname.Text, txtpass.Text);

        if (ADT.Rows.Count == 1)
        {
            Session["aid"] = ADT.Rows[0]["AID"].ToString();
            lblloginMsg.Text = "Login Successful";
            txtUname.Text = "";
            txtpass.Text = "";
            Response.Redirect("Admin_Home.aspx");
        }
    }
}
