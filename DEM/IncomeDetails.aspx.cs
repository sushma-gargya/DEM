using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class IncomeDetails : System.Web.UI.Page
    {
        private
           income_history ih;
        List<String> strlst = new List<String>();

        public IncomeDetails()
        {
            
           
               
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            UserLogin userid = ((UserLogin)(Session["User"]));
            ih = new income_history(userid.sGetUsername());

            if (!IsPostBack)
            {
                

                
                strlst = ih.lsGetIncomeSourceNames();
                strlst.Insert(0, "Select source");
                income_source_ddl.DataSource = strlst;
                income_source_ddl.DataBind();
            }
            

        }

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            if (String.Compare(income_source_ddl.SelectedValue, "Select source") != 0)
            {
                ih.vSetDetails(Convert.ToInt32(AmountTextBox.Text), income_source_ddl.SelectedValue, DescriptionTextBox.Text);
                if (ih.bUpdateIncomehistory())
                {
                    Response.Redirect("~/MainMenu.aspx");
                }
                else
                {
                    //Error
                }
            }
            else
            {
                //if not seleced any item
            }

        }

        protected void CancelButton_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void income_source_ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            ih.vSetIncomeSrc(income_source_ddl.SelectedValue.ToString());
            AmountTextBox.Text = ih.sSetAmt();
            DescriptionTextBox.Text = ih.sSetDescription();
        }

        
    }
}