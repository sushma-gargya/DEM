using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class AddNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SpentDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddLoan.aspx");
        }

        protected void IncomeDetailsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddIncome.aspx");
        }
    }
}