using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gds_Interior_Service_Provider.UserControl
{
    public partial class MyMassagebox : System.Web.UI.UserControl
    {
        private string _msgtext;
        public string MsgText
        {
            get { return _msgtext; }
            set { _msgtext = value; }
        }
        public enum MsgType
        {
            ErrorMsg,
            WarningMsg,
            InfoMsg,
            SuccessMsg,
            SaveMsg,
            DeleteMsg,
            DisplayMsg
        }
        public void HideMe()
        {
            this.Visible = false;
        }
        public void UnHideMe()
        {
            this.Visible = true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(_msgtext) == false)
            {
                lblmsg.Text = _msgtext;
            }
        }

        public void ShowMsg(MsgType mType, String bodyOptional, String url)
        {
            String title = "";
            String strmsg = "";
            switch (mType)
            {
                case MyMassagebox.MsgType.ErrorMsg:
                    title = "Error";
                    break;
                case MyMassagebox.MsgType.DeleteMsg:
                    title = "Delete";
                    strmsg = "Record has been successfully deleted.";
                    break;
                case MyMassagebox.MsgType.InfoMsg:
                    title = "Info";
                    break;
                case MyMassagebox.MsgType.SaveMsg:
                    title = "Save";
                    strmsg = "Record has been successfully saved.";
                    break;
                case MyMassagebox.MsgType.SuccessMsg:
                    title = "Success";
                    strmsg = "Record has been successfully saved.";
                    break;
                case MyMassagebox.MsgType.WarningMsg:
                    title = "Warning";
                    break;
                case MyMassagebox.MsgType.DisplayMsg:
                    title = "Display"; break;
            }

            lblmsg.Text = "";
            if (bodyOptional.ToString().Trim() != "")
            {
                strmsg = bodyOptional;
            }
            if (title.ToString().ToUpper().Trim() == "ERROR" || title.ToString().ToUpper().Trim() == "WARNING" || title.ToString().ToUpper().Trim() == "INFO" || title.ToString().ToUpper().Trim() == "SUCCESS")
            {
                lblmsg.Text = strmsg;
                this.Visible = true;
                title = title.ToString().ToLower().Trim();
                strmsg = strmsg.Replace("\r\n", " ");
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Popup", "showToastMsg('" + strmsg + "', '" + title + "');", true);
            }
            else if (mType == MyMassagebox.MsgType.DisplayMsg)
            {
                lblmsg.Text = strmsg; 
                this.Visible = true;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Popup", "showMessage('" + title + "', '" + strmsg + "','" + url + "');", true);
            }
        }
    }
}