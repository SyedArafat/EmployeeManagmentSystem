using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            string connstring = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string sql = "select * from userTable where id="+Session["id"];
                SqlConnection conn = new SqlConnection(connstring);
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    userName.Text = reader["userName"].ToString();
                    fullName.Text = reader["fullName"].ToString();
                    phoneNo.Text = reader["phoneNumber"].ToString();
                    email.Text = reader["email"].ToString();
                    address.Text = reader["address"].ToString();
                    role.Text = reader["type"].ToString();
                    DataView readers = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                    //department.Text = 

                    department.Text = readers.Table.Rows[0][1].ToString();

                    salary.Text = reader["salary"].ToString();
                }

        }

        protected void edit_Click(object sender, EventArgs e)
        {

        }

        protected void update_Click(object sender, EventArgs e)
        {

        }

        protected void delete_Click(object sender, EventArgs e)
        {

        }
    }
}