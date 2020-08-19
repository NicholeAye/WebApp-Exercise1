using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogic;
using Entities;

namespace WebApp_Exercise1
{
    public partial class Product : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if(IsPostBack)
            {
                id = Convert.ToInt16(Request.QueryString["ProductID"]);
            }
            else
            {
                id = Convert.ToInt16(Request.QueryString["ProductID"]);
                ddlCategoriesCode.SelectedValue = Request.QueryString["CategoriesID"];
                txtProductCode.Text = Request.QueryString["ProductCode"];
                txtProductName.Text = Request.QueryString["ProductName"];
                txtProductPrice.Text = Request.QueryString["Price"];
                txtProductDes.Text = Request.QueryString["ProductDesp"];
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ProductController prod_controller = new ProductController();
            xsdCodeTest.ProductDataTable dt = new xsdCodeTest.ProductDataTable();
            xsdCodeTest.ProductRow row = dt.NewProductRow();
            row.CategoriesID = Convert.ToInt16(ddlCategoriesCode.SelectedValue);
            row.ProductCode = txtProductCode.Text;
            row.ProductName = txtProductName.Text;
            row.Price = Convert.ToDecimal(txtProductPrice.Text);
            row.ProductDesp = txtProductDes.Text;
            prod_controller.Insert(row);
            Response.Redirect("~/ProductList.aspx");

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            ProductController prod_controller = new ProductController();
            xsdCodeTest.ProductDataTable dt = new xsdCodeTest.ProductDataTable();
            xsdCodeTest.ProductRow row = dt.NewProductRow();
            row.CategoriesID = Convert.ToInt16(ddlCategoriesCode.SelectedValue);
            row.ProductID = id;
            row.ProductCode = txtProductCode.Text;
            row.ProductName = txtProductName.Text;
            row.Price = Convert.ToDecimal(txtProductPrice.Text);
            row.ProductDesp = txtProductDes.Text;
            prod_controller.Update(row);
            Response.Redirect("~/ProductList.aspx");

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ProductController prod_controller = new ProductController();
            xsdCodeTest.ProductDataTable dt = new xsdCodeTest.ProductDataTable();
            xsdCodeTest.ProductRow row = dt.NewProductRow();
            row.ProductID = id; ;        
            prod_controller.Delete(row);
            Response.Redirect("~/ProductList.aspx");
        }
    }
}