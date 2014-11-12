using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace DEM
{
    public partial class Login : System.Web.UI.Page
    {
        private
            UserLogin user;
            DataTable Result;
            QueryEngine Engine;
            
        
        public Login()
        { 
          user = new UserLogin();
          Engine = new QueryEngine();
          Result = new DataTable();
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            vSetUserdetails();
            if (bMatchUserdetails())
            {
                vIncrementLoginCount();
                vUpdateLastAcces();
                Session["User"] = user;
                Response.Redirect("~/MainMenu.aspx");
               
                
            }
            else
            {
                Msgbox("Invalid User Id or Password");
            }    
            
        }
        public void Msgbox(String msg)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Mymsg", "alert('" + msg + "');", true);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
        }
        protected void vSetUserdetails()
        {
            user.vSetUsername(UserNameTextBox.Text);
            user.vSetUserPassword(PasswordTextBox.Text);
            user.vSetLastLogInDateandTime(DateTime.Now);
            user.vSetLogincount(0);
        }
        protected String vQueryUserPassword()
        {
            String Query = @"Select [Password] from Login where Login.userId='{0}'";
            Query=String.Format(Query , user.sGetUsername());
            Engine.vSetQuery(Query);
            Result=Engine.vExec();
            return (Result.Rows[0][0].ToString());
            
        }
        protected void vQueryUserdetails()
        {
            String Query = @"Select Logincount as Count , LastAccessDatetime as Last_Access from Login where(Login.UserId = '{0}')";
            String.Format(Query, user.sGetUsername());
            Engine.vSetQuery(Query);
            Result = Engine.vExec(); 
            user.vSetLogincount(Convert.ToInt32(Result.Rows[0][0].ToString()));
            user.vSetLastLogInDateandTime(Convert.ToDateTime(Result.Rows[0][1].ToString()));
            
        }
        protected bool bMatchUserdetails()
        {
            if (String.Compare(user.sGetPassword(), vQueryUserPassword()) == 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        protected void vIncrementLoginCount()
        {
            String Query = @"select Logincount from Login where (Login.UserId ='{0}')";
            Query=String.Format(Query, user.sGetUsername());
            Engine.vSetQuery(Query);
            Result = Engine.vExec();
            user.vSetLogincount(Convert.ToInt32(Result.Rows[0][0].ToString()));
            Query = @"update Login SET Logincount='{0}' where(Login.UserId='{1}')";
            Query=String.Format(Query, (user.iGetlogincount()+1).ToString(), user.sGetUsername());
            Engine.vSetQuery(Query);
            if (Engine.vExecSet())
            {
                //login count updated
            }
            else
            {
                //failded to update login count

            }
            

        }

        protected void vUpdateLastAcces()
        {
            String Query = @"update Login SET LastAccessDatetime=GETDATE() where(Login.UserId='{0}')";
            Query=String.Format(Query,user.sGetUsername());
            Engine.vSetQuery(Query);
            if (Engine.vExecSet())
            {
                //login count updated
            }
            else
            {
                //failded to update login count

            }

        }


            
    }
}