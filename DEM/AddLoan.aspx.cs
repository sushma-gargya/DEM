using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class AddLoan : System.Web.UI.Page
    {
        private
            Loan userloan;

        public AddLoan()
        {
            userloan = new Loan();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            userloan.vSetloanDetails(((UserLogin)(Session["user"])).sGetUsername(), loanNametextbox.Text, StoIconverter(loanAmountTextBox.Text), StoIconverter(Downpayment.Text), StoIconverter(emitextbox.Text));
            if (userloan.vUpdateToDB())
            {
               Response.Redirect("~/MainMenu.aspx");
            }
            else
            {
                //fail to Update loan details to db
            }
        }
        int StoIconverter(String str)
        {
            return(Convert.ToInt16(str));
        }

        protected void CancelButton_Click(object sender, ImageClickEventArgs e)
        {

        }

        
        protected void Downpayment_TextChanged(object sender, EventArgs e)
        {

        }

               
    }
}