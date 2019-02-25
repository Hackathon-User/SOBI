using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 

namespace PHPApp
{
    public partial class CheckStatus : System.Web.UI.Page
    {
        static DataTable FixTable = new DataTable();
     
        public void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
               
               
              
                ArrayList br = new ArrayList();
                br = (ArrayList)this.Session["list1"];
                DataTable dt = new DataTable();
                /*Load after deleting*/
                if (FixTable.Rows.Count != 0 && !string.IsNullOrEmpty(Session["del"] as string))
                {
                    if(Session["del"].ToString()=="1")
                    {

                    GridView1.DataSource = FixTable;
                    GridView1.DataBind();
                    }
                }
              
                /*Load after adding new record*/
                if (FixTable.Rows.Count != 0 && !string.IsNullOrEmpty(Session["del"] as string))
                {
                    if (Session["del"].ToString() != "1")
                    {
                        DataTable dtCurrentTable = FixTable;
                        DataRow dr1 = dtCurrentTable.NewRow();
                        dr1["PatientName"] = br[0].ToString();
                        dr1["Age"] = (DateTime.Now.Year - Convert.ToDateTime(br[2]).Year);
                        dr1["Gender"] = br[4].ToString().Substring(0, 1);
                        dr1["SuggestedBy"] = br[5].ToString();
                        dr1["Status"] = "Booked";
                        dr1["Contact"] = Convert.ToInt64(br[8]);
                        dr1["Email"] = br[6].ToString();
                        dtCurrentTable.Rows.Add(dr1);
                        GridView1.DataSource = dtCurrentTable;
                        GridView1.DataBind();
                    }

                }
                /*First time load*/
                if (FixTable.Rows.Count == 0 &&  string.IsNullOrEmpty(Session["del"] as string))
                {
                    dt.Columns.AddRange(new DataColumn[7] { new DataColumn("PatientName", typeof(string)),    
                        new DataColumn("Age", typeof(int)),    
                        new DataColumn("Gender",typeof(string)),
                        new DataColumn("SuggestedBy", typeof(string)), 
                        new DataColumn("Status",typeof(string)),
                        new DataColumn("Contact", typeof(Int64)), 
                        new DataColumn("Email", typeof(string)) });

                   
                    dt.Rows.Add("Priya", 21, 'F', "Dr.Deepak Sen", "Booked", 9876543210, "c_deepak@gmail.com");
                    dt.Rows.Add("Som", 21, 'M', "Dr.Neil Sen", "In Progress", 9876543210, "c_neil@gmail.com");
                    dt.Rows.Add("Driti", 21, 'F', "Dr.Dhiren Sen", "Booked", 9876543210, "c_dhiren@gmail.com");
                    dt.Rows.Add("Smriti", 21, 'F', "Dr.Nayan Sen", "Cancelled", 9876543210, "c_nayan@gmail.com");
                    dt.Rows.Add("Nihar", 21, 'M', "Dr.Amartya Sen", "In Progress", 9876543210, "c_amartya@gmail.com");
                    if(br!=null)
                    {
                        DataRow dr = dt.NewRow();
                        dr["PatientName"] = br[0].ToString();
                        dr["Age"] = (DateTime.Now.Year - Convert.ToDateTime(br[2]).Year);
                        dr["Gender"] = br[4].ToString().Substring(0, 1);
                        dr["SuggestedBy"] = br[5].ToString();
                        dr["Status"] = "Booked";
                        dr["Contact"] = Convert.ToInt64(br[8]);
                        dr["Email"] = br[6].ToString();
                        dt.Rows.Add(dr);
                    }
                    
                    FixTable = dt;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                /*loading without del and after traversing other tabs*/
                if (FixTable.Rows.Count != 0 && string.IsNullOrEmpty(Session["del"] as string))
                {

                    GridView1.DataSource = FixTable;
                    GridView1.DataBind();
                }
            }  

        }

        //protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Delete")
        //    {
        //        string item = "";
        //        string ty=e.CommandArgument.ToString();
        //        string y = e.CommandName.ToString();
               
        //    }
            
        //     /*   dt = (DataTable)Session["datatable"];
        //        if (dt.Rows.Count >= 0)
        //        {

        //            dt.Rows.RemoveAt(Convert.ToInt16(e.CommandArgument));
        //            GridView1.DataSource = dt;
        //            GridView1.DataBind();

        //        }*/

            
        //    else if (e.CommandName == "Change")
        //    {
        //        int index = 0;
        //        GridViewRow row;
        //        GridView grid = sender as GridView;
        //        index = Convert.ToInt32(e.CommandArgument);
        //        row = grid.Rows[index];

        //    }
        //}

        protected void grdView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        /*  TableCell cell = GridView1.Rows[e.RowIndex]...;
            GridView1.Rows.
           // GridView1.DataSource = dt;
           ridView1.DataBind();*/
        }
        protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string item = "";
                string ty = e.CommandArgument.ToString();
                string y = e.CommandName.ToString();

            }

          //  dt = (DataTable)Session["datatable"];
            if (FixTable.Rows.Count >= 0)
            {

                FixTable.Rows.RemoveAt(Convert.ToInt16(e.CommandArgument));
                GridView1.DataSource = FixTable;
                GridView1.DataBind();
              
                Session["del"] = 1;

            }
        }

    }
}