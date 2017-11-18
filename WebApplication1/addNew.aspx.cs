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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/login.aspx");
                
            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql="INSERT INTO [dbo].[userTable]  ([userName], [email],[fullName],[phoneNumber],[address] ,[password] ,[type],[departmentId],[salary]) "
            +"VALUES ('"+userName.Text+"', '"+email.Text+"', '"+fullName.Text+"', '"+phoneNo.Text+"', '"+address.Text+"', '"+password.Text+"', '"+userType.Text+"','"+department.Text+"', '"+salary.Text+"' )";
            string connstr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;   
            SqlConnection conn = new SqlConnection(connstr);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
           
            message.Text = "Employee Added Successfully";
            message.ForeColor = System.Drawing.Color.Green;
            conn.Close();

            
        }
    }
}