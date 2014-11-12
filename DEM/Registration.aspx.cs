using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Registration reg;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
           reg=new Registration(emailTextBox.Text,UserNameTextBox.Text,PasswordTextBox.Text,DropDownList1.SelectedValue.ToString(),AnswerTextBox.Text);
            bool useridvalid=false;
            if(inputvalidate())
            {
                useridvalid=true;
            }
            if (reg.bUseridValidator())
            {
                useridvalid = true;
            }
            else
            {
                Msgbox(" Email-id :" + emailTextBox.Text + " is already registerd please try with another");  
                useridvalid=false;
            }
            if(passwordvalidate() && useridvalid)
            {
                useridvalid=true;
            }
            else
            {
                useridvalid=false;
            }

           if (useridvalid)
           {
               
               if(reg.bSetDataToDB())
               {
                   UserLogin newlogin = new UserLogin(emailTextBox.Text, PasswordTextBox.Text);
                   if (newlogin.vAddNewUser())
                   {
                       balancesheet bals = new balancesheet(emailTextBox.Text);
                       if (bals.bAddNewEntry())
                       {
                           Msgbox("User " + UserNameTextBox.Text + " Registered succussfully /n please use you email id as Userid for further");
                       }
                   }
                   
               }
           }
            
            

        }
        public  void Msgbox(String msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mymsg", "alert('" + msg + "');", true);   
        }

        public bool passwordvalidate()
        {
            if (String.Compare(PasswordTextBox.Text,ConfirmPasswordTextBox.Text)==0)
            {
                return true;
            }
            else
            {
                Msgbox("Password and Confirm password are diffrent. Please correct and try again");
                return false;
            }
        }

        public bool inputvalidate()
        {
            if ((UserNameTextBox.Text == "") || (PasswordTextBox.Text == "") || (ConfirmPasswordTextBox.Text == "") || (emailTextBox.Text == "") || (DropDownList1.SelectedValue.ToString() == "Select Security Question") || (AnswerTextBox.Text == ""))
            {
                Msgbox("Fields marked as * are mandotory");
                return false;
            }
            else
            {
                return true;
            }
        }



    }
}