using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient; // to access data base
using System.Data;


namespace DEM
{
    public class UserLogin
    {
        private 
 
            String username;
            String password;
            DateTime Lastlogin;
            int logincount;
            QueryEngine engine;

            public UserLogin()
            {
                //default constructor
            }
            public UserLogin(String usr,String pwd)
            {
                //default constructor
                username = usr;
                password = pwd;
                engine = new QueryEngine();
            }

            public UserLogin(UserLogin user)
            {
                username = user.username;
                password = user.password;
                Lastlogin = user.Lastlogin;
                logincount = user.logincount;
            }
            
            public void vSetUsername(String name) { username = name; }
            public void vSetUserPassword(String pwd) { password = pwd; }

            public String sGetUsername() { return username; }
            public String sGetPassword() { return password; }

            public void vSetLastLogInDateandTime(DateTime dt) { Lastlogin = dt; }
            public DateTime dtGetLastLogindateandTime() { return Lastlogin; }

            public void vSetLogincount(int cnt) { logincount = cnt; }
            public int iGetlogincount() { return logincount; }

            public bool vAddNewUser()
            {
                String Query = @"insert into Login values('{0}','{1}','0',GETDATE())";
                Query = String.Format(Query, username, password);
                engine.vSetQuery(Query);
                return (engine.vExecSet());
            }

            

    }

    public class QueryEngine
    {
        private
            String Connection;
        String Query;
        SqlConnection sqlconnection;



        public QueryEngine()
        {
            Connection = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            sqlconnection = new SqlConnection(Connection);


        }

        public void vSetQuery(String qry)
        {
            Query = qry;
        }

        public DataTable vExec()
        {
            SqlCommand command;
            sqlconnection.Open();
            command = new SqlCommand(Query, sqlconnection);
            command.Connection = sqlconnection;
            DataTable Result = new DataTable();
            SqlDataReader DataReader = command.ExecuteReader();
            Result.Load(DataReader);
            DataReader.Close();
            sqlconnection.Close();
            return Result;
        }

        public bool vExecSet()
        {
            SqlCommand command;
            sqlconnection.Open();
            command = new SqlCommand(Query, sqlconnection);
            command.Connection = sqlconnection;
            int rows_affected = command.ExecuteNonQuery();
            sqlconnection.Close();
            if (rows_affected > 0)
                return true;
            else
                return false;
        }
    }

        public class spent_details
        {
            private
                String UserId;
                DateTime dateofspent;
                Int32 amount;
                int spent_reason;
                String LoanName;
                String description;
                QueryEngine engine;
               
                public spent_details()
                {
                     engine = new QueryEngine(); 
                }

                public spent_details(String userid,int spent_re)
                {
                    this.spent_reason = spent_re;
                    this.UserId = userid;
                    this.LoanName = "NA";
                    engine = new QueryEngine(); 
                }


                public void vSetDetails(String userid,int reson=0)
                {
                    UserId=userid;
                    spent_reason=reson;
                    
                }
                public void vSetDetails(Int32 amt,String desc)
                {

                    dateofspent = DateTime.Now;
                    amount = amt;
                    description = desc;
                }
                public void vSetLoanName(String ln)
                {

                    LoanName = ln;
                }

                
        
                public List<String> lsLoadDropdownvalues()
                {

                    String Query = @"Select loan_name from Loan where(Loan.UserId='{0}')";
                    Query = String.Format(Query, UserId);
                    DataTable Result = new DataTable();
                    engine.vSetQuery(Query);
                    Result = engine.vExec();
                    List<String> stringlist=new List<String>();
                    int rowcount=Result.Rows.Count;
                    for(int count=0;count<rowcount;count++)
                    {

                        stringlist.Add(Result.Rows[count][0].ToString());
                    }
                    return(stringlist);
                           
                }

                public bool bWriteTrantoDB()
                {
                    String Query = @"insert into Spent_details values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = String.Format(Query, UserId, dateofspent, amount, spent_reason, LoanName, description);
                    engine.vSetQuery(Query);
                    if (engine.vExecSet())
                    {
                        balancesheet balance = new balancesheet(UserId);
                        return (balance.bDebitBalance(amount));

                    }
                    else
                    {
                        return false;
                    }
                }
                
                public void vSetSpent_reson(int spent_reason)
                {
                    this.spent_reason = spent_reason;
                }
                public bool bGetSpent_reason()
                {
                    if (spent_reason == 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }

        }

        public class Loan
        {
            private
                String UserId;
                String loan_name;
                Int32 Amt;
                Int32 downpayment;
                Int32 expected_EMI;
                Int32 balance;
                QueryEngine Engine;

            public Loan()
            {
                Engine= new QueryEngine();
            }

            public void vSetloanDetails(String userid,String lname,Int32 amt,Int32 dwnpymt,Int32 emi)
            {
                UserId=userid;
                loan_name=lname;
                Amt=amt;
                downpayment=dwnpymt;
                expected_EMI=emi;
                balance=amt-dwnpymt;

            }
            public bool vUpdateToDB()
            {
                String Query=@"insert into Loan values('{0}','{1}','{2}','{3}','{4}','{5}')";
                Query=String.Format(Query,UserId,loan_name,Amt,downpayment,expected_EMI,balance);
                Engine.vSetQuery(Query);
                return(Engine.vExecSet());
            }

            public bool vDeleteLoanfromDB()
            {
                //to delete loan_name from db
                String Query= @"delete from Loan where(Loan.loan_name='{0}' AND Loan.UserId='{1}')";
                Query=String.Format(Query,UserId,loan_name);
                Engine.vSetQuery(Query);
                return (Engine.vExecSet());
                
            }
        }


        public class Income
        {
            private
                String UserId;
            String income_name;
            int income_amt;
            String account_details;
            QueryEngine Engine;

            public Income()
            {
                Engine = new QueryEngine();
            }
            public Income(String uid)
            {
                UserId = uid;
                Engine = new QueryEngine();
            }


            public void vSetIncomeDetails(String userid, String incomename, int income_amt, String acc_details)
            {
                UserId = userid;
                this.income_name = incomename;
                this.income_amt = income_amt;
                this.account_details = acc_details;


            }
            public bool vUpdateToDB()
            {
                String Query = @"insert into Income values('{0}','{1}','{2}','{3}')";
                Query = String.Format(Query, UserId, income_name, income_amt, account_details);
                Engine.vSetQuery(Query);
                return (Engine.vExecSet());
            }

            public bool vDeleteincomefromDB()
            {
                //to delete loan_name from db
                String Query = @"delete from Income where(income_source='{0}' AND UserId='{1}')";
                Query = String.Format(Query, UserId, income_name);
                Engine.vSetQuery(Query);
                return (Engine.vExecSet());

            }
            public int Noofincomesrces()
            {
                String Query = @"Select count(*) from Income where(UserId='{0}')";
                Query = String.Format(Query, UserId);
                Engine.vSetQuery(Query);
                return(Convert.ToInt16((Engine.vExec()).Rows[0][0].ToString()));

            }

        }


        public class balancesheet
        {
            private
                String userid;
                Int32 balance;
                QueryEngine engine;
            public balancesheet()
            {
                engine = new QueryEngine();
            }
            public balancesheet(String userid)
            {
                this.userid = userid;
                engine = new QueryEngine();

            }
            private void iGetBalance()
            {
                String Query = @"Select balance from balancesheet where UserId='{0}'";
                Query = String.Format(Query, userid);
                DataTable res;
                engine.vSetQuery(Query);
                res = engine.vExec();
                balance=(Convert.ToInt32(res.Rows[0][0].ToString()));


            }

            public bool bCreditBalance(int amt)
            {
                iGetBalance();
                String Query = @"Update balancesheet set balance='{0}' where UserId='{1}'";
                Query = String.Format(Query,(balance+ amt), userid);
                engine.vSetQuery(Query);
                return (engine.vExecSet());

            }

            public bool bDebitBalance(int amt)
            {
                iGetBalance();
                String Query = @"Update balancesheet set balance='{0}' where UserId='{1}'";
                Query = String.Format(Query,  (balance- amt), userid);
                engine.vSetQuery(Query);
                return (engine.vExecSet());

            }
            public bool bAddNewEntry()
            {
                String Query=@"insert into balancesheet values('{0}','0')";
                Query=String.Format(Query,userid);
                engine.vSetQuery(Query);
                return (engine.vExecSet());
                
            }

            public Int32 Getbalance()
            {
                iGetBalance();
                return (balance);
            }
        }

        public class income_history
        {
            private
                String UserId;
                Int32 amount;
                String income_source;
                String description;
                DateTime date;
                QueryEngine engine;

            public income_history(String userid)
            {
                UserId=userid;
                amount = 0;
                income_source = "";
                description = "";
                date = DateTime.MinValue;
                engine=new QueryEngine();

            }
            public income_history()
            {
                UserId = "";
                amount = 0;
                income_source = "";
                description = "";
                date = DateTime.MinValue;
                engine = new QueryEngine();

            }
            public void vSetuserid(String userid)
            {
                UserId = userid;
               
            }
            public void vSetIncomeSrc(String Income_src)
            {
                this.income_source=Income_src;
            }

           
            
            public String  sSetAmt()
            {
                String Query = @"Select  amount from Income where (UserId='{0}' AND income_source='{1}')";
                Query = String.Format(Query, UserId,income_source);
                DataTable res;
                engine.vSetQuery(Query);
                res = engine.vExec();
                return((res.Rows[0][0]).ToString());

            }
            public String sSetDescription()
            {
                String Query = @"Select  account_details from Income where (UserId='{0}' AND income_source='{1}')";
                Query = String.Format(Query, UserId, income_source);
                DataTable res;
                engine.vSetQuery(Query);
                res = engine.vExec();
                return ((res.Rows[0][0]).ToString());

            }

            public List<String> lsGetIncomeSourceNames()
            {
                String Query = @"Select income_source from Income where UserId='{0}'";
                Query = String.Format(Query, UserId);
                DataTable res;
                engine.vSetQuery(Query);
                res = engine.vExec();
                List<String> stringlist=new List<String>();
                int rowcount=res.Rows.Count;
                for(int count=0;count<rowcount;count++)
                {
                    stringlist.Add(res.Rows[count][0].ToString());
                }
                return(stringlist);
                
            }

            public void vSetDetails(Int32 amt,String src,String desc)
            {
                amount=amt;
                income_source=src;
                description=desc;
                date=DateTime.Now.Date;


            }
            public bool bUpdateIncomehistory()
            {
                String Query = @"insert into income_details values('{0}',GETDATE(),'{1}','{2}','{3}')";
                Query = String.Format(Query, UserId,amount,income_source,description);
                engine.vSetQuery(Query);
                if(engine.vExecSet())
                {
                    balancesheet balance = new balancesheet(UserId);
                    return (balance.bCreditBalance(amount));
                }
                else
                {
                    return false;

                }

            }
            
        }
        public class Report
        {
            private 
                String userid;
                DateTime strtdat,enddate;
                String tab_name;
                int rep_type;
                QueryEngine engine;
                String Query;
                
            public Report(String usr)
            {
                userid=usr;
                rep_type=99;
                strtdat=DateTime.MinValue;
                enddate=DateTime.MinValue;
                tab_name="";
                engine = new QueryEngine();
                

            }
            public Report(String usr,DateTime s_date,DateTime e_date,int r_t)
            {
                userid=usr;
                rep_type=r_t;
                strtdat=s_date;
                enddate=e_date;
                tab_name="";
                engine = new QueryEngine();

            }


            public DataTable generate_report()
            {
                bool is_loan_rep=false;
                switch(rep_type)
                {
                    case 0:
                        Query = @"select * from income_details where (UserId='{1}' AND Date_of_income BETWEEN '{2}' AND '{3}')";
                        break;
                    case 1:
                        Query = @"select * from spent_details where (UserId='{1}' AND spent_reason='0'  AND spent_date BETWEEN '{2}' AND '{3}')";
                        break;
                    case 2:
                        Query = @"select * from spent_details where (UserId='{1}' AND  spent_date BETWEEN '{2}' AND '{3}')";
                        break;
                    default:
                        break;
                }
                return(dtGetIncomeReports(is_loan_rep));
                
            }

            public DataTable dtGetIncomeReports(bool is_loan)
            {
               
                Query = String.Format(Query, tab_name,userid,strtdat,enddate);
                DataTable res;
                engine.vSetQuery(Query);
                res = engine.vExec();
                return(res);


            }

                
        }
        public class Report_Dates
        {
            private
                DateTime start_date;
                DateTime end_date;
                int type;
            public Report_Dates()
            {
                start_date=DateTime.MinValue;
                end_date=DateTime.Now.Date;
                type=99;
            }
             public Report_Dates(int t)
            {
                start_date=DateTime.MinValue;
                end_date=DateTime.Now.Date;
                type=t;
            }
             public Report_Dates(Report_Dates rd)
             {
                 start_date = rd.start_date;
                 end_date = rd.end_date;
                 type = rd.type;
             }
            public String sGetReportType()
            {
                switch(type)
                {
                    case 0:
                        return("INCOME REPORT");
                    case 1:
                        return("LOAN REPORT");
                    case 2:
                        return("EXPENSE REPORT");
                   
                    default :
                        return ("INVALID REPORT");
                     
                }
            }
            public void vSetReportType(int rt)
            {
                type = rt;
            }
            public void vSetDate(DateTime s_date, DateTime e_date)
            {
                start_date = s_date;
                end_date = e_date;

            }
            public DateTime dtGetStartrDate()
            {
                return (start_date);
                
            }
            public DateTime dtGetEndDate()
            {
                return (end_date);

            }
            public int dtGetReptype()
            {
                return (type);

            }
           




        }

        class Registration
        {
            private
                String Name;
                String Email;
                String Password;
                String SecurityQstn;
                String answer;
                QueryEngine engine;

                public Registration()
                {
                    engine = new QueryEngine();
                }
                public Registration(String email, String name, String password, String securityqstn, String answr)
                {
                    Name = name;
                    Email = email;
                    Password = password;
                    SecurityQstn = securityqstn;
                    answer = answr;
                    engine = new QueryEngine();
                }
                public Registration(String email)
                {
                    Name = "";
                    Email = email;
                    engine = new QueryEngine();
                }
                public Registration(String email, String securityqstn, String answr)
                {
                    Name = "unknown";
                    Email = email;
                    Password = "";
                    SecurityQstn = securityqstn;
                    answer = answr;
                    engine = new QueryEngine();
                }

                public bool bUseridValidator()
                {
                    String Query=@"Select COUNT(*) From Registration where (userid='{0}')";
                    Query=String.Format(Query,Email);
                    engine.vSetQuery(Query);
                    DataTable result = new DataTable(); 
                    result=engine.vExec();
                    if (Convert.ToInt16(result.Rows[0][0].ToString()) == 0)
                    {
                        return (true);

                    }
                    else
                    {
                        return (false);
                    }


                }

                public bool bSetDataToDB()
                {
                    String Query = @"Insert into Registration values('{0}','{1}','{2}','{3}','{4}')";
                    Query=String.Format(Query,Email,Name,Password,SecurityQstn,answer);
                    engine.vSetQuery(Query);
                    return(engine.vExecSet());
                    
                }

                public String sRecoverpassword()
                {
                    String Query = @"select Userid,Password from Registration where (userid='{0}' AND SecurityQstn='{1}' AND Answer='{2}')";
                    Query = String.Format(Query, Email, SecurityQstn, answer);
                    engine.vSetQuery(Query);
                    DataTable result = new DataTable();
                    result = engine.vExec();

                    if (result.Rows.Count == 0)
                    {
                        return ("%%%%404-- user id does not exist --404%%%%");
                    }
                    else
                    {
                        Password = result.Rows[0][1].ToString();
                        return (Password);
                    }

                }
                public bool bSecurityQstnValidate()
                {
                    String Query = @"select  SecurityQstn,Answer from Registration where (userid='{0}')";
                    Query = String.Format(Query, Email, SecurityQstn, answer);
                    engine.vSetQuery(Query);
                    DataTable result = new DataTable();
                    result = engine.vExec();

                    if ((result.Rows[0][0].ToString() == SecurityQstn) && (result.Rows[0][1].ToString() == answer))
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                    
                }
                public String sGetUsername()
                {
                    String Query = @"select Name from Registration where (userid='{0}')";
                    Query = String.Format(Query, Email);
                    engine.vSetQuery(Query);
                    DataTable result = new DataTable();
                    result = engine.vExec();
                    Name=result.Rows[0][0].ToString();
                    return (Name);
                }


        }

        
     



                
        }

    

