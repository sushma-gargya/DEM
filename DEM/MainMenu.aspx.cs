using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserLogin user = new UserLogin((UserLogin)(Session["User"]));
            balancesheet bal = new balancesheet(user.sGetUsername());
            Label1.Text = (Convert.ToString(bal.Getbalance()));

            Registration reg = new Registration(user.sGetUsername());
            welcome_message.Text = reg.sGetUsername() + "Welcome to DEM Portal ";

            Income income=new Income(user.sGetUsername());

            if (bal.Getbalance() == 0)
            {
                SpentDetailsButton.Enabled = false;

            }
            if (income.Noofincomesrces() == 0)
            {
                IncomeDetailsButton.Enabled = false;

            }

            
           

            
        }

        protected void SpentDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SpentDetails.aspx");

        }

        protected void IncomeDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IncomeDetails.aspx");
        }

        protected void AddLoanButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddNew.aspx");
        }

        protected void ReportsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ChooseReport.aspx");

        }
    }
}