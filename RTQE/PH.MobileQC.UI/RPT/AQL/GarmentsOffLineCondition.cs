using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Data.SqlClient;
using System.Data.Sql;
using System.IO;  

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class GarmentsOffLineCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        public GarmentsOffLineCondition()
        {
            InitializeComponent();
           
              DataTable dt = db.GetFactoryType();
              cbFactory.Properties.Items.Clear();
             for (int i = 0; i < dt.Rows.Count; i++)
              {
                  cbFactory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
               }
            
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (CheckInputCondition())
            {
                if (cbReportType.SelectedIndex == 0)
                {
                    RptofflineAQLQualityPerfomance_Main rpt1 = new RptofflineAQLQualityPerfomance_Main
                    (this.cbFactory.Text, this.cbWO.Text, this.cbStyle.Text, this.cbLine.Text, this.cbProject.Text, this.cbReportType.SelectedIndex, this.cbClolor.Text);
                    rpt1.ShowPreview();
                }
                if (cbReportType.SelectedIndex == 1)
                {
                    RptofflineFullAuditQualityPerfomance_Main full = new RptofflineFullAuditQualityPerfomance_Main
                    (this.cbFactory.Text, this.cbWO.Text, this.cbStyle.Text, this.cbLine.Text, this.cbProject.Text, this.cbReportType.SelectedIndex, this.cbClolor.Text);
                    full.ShowPreview();
                }
                if (cbReportType.SelectedIndex == 2)
                {
                    MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
                    string Sqlstr = "exec FistBoxAuditList  '{0}', '{1}','{2}', '{3}','{4}', '{5}'";
                    Sqlstr = string.Format(Sqlstr, this.cbFactory.Text, this.cbWO.Text, this.cbStyle.Text, this.cbLine.Text, this.cbProject.Text, this.cbClolor.Text);
                    DataSet ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "dtOpsSpecSheet");

                    RptofflineFistBoxAuditQualityPerfomance_Main FirstBox = new RptofflineFistBoxAuditQualityPerfomance_Main(ds);
                    if (FirstBox.bindingSource1.Count == 0)
                    {
                        MessageBox.Show("查詢條件無數據");
                        return;
                      
                    }
                    else
                    {
                        FirstBox.ShowPreview();
                    }
                }
                        

            }
        }

     

             bool CheckInputCondition()
        {
            if (string.IsNullOrEmpty(this.cbWO.Text))
            {
                this.cbWO.Focus();
                MessageBox.Show("請選擇制單!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;

            }
            else if (string.IsNullOrEmpty(this.cbLine.Text))
            {
                this.cbLine.Focus();
                MessageBox.Show("請選擇生產線!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            else if (string.IsNullOrEmpty(this.cbClolor.Text))
            {
                this.cbClolor.Focus();
                MessageBox.Show("請選擇顏色!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else  if (!string.IsNullOrEmpty(this.cbClolor.Text) && !string.IsNullOrEmpty(this.cbLine.Text) && !string.IsNullOrEmpty(this.cbWO.Text))
            {
                DataTable dt =db.GetGarmentsCheck(cbWO.Text, cbLine.Text, cbClolor.Text);
                int s = dt.Rows.Count;
                if (s == 0)
                {
                    MessageBox.Show("報表無結果，請重新審查!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
                else { return true; }

            }
            return true;
        }


             /*得到產線*/
             public void getLine()
             {
                 this.cbLine.Properties.Items.Clear();
                 this.cbLine.Text = "";

                 this.cbClolor.Properties.Items.Clear();
                 this.cbClolor.Text = "";
                 
                 DataTable dt = db.GetGarmentsLine(cbProject.Text,cbWO.Text);
                 int s = dt.Rows.Count;
                 if (s >= 1)
                 {
                     for (int i = 0; i < dt.Rows.Count; i++)
                     {
                         cbLine.Properties.Items.Add(dt.Rows[i]["Line"].ToString());
                     }
                 }
               
                 //cn.Close();
             }

            /*得到顏色*/
             public void getColor()
             {
               
                 this.cbClolor.Properties.Items.Clear();
                 this.cbClolor.Text = "";

                 DataTable dt = db.GetGarmentsColor(cbProject.Text, cbWO.Text,cbLine.Text);
                 int s = dt.Rows.Count;
                 if (s >= 1)
                 {
                     for (int i = 0; i < dt.Rows.Count; i++)
                     {
                         cbClolor.Properties.Items.Add(dt.Rows[i]["Color"].ToString());
                     }
                 }
              
                 //cn.Close();
             }

             /*得到Style*/
             public void GetStyle()
             {
                 this.cbStyle.Properties.Items.Clear();
                 this.cbStyle.Text = "";

                 this.cbWO.Properties.Items.Clear();
                 this.cbWO.Text = "";


                 this.cbLine.Properties.Items.Clear();
                 this.cbLine.Text = "";
             
                 this.cbClolor.Properties.Items.Clear();
                 this.cbClolor.Text = "";



                 DataTable dt = db.GetGarmentsProject(cbProject.Text);
                 int s = dt.Rows.Count;
                 if (s >= 1)
                 {
                     for (int i = 0; i < dt.Rows.Count; i++)
                     {
                         cbStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());
                     }

                 }

             }

             private void cbWO_SelectedValueChanged(object sender, EventArgs e)
             {
                 getLine();
             }

             private void cbLine_SelectedValueChanged(object sender, EventArgs e)
             {
                 getColor();               

             }

             private void cbStyle_SelectedValueChanged(object sender, EventArgs e)
             {
                 this.cbWO.Properties.Items.Clear();
                 this.cbWO.Text = "";


                 this.cbLine.Properties.Items.Clear();
                 this.cbLine.Text = "";

                 this.cbClolor.Properties.Items.Clear();
                 this.cbClolor.Text = "";



                 if (!string.IsNullOrEmpty(this.cbProject.Text) && !string.IsNullOrEmpty(this.cbStyle.Text))
                 {
                     DataTable dt = db.GetGarmentsType(cbProject.Text, cbStyle.Text);
                     int s = dt.Rows.Count;
                     if (s > 0) 
                     {
                         cbWO.Properties.Items.Clear();

                         for(int i=0 ;i < s ; i++)
                         {
                             cbWO.Properties.Items.Add(dt.Rows[i]["Wo"].ToString());
                         }
                     }                    
                 }

             }
            
             /*當數據唯一時，填充全部*/
             public void getall(DataTable tb) 
             {
                 cbWO.Text = tb.Rows[0]["WO"].ToString();
                 cbLine.Text = tb.Rows[0]["Line"].ToString();
                 cbClolor.Text = tb.Rows[0]["Color"].ToString();
                 cbProject.Text = tb.Rows[0]["Project"].ToString();
                 cbStyle.Text = tb.Rows[0]["Style"].ToString();

                 string Stype = tb.Rows[0]["StyleType"].ToString();
               
                 if (Stype == "Ful")
                 {
                     cbReportType.SelectedIndex = 1;
                 }
                 else if (Stype == "AQL")
                 {
                     cbReportType.SelectedIndex = 0;
                 }
             }

     
             private void cbWO_Leave(object sender, EventArgs e)
             {
                 cbLine.Properties.Items.Clear(); 
                  DataTable dt = db.GetGarmentsWO1(cbWO.Text);
                 int s = dt.Rows.Count;
                 if (s >=1) 
                 {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        cbLine.Properties.Items.Add(dt.Rows[i]["Line"].ToString());
                    }                
                 }

             }

         
             private void cbLine_Leave(object sender, EventArgs e)
             {
                 cbClolor.Properties.Items.Clear();
                 if (!string.IsNullOrEmpty(cbWO.Text))
                 {
                     DataTable dt = db.GetGarmentsLine2(cbLine.Text,cbWO.Text);
                     int s = dt.Rows.Count;
                     if (s >= 1)
                     {
                         for (int i = 0; i < dt.Rows.Count; i++)
                         {
                             cbClolor.Properties.Items.Add(dt.Rows[i]["Color"].ToString());
                         }
                     }
                  
                 }
                 else 
                 {
                     DataTable dt = db.GetGarmentsLine1(cbLine.Text);
                     int s = dt.Rows.Count;
                     if (s > 1)
                     {
                         for (int i = 0; i < dt.Rows.Count; i++)
                         {
                             cbClolor.Properties.Items.Add(dt.Rows[i]["Color"].ToString());
                         }
                     }
                     else if (s == 1)
                     {
                         getall(dt);
                     }
                 }
             }

             private void cbClolor_Leave(object sender, EventArgs e)
             {
                 if (cbStyle.Text != "") return;
                 cbStyle.Properties.Items.Clear(); 
                 DataTable dt = db.GetGarmentscbClolor1(cbClolor.Text);
                 int s = dt.Rows.Count;
                 if (s > 0)
                 {
                     for (int i = 0; i < dt.Rows.Count; i++)
                     {
                         cbStyle.Properties.Items.Add(dt.Rows[i]["Style"].ToString());
                     }      
                 }
               
             }

             private void cbStyle_Leave(object sender, EventArgs e)
             {

                 if (this.cbWO.EditValue == this.cbWO.OldEditValue)
                 {
                     return;
                 }
                 cbWO.Properties.Items.Clear();
                 if (!string.IsNullOrEmpty(cbProject.Text) && !string.IsNullOrEmpty(cbStyle.Text))
                 {
                     DataTable dt = db.GetGarmentscbWO2(cbProject.Text, cbStyle.Text);
                     int s = dt.Rows.Count;
                     if (s >0)
                     {
                         for (int i = 0; i < dt.Rows.Count; i++)
                         {
                             cbWO.Properties.Items.Add(dt.Rows[i]["WO"].ToString());
                         }
                     }
                 }
                 else
                 {
                     DataTable dt = db.GetGarmentscbWO3(cbStyle.Text);
                     int s = dt.Rows.Count;
                     if (s > 0)
                     {
                         for (int i = 0; i < dt.Rows.Count; i++)
                         {
                             cbWO.Properties.Items.Add(dt.Rows[i]["WO"].ToString());
                                 
                         }
                     }
                 }
             }

             private void cbProject_Leave_1(object sender, EventArgs e)
             {

                 if (this.cbProject.EditValue == this.cbProject.OldEditValue)
                 {
                     return;
                 }

                 GetStyle();
                
             }
            
          }

               

             

    }

