using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MachineRpt : DevExpress.XtraReports.UI.XtraReport
    {
        private string factory ;
        private string type1 ;
        private string location ;
        private string shop ;
        private string id ;
        private sbyte SumFlg ;
        private string Title ;
       
         //Int32 Grp2Nm;
         Int16 i=0;
         sbyte RowCounter = 0;
         int CurrentRowNum ;

        public MachineRpt()
        {
            InitializeComponent();
        }

        public MachineRpt(string _factory, string _type1, string _location, string _shop, string _id, sbyte _sumflg, string _title)
        {
            this.factory = _factory;
            this.type1 = _type1;
            this.location = _location;
            this.shop = _shop;
            this.id = _id;
            this.SumFlg = _sumflg;
            this.Title = _title;
            InitializeComponent();
        }

        private XRTableRow GetNewNow(XRTableCell baseCell)
        {
            XRTableRow baseRow = baseCell.Row;            
            XRTableRow newRow = baseRow.Table.InsertRowBelow(baseRow);
            for (int i = 0; i < newRow.Cells.Count; i++)
            {
                newRow.Cells[i].Font = baseRow.Cells[i].Font;
                newRow.Cells[i].Borders = baseRow.Cells[i].Borders;
                newRow.Cells[i].TextAlignment = baseRow.Cells[i].TextAlignment;
            }
            return newRow;
        }


        void AddTotalRow(string C1, string C2, string C3)
        {
            XRTableRow newR = new XRTableRow();
            
            XRTableCell cell0 = new XRTableCell();
            cell0.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell0.Width = 259;
            cell0.Text = C1;
            newR.Cells.Add(cell0);
            
            XRTableCell cell1 = new XRTableCell();
            cell1.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell1.Width = 66;
            cell1.Text = C2;
            newR.Cells.Add(cell1);
            
            XRTableCell cell2 = new XRTableCell();
            cell2.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell2.Width = 44;
            cell2.Text = C3;
            newR.Cells.Add(cell2);

            XRTableCell cell3 = new XRTableCell();
            cell3.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell3.Width = 121;
            cell3.Text =string.Empty;
            newR.Cells.Add(cell3); 

            XRTableCell cell4 = new XRTableCell();
            cell4.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell4.Width = 119;
            cell4.Text = string.Empty;
            newR.Cells.Add(cell4); 

            XRTableCell cell5 = new XRTableCell();
            cell5.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cell5.Width = 41;
            cell5.Text = string.Empty;
            newR.Cells.Add(cell5);
            c_summary.Rows.Add(newR);

        }

        
        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            if (L_ModelNum.Summary.GetResult() == null || L_ModelNum.Summary.GetResult()=="") return;
            if (GetCurrentColumnValue("Name") == null) return;
            AddTotalRow(GetCurrentColumnValue("Name").ToString(), L_ModelNum.Summary.GetResult().ToString(), "sets");
            
           //AddTotalRow(GetCurrentColumnValue("Name").ToString(), L_ModelNum.Summary.GetResult().ToString(), "sets", GetCurrentColumnValue("Type1").ToString(), C_TypeNum.Summary.GetResult().ToString(), "sets");
            XRTableRow TT =(i==1)?this.T_ModelName.Row : GetNewNow(this.T_ModelName);
            TT.Cells[0].Text =i==1?"Sub total (Brand/Model)":"";
            TT.Cells[1].Text = GetCurrentColumnValue("Name").ToString();
            TT.Cells[2].Text = L_ModelNum.Summary.GetResult().ToString() + "sets";
            TT.Cells[2].TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            C_45.Width = 174;
            C_Type.Width = 249;
            C_TypeNum.Width = 150;
            if (RowCounter == 0)
                CurrentRowNum = c_summary.Rows.Count - 1;

            RowCounter++;
                       

        }

      

        private void MachineRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            try
            {
                string strcondition;
                strcondition = factory != "" ? " Factory='" + factory + "'" : "";
                strcondition += strcondition != "" && type1 != "" ? " and type1='" + type1 + "'" : (strcondition == "" && type1 != "" ? " type1='" + type1 + "'" : "");
                strcondition += strcondition != "" && location != "" ? " and Location='" + location + "'" : (strcondition == "" && location != "" ? " Location='" + location + "'" : "");
                strcondition += strcondition != "" && shop != "" ? " and shop='" + shop + "'" : (strcondition == "" && shop != "" ? " shop='" + shop + "'" : "");
                strcondition += strcondition != "" && id != "" ? " and Id='" + id + "'" : (strcondition == "" && id != "" ? " Id='" + id + "'" : "");
                strcondition = strcondition != "" ? "where " + strcondition : "";
                SqlDataAdapter mcc = new SqlDataAdapter("select * from machine " + strcondition + " order by Name,type1", ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString);
                mcc.Fill(maMcDataSet1.Machine);
                //foreach (DataRow row in maMcDataSet1.Machine)
                //{
                    
                //}

                switch (SumFlg)
                {
                    case 1: break;
                    case 2: 
                        c_summary.Visible = false;
                        c_table_Location.Visible = false;
                        c_lbl_summary_location.Visible = false;
                        break;
                    case 3:
                        
                            Detail.Visible = false;
                            GroupFooter1.Visible = false;
                            GroupFooter2.Visible = false;
                            c_lbl_grandTotal.Visible = false;
                            c_grandTotal.Visible = false;
                            break;                 
                }
                         

            }
            catch
            {
            }
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            T_Factory.Text = factory;
            T_mctype.Text = type1;
            TitleName.Text = Title;
           

        }

      

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            i += 1;
        }

   
        private void GroupFooter2_AfterPrint(object sender, EventArgs e)
        {
            while (xrTable4.Rows.Count > 2)
            {
                xrTable4.Rows.RemoveAt(1);         // delete some other rows that not need.
            }
            i = 0;
            if (c_summary.Rows[CurrentRowNum].Cells.Count > 3)
            {
                c_summary.Rows[CurrentRowNum].Cells[3].Text = GetCurrentColumnValue("Type1").ToString();
                c_summary.Rows[CurrentRowNum].Cells[4].Text = C_TypeNum.Summary.GetResult().ToString();
                c_summary.Rows[CurrentRowNum].Cells[5].Text = "sets";
            }
            RowCounter = 0;
        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
        }

       
    }
}
