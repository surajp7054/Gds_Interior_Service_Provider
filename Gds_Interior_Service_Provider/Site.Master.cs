using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gds_Interior_Service_Provider
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnenquiry_Click(object sender, EventArgs e)
        {
            Response.Redirect("frm_Getfreequote.aspx");
        }
    }
}