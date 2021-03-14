using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX2P2_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void CsvIdentity_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string cid = args.Value;
        args.IsValid = true;
        try
        {
            DateTime.Parse(cid.Substring(6, 4) + "-" + cid.Substring(10, 2) + "-" + cid.Substring(12, 2));
        }
        catch (Exception e)
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
            //TODO
        }
    }

    protected void btnValidateName_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "leaf")
        {
            lblName.Text = "已被占用";
        }
        else
        {
            lblName.Text = "可用";
        }
    }
}