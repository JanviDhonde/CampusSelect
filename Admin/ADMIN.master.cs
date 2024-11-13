using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin_ADMIN : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (rdobtnCompany.Checked == true)
        {
            if (drpCate.SelectedItem.Text == "SELECT" && drpQulif.SelectedItem.Text == "SELECT" && drpreqskill.SelectedItem.Text == "SELECT")
            {
                lblresult.Text = "Plz select keywords !!";
            }
            else
            {
                lblresult.Text = "";
                Session["Cate"] = drpCate.SelectedItem.Text;
                Session["Quali"] = drpQulif.SelectedItem.Text;
                Session["Skill"] = drpreqskill.SelectedItem.Text;
                Response.Redirect("ADMIN_Search_STD.aspx");

            }
        }
        else if (rdobtnSTD.Checked == true)
        {
            if (drpCate.SelectedItem.Text == "SELECT" && drpQulif.SelectedItem.Text == "SELECT" && drpreqskill.SelectedItem.Text == "SELECT")
            {
                lblresult.Text = "Plz select keywords !!";
            }
            else
            {
                lblresult.Text = "";
                Session["CCate"] = drpCate.SelectedItem.Text;
                Session["CQuali"] = drpQulif.SelectedItem.Text;
                Session["CSkill"] = drpreqskill.SelectedItem.Text;
                Response.Redirect("ADMIN_Search_CMP.aspx");
            }
        }

        else if ((drpCate.SelectedItem.Text != "SELECT" || drpQulif.SelectedItem.Text != "SELECT" || drpreqskill.SelectedItem.Text != "SELECT") && (rdobtnSTD.Checked == false && rdobtnCompany.Checked == false))
        {
            lblresult.Text = "Plz select Appropriate Radiobutton.";
        }
        else
        {
            lblresult.Text = "Plz select keyword & radiobutton";
        }

    }
}
