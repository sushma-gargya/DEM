using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class ChooseDate : System.Web.UI.Page
    {
        private
            Report_Dates report;

        

        protected void Page_Load(object sender, EventArgs e)
        {
          
           

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            LinkButton2.Visible = true;
            Calendar1.Visible = true;

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = false;
            Calendar1.Visible = false;

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            

            LinkButton1.Visible = true;
            LinkButton2.Visible = false;
            Calendar1.Visible = false;
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton3.Visible = false;
            LinkButton4.Visible = true;
            Calendar2.Visible = true;
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            LinkButton3.Visible = true;
            LinkButton4.Visible = false;
            Calendar2.Visible = false;
        }
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
           
           

            DateTime dt1 = Convert.ToDateTime(TextBox1.Text);
            DateTime dt2 = Convert.ToDateTime(TextBox2.Text);

            if (dt1 > dt2)
            {
                Response.Write("<script>alert('Invalid Date');</script>");
            }
            else
            {

                LinkButton3.Visible = true;
                LinkButton4.Visible = false;
                Calendar2.Visible = false;
            }
        }

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                report = new Report_Dates();
                report.vSetReportType(Convert.ToInt16(Request.QueryString["report"]));
                report.vSetDate(Convert.ToDateTime(TextBox1.Text), Convert.ToDateTime(TextBox2.Text));

                Session["report_dates"] = report;
                Response.Redirect("~/Reports.aspx");
            }
            else
            {
                Msgbox("Please input From and To Date values");
            }

        }
        public void Msgbox(String msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mymsg", "alert('" + msg + "');", true);
        }

        protected void CancelButton_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}