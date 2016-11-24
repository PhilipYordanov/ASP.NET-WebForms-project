using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FIlms
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
              
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == false)
            {
                CheckBox1.Visible = true;
                Panel2.Visible = true;
            }
            else if (CheckBox1.Checked == true)
            {
                CheckBox1.Visible = true;
                Panel2.Visible = false;
            }
            
        }

       

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
           
            if (CheckBox1.Checked == true )
            {
            
                Panel2.Visible = false;
                Panel3.Visible = true;
                Label4.Visible = false;
                TextBox4.Visible = false;
                    
            }
            else
	        {
                TextBox4.Visible = false;
                Label4.Visible = false; 
	        }

             if (CheckBox1.Checked== false)
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
                Label4.Visible = false;
                TextBox4.Visible = false;
            }
             else
             {
                 TextBox4.Visible = false;
                 Label4.Visible = false;
             }
            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox4.Visible = true;
            Label4.Visible = true;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox4.Visible = true;
            Label4.Visible = true;
        }

       
       
    }
}