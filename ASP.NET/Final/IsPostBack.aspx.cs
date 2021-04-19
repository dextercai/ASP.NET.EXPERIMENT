using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Final_IsPostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write("页面第一次加载！021118233 蔡闻哲");
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Write("执行Click事件处理代码 021118233 蔡闻哲");
    }
}