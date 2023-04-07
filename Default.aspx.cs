using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadRecord();
        }
    }
    SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=ProgramindDb;Integrated Security=True");

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        con.Open();
        SqlCommand comm = new SqlCommand("insert into Studentinfo_Tab values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox3.Text)+"','"+TextBox4.Text+"')", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(successfully inserted);",true);
        LoadRecord();

    }
    void LoadRecord()
    {
        SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("UPDATE Studentinfo_Tab SET StudentName='" + TextBox2.Text + "',  Adress='" + DropDownList1.SelectedValue + "',Age='" + double.Parse(TextBox3.Text) + "' WHERE StudentId=" + int.Parse(TextBox1.Text), con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(successfully inserted);", true);
        LoadRecord();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("delete Studentinfo_Tab  WHERE StudentId=" + int.Parse(TextBox1.Text), con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert(successfully inserted);", true);
        LoadRecord();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string myText = TextBox1.Text.Trim();

        if (TextBox1.Text == "" || myText == "")
        {
            LoadRecord();
        }
        else{
        SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab WHERE StudentId=" + int.Parse(TextBox1.Text), con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        
    }
}