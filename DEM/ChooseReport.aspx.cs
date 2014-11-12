using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class ChooseReport : System.Web.UI.Page
    {
        
        public ChooseReport()
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void IncomeReportButton_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("~/ChooseDate.aspx?report=0");
        }

        protected void LoanReportButton_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("~/ChooseDate.aspx?report=1");

        }

        protected void ExpenseDetailsButton_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("~/ChooseDate.aspx?report=2");

        }
    }
}