using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    DS_Admin.ADMIN_SELECTDataTable ADT = new DS_Admin.ADMIN_SELECTDataTable();
    DS_AdminTableAdapters.ADMIN_SELECTTableAdapter AAdapter = new DS_AdminTableAdapters.ADMIN_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            ADT = AAdapter.SELECT_ADMIN();
            gvadmin.DataSource = ADT;
            gvadmin.DataBind();
        }

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        lblCreate.Text = "";
        int a = AAdapter.Insert(txtName.Text, txtEmailId.Text, txtMoNo.Text, txtUname.Text, txtPass.Text);
        if (a == 1)
        {
            lblCreate.Text = "Username and Password Created Successful";

            txtName.Text = "";
            txtUname.Text = "";
            txtPass.Text = "";
            txtMoNo.Text = "";
            txtEmailId.Text = "";
            txtConfPass.Text = "";

            ADT = AAdapter.SELECT_ADMIN();
            gvadmin.DataSource = ADT;
            gvadmin.DataBind();
        }
    }
    protected void gvadmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        AAdapter.Delete(Convert.ToInt32(gvadmin.DataKeys[e.RowIndex].Value));
        ADT = AAdapter.SELECT_ADMIN();
        gvadmin.DataSource = ADT;
        gvadmin.DataBind();
        lblCreate.Text = "Record Deleted";
    }
}