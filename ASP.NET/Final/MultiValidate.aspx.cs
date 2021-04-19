using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Final_MultiValidate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void csvIdentity_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string strID = args.Value;
        args.IsValid = true;
        try
        {
            DateTime.Parse(strID.Substring(6, 4) + "-" + strID.Substring(10, 2) + "-" + strID.Substring(12, 2));
        }
        catch
        {
            args.IsValid = false;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (Page.IsValid)
        {
            lblMsg.Text = "验证通过";
        }
    }
}