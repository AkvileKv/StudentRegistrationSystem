using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppStudentReg
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static List<string> teachersWithSubjects = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmTeacherButton_Click(object sender, EventArgs e)
        {
            if (selectedTeacherListBox.SelectedItem != null)
            {
               errorLabel.Text = "Only one selection";
               return;              
            }
            if (teacherListBox.SelectedItem == null)
            {
                errorLabel.Text = "Please select Teacher";
                return;
            }
            selectedTeacherListBox.Items.Add(teacherListBox.SelectedItem);
            errorLabel.Text = "";
        }

        protected void subjectsListBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addSubjectButton_Click(object sender, EventArgs e)
        {
            if (subjectsListBox.SelectedItem == null)
            {
                errorLabel.Text = "Please select Subject";
                return;
            }
            selectedSubjectsListBox.Items.Add(subjectsListBox.SelectedItem);
            errorLabel.Text = "";
        }

        protected void removeTeacherButton_Click(object sender, EventArgs e)
        {
            if (selectedTeacherListBox.SelectedItem == null)
            {
                errorLabel.Text = "Please select Teacher";
                return;
            }
            selectedTeacherListBox.Items.Remove(selectedTeacherListBox.SelectedItem);
            errorLabel.Text = "";
        }

        protected void removeSubjectButton_Click(object sender, EventArgs e)
        {
            if (selectedSubjectsListBox.SelectedItem == null)
            {
                errorLabel.Text = "Please select Subject";
                return;
            }
            selectedSubjectsListBox.Items.Remove(selectedSubjectsListBox.SelectedItem);
            errorLabel.Text = "";
        }

        protected void confirmAllButton1_Click(object sender, EventArgs e)
        {
            if (selectedSubjectsListBox.Items == null || selectedTeacherListBox.Items == null)
            {
                errorLabel.Text = "Please fill in all fields";
                return;
            }

            //ar egzistuoja sarase
            if (teachersWithSubjects.Contains(selectedTeacherListBox.Text))
            {
                errorLabel.Text = "Teacher already have Subjects!";
                return;
            }

            teachersWithSubjects.Add(selectedTeacherListBox.Text);
            teachersWithSubjects.Add(selectedSubjectsListBox.Text);

            Response.Redirect("Successful.aspx");
        }
    }
}