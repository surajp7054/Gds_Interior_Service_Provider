using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

namespace Gds_Interior_Service_Provider
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
        string strallmsg;
        SqlCommand Cmd;
        SqlTransaction sqltrans;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) 
            {

            }
        }

        protected void btngetquotesubmit_Click(object sender, EventArgs e)
         {
            string strRes = "";
            string stristrnsstrted = "N";
            if (txtfirstname.Text.ToString()== "") 
            {
                strallmsg += "Please Enter The First Name";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            if (txtlastname.Text.ToString() == "") 
            {
                strallmsg += "Please Enter The Last Name";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            if (txtemail.Text.ToString() == "") 
            {
                strallmsg += "Please Enter Your Email Id";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            else if (!string.IsNullOrEmpty(txtemail.Text.Trim())) 
            {
                System.Text.RegularExpressions.Regex regex = new System.Text.RegularExpressions.Regex(@"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
                bool isValid = regex.IsMatch(txtemail.Text.Trim());
                if (!isValid)
                {
                    strallmsg = "Invalid email address";
                    MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                    return;
                }
            }
            if (txtcontno.Text.ToString() == "") 
            {
                strallmsg += "Please Enter Your Contact No";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            else if(txtcontno.Text.Length!=10)
            {
                strallmsg += "Phone No should Be 10 Digit ";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            if (txtaddress.Text.ToString() == "") 
            {
                strallmsg += "Please Enter Address With Pin Code";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            if (ddlflattype.SelectedValue.ToString()=="0") 
            {
                strallmsg += "Please Select The Flat Type";
                MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.ErrorMsg, strallmsg, "");
                return;
            }
            try 
            {
                Cmd = new SqlCommand();
                Cmd.CommandText = "GDS_SP_ADDCUSTENQURYDATA";
                Cmd.CommandType = CommandType.StoredProcedure;

                if (Conn.State == ConnectionState.Closed) 
                {
                    Conn.Open();
                }
                Cmd.Connection = Conn;

                string hostname = Dns.GetHostName();
                string Ip_Address = Dns.GetHostByName(hostname).AddressList[0].ToString();

                Cmd.Parameters.Add("@CUST_FIRSTNAME", SqlDbType.VarChar, 30).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_FIRSTNAME"].Value = txtfirstname.Text.ToString().Trim();

                Cmd.Parameters.Add("@CUST_LASTNAME", SqlDbType.VarChar, 30).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_LASTNAME"].Value = txtlastname.Text.ToString().Trim();

                Cmd.Parameters.Add("@CUST_EMAILID", SqlDbType.VarChar, 75).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_EMAILID"].Value = txtemail.Text.ToString().Trim();

                Cmd.Parameters.Add("@CUST_PHONENO", SqlDbType.BigInt).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_PHONENO"].Value = txtcontno.Text.ToString().Trim();

                Cmd.Parameters.Add("@CUST_ADDRESS", SqlDbType.VarChar,250).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_ADDRESS"].Value = txtaddress.Text.ToString().Trim();

                Cmd.Parameters.Add("@CUST_FLATTYPE", SqlDbType.VarChar, 50).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_FLATTYPE"].Value = ddlflattype.SelectedValue.ToString().Trim();

                Cmd.Parameters.Add("@CUST_IPADDRESS", SqlDbType.VarChar, 30).Direction = ParameterDirection.Input;
                Cmd.Parameters["@CUST_IPADDRESS"].Value = Ip_Address;

                Cmd.Parameters.Add("@RES", SqlDbType.VarChar, 2).Direction = ParameterDirection.Output;


                sqltrans = Conn.BeginTransaction();
                stristrnsstrted = "Y";
                Cmd.Transaction = sqltrans;

                Cmd.ExecuteNonQuery();

                strRes = Cmd.Parameters["@RES"].Value.ToString();
                if (strRes == "S") 
                {
                    sqltrans.Commit();
                    strallmsg += "Your Data Have Successfully Saved. Our Team will be Reach You Soon ";
                    MyGdsMsgBox.ShowMsg(UserControl.MyMassagebox.MsgType.SaveMsg, strallmsg, "");
                    txtaddress.Text = "";
                    txtcontno.Text = "";
                    txtemail.Text = "";
                    txtlastname.Text = "";
                    txtfirstname.Text = "";
                    ddlflattype.SelectedValue ="0";
                }
                else 
                {
                    sqltrans.Rollback();
                }

            }
            catch(Exception ex) 
            {
                strallmsg += ex.Message.ToString();
                if (stristrnsstrted == "Y") 
                {
                    sqltrans.Rollback();
                }
            }
            finally 
            {
                Cmd.Dispose();
                if (Conn.State == ConnectionState.Open) 
                {
                    Conn.Close();
                }
            }
        }

        protected void btnbookfreeconsult_Click(object sender, EventArgs e)
        {
            Response.Redirect("frm_Getfreequote.aspx");
        }
    }
}