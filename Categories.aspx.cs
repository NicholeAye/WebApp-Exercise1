using System;
using BusinessLogic;
using Entities;

namespace WebApp_Exercise1
{
    public partial class Categories : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                id = Convert.ToInt32(Request.QueryString["CategoriesID"]);
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["CategoriesID"]);
                txtCategoriesCode.Text = Request.QueryString["CategoriesCode"];
                txtCategoriesName.Text = Request.QueryString["CategoriesName"];

            }
            lblinfoMsg.Visible = false;
           
            
        }
    
        protected void btnSave_Click(object sender, EventArgs e)
        {

            CategoriesController cate_controller = new CategoriesController();
            xsdCodeTest.CategoriesDataTable dt = new xsdCodeTest.CategoriesDataTable();
            xsdCodeTest.CategoriesRow row = dt.NewCategoriesRow();
           
            row.CategoriesCode = txtCategoriesCode.Text;
            row.CategoriesName = txtCategoriesName.Text;

            int RowAffected=cate_controller.Insert(row);
            if (RowAffected > 0)
            {
                lblinfoMsg.Visible = true;
                lblinfoMsg.Text = "Data has been added successfully";
               // Response.Redirect("~/CategoriesList.aspx");
            }
            else
            {
                lblinfoMsg.Text = "Data cannot added";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CategoriesController cate_controller = new CategoriesController();
            xsdCodeTest.CategoriesDataTable dt = new xsdCodeTest.CategoriesDataTable();
            xsdCodeTest.CategoriesRow row= dt.NewCategoriesRow();
            row.CategoriesCode = txtCategoriesCode.Text;
            row.CategoriesName = txtCategoriesName.Text;
            row.CategoriesID = id;
            int RowAffected = cate_controller.Update(row);
            if (RowAffected > 0)
            {
                lblinfoMsg.Visible = true;
                lblinfoMsg.Text = "Data has been updated successfully";
                Response.Redirect("~/CategoriesList.aspx");
            }
            else
            {
                lblinfoMsg.Text = "Data cannot updated";
            }


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            CategoriesController cate_controller = new CategoriesController();
            xsdCodeTest.CategoriesDataTable dt = new xsdCodeTest.CategoriesDataTable();
            xsdCodeTest.CategoriesRow row = dt.NewCategoriesRow();          
            row.CategoriesID = id;
            int RowAffected = cate_controller.Delete(row);
            if (RowAffected > 0)
            {
                lblinfoMsg.Visible = true;
                lblinfoMsg.Text = "Data has been deleted successfully";
                Response.Redirect("~/CategoriesList.aspx");
            }
            else
            {
                lblinfoMsg.Text = "Data cannot deleted";
            }

        }
    }
}
