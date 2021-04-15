using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class EX4_Xml_LinqXml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Category.xml', '_blank')</script>");
    }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Category.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from el in els.Elements("Category") where (string)el.Element("Name") == txtName.Text select el;
        if(elements.Count() == 0)
        {
            lblMsg.Text = "未找到";
        }
        else
        {
            foreach (XElement xe in elements)
            {
                lblMsg.Text = "CategoryId:" + xe.Element("CategoryId").Value + "<br/>"
                    + "Name:" + xe.Element("Name").Value + "<br/>"
                    + "Descn:" + xe.Element("Descn").Value + "<br/>";
            }
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqXmlInsert.aspx");
    }
}