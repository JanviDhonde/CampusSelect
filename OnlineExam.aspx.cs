﻿using System;
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

public partial class OnlineExam : System.Web.UI.Page
{
    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPA = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    DS_EXAM.SELECT_QUESTIONDataTable QDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();

    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            AJDT = AJAdapter.SELECT_APPLYJOB_BYSID(Convert.ToInt32(Session["SID"].ToString()));
            if (AJDT.Rows.Count == 0)
            {
                lbl.Text = "No Exam Found !!";
            }
            else
            {
                int cid = Convert.ToInt32(AJDT.Rows[0]["CId"].ToString());
                Session["cid"] = cid;
                QPDT = QPA.SELECT_QPAPER_BYCID(cid);

                if (QPDT.Rows.Count == 0)
                {
                    lbl.Text = "No Exam Found !!";
                }
                else
                {
                    Session["qppr"] = QPDT.Rows[0]["QPaperName"].ToString();
                    // DataListSelectQppr.DataSource = QPDT;
                    // DataListSelectQppr.DataBind();

                    gvexam.DataSource = QPDT;
                    gvexam.DataBind();

                }
            }
        }
    }
    protected void DataListSelectQppr_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "qpaper")
        {
            AJDT = AJAdapter.SELECT_APPLYJOB_BYSID(Convert.ToInt32(Session["SID"].ToString()));
            int cid = Convert.ToInt32(AJDT.Rows[0]["CId"].ToString());
            QPDT = QPA.SELECT_QPAPER_BYCID(cid);
            Session["qpid"] = QPDT.Rows[0]["QPID"].ToString();
            Response.Redirect("ApplyExam.aspx");
        }
    }
    protected void gvexam_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "qpaper")
        {
           AJDT = AJAdapter.SELECT_APPLYJOB_BYSID(Convert.ToInt32(Session["SID"].ToString()));
            int cid = Convert.ToInt32(AJDT.Rows[0]["CId"].ToString());
         //  QPDT = QPA.SELECT_QPAPER_BYCID(cid);

           QPDT = QPA.SELECT_QPAPER_BYQPID(Convert.ToInt32(e.CommandArgument.ToString()));
            //QPDT = QPA.SELECT_QPAPER_BYCID(Convert.ToInt32(e.CommandArgument.ToString()));
            Session["qpid"] = QPDT.Rows[0]["qpapername"].ToString();
            Response.Redirect("ApplyExam.aspx");
        }
    }
}
