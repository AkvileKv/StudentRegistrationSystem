using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppStudentReg
{
    public partial class RegisterTeacher : System.Web.UI.Page
    {
        static List<string> teachers = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (nameField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your name";
                return;
            }
            if (surnameField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your surname";
                return;
            }
            if (idField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your id";
                return;
            }
            if (addressField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your address";
                return;
            }
            if (telephoneField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your telephone number";
                return;
            }
            if (emailField.Text.Equals(""))
            {
                errorLabel.Text = "Enter your e-mail address";
                return;
            }
            if (facultySelection.SelectedIndex == 0)
            {
                errorLabel.Text = "Choose the faculty";
                return;
            }
            if (workingTypeSelection.SelectedValue == "")
            {
                errorLabel.Text = "Select working type";
                return;
            }

            //id:
            int idLength = idField.Text.Length;
            if (idLength != 11)
            {
                errorLabel.Text = "Wrong id (11 numbers)";
                return;
            }


            string id = idField.Text;
            string no1 = id.Substring(0, 1);

            if (no1 == "0" || no1 == "7" || no1 == "8" || no1 == "9")
            {
                errorLabel.Text = "Wrong id (first number)";
                return;
            }

            string no2 = id.Substring(1, 1);
            string no3 = id.Substring(2, 1);
            string no4 = id.Substring(3, 1);
            string no5 = id.Substring(4, 1);
            string no6 = id.Substring(5, 1);
            string no7 = id.Substring(6, 1);
            string no8 = id.Substring(7, 1);
            string no9 = id.Substring(8, 1);
            string no10 = id.Substring(9, 1);
            string no11 = id.Substring(10, 1);

            int no1int = int.Parse(no1); //konvertuoja i int 
            int no2int = int.Parse(no2);
            int no3int = int.Parse(no3);
            int no4int = int.Parse(no4);
            int no5int = int.Parse(no5);
            int no6int = int.Parse(no6);
            int no7int = int.Parse(no7);
            int no8int = int.Parse(no8);
            int no9int = int.Parse(no9);
            int no10int = int.Parse(no10);
            int no11int = int.Parse(no11);

            int S = no1int * 1 + no2int * 2 + no3int * 3 + no4int * 4 + no5int * 5 + no6int * 6 + no7int * 7 + no8int * 8 + no9int * 9 + no10int * 1;
            int liekana = S % 11;

            if (liekana == 10) // lygi 10
            {
                int S2 = no1int * 3 + no2int * 4 + no3int * 5 + no4int * 6 + no5int * 7 + no6int * 8 + no7int * 9 + no8int * 1 + no9int * 2 + no10int * 3;
                int liekana2 = S2 % 11;
                if (liekana2 == 10) // lygi 10
                {
                    int lastNumber = 0;

                    if (lastNumber != no11int)
                    {
                        errorLabel.Text = "Invalid id (last no.)";
                        return;
                    }
                }
                if (liekana2 != 10) // nelygi 10
                {
                    if (liekana2 != no11int)
                    {
                        errorLabel.Text = "Invalid id (last no.)";
                        return;
                    }
                }

                // errorLabel.Text = liekana.ToString();
                // return;
            }
            if (liekana != 10) // nelygi 10
            {
                if (liekana != no11int)
                {
                    errorLabel.Text = "Invalid id (last no.)";
                    return;
                }
            }


            //phone number:
            int phoneNumberLength = telephoneField.Text.Length;
            if (phoneNumberLength != 9)
            {
                errorLabel.Text = "Wrong phone number (86XXXXXXXX)";
                return;
            }
            string str = telephoneField.Text;
            string res = str.Substring(0, 2);
            if (res != "86")
            {
                errorLabel.Text = "Wrong number (86...)";
                return;
            }

            bool isNumeric = int.TryParse(str, out _); //ar visi ivesti yra skaiciai 
            if (isNumeric != true)
            {
                errorLabel.Text = "Wrong number (only numbers)";
                return;
            }


            //email tikrinimas:
      /*      string email = emailField.Text;
            Regex regex = new Regex(@"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-
         9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$",
            RegexOptions.CultureInvariant | RegexOptions.Singleline);

            bool isValidEmail = regex.IsMatch(email);
            if (!isValidEmail)
            {
                errorLabel.Text = "The email is invalid";
                return;
            }
            else
            {
                errorLabel.Text = "Good email";
                return;
            }
      */


            //ar egzistuoja sarase
            if (teachers.Contains(idField.Text))
            {
                errorLabel.Text = "Teacher already exists";
                return;
            }

            teachers.Add(nameField.Text);
            teachers.Add(surnameField.Text);
            teachers.Add(idField.Text);
            teachers.Add(addressField.Text);
            teachers.Add(telephoneField.Text);
            teachers.Add(emailField.Text);
            teachers.Add(facultySelection.Text);
            teachers.Add(workingTypeSelection.SelectedValue);
            
            Response.Redirect("Successful.aspx");

        }
    }
}