using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class AddIncome : System.Web.UI.Page
    {
        private
            Income income;

        public AddIncome()
        {
             income =new Income();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            String userid = ((UserLogin)(Session["user"])).sGetUsername();
            income.vSetIncomeDetails(userid, incomenameTB.Text, Convert.ToInt16(AmountTextBox.Text), DescriptionTextBox.Text);
            if (income.vUpdateToDB())
            {
                Response.Redirect("~/MainMenu.aspx");
            }
            else
            {
                //Failed
            }


        }

        protected void CancelButton_Click(object sender, ImageClickEventArgs e)
        {
            //reset tbxs
            AmountTextBox.Text = "";
            incomenameTB.Text = "";
            DescriptionTextBox.Text = "";

        }

       
       
    }
}