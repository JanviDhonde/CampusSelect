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

public partial class Admin_ADMIN_Search_STD : System.Web.UI.Page
{
    DS_SEARCH_STD.SELECT_ADDEDUDataTable SDT = new DS_SEARCH_STD.SELECT_ADDEDUDataTable();
    DS_SEARCH_STDTableAdapters.SELECT_ADDEDUTableAdapter Sadapter = new DS_SEARCH_STDTableAdapters.SELECT_ADDEDUTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                if (Page.IsPostBack == false)
                {
                    SDT = Sadapter.Select_Search_STD(Session["Cate"].ToString(), Session["Quali"].ToString(), Session["Skill"].ToString());
                    Session["resume"] = SDT.Rows[0]["Resume"].ToString();
                    DataList3.DataSource = SDT;
                    DataList3.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();
            }
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewResume")
        {
            Response.Redirect(Session["resume"].ToString());
            //Session["resume"] = "";
        }
    }
}
