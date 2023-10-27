using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraBars;
using DevExpress.XtraTreeList.StyleFormatConditions;
using DevExpress.XtraGrid;

namespace PH.LWPM.UI.LB4
{
    public partial class RedQNListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string Type;       //WF或HW
        string Step;       //Step3或Step4
        //string NowPast;    //Now或Past
        //public RedQNListForm(string AType, string AStep, string ANowPast)

        public RedQNListForm()
        {
            InitializeComponent();
        }

        public RedQNListForm(string AType, string AStep)
        {
            InitializeComponent();
            Type = AType;
            Step = AStep;
            //NowPast = ANowPast;

            this.colWsRDProcessing.FieldName = AType == "WF" ? "WsRDProcessing_WF" : "WsRDProcessing_HW";

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            ConditionsAdjustment();
        }

        public override void DataBind()
        {
            base.DataBind();
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            QNHelper.InsertRedQNAlertMessage();

            string SqlStr = @"select * from RedQN 
                           where Step = '{0}' and UpdateTime = (select max(UpdateTime) from RedQN) and {1} <> '0'
                           order by Factory, WsLocation, LineCode, StartTime,
                           case OptWs when 'P' then 1 when 'B' then 2 when 'F' then 3 when 'A' then 4 when 'E' then 5 else 9 end";

            if (Type == "WF")
            {
                SqlStr = string.Format(SqlStr, Step, "WsRDProcessing_WF");
            }
            else
            {
                SqlStr = string.Format(SqlStr, Step, "WsRDProcessing_HW");
            }

            this.BindingSource.DataSource = db.ExecuteQuery<RedQN>(SqlStr);

            this.objListGridView.BestFitColumns();

            this.objListGridView.OptionsBehavior.Editable = true;
        }

        protected override void OnClickOpen()
        {
            base.OnClickOpen();
            RedQN obj = this.BindingSource.Current as RedQN;
            if (obj == null) return;

            //P;WF;Step3

            WPMaster wpMaster = (this.DataContext as RAPLQDataContext).WPMasters.FirstOrDefault(p => p.Factory == obj.Factory && p.LineCode == obj.LineCode &&
                p.j_NO == obj.j_NO && p.J2_job == obj.J2_job && p.Rwo == obj.Rwo && p.Qn == obj.Qn && p.Bcolor == obj.Bcolor);

            if (this.Step == "Step3" && wpMaster.Step != "Step3")
            {
                MessageBox.Show("The current QN is not in Step3", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            if (this.Step == "Step4" && wpMaster.Step != "Step4")
            {
                MessageBox.Show("The current QN is not in Step4", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            this.CreateProgramForm(typeof(LB4PListFrm), this.Step + " QN", true, new object[] { obj.OptWs, "WF", this.Step, wpMaster }, null);
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            QNHelper.RedQNSendEMail();
            //QNHelper.InsertRedQNAlertMessage(this.DataContext as RAPLQDataContext, null);
            //QNHelper.InsertRedQNAlertMessage(this.DataContext as RAPLQDataContext, null, "Step3");
            //QNHelper.InsertRedQNAlertMessage(this.DataContext as RAPLQDataContext, null, "Step4");
        }

        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            GridView gridView = sender as GridView;
            string Factory1 = gridView.GetRowCellValue(e.RowHandle1, "Factory").ToString();
            string Factory2 = gridView.GetRowCellValue(e.RowHandle2, "Factory").ToString();
            string WsLocation1 = gridView.GetRowCellValue(e.RowHandle1, "WsLocation").ToString();
            string WsLocation2 = gridView.GetRowCellValue(e.RowHandle2, "WsLocation").ToString();

            string LineCode1 = gridView.GetRowCellValue(e.RowHandle1, "LineCode").ToString();
            string LineCode2 = gridView.GetRowCellValue(e.RowHandle2, "LineCode").ToString();
            string Bcolor1 = gridView.GetRowCellValue(e.RowHandle1, "Bcolor").ToString();
            string Bcolor2 = gridView.GetRowCellValue(e.RowHandle2, "Bcolor").ToString();
            string WO1 = gridView.GetRowCellValue(e.RowHandle1, "J2_job").ToString();
            string WO2 = gridView.GetRowCellValue(e.RowHandle2, "J2_job").ToString();
            string RWO1 = gridView.GetRowCellValue(e.RowHandle1, "Rwo").ToString();
            string RWO2 = gridView.GetRowCellValue(e.RowHandle2, "Rwo").ToString();
            string QN1 = gridView.GetRowCellValue(e.RowHandle1, "Qn").ToString();
            string QN2 = gridView.GetRowCellValue(e.RowHandle2, "Qn").ToString();
            string UpdateTime1 = gridView.GetRowCellValue(e.RowHandle1, "StartAlertTime").ToString();
            string UpdateTime2 = gridView.GetRowCellValue(e.RowHandle2, "StartAlertTime").ToString();

            //string UpdateTime1 = gridView.GetRowCellValue(e.RowHandle1, "UpdateTimeShow").ToString();
            //string UpdateTime2 = gridView.GetRowCellValue(e.RowHandle2, "UpdateTimeShow").ToString();

            bool SameQN = LineCode1 == LineCode2 && Bcolor1 == Bcolor2 && WO1 == WO2 && RWO1 == RWO2 && QN1 == QN2 && UpdateTime1 == UpdateTime2;

            switch (e.Column.FieldName)
            {
                case "WsLocation":
                    e.Merge = Factory1 == Factory2;
                    e.Handled = true;
                    break;

                case "Factory":
                    e.Merge = WsLocation1 == WsLocation2;
                    e.Handled = true;
                    break;

                case "OptWsShow":
                case "WDeskQty":
                case "WsRDProcessing_WF":
                case "WsRDProcessing_HW":
                    e.Merge = false;
                    e.Handled = true;
                    break;

                default:  //默認按QN合并
                    e.Merge = SameQN;
                    e.Handled = true;
                    break;

            }

            if (e.Column.Name == "colCOP")
            {
                e.Merge = false;
                e.Handled = true;
            }

        }

        private void repositoryItemButtonEdit_COP_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            RedQN obj = this.BindingSource.Current as RedQN;

            AlertLogForm frmAlertLog = new AlertLogForm(this.DataContext as RAPLQDataContext, obj);
            frmAlertLog.ShowDialog();

            this.BindingSource.ResetCurrentItem();
        }

        private void ConditionsAdjustment()
        {
            DevExpress.XtraGrid.StyleFormatCondition cn, cn1, cn2, cn3;
            cn1 = new DevExpress.XtraGrid.StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["OneWeekFlag"], null, true);
            cn1.Appearance.BackColor = Color.FromArgb(249, 247, 204);  //Color.Yellow;
            cn1.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn1);
            
            cn2 = new DevExpress.XtraGrid.StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["TwoWeekFlag"], null, true);
            cn2.Appearance.BackColor = Color.FromArgb(189, 246, 161); //Color.LightGreen;
            cn2.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn2);
            
            cn3 = new DevExpress.XtraGrid.StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["ThreeWeekFlag"], null, true);
            cn3.Appearance.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            cn3.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn3);

            cn = new DevExpress.XtraGrid.StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["YNConfirme"], null, true);
            cn.Appearance.BackColor = Color.FromArgb(247, 136, 137);// Color.Red;
            cn.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn);
        }
    }
}
