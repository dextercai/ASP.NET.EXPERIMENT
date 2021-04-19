using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX4_Update : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string categoryId = Request.QueryString["CategoryId"];
            var category = (from c in db.Category where c.CategoryId == int.Parse(categoryId) select c).First();
            txtCategoryId.Text = categoryId;
            txtCategoryId.ReadOnly = true;
            txtName.Text = category.Name;
            txtDescn.Text = category.Descn;
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        var category = (from c in db.Category where c.CategoryId == int.Parse(txtCategoryId.Text) select c).First();
        category.Name = txtName.Text;
        category.Descn = txtDescn.Text;
        db.SubmitChanges();
    }

    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}