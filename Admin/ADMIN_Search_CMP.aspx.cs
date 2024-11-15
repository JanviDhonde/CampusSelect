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

public partial class Admin_ADMIN_Search_Result : System.Web.UI.Page
{
    DS_SEARCH_COMPANY.SELECT_SEARCH_COMPANYDataTable CDT = new DS_SEARCH_COMPANY.SELECT_SEARCH_COMPANYDataTable();
    DS_SEARCH_COMPANYTableAdapters.SELECT_SEARCH_COMPANYTableAdapter Cadapter = new DS_SEARCH_COMPANYTableAdapters.SELECT_SEARCH_COMPANYTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = Cadapter.SELECT_SEARCH_COMPANY(Session["CCate"].ToString(), Session["CQuali"].ToString(), Session["CSkill"].ToString());
            if (CDT.Rows.Count == 0)
            {
                lblmsg.Text = "Result not Found !!!";
            }
            else
            {
                DataList3.DataSource = CDT;
                DataList3.DataBind();
            }
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewMore")
        {
            Session["vjid"] = e.CommandArgument.ToString();
            Response.Redirect("ViewMore_CMP.aspx");
        }
    }
}
