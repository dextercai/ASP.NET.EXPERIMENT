using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Final_LinqXml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Chap7/BookLinq.xml");
        XElement els = XElement.Load(xmlFilePath);
        XElement el = new XElement(
            "Book",
            new XAttribute("ID", "104 021118233"),
            new XElement("BookName", "C#高级编程 蔡闻哲 "),
            new XElement("Price", 119.8)
            );
        els.Add(el);
        els.Save(xmlFilePath);
        Response.Redirect("~/Chap7/BookLinq.xml");
    }
}