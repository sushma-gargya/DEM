using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace DEM
{
    public partial class Reports : System.Web.UI.Page
    {
        private
            Report_Dates report_dates;
            Report report;
            String userid;

        public Reports()
        {
            

            
            
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            userid = ((UserLogin)(Session["User"])).sGetUsername();
            report_dates = new Report_Dates((Report_Dates)(Session["report_dates"]));
            reportname.Text = report_dates.sGetReportType();
            report = new Report(userid, report_dates.dtGetStartrDate(), report_dates.dtGetEndDate(), report_dates.dtGetReptype());
            DataTable result = new DataTable();
            result = report.generate_report();
            GV_report.DataSource = result;
            GV_report.DataBind();
            

        }

        
    }
}