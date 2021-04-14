using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX4_DataManager : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Bind()
    {
        var result = from c in db.Category select c;
        gvCategory.DataSource = result;
        gvCategory.DataBind();
    }



    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Bind();
    }



    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx?CategoryId=" + txtCategoryId.Text);
    }



    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var result = from c in db.Category
                     where c.CategoryId == int.Parse(txtCategoryId.Text)
                     select c;
        db.Category.DeleteAllOnSubmit(result);
        db.SubmitChanges();
        Bind();
    }
}