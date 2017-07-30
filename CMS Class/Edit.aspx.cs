using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Class
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource2.Insert();
                this.Label2.Text = "Thêm thành công "+StudentName.Text;
                this.Label2.ForeColor = Color.Green;
            }
            catch(Exception ex)
            {
                this.Label2.Text = "Lỗi: " + ex.Message;
                this.Label2.ForeColor = Color.Red;
            }
        }
    }
}