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
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Columns;
using PHExcel = Microsoft.Office.Interop.Excel;
using System.Reflection;
using PH.LineBalanceII.BO;
using System.Diagnostics;
using DevExpress.XtraBars;
using PH.Platform.BO;


namespace PH.LWPM.UI.LB4
{
    public partial class LB4ChildListA : ListForm
    {

        private PHExcel.Application _Excel;
        private PHExcel.Workbook _WorkBook;
        private PHExcel.Worksheet _WorkSheet;
        private PHExcel.Range _WorkRange;

        public LB4ChildListA()
        {
            InitializeComponent();
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "JWorkSN")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["JWorkSN"]) != null)
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
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }
            }
            else if (e.Column.FieldName == "JWorkSN_LB3")
            {
                //Matching mc = bandedGridView1.GetRow(e.RowHandle) as Matching;
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["JWorkSN_LB3"]) != null)
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "FAE")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["FAE"]) != null)
                {
                    if (e.DisplayText == "A")
                    {
                        e.DisplayText = "AL";
                    }
                }

            }
        }

        private void chkIsFloater_CheckedChanged(object sender, EventArgs e)
        {
            try
            {

                if (bandedGridView1.FocusedRowHandle < 0)
                    return;


                int _idx = bandedGridView1.FocusedRowHandle;
                Matching mc1 = this.bandedGridView1.GetRow(bandedGridView1.FocusedRowHandle) as Matching;
                var datalist = (IEnumerable<Matching>)this.BindingSource.DataSource;


                // int _icount = datalist.Where(p => p.WorkerId == mc1.WorkerId).Count();

                IEnumerable<Matching> _matchins = datalist.Where(p => p.WorkerId == mc1.WorkerId);
                List<Matching> mlst = (this.ParentForm as LB4ChildFrm).mclist;

                //if (_icount >1)
                //{
                //    this.bandedGridView1.SetRowCellValue(_idx, "IsFloater", 0);
                //    this.bandedGridView1.RefreshRowCell(_idx, colIsFloater);
                //    this.bandedGridView1.RefreshRowCell(_idx, this.colHeadCount);
                //    return;
                //}

                // decimal _old = mc.HeadCount;
                //colIsFloater
                bool b = ((DevExpress.XtraEditors.CheckEdit)sender).Checked;
                if (!b)
                {

                    foreach (Matching _mc in _matchins)
                    {
                        _mc.IsFloater = false;
                        decimal dc = mlst.Where(p => p.WorkerId == _mc.WorkerId && p.OperationCode == _mc.OperationCode && _mc.WPSN == p.WPSN).FirstOrDefault().HeadCount;
                        _mc.HeadCount = dc > 0 && dc < 1 ? 1 : dc;
                        //this.bandedGridView1.SetRowCellValue(_idx, "IsFloater", 0);
                        //this.bandedGridView1.RefreshRowCell(_idx, colIsFloater);
                        //this.bandedGridView1.RefreshRowCell(_idx, this.colHeadCount);
                    }
                    return;
                }




                var query = (from c in datalist
                             orderby c.JWorkSN descending
                             where c.Mtm_Suggest.GetValueOrDefault() == (decimal)100.0
                             select c).FirstOrDefault();


                if (query != null && query.Mtm_Suggest.GetValueOrDefault() > 0)
                {
                    foreach (Matching _mc in _matchins)
                    {
                        if (_mc.Mtm_Suggest.GetValueOrDefault() > 0)
                        {
                            decimal _hc = (_mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (_mc.Mtm_Suggest.GetValueOrDefault() * query.JWorkSN.GetValueOrDefault());
                            _mc.HeadCount = decimal.Round(_hc, 2);
                            _mc.IsFloater = true;
                            //this.bandedGridView1.RefreshRowCell(_idx, colIsFloater);
                            //this.bandedGridView1.RefreshRowCell(_idx, this.colHeadCount);
                        }
                    }
                }
                else
                {
                    //mc.IsFloater = false;
                    //this.bandedGridView1.SetRowCellValue(_idx, "IsFloater", 0);
                    //this.bandedGridView1.RefreshRowCell(_idx, colIsFloater);
                    //this.bandedGridView1.RefreshRowCell(_idx, this.colHeadCount);

                    MessageBox.Show("請填寫計算Floater所必須的Requerst MTM值后,再執行此操作!");

                }

                int pos = this.BindingSource.List.IndexOf(mc1);
                this.BindingSource.Position = pos;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "請填寫計算Floater所必須的Requerst MTM值!");
            }
        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {


            //BandedGridView viewC = sender as BandedGridView;
            //if (viewC == null) return;

            //if (e.Column.FieldName == "IsFloater")
            //{

            //    string Id1 = (viewC.GetRowCellValue(e.RowHandle1, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "WokerId").ToString().Trim()));
            //    string Id2 = (viewC.GetRowCellValue(e.RowHandle2, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "WokerId").ToString().Trim()));

            //    e.Merge = (Id1 != "" && Id2 != ""&&Id1==Id2);
            //    e.Handled = true;
            //}
        }

        private void bandedGridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            //if (e.Column.Name == "colMoveable")
            //{
            //    if (e.Value.ToString() != "物移")
            //      bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 1);
            //    else
            //      bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 0);
            //}
        }

        private void bandedGridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.Name == "colMoveable")
            {
                if (e.Value.ToString() != "物移")
                    bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 1);
                else
                    bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 0);
            }
        }

        public override void ExportData(string filetype)
        {
            //base.ExportData(filetype);
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.DefaultExt = ".xls";
            sfd.Filter = "xls Files(*.xls)|*.xls";
            sfd.FilterIndex = 1;
            sfd.RestoreDirectory = true;
            DialogResult dlgr = sfd.ShowDialog();
            if (dlgr != DialogResult.Cancel)
            {
                string file = sfd.FileName;
                //saveFileDialog1.FilterIndex = 2;
                // var datalist = (IEnumerable<Matching>)this.BindingSource.DataSource;

                WPMaster CurWPs = (this.ParentForm as LB4ChildFrm).BindingSource.Current as WPMaster;
                LineBalanceIIDataContext lb3ctx = (this.ParentForm as LB4ChildFrm).DLQlb3Cnn;

                StyleMaster lb3master = (from l3 in lb3ctx.StyleMasters where l3.KHKH == CurWPs.CustStyleCode && l3.PHKH == CurWPs.PHStyleCode && l3.Edition == CurWPs.Version && l3.ZH == CurWPs.ZH select l3).FirstOrDefault();

                IEnumerable<Matching> datalist = (IEnumerable<Matching>)this.BindingSource.DataSource;
                List<Matching> _lstmatching = new List<Matching>();
                foreach (Matching mct in datalist)
                {
                    mct.SortIndex = 2;
                    _lstmatching.Add(mct);
                }

                int _wpsn = 220;
                if (_lstmatching.Where(p => p.FAE == "E").Count() == 0)
                {
                    foreach (StyleProcedure_E spe in lb3master.StyleProcedure_Es)
                    {
                        Matching mtc = new Matching();
                        mtc.Factory = CurWPs.Factory;
                        mtc.FAE = "E";
                        mtc.LineCode = CurWPs.LineCode;
                        mtc.j_NO = CurWPs.j_NO;
                        mtc.J2_job = CurWPs.J2_job;
                        mtc.Rwo = CurWPs.Rwo;
                        mtc.Qn = CurWPs.Qn;
                        mtc.Bcolor = CurWPs.Bcolor;
                        mtc.OperationCode = spe.WorkSN;
                        mtc.OperationName = spe.WorkName;
                        mtc.GSD_SAH = spe.GSDSAHSN;
                        mtc.SortIndex = 3;
                        mtc.WPSN = _wpsn++;

                        _lstmatching.Add(mtc);
                    }
                }

                if (_lstmatching.Where(p => p.FAE == "F").Count() == 0)
                {
                    foreach (StyleProcedure_F spe in lb3master.StyleProcedure_Fs)
                    {
                        Matching mtc = new Matching();
                        mtc.Factory = CurWPs.Factory;
                        mtc.FAE = "F";
                        mtc.LineCode = CurWPs.LineCode;
                        mtc.j_NO = CurWPs.j_NO;
                        mtc.J2_job = CurWPs.J2_job;
                        mtc.Rwo = CurWPs.Rwo;
                        mtc.Qn = CurWPs.Qn;
                        mtc.Bcolor = CurWPs.Bcolor;
                        mtc.OperationCode = spe.WorkSN;
                        mtc.OperationName = spe.WorkName;
                        mtc.GSD_SAH = spe.GSDSAHSN;
                        mtc.SortIndex = 1;

                        mtc.WPSN = _wpsn++;
                        _lstmatching.Add(mtc);
                    }
                }



                if (_lstmatching.Count() == 0)
                    return;



                List<Matching> _lst1 = _lstmatching.OrderBy(p => p.SortIndex).ThenBy(m => m.OperationSN).ToList();


                ExportLB4Info(lb3master, file, CurWPs.LineCode, _lst1);

                //是否直接打開文件
                //DialogResult dlg = MessageBox.Show("Do you want to open the file now?", "Open Dialog", MessageBoxButtons.YesNo);
                DialogResult dlg = this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgIfopenfile", "msgIfopenfile");
                if (dlg == DialogResult.Yes)
                {
                    ProcessStartInfo pInfo = new ProcessStartInfo();
                    pInfo.FileName = sfd.FileName;
                    Process p = Process.Start(pInfo);
                }
            }


        }


        #region 導出LB4資料
        void ExportLB4Info(StyleMaster Master, string FilePath, string LineCode, List<Matching> MatchList)
        {
            try
            {


                //Microsoft.Office.Interop.Excel.Application xApp = new Microsoft.Office.Interop.Excel.ApplicationClass();
                //Microsoft.Office.Interop.Excel.Worksheet xSheet;
                //Microsoft.Office.Interop.Excel.Workbook xBook;

                _Excel = new PHExcel.Application();
                PHExcel.Workbook workbook;
                this._Excel.Application.DisplayAlerts = false; //關閉提示

                //if (this._PrintMainTable)
                //{
                //    workbook = _Excel.Application.Workbooks._Open(this._ExcelFilePath, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value);
                //}
                //else
                workbook = _Excel.Application.Workbooks.Add(Missing.Value);

                if (_Excel == null)
                {
                    //if (this._langid == "CN" || this._langid == "TW")
                    MessageBox.Show("启动Excel失败", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //else
                    //MessageBox.Show("Start excel fail!", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                _WorkBook = _Excel.ActiveWorkbook;
                _WorkSheet = (PHExcel.Worksheet)workbook.ActiveSheet;
                this.SetReportHead();

                _WorkRange = this._WorkSheet.get_Range("E1", "E1");
                _WorkRange.Font.Size = 12;
                _WorkRange.Font.Underline = true;
                // _WorkRange.Font.FontStyle = @"&""Arial,加粗""&14&""宋体,加粗""";
                _WorkRange.Font.Bold = true;
                _WorkRange.FormulaR1C1 = "LB4 Infomation List";
                // _WorkSheet.Cells[1, 5] = "LB4 Infomation List";

                // this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14&""宋体,加粗""LB4 Infomation List&""Arial,加粗""";
                // @"&""Arial,加粗""&14IE &""宋体,加粗""工序單&""Arial,加粗"" - &""宋体,加粗""拉平衡工程表&""Arial,加粗"" / IE Boo - Line Balancing";

                this._WorkRange = _WorkSheet.get_Range("A3", "A3");
                this._WorkRange.Select();
                // this._WorkRange.Merge(Missing.Value);
                this._WorkRange.ColumnWidth = 40;
                this._WorkRange.FormulaR1C1 = "Cust Style: " + Master.KHKH;

                this._WorkRange = _WorkSheet.get_Range("D3", "D3");
                this._WorkRange.Select();
                // this._WorkRange.Merge(Missing.Value);
                this._WorkRange.ColumnWidth = 28;
                this._WorkRange.FormulaR1C1 = "PH Style: " + Master.PHKH;


                this._WorkRange = _WorkSheet.get_Range("E3", "E3");
                this._WorkRange.Select();
                //this._WorkRange.Merge(Missing.Value);
                this._WorkRange.ColumnWidth = 15;
                this._WorkRange.FormulaR1C1 = "Edition: " + Master.Edition;




                this._WorkRange = _WorkSheet.get_Range("G3", "G3");
                this._WorkRange.Select();
                //this._WorkRange.Merge(Missing.Value);
                this._WorkRange.ColumnWidth = 22;
                this._WorkRange.FormulaR1C1 = "Class: " + Master.ZH;



                this._WorkRange = _WorkSheet.get_Range("H3", "H3");
                this._WorkRange.Select();
                // this._WorkRange.Merge(Missing.Value);
                this._WorkRange.ColumnWidth = 10;
                this._WorkRange.FormulaR1C1 = "Line: " + LineCode;

                _WorkSheet.Cells[5, 1] = "FAE";
                _WorkSheet.Cells[5, 2] = "Seq No.";
                _WorkSheet.Cells[5, 3] = "Opt Code";
                _WorkSheet.Cells[5, 4] = "Operation Name";
                _WorkSheet.Cells[5, 5] = "GSD_SAH";
                _WorkSheet.Cells[5, 6] = "WF No.";
                _WorkSheet.Cells[5, 7] = "WF Name";
                _WorkSheet.Cells[5, 8] = "Machine Id";
                _WorkSheet.Cells[5, 9] = "MC Type";
                _WorkSheet.Cells[5, 10] = "Move Type";
                int i = 0, start = 6;

                ((PHExcel.Range)_WorkSheet.Columns["A", Missing.Value]).ColumnWidth = 6;
                ((PHExcel.Range)_WorkSheet.Columns["B", Missing.Value]).ColumnWidth = 6;
                ((PHExcel.Range)_WorkSheet.Columns["D", Missing.Value]).ColumnWidth = 38;

                //foreach (int i = 0; i < MatchList.Count(); i++)
                foreach (Matching mct in MatchList)
                {

                    //this._WorkRange.AutoFit();
                    //  this._WorkRange.RowHeight = Convert.ToInt32(this._WorkRange.RowHeight) + 8;

                    //Matching mct = MatchList[i];
                    _WorkSheet.Cells[start + i, 1] = mct.FAE;
                    _WorkSheet.Cells[start + i, 2] = mct.OperationSN;
                    _WorkSheet.Cells[start + i, 3] = mct.OperationCode;



                    _WorkSheet.Cells[start + i, 4] = mct.OperationName;
                    _WorkSheet.Cells[start + i, 5] = mct.GSD_SAH;
                    _WorkSheet.Cells[start + i, 6] = "'" + mct.WorkerId;
                    _WorkSheet.Cells[start + i, 7] = mct.WorkerName;
                    _WorkSheet.Cells[start + i, 8] = mct.MachineId;
                    _WorkSheet.Cells[start + i, 9] = mct.MCType;
                    _WorkSheet.Cells[start + i, 10] = mct.Move;

                    // SetCellBorder(_WorkSheet.Cells[start + i, 1], _WorkSheet.Cells[start + i, 10], true, true, true, true, true, true); 
                    i++;

                }

                _Excel.DisplayAlerts = false;
                _Excel.AlertBeforeOverwriting = false;
                //保存工作簿   
                _WorkBook.Save();
                //保存excel文件   
                _Excel.Save(FilePath);
                //_Excel.SaveWorkspace("d:\\123\\test666.xls");


            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                this._Excel.Quit();
            }
        }
        #endregion

        /// <summary>
        /// 生成表頭
        /// </summary>
        private void SetReportHead()
        {
            this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlLandscape; //設置頁面橫向打印
            // this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlPortrait;
            this._WorkSheet.PageSetup.BottomMargin = 0.18;
            this._WorkSheet.PageSetup.TopMargin = 0;
            this._WorkSheet.PageSetup.LeftMargin = 0.05;
            this._WorkSheet.PageSetup.RightMargin = 0.1;
            //this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14@Line Balancing Engineering Sheet / &""宋体,加粗""拉平衡工程表";
            //            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14IE &""宋体,加粗""工序單&""Arial,加粗"" - &""宋体,加粗""LB4 Infomation Explor&""Arial,加粗"" / IE Boo - Line Balancing";
            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14&""宋体,加粗""&""Arial,加粗""";
            // this._WorkSheet.PageSetup.CenterHorizontally = true;
            // this._WorkSheet.PageSetup.CenterVertically = true;
            this._WorkSheet.PageSetup.BlackAndWhite = false;
            this._WorkSheet.PageSetup.Zoom = false;
            this._WorkSheet.PageSetup.FitToPagesWide = 1;
            //  this._WorkSheet.PageSetup.FitToPagesTall = 1;
        }


        #region 設置滿格式邊框(上、下、左右、水平、垂直)
        /// <summary>
        /// 設置滿格式邊框(上、下、左右、水平、垂直)
        /// </summary>
        /// <param name="ACell1">要設置的起始單元格</param>
        /// <param name="ACell2">要設置的截止單元格</param>
        /// <param name="AEdgeTop">上邊框</param>
        /// <param name="AEdgeBottom">下邊框</param>
        /// <param name="AEdgeLeft">左邊框</param>
        /// <param name="AEdgeRigth">右邊框</param>
        /// <param name="AInsideVertical">垂直邊框</param>
        /// <param name="AInsideHorizontal">水平邊框</param>
        private void SetCellBorder(object ACell1, object ACell2, bool AEdgeTop, bool AEdgeBottom, bool AEdgeLeft, bool AEdgeRigth,
            bool AInsideVertical, bool AInsideHorizontal)
        {
            this._WorkRange = _WorkSheet.get_Range(ACell1, ACell2);
            this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
            this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
            PHExcel.Border border = null;

            if (AEdgeLeft)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeLeft];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }

            if (AEdgeTop)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeTop];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }

            if (AEdgeBottom)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeBottom];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }

            if (AEdgeRigth)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeRight];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }

            if (AInsideVertical)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlInsideVertical];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }

            if (AInsideHorizontal)
            {
                border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlInsideHorizontal];
                border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
                border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;
            }
        }

        #endregion

        private void barBtnTobeConfirmed_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Current == null) return;

            Matching obj = this.BindingSource.Current as Matching;

            if (this.barBtnWF.Visibility == BarItemVisibility.Always) //選人
            {
                obj.WPMaster.ToBeConfirmedFlag = !(obj.WPMaster.ToBeConfirmedFlag ?? false);

                obj.WPMaster.ToBeConfirmedDate = null;
                if (obj.WPMaster.ToBeConfirmedFlag ?? false)
                {
                    obj.WPMaster.ToBeConfirmedDate = DateTime.Now;
                }

                this.barBtnTobeConfirmed.Caption = (obj.WPMaster.ToBeConfirmedFlag ?? false) ? "Incomplete" : "Complete";
            }
            else if (this.barBtnMC.Visibility == BarItemVisibility.Always) //選車
            {
                obj.WPMaster.ToBeConfirmedFlag_MC = !(obj.WPMaster.ToBeConfirmedFlag_MC ?? false);

                obj.WPMaster.ToBeConfirmedDate_MC = null;
                if (obj.WPMaster.ToBeConfirmedFlag_MC ?? false)
                {
                    obj.WPMaster.ToBeConfirmedDate_MC = DateTime.Now;
                }

                this.barBtnTobeConfirmed.Caption = (obj.WPMaster.ToBeConfirmedFlag_MC ?? false) ? "Incomplete" : "Complete";
            }

            obj.Save();
        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            Matching obj = this.BindingSource.Current as Matching;
            if (obj == null) return;

            frmSetFieldValue fSetFieldValue = new frmSetFieldValue("Modify MC Type", obj.MCType);
            if (fSetFieldValue.ShowDialog() == DialogResult.OK)
            {
                obj.MCType = fSetFieldValue.NewValue;
                obj.Save();
            }
        }

        public string OptionType { get; set; }
        private void OptPermit_ItemClick(object sender, ItemClickEventArgs e)
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            
            if (OptionType == "A")
                OptionType = "";

            Matching obj = this.BindingSource.Current as Matching;

            var a = db.Machines.Where(p => p.Id == obj.MachineId).Select(p => p.MachineClass);
            string MachineGroup = "";
            foreach (var item in a)
            {
                MachineGroup = item.ToString();
            }

            int ReportType = db.fn_GetOpsPermitType(MachineGroup, obj.FAE) ?? 1;

            DataSet AllSource = db.GetAllSource(obj.Rwo, obj.Qn, obj.j_NO, obj.LineCode, obj.Bcolor, obj.J2_job, obj.Factory,
                OptionType, "Step 4", (obj.OTN??""), DateTime.Now, obj.OperationCode.Trim(), obj.WorkerId, obj.WPSN.ToString());

            if (ReportType == 1)
            {
                StyleMasterListFormReport_B1 rpt = new StyleMasterListFormReport_B1(AllSource, "Step 4 RD confirmed\r\nধাপ 4 RD নিশ্চিত"); 
            
                rpt.ShowPreview();
            }
            else if (ReportType == 2)
            {
                StyleMasterListFormReport_B2 rpt2 = new StyleMasterListFormReport_B2(AllSource, "Step 4 RD confirmed\r\nধাপ 4 RD নিশ্চিত");              
                rpt2.ShowPreview();

            }
            else if (ReportType == 3)
            {
                StyleMasterListFormReport_B3 rpt3 = new StyleMasterListFormReport_B3(AllSource, "Step 4 RD confirmed\r\nধাপ 4 RD নিশ্চিত");              
                rpt3.ShowPreview();
            }

        }
    }

}
