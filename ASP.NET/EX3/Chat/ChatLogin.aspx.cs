using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX3_Chat_ChatLogin : System.Web.UI.Page
{
    private string[,] user = { {"张三", "111111"}, { "李四", "111111" }, { "王五", "111111" } };
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtName.Focus();
    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= 2; i++)
        {
            if (this.txtName.Text == user[i, 0] && this.txtPassword.Text == user[i, 1])
            {
                Session["user"] = user[i, 0];
                Response.Redirect("Chat.aspx");
            }
        }
        Response.Write("<script type='text/javascript'>alert('用户名和密码错误')</script>");
    }
}