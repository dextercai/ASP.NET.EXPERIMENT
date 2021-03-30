using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX3_Shop_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < chklsPet.Items.Count; i++)
        {
            if (chklsPet.Items[i].Selected)
            {
                Session["cart"] += chklsPet.Items[i].Text + ",";
            }
        }
    }

    protected void butView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }
}