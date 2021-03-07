using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EX1_Choice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label QuestionLb = new Label();
        QuestionLb.ID = "QuestionLb";
        QuestionLb.Text = "1.&nbsp;Web服务器不包括（&nbsp;&nbsp;&nbsp;&nbsp;）";
        this.ChoicePlh.Controls.Add(QuestionLb);
        RadioButtonList ChoiceRadioList = new RadioButtonList();
        ChoiceRadioList.ID = "ChoiceRadioList";
        ChoiceRadioList.Items.Add(new ListItem("A. Wizard", "A"));
        ChoiceRadioList.Items.Add(new ListItem("B. input", "B"));
        ChoiceRadioList.Items.Add(new ListItem("C. AdRotator", "C"));
        ChoiceRadioList.Items.Add(new ListItem("D. Calendar", "D"));
        this.ChoicePlh.Controls.Add(ChoiceRadioList);
    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        RadioButtonList ChoiceRadioList = (RadioButtonList)ChoicePlh.FindControl("ChoiceRadioList");
        this.DisplayLb.Text = "你选择了：" + ChoiceRadioList.SelectedValue;
    }
}