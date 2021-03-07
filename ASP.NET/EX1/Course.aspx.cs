using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class EX1_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.BindYear();
            this.BindTerm();
            this.BindCollege();
            this.BindTeacher();
        }
    }

    protected void BindYear()
    {
        YearList.Items.Clear();
        int startYear = DateTime.Now.Year - 10;
        int currentYear = DateTime.Now.Year;

        for(int i = startYear; i<=currentYear; i++)
        {
            YearList.Items.Add(new ListItem((i -1).ToString() + "-" + i.ToString()));
        }
        YearList.SelectedValue = (currentYear - 1).ToString() + "-" + currentYear.ToString();
    }
    protected void BindTerm()
    {
        TermList.Items.Clear();
        for(int i =1; i <= 2; i++)
        {
            TermList.Items.Add(i.ToString());
        }
    }
    protected void BindCollege()
    {
        CollegeList.Items.Clear();
        CollegeList.Items.Add(new ListItem("计算机学院"));
        CollegeList.Items.Add(new ListItem("外国语学院"));
        CollegeList.Items.Add(new ListItem("机电学院"));
        
    }

    protected void BindTeacher()
    {
        TeacherList.Items.Clear();
        switch (CollegeList.SelectedValue)
        {
            case "计算机学院":
                TeacherList.Items.Add(new ListItem("曹操"));
                TeacherList.Items.Add(new ListItem("李芳"));
                TeacherList.Items.Add(new ListItem("王淼"));
                break;
            case "外国语学院":
                TeacherList.Items.Add(new ListItem("张强"));
                TeacherList.Items.Add(new ListItem("王定安"));
                break;
            case "机电学院":
                TeacherList.Items.Add(new ListItem("祝昭仪"));
                TeacherList.Items.Add(new ListItem("毛鑫旺"));
                break;
            default:
                TeacherList.Items.Add(new ListItem("无"));
                break;
        }
    }

    protected void CollegeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.BindTeacher();
    }

}