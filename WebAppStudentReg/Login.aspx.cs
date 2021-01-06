using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppStudentReg
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            if (usernameField.Text.Equals(""))
            { 
                errorLabel.Text = "Enter your username";
                return;
            }
                
            if (passwordField.Text.Equals(""))
            { 
                errorLabel.Text = "Enter your password";
                return;
            }

            if (usernameField.Text != "admin" && passwordField.Text != "admin")
            {
                errorLabel.Text = "Wrong username or/and password";
                return;
            }
            Response.Redirect("Admin.aspx");

        }
    }
}