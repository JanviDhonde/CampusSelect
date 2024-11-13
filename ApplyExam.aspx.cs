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

public partial class onlineExam : System.Web.UI.Page
{
    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPA = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    DS_EXAM.SELECT_QUESTIONDataTable QUEDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QUEAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        btnkey.Visible = false;

        if (Page.IsPostBack == false)
        {
            if (Session["qpid"].ToString() != null)
            {
                QUEDT = QUEAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["cid"].ToString()), Session["qpid"].ToString());
               
                GridView1.DataSource = QUEDT;
                GridView1.DataBind();
               
            }
        }
    
    }
    protected void btnresult_Click(object sender, EventArgs e)
    {

        QUEDT = QUEAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["cid"].ToString()), Session["qpid"].ToString());

        int rst = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            DropDownList drpa = GridView1.Rows[i].Cells[1].FindControl("drpans") as DropDownList;

            if (drpa.Text == QUEDT.Rows[i]["Rightans"].ToString())
            {
                rst = rst + 1;

            }
        }

        lblresult.Text ="Total Right Answer = " +  rst.ToString();
        btnkey.Visible = true;
      


    }
    protected void btnkey_Click(object sender, EventArgs e)
    {
        QUEDT = QUEAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["cid"].ToString()), Session["qpid"].ToString());

        GridView2.DataSource = QUEDT;
        GridView2.DataBind();
        GridView2.Visible = true;

    }
}
