using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Response.Write("He he he");
            }
            else
            {
                //Response.Write("ka ka ka");
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string sql = "select * from userTable where userName='" + userName.Text + "' and password='" + password.Text + "';";
            SqlConnection conn = new SqlConnection(connstr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            //Response.Write(reader[0].ToString());
            //GridView1.DataSource = reader;
            //GridView1.DataBind();
            //Response.Write(reader["name"].ToString());
            //Response.Write("HIIII");
            //Response.Write(reader["name"].ToString() + "<br/>");
            if (reader.HasRows)
            {
                if(reader.Read())
                {
                    //Session["login"] = "yes";
                    Session["id"] = reader["id"].ToString();
                    Session["name"] = reader["userName"].ToString();
                    if (reader["type"].ToString() == "Admin")
                    {
                        
                        Response.Redirect("~/adminHome.aspx");
                    }
                }
            }

            else
            {
                Label1.Text = "Worng Username or Password";
                Label1.ForeColor = System.Drawing.Color.Red;
                //Label1.BackColor = System.Drawing.Color.Red;
            }
            conn.Close();

        }
    }
}