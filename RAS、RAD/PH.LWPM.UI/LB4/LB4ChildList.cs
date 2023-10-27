using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.BandedGrid;
using System.Reflection;
using DevExpress.Utils.Paint;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4ChildList : ListForm
    {
        public LB4ChildList()
        {
            InitializeComponent();
        }

        private void barBtnWF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {            
            
        }

        //public override void DataBind()
        //{
        //    this.EditorTypeName = typeof(LB4ChildEditFrm).FullName;   
        //    base.DataBind();
        //}

        private void objListGridControl_DataSourceChanged(object sender, EventArgs e)
        {

        }

        private void chkIsFloater_CheckedChanged(object sender, EventArgs e)
        {
            try
            {

                if (bandedGridView1.FocusedRowHandle < 0)
                    return;

                int _idx = bandedGridView1.FocusedRowHandle;

                Matching mc = this.bandedGridView1.GetRow(bandedGridView1.FocusedRowHandle) as Matching;
                decimal _old = mc.HeadCount;

                var datalist = (IEnumerable<Matching>)this.BindingSource.DataSource;
                var query = (from c in datalist
                             where c.HeadCount == 1&&c.Mtm_Suggest.GetValueOrDefault()>0
                             select c).FirstOrDefault();

                if (query != null && query.Mtm_Suggest.GetValueOrDefault() > 0 && mc.Mtm_Suggest.GetValueOrDefault() > 0)
                {
                    int _icount = datalist.Where(p => p.WorkerId == query.WorkerId).Count(); //此人所做工序數
                    // decimal _sah = mc.GSD_SAH.GetValueOrDefault() * 100 / mc.Mtm_Suggest.GetValueOrDefault();
                    //decimal _stand = (query.GSD_SAH.GetValueOrDefault()*100*_icount)/query.Mtm_Suggest.GetValueOrDefault();                    
                    //_hc = _sah/_stand 
                    decimal _hc = (mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (mc.Mtm_Suggest.GetValueOrDefault() * query.GSD_SAH.GetValueOrDefault() * _icount);
                    mc.HeadCount = decimal.Round(_hc, 2);
                }
                else
                {
                    mc.IsFloater = false;
                   // this.advBandedGridView2.RefreshRowCell(_idx, colIsFloater);
                    this.bandedGridView1.SetRowCellValue(_idx, "IsFloater", 0);                   
                    this.bandedGridView1.RefreshRowCell(_idx, colIsFloater);
                    this.bandedGridView1.RefreshRowCell(_idx, this.colHeadCount);

                    MessageBox.Show("請填寫計算Floater所必須的Requerst MTM值后,再執行此操作!");

                }

                int pos = this.BindingSource.List.IndexOf(mc);
                this.BindingSource.Position = pos;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "請填寫計算Floater所必須的Requerst MTM值!");
            }
        }

        private void advBandedGridView2_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

            bool CFlag = false;
            BandedGridView viewC = sender as BandedGridView;
            if (viewC==null) return;

            if (e.Column.FieldName.Trim() != "WorkerId" || e.Column.FieldName.Trim() != "WorkerName" || e.Column.FieldName.Trim() != "JWorkSN_LB3" || e.Column.FieldName.Trim() != "JWorkSN")
                return;

            //if (e.Column.FieldName.Trim() == "WorkerId" || e.Column.FieldName.Trim() == "WorkerName" || e.Column.FieldName.Trim() == "JWorkSN_LB3" || e.Column.FieldName.Trim() == "JWorkSN")
            //{

                //得到工號
                string Id1 = (viewC.GetRowCellValue(e.RowHandle1, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "WokerId").ToString().Trim()));
                string Id2 = (viewC.GetRowCellValue(e.RowHandle2, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "WokerId").ToString().Trim()));
                CFlag = ( Id1.Equals(Id2)&&Id1 != "" && Id2 != "");



                //string Jflag1 = (viewC.GetRowCellValue(e.RowHandle1, "JFlag") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "JFlag").ToString().Trim()));
                //string Jflag2 = (viewC.GetRowCellValue(e.RowHandle2, "JFlag") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "JFlag").ToString().Trim()));

                // decimal jworksn =viewC.GetRowCellValue(e.RowHandle1, "JWorkSN") == null ? 0:(decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN");

                //decimal jworksn_lb3 =viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3") == null ? 0:(decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3");

                //if (e.Column.FieldName == "WorkerId")
                //{
                //    if (CFlag)
                //    {
                //        e.Merge = true;

                //    }
                //    else
                //        e.Merge = false;
                //    e.Handled = true;

                //}
                //if (e.Column.FieldName == "WorkerName")
                //{
                //    //e.Merge = CFlag;
                //    e.Handled = true;
                //}


                if (e.Column.FieldName == "JWorkSN_LB3")
                {

                    //decimal Id11 = (viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3") == null ? 0 : (decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3"));
                    //decimal Id21 = (viewC.GetRowCellValue(e.RowHandle2, "JWorkSN_LB3") == null ? 0 : (decimal)viewC.GetRowCellValue(e.RowHandle2, "JWorkSN_LB3"));
                    //bool CFlag1 = (Id11 != 0 && Id21 != 0 && Id11 == Id21);

                    e.Merge = CFlag;   
                    e.Handled = true;
                }

                //if (e.Column.FieldName == "JWorkSN")
                //{
                //   // e.Merge = CFlag;
                //    e.Handled = true;
                //}

                /*
                               switch (e.Column.FieldName)
                               {
                                   case "WorkerId":
                                       e.Merge = CFlag;
                                       e.Handled = true;
                                       break;
                                   case "WorkerName":
                                       e.Merge = CFlag;
                                       e.Handled = true;
                                       break;
                                   case "JWorkSN_LB3":  //JWorkSN_LB3
                                       if (CFlag)
                                       {
                                           e.Merge = true;
                                           e.Handled = true;
                                       }
                                       else
                                       {
                                           e.Merge = false;
                                           e.Handled = true;
                                       }
                                       break;

                                   case "JWorkSN":
                                       e.Merge = CFlag;
                                       e.Handled = true;
                                       break;

                   
                                 case "WPSN": 
                                 case "OperationSN":
                                 case "OperationGroup":
                                 case "OperationCode":
                                 case "OperationName":
                                 case "MCType":
                                 case "Rpm":
                                 case "GSD_SAH":
                                 case "BestSAH":
                                 case "BestMTM":
                                 case "WorkforceNum":
                                 case "WorkStyle":
                                 case "MachineId":
                                 case "Rpm0":
                                 case "addWorkStyle1":
                                 case "addworkerId1":
                                 case "addworker1":
                                 case "addMachineId1":
                                 case "addRpm1":
                                 case "addWorkStyle2":
                                 case "addworkerId2":
                                 case "addworker2":
                                 case "addMachineId2":
                                 case "addRpm2":
                                 case "addWorkStyle3":
                                 case "addworkerId3":
                                 case "addworker3":
                                 case "addMachineId3":
                                 case "addRpm3":
                                 case "mc":
                                 case "JFlag":
                                 case "Disp_FAE":
                                 case "Move_LB3":
                                 case "CWorkSN_LB3":      
                                 case "NoneCJ_LB3":
                                 case "BN_Seq_LB3":    
                                 case "WFCode_LB3":       
                                 case "IsFloater_LB3":
                                 case "StaitonCount_LB3":
                                 case "WKStaitonSeq":
                                 case "WKStaitonCount":
                                 case "BN_Seq":
                                 case "NoneCJ":
                                 case "CWorkSN":
      
                                 case "MTM_Past":

                                 case "Past_SAH":
                                 case "MTM_Suggest":
                                 case "Sugg_SAH":
                                 case "DidTime_InFac":
                                 case "DidTime_ByWf":
                                 case "IsFloater":
                                 case "Move":
                                 case "HeadCount":
                                     break;
                    


                               }
                 *  */
            //}

        }



        bool CFlag = false;
        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
         
            BandedGridView viewC = sender as BandedGridView;
            if (viewC == null) return;



            if (e.Column.FieldName == "JWorkSN_LB3" || e.Column.FieldName == "JWorkSN")
            {


                //得到工號
                string Id1 = (viewC.GetRowCellValue(e.RowHandle1, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "WokerId").ToString().Trim()));
                string Id2 = (viewC.GetRowCellValue(e.RowHandle2, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "WokerId").ToString().Trim()));
                CFlag = (!string.IsNullOrEmpty(Id1) && !string.IsNullOrEmpty(Id2) && Id1 == Id2);

               // decimal Id11 = (viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3_Disp") == null ? 0 : (decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3"));
               // decimal Id21 = (viewC.GetRowCellValue(e.RowHandle2, "JWorkSN_LB3") == null ? 0 : (decimal)viewC.GetRowCellValue(e.RowHandle2, "JWorkSN_LB3"));
                //bool CFlag1 = (Id11 != 0 && Id21 != 0 && Id11 == Id21);
                e.Merge = CFlag;  //CFlag&& (viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3_Disp") == null?true:false);
                e.Handled = true;
            }        
        }
        
        
        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "JWorkSN")
            { 
               if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["JWorkSN"])!=null)
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "CWorkSN")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["CWorkSN"]) != null)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }              
            
            }

            else if (e.Column.FieldName == "CWorkSN_LB3")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["CWorkSN_LB3"]) != null)
                {
                    e.Appearance.BackColor =  Color.FromArgb(255, 128, 128);
                }                 
            }
            else if (e.Column.FieldName == "JWorkSN_LB3")
            {
                Matching mc = bandedGridView1.GetRow(e.RowHandle) as Matching;

                if (mc != null && mc.JWorkSN_LB3_Disp != null)
                {
                   // DrawCellBorder(e);
                   // this.objListGridView.OptionsView.ShowHorzLines = false;//DevExpress.Utils.DefaultBoolean.False;
                   // this.objListGridView.OptionsView.ShowPreviewLines = false;
                   // e.Handled = true;
                    e.DisplayText = mc.JWorkSN_LB3_Disp.GetValueOrDefault().ToString();
                }
                e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "JWorkSN_LB3_Disp")
            {

                //BorderXPaint xPaint = new BorderXPaint();

                // e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
                Matching mc = bandedGridView1.GetRow(e.RowHandle) as Matching;
                if (mc != null && mc.JWorkSN_LB3_Disp == null)
                {
                    //e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                    //e.DisplayText = "同上";

                    GridCellInfo cellinfo = e.Cell as GridCellInfo;
                    cellinfo.MergedCell.AddMergedCell(cellinfo);
                    var cellBounds = ((DevExpress.XtraGrid.Views.Grid.ViewInfo.GridCellInfo)e.Cell).Bounds;
                    DrawCellBorder(e.Graphics, Brushes.Aquamarine, cellBounds, 0);
                    // DrawCellBorder(e.Graphics, Brushes.CornflowerBlue, cellBounds, 0);

                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);


                }
                else
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);


                //Rectangle rect = e.Bounds;
                //rect.Inflate(new Size(1, 1));
                //e.Graphics.FillRectangle(Brushes.Red, rect);
                //e.Handled = true;

            }



        }


        void DrawCellBorder(Graphics g, Brush borderBrush, Rectangle cellBounds, int borderThickness)
        {
            Rectangle innerRect = Rectangle.Inflate(cellBounds, -borderThickness, -borderThickness);
            g.FillRectangle(Brushes.Aquamarine, innerRect);

           // g.FillRectangle(b, new Rectangle(e.Bounds.X, e.Bounds.Y, 1, e.Bounds.Height));

            g.ExcludeClip(innerRect);
            g.FillRectangle(borderBrush,cellBounds);
         
        }


        private void DrawCellBorder(RowCellCustomDrawEventArgs e)
        {
            //change color here.....
            Brush brush = Brushes.Black;
         //   e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, e.Bounds.Width + 2, 2));
            //e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.Right - 1, e.Bounds.Y - 1,0, e.Bounds.Height + 2));

            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.Right - 1, e.Bounds.Y - 1, 0, 0));
          //  e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Bottom - 1, e.Bounds.Width + 2, 2));
            //e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, 0, e.Bounds.Height + 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, 0, 0));
        }

        private void bandedGridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.Name == "colMoveable")
            {
                if (e.Value.ToString() == "人移")
                    bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 0);
            }
        }

        private void chkIsFloater_CheckStateChanged(object sender, EventArgs e)
        {

        }

        //private void SetMyGraphics()
        //{

        //    FieldInfo fi = typeof(XPaint).GetField("JWorkSN_LB3_Disp", BindingFlags.Static | BindingFlags.NonPublic);

        //    fi.SetValue(null, new MyXPaint());

        //}

        private void DrawCellBorder1(RowCellCustomDrawEventArgs e, int top, int left, int right, int bottom)
        {

            Brush b = Brushes.Red;

            if (top == 1)
                e.Graphics.FillRectangle(b, new Rectangle(e.Bounds.X, e.Bounds.Y, e.Bounds.Width, 1));


            if (right == 1)
                e.Graphics.FillRectangle(b, new Rectangle(e.Bounds.X, e.Bounds.Y, 1, e.Bounds.Height));


            if (bottom == 1)
                e.Graphics.FillRectangle(b, new Rectangle(e.Bounds.X, e.Bounds.Bottom, e.Bounds.Width, 1));


            if (left == 1)
                e.Graphics.FillRectangle(b, new Rectangle(e.Bounds.X, e.Bounds.Y, 1, e.Bounds.Height));

        }

    }


    public class MyXPaint : XPaint
    {

        public override void DrawFocusRectangle(Graphics g, Rectangle r, Color foreColor, Color backColor)
        {

            //if (!CanDraw(r)) return;

            Brush hb = Brushes.Black;

            g.FillRectangle(hb, new Rectangle(r.X, r.Y, 2, r.Height - 2)); // left

            g.FillRectangle(hb, new Rectangle(r.X, r.Y, r.Width - 2, 2));  // top

            g.FillRectangle(hb, new Rectangle(r.Right - 2, r.Y, 2, r.Height - 2)); // right

            g.FillRectangle(hb, new Rectangle(r.X, r.Bottom - 2, r.Width, 2)); // bottom

        }

    }
}
