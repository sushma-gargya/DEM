using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class Forgetpassword : System.Web.UI.Page
    {
        private Registration reg;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void SaveButton_Click(object sender, ImageClickEventArgs e)
        {
            Registration reg = new Registration(UseridTb.Text, DropDownList1.SelectedValue.ToString(), answerTB.Text);

            bool valid = false;
            if (DropDownList1.SelectedValue.ToString() == "Select Security Question")
            {
                Msgbox("Please select Security question");
                valid = false;
                return;
            }
            else
            {
                valid = true;
            }
            if (reg.bSecurityQstnValidate() && valid)
            {
                valid = true;
            }
            else
            {
                Msgbox("Please choose appropriate security question and provide valid answer");
                valid = false;
                answerTB.Text = "";
                DropDownList1.SelectedIndex = 0;
            }

            if (valid)
            {
               
                String pwd=reg.sRecoverpassword();

                if (String.Compare(pwd, "%%%%404-- user id does not exist --404%%%%") == 0)
                {
                    Msgbox("Sorry...User Does not exist");
                    
                }
                else
                {
                    Label1.Visible = true;
                    passwordlabel.Visible = true;
                    passwordlabel.Text = pwd;

                }

            }
        }
        public void Msgbox(String msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mymsg", "alert('" + msg + "');", true);
        }
    }
}