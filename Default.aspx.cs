using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TokenQueue"] == null)
        {
            Queue<int> TokenQueue = new Queue<int>();
            Session["TokenQueue"] = TokenQueue;
        }
    }
    protected void Collect_Token_Click(object sender, EventArgs e)
    {
        Queue<int> TokenQueue = (Queue<int>)Session["TokenQueue"];
        Message_LBL.Text = "There are " + TokenQueue.Count.ToString() + " people before you in the queue";

        if (Session["LastTokenIssued"] == null)
        {
            Session["LastTokenIssued"] = 0;
        }
        int NextTokenTobeIssued = (int)Session["LastTokenIssued"] + 1;
        Session["LastTokenIssued"] = NextTokenTobeIssued;
        TokenQueue.Enqueue(NextTokenTobeIssued);
        AddListBox(TokenQueue);
    }

    private void AddListBox(Queue<int> TokenQueue)
    {
        ListTokens.Items.Clear();
        foreach (int token in TokenQueue)
        {
            ListTokens.Items.Add(token.ToString());
        }
    }
    protected void Counter1_btn_Click(object sender, EventArgs e)
    {
        Counter(1, Counter1_TB);
    }
    protected void Counter2_btn_Click(object sender, EventArgs e)
    {
        Counter(2, Counter2_TB);
    }
    protected void Counter3_btn_Click(object sender, EventArgs e)
    {
        Counter(3, Counter3_TB);
    }

    private void Counter(int counter, TextBox TB)
    {
        Queue<int> TokenQueue = (Queue<int>)Session["TokenQueue"];
        if (TokenQueue.Count == 0)
        {
            TB.Text = "There is no one left in the queue";
        }
        else
        {
            int NextTokenTobeServed = TokenQueue.Dequeue();
            TB.Text = NextTokenTobeServed.ToString();
            Display_TB.Text = "Token number :" + NextTokenTobeServed + " please go to counter " + counter.ToString();
            AddListBox(TokenQueue);
        }
    }

}
