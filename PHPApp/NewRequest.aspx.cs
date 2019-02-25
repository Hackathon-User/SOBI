using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PHPApp
{
    public partial class NewRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                CalendarExtender1.EndDate = DateTime.Now.Date;
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
            {
                Button1.Visible = true;
                Button2.Visible = false;
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            ArrayList ar = new ArrayList();
            ar.Add(this.TextBox1.Text);
            ar.Add(this.DropDownList1.SelectedValue);
            ar.Add(this.TextBox3.Text);
            ar.Add(this.TextBox4.Text);
            ar.Add(this.DropDownList2.SelectedValue);
            ar.Add(this.TextBox6.Text);
            ar.Add(this.TextBox7.Text);
            ar.Add(this.RadioButtonList1.SelectedValue);
            ar.Add(this.TextBox9.Text);
            Session["list1"] = ar;
            Response.Redirect("~/CheckStatus.aspx");
        }
    }
}