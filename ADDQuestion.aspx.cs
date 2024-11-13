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

public partial class ADDQuestion : System.Web.UI.Page
{
    DS_EXAM.SELECT_QUESTIONDataTable QDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();
    
    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPAdapter = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {
            QDT = QAdapter.SELECT_QUESTION();
            GridViewADDQuestion.DataSource = QDT;
            GridViewADDQuestion.DataBind();

            QPDT = QPAdapter.SELECT_QPAPER();
            drpQpapername.DataSource = QPDT;
            drpQpapername.DataTextField = "QPaperName";
            drpQpapername.DataValueField = "QPID";
            drpQpapername.DataBind();
            drpQpapername.Items.Insert(0, "SELECT");
           
        }

    }
    protected void btnaddquestion_Click(object sender, EventArgs e)
    {
        int q = QAdapter.Insert(Convert.ToInt32(txtserial.Text), Convert.ToInt32(Session["CID"].ToString()), drpQpapername.SelectedItem.Text, "", txtquestion.Text, txta.Text, txtb.Text, txtc.Text, DropDownListkey.SelectedItem.Text);
        QDT = QAdapter.SELECT_QUESTION();
        GridViewADDQuestion.DataSource = QDT;
        GridViewADDQuestion.DataBind();

        txtquestion.Text = "";
        txta.Text = "";
        txtb.Text = "";
        txtc.Text = "";
        txtquestion.Focus();

        QDT = QAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["CID"].ToString()), drpQpapername.SelectedItem.Text);

          if (QDT.Rows.Count >= 5)
          {
              txtserial.Text = "";
              txtserial.Focus();
          }
          else
          {
             //              QDT = QAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["CID"].ToString()), drpQpapername.SelectedItem.Text);
              int cnt = QDT.Rows.Count;
              int cntt = cnt + 1;
              txtserial.Text = cntt.ToString();
                           
          }


    }
    protected void btnQpaper_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQUAETIONPAPER.aspx");
    }
    protected void btnQstion_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQuestion.aspx");
    }
    protected void GridViewADDQuestion_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int QID = Convert.ToInt32(e.CommandArgument.ToString());
            QAdapter.Delete(QID);
            QDT = QAdapter.SELECT_QUESTION();
            GridViewADDQuestion.DataSource = QDT;
            GridViewADDQuestion.DataBind();
        }
    }
    protected void drpQpapername_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (drpQpapername.SelectedItem.Text == "SELECT")
        {
            lblmsg.Text = "Ivalid Exam Name !!";
            txtserial.Text = "";
        }
        else
        {
            QDT = QAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["CID"].ToString()), drpQpapername.SelectedItem.Text);

            int cnt = QDT.Rows.Count;

            if (cnt == 0)
            {
                txtserial.Text = "1";

            }
            else
            {
                if (cnt >= 5)
                {
                    lblmsg.Text = "Maximum 5 questions per exam.";
                    txtserial.Text = "";
                }
                else
                {
                    int cntt = cnt + 1;
                    txtserial.Text = cntt.ToString();
                }
            }
        }

    }
}
