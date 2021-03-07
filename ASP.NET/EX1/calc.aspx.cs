using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calc_EX1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static string num1 = "0";
    static string num2 = "0";
    static string total = "";
    static string sign = "";

    protected void Button_1_Click(object sender, EventArgs e)
    {
        total += "1";
        this.ResultTextBox.Text = total;
  
    }

    protected void Button_2_Click(object sender, EventArgs e)
    {
        total += "2";
        this.ResultTextBox.Text = total;
    }

    protected void Button_3_Click(object sender, EventArgs e)
    {
        total += "3";
        this.ResultTextBox.Text = total;
    }

    protected void ButtonPlus_Click(object sender, EventArgs e)
    {
        if(sign.Length == 1)
        {
            Count();
            num1 = ResultTextBox.Text;
            sign = "+";

        }
        else
        {
            num1 = ResultTextBox.Text;
            ResultTextBox.Text = "";
            total = "";
            sign = "+";
        }
    }

    protected void ButtonMiuns_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = ResultTextBox.Text;
            sign = "-";

        }
        else
        {
            num1 = ResultTextBox.Text;
            ResultTextBox.Text = "";
            total = "";
            sign = "-";
        }
    }

    protected void ButtonEqual_Click(object sender, EventArgs e)
    {
        Count();
    }
    protected void Count()
    {
        num2 = ResultTextBox.Text;
        if(num2== "")
        {
            num2 = "0";
        }
        switch (sign)
        {
            case "+":
                ResultTextBox.Text = (int.Parse(num1) + int.Parse(num2)).ToString();
                num1 = num2 = "0";
                total = sign = "";
                break;
            case "-":
                ResultTextBox.Text = (int.Parse(num1) - int.Parse(num2)).ToString();
                num1 = num2 = "0";
                total = sign = "";
                break;
        }
    }
}