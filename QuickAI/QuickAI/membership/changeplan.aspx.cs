﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace QuickAI.membership
{
    public partial class changeplan : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        string query = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            //userNameBankDeposit.InnerText= email;
            //string planValue = chPara.InnerText.ToString();
            //priceDepositForm.InnerText = planValue;
            ////package summary
            //string stte = startDate.ToString();
            //if (planValue == "550")            {

            //    endDate.InnerText = "LifeTime";
            //}
            //else if (planValue == "50") {
            //    DateTime currentDate = new DateTime();
            //    DateTime futureDate = currentDate.AddYears(1);
            //    endDate.InnerText = futureDate.ToString();
            //}
            //else
            //{
            //    DateTime currentDate = new DateTime();
            //    DateTime futureDate = currentDate.AddMonths(1);
            //    endDate.InnerText = futureDate.ToString();
            //}
            //TotalCost.InnerText = planValue;

            //query = "select userName userReg where userEmail='" + email + "'";
            //SqlConnection con = new SqlConnection(connectionString);
            //SqlCommand cmd = new SqlCommand(query, con);
            //SqlDataAdapter adp = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);
            //if (dt.Rows.Count == 1)
            //{
            //    
            //}

            
        }
        protected void upgradeMembership(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "freePlan", "ActionUpMemb();", true);
            //page_load(sender,e);            
        }
        protected void showBill(object sender, EventArgs e) {
            //Page_Load(sender,e);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "showBill();", true);
        }
        protected void billingDetails(object sender, EventArgs e) {
            //
            if (string.IsNullOrEmpty(billingUserName.Text) || string.IsNullOrEmpty(billingUserAdd.Text) || string.IsNullOrEmpty(billingUserCity.Text)
                || string.IsNullOrEmpty(billingUserState.Text) || string.IsNullOrEmpty(billingUserZip.Text) || string.IsNullOrEmpty(country.Text))
            {
                // Display an error message
                MessageBox.Show("* Field should not be empty");

                // Return without saving data
                return;
            }
            else
            {
                String type = typeSel.Text.ToString();
                string taxId = taxIdBox.Text.ToString();
                String name = billingUserName.Text.ToString();
                String add = billingUserAdd.Text.ToString();
                String city = billingUserCity.Text.ToString();
                String state = billingUserState.Text.ToString();
                String zip = billingUserZip.Text.ToString();
                String countryName = country.Text.ToString();
                query = "insert into billing values('" + type + "','" + taxId + "','" + name + "','" + add + "','" + city + "','" + state + "','" + zip + "','" + countryName + "')";
                
                try
                {
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(query, con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        MessageBox.Show("Save Billiing Details");
                        taxIdBox.Text = string.Empty;
                        billingUserName.Text = string.Empty;
                        billingUserAdd.Text = string.Empty;
                        billingUserCity.Text = string.Empty;
                        billingUserState.Text = string.Empty;
                        billingUserZip.Text = string.Empty;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "userBillingDetails", "billingDetails();", true);
                    }
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Some Sql Exception" + ex);
                }

            }

            //accountSetting billingForm = new accountSetting();
            //billingForm.billingDetails(sender, e);
        }
    }
}