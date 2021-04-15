using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX4_FuzzyQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        var result = from c in db.Category where SqlMethods.Like(c.Name, "%" + txtSearch.Text + "%") select c;
        if(result.Count() != 0)
        {
            gvCategory.DataSource = result;
            gvCategory.DataBind();
        }
        else
        {
            lblMsg.Text = "没有满足条件的数据！";
        }
    }

    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}