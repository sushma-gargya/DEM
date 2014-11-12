using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class SpentDetails : System.Web.UI.Page
    {
        private
            spent_details spent;
            static String uid;

        

            
        protected void Page_Load(object sender, EventArgs e)
        {

            vGetUseridfromSession();
        }
        
        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
            if (Convert.ToBoolean(RadioButtonList1.SelectedIndex))
            {
                ddlLoan_name.Enabled = false;
                loanname_lbl.Visible = false;
                
                
            }
            else
            {
                ddlLoan_name.Enabled = true;
                loanname_lbl.Visible = true;

                spent = new spent_details();
                spent.vSetDetails(uid);
               List<String>  strlist = new List<String>();
               strlist = spent.lsLoadDropdownvalues();

               strlist.Insert(0, "Select Loan Name");
               ddlLoan_name.DataSource = strlist;
               ddlLoan_name.DataBind();
               
               
            }

        }

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            spent = new spent_details(uid, Convert.ToInt16(RadioButtonList1.SelectedValue));
            spent.vSetDetails(Convert.ToInt32(AmountTextBox.Text), DescriptionTextBox.Text);
            if (spent.bGetSpent_reason() == false)
            {

                if (String.Compare(ddlLoan_name.SelectedValue, "Selece Loan Name") != 0)
                    spent.vSetLoanName(ddlLoan_name.SelectedValue.ToString());

            }
            vSaveToDB();
                 
               

        }
        protected void vSaveToDB()
        {
            if (spent.bWriteTrantoDB())
            {
                Session.Remove("spent");
                Response.Redirect("~/MainMenu.aspx");
            }
            else
            {
                Msgbox("Failed to update");
            }

        }
        public void Msgbox(String msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mymsg", "alert('" + msg + "');", true);
        }

        

        protected void CancelButton_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ddlLoan_name_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        public void vGetUseridfromSession()
        {

            uid=((UserLogin)(Session["User"])).sGetUsername();
        }

       
    }
}