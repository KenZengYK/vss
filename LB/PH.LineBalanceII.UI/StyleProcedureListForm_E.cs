using System;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraGrid.Views.Grid.Drawing;
using DevExpress.XtraPrinting;
using DevExpress.XtraBars;
using PH.LineBalanceII.BO;
using System.Threading;
using System.Globalization;

namespace PH.LineBalanceII.UI
{
    public class StyleProcedureListForm_E : PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gridView1;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn1;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn2;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn3;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColCPGS;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn4;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn11;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn20;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn40;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn12;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn13;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn14;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn15;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColCJQR;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn16;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn17;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn26;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn24;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn19;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn41;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn42;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn43;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn39;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn44;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn45;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn21;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColGCDH;
        public DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn22;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn6;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumnCFlag;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumnJFlag;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn27;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn28;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn29;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn30;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn7;

        #endregion
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gcEquaItem;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repEquaItem;



        #region
        public Hashtable SaveXHList = new Hashtable();
        #endregion
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWorkNameEN;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colYCTypeEN;



        List<EquationType> StyleList = new List<EquationType>();

        private void IniEquation()
        {
            StyleList.Clear();
            StyleList.Add(new EquationType { TypeId = 0, TypeDesc = "距離" });
            StyleList.Add(new EquationType { TypeId = 1, TypeDesc = "摔起" });
            StyleList.Add(new EquationType { TypeId = 2, TypeDesc = "執手" });
            this.repEquaItem.DataSource = StyleList;
        }

        public StyleProcedureListForm_E()
        {
            //Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en"); //英文
            InitializeComponent();
            IniEquation();
        }

        protected override void OnClickOpen()
        {
            //base.OnClickOpen();
        }

        ///將一些敏感的單格，用醒目的顏色標誌出來
        /// <summary>
        /// 將一些敏感的單格，用醒目的顏色標誌出來
        /// </summary>
        /// <param name="e"></param>
        private void DrawCellBorder(RowCellCustomDrawEventArgs e)
        {
            //change color here.....
            Brush brush = Brushes.Red;
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, e.Bounds.Width + 2, 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.Right - 1, e.Bounds.Y - 1, 2, e.Bounds.Height + 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Bottom - 1, e.Bounds.Width + 2, 2));
            e.Graphics.FillRectangle(brush, new Rectangle(e.Bounds.X - 1, e.Bounds.Y - 1, 2, e.Bounds.Height + 2));
        }

        ///將一些敏感的單格，用醒目的顏色標誌出來
        /// <summary>
        /// 將一些敏感的單格，用醒目的顏色標誌出來
        /// </summary>
        /// <param name="view"></param>
        /// <param name="e"></param>
        private void DoDefaultDrawCell(GridView view, RowCellCustomDrawEventArgs e)
        {
            PropertyInfo pi;
            GridControl grid;
            GridViewInfo info;
            GridCellInfo cell;
            GridEditorContainerHelper helper;
            GridViewDrawArgs args;

            info = view.GetViewInfo() as GridViewInfo;
            cell = e.Cell as GridCellInfo;

            grid = view.GridControl;
            pi = grid.GetType().GetProperty("EditorHelper", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.DeclaredOnly);
            helper = pi.GetValue(grid, null) as GridEditorContainerHelper;
            args = new GridViewDrawArgs(e.Cache, info, e.Bounds);
            helper.DrawCellEdit(args, cell.Editor, cell.ViewInfo, e.Appearance, cell.CellValueRect.Location);
        }

        /// 鼠標右鍵是否已經選擇一個或多個拆工序項
        /// <summary>
        /// 鼠標右鍵是否已經選擇一個或多個拆工序項
        /// </summary>
        /// <param name="AFlag">"CWorkSN"或"GSDSAHSN"</param>
        /// <returns></returns>
        private bool GetSelectFlag(string AFlag)
        {
            foreach (DictionaryEntry item in SaveXHList)
            {
                if ((string)item.Value == AFlag)
                {
                    return true;
                }
            }
            return false;

        }

        ///單格合併
        /// <summary>
        /// 單格合併
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param> 
        void gridView1_CellMerge(object sender, CellMergeEventArgs e)
        {


            StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;


            if (myParentForm == null) return;

            //得到拆標誌
            bool CFlag = false;
            GridView viewC = sender as GridView;
            string CFlag1 = (viewC.GetRowCellValue(e.RowHandle1, "CFlag") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "CFlag").ToString()));
            string CFlag2 = (viewC.GetRowCellValue(e.RowHandle2, "CFlag") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "CFlag").ToString()));
            //CFlag = CFlag1 == CFlag2 && CFlag1 == "1" && CFlag2 == "1";
            CFlag = CFlag1 == CFlag2 && CFlag1 != "" && CFlag2 != "";

            //得到夾標誌
            bool JFlag = false;
            GridView viewJ = sender as GridView;
            string JFlag1 = (viewJ.GetRowCellValue(e.RowHandle1, "JFlag") == null ? "" : (viewJ.GetRowCellValue(e.RowHandle1, "JFlag").ToString()));
            string JFlag2 = (viewJ.GetRowCellValue(e.RowHandle2, "JFlag") == null ? "" : viewJ.GetRowCellValue(e.RowHandle2, "JFlag").ToString());
            //JFlag = JFlag1 == JFlag2 && JFlag1 == "1" && JFlag2 == "1";
            JFlag = JFlag1 == JFlag2 && JFlag1 != "" && JFlag2 != "";

            switch (e.Column.FieldName)
            {
                case "TeamGSD":  //組別GSD
                case "TeamYH":   //組別優化後
                case "SN":       //序號
                case "WorkSN":   //工序代號
                case "YCType":   //衣車種類
                case "YCDM":     //衣車代碼
                case "JSCL":     //節時產量
                case "WorkName": //工序名稱
                case "GSDSAHSN": //GSD SAH/工序
                case "CPGS":     //CP工序
                case "YCAdj":    //衣車附件              

                case "BurstNo":  //No. of burst
                case "Width":    //Width
                case "Length":   //Length

                case "WorkNameEN": //工序名稱英文
                case "YCTypeEN":   //衣車種類英文

                    e.Merge = CFlag;
                    e.Handled = true;
                    break;

                case "JWorkSN":         //夾SAH/工序
                case "BNCX":            //拆夾後BN次序
                case "YHBNCX":          //優化後BN次序
                case "YHLineValue":     //優化指標線
                case "BestLineValue":   //優化線
                    e.Merge = JFlag;
                    e.Handled = true;
                    break;

                case "LDL":             //勞動力
                    //e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() != "Floater";
                    //e.Handled = true;
                    //break;
                    if (viewJ.GetRowCellValue(e.RowHandle1, "GRDH") == null)
                    {
                        e.Merge = false;
                        e.Handled = true;
                    }
                    else
                    {
                        e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() != "Floater";
                        e.Handled = true;
                    }
                    break;

                case "GRDH":    //工人代號
                    //e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "GRDH").ToString();
                    //e.Handled = true;
                    //break;
                    if (viewJ.GetRowCellValue(e.RowHandle1, "GRDH") == null || viewJ.GetRowCellValue(e.RowHandle2, "GRDH") == null)
                    {
                        e.Merge = false;
                        e.Handled = true;
                    }
                    else
                    {
                        e.Merge = JFlag && viewJ.GetRowCellValue(e.RowHandle1, "GRDH").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "GRDH").ToString();
                        e.Handled = true;
                    }
                    break;

                case "YHSAHSN":      //優化SAH/工序
                case "YHMTM":        //優化MTM
                    //e.Merge = AutoOptimizeFlag && JFlag;
                    e.Merge = (bool)myParentForm.barToolbarsListItemAutoOptimize.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "BisYHSAHSN": //二度優化SAH
                case "BisYHMTM":   //二度優化MTM
                    e.Merge = (bool)myParentForm.barToolbarsListItemAutoBisOptimize.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "JSCSAHSN":  //間時拆SAH
                case "JSCBNCX":         //間時拆後BN次序
                    if (viewJ.GetRowCellValue(e.RowHandle1, "JSCSAHSN") != null && viewJ.GetRowCellValue(e.RowHandle2, "JSCSAHSN") != null)
                    {
                        e.Merge = (bool)myParentForm.barToolbarsListItemAutoJSC.EditValue && JFlag &&
                            viewJ.GetRowCellValue(e.RowHandle1, "JSCSAHSN").ToString() == viewJ.GetRowCellValue(e.RowHandle2, "JSCSAHSN").ToString();
                        e.Handled = true;
                    }
                    break;

                case "PJHSAHSN":  //平准化SAH
                case "PJHMTM":    //平准化MTM
                    e.Merge = (bool)myParentForm.barToolbarsListItemAutoPJH.EditValue && JFlag;
                    e.Handled = true;
                    break;

                case "GSDBN":   //GSD BN
                case "CJBH":    //拆夾BN
                case "YHBN":    //優化BN
                case "GSDCP":   //GSD CP
                case "CJCP":    //拆夾CP
                case "YHCP":    //優化CP
                case "CJQR":    //車間確認
                case "Move":    //人移物移
                case "CWorkSN": //拆SAH/工序
                case "CFlag":
                case "JFlag":
                case "GZWMergeShowValue":
                case "XH":        //序号不要合并
                case "BestMTM":   //優化MTM
                case "BestSAHSN": //優化SAH/工序
                case "JGJJ":      //尖工間時支援節件\
                case "GZW":          //工作位(主區)
                case "GZW_Support":  //工作位(支援區)
                case "GZW_Floater":  //工作位(尖工區)
                case "YCSD":    //衣車轉數             

                    e.Merge = false;
                    e.Handled = true;
                    break;
                case "equation":
                    e.Merge = false;
                    e.Handled = true;
                    break;

                //    //合併的前提是該工序是拆工序，如拆工序後，對應工作位數量等於0或1時，
                //    //則合併, 等於2或以上則不合並
                //    case "GZW":    //工作位
                //        int GZW1 = int.Parse(viewC.GetRowCellValue(e.RowHandle1, "GZW").ToString());
                //        int GZW2 = int.Parse(viewC.GetRowCellValue(e.RowHandle2, "GZW").ToString());
                //        e.Merge = MergeGZWFlag && CFlag && (GZW1 + GZW2) <= 1;
                //        e.Handled = true;
                //        break;
            }
        }

        ///用醒目的顏色標誌出來
        /// <summary>
        /// 將一些敏感的單格，用醒目的顏色標誌出來
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void gridView1_CustomDrawCell(object sender, RowCellCustomDrawEventArgs e)
        {
            StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;
            if (myParentForm.Master.StyleProcedure_Es.Count == 0) return;//zrtag add

            if (e.Column.FieldName == "GSDSAHSN" || e.Column.FieldName == "CWorkSN") //夾操作時點擊滑鼠右鍵，用顏色標記出來
            {
                foreach (DictionaryEntry item in SaveXHList)
                {
                    int xh = Convert.ToInt32(item.Key.ToString());
                    int drawRowXH = (int)this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["XH"]);
                    string drawColumnFieldName = item.Value.ToString();
                    if (xh == drawRowXH && drawColumnFieldName == e.Column.FieldName)
                    {
                        e.Appearance.BackColor = Color.FromArgb(192, 192, 255);
                        return;
                    }
                }
            }

            if (e.Column.FieldName == "CWorkSN") //有拆工序用顏色標記出來
            {
                //if (this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["CFlag"]).ToString() != "")
                if ((this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["CFlag"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["CFlag"]).ToString()) != "")
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }
            }
            else if (e.Column.FieldName == "GSDSAHSN") //用顏色標記O項最大值
            {

                decimal Cur_GSDSAHSN = (decimal)(this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["GSDSAHSN"]) == null ? 0 : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["GSDSAHSN"]));//this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["GSDSAHSN"])
                if ((myParentForm.lblJKLM9_O.Text != "") && (Convert.ToDecimal(myParentForm.lblJKLM9_O.Text) == Cur_GSDSAHSN))
                {
                    DoDefaultDrawCell(gridView1, e);
                    DrawCellBorder(e);
                    e.Handled = true;
                }
            }
            else if (e.Column.FieldName == "JWorkSN")
            {
                if ((this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JFlag"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JFlag"]).ToString()) != "")
                {
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255); //有夾工序用顏色標記出來
                }

                decimal Cur_JWorkSN = (decimal)(this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]) == null ? 0 : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]));//this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]);

                if ((myParentForm.lblJKLM9_R.Text != "") && (Convert.ToDecimal(myParentForm.lblJKLM9_R.Text) == Cur_JWorkSN))
                {
                    DoDefaultDrawCell(gridView1, e);
                    DrawCellBorder(e);
                    e.Handled = true;
                }

            }
            else if (e.Column.FieldName == "JSCSAHSN")
            {
                string JSCSAH = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JSCSAHSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JSCSAHSN"]).ToString();
                //string bisyhsahsn = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"]).ToString();
                string JWorkSN = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]).ToString();

                if ((bool)myParentForm.barToolbarsListItemAutoJSC.EditValue && JWorkSN != JSCSAH)
                {
                    e.Appearance.BackColor = Color.FromArgb(153, 204, 255); //有間時拆的工序用顏色標記出來
                }

            }
            //else if (e.Column.FieldName == "BisYHSAHSN")
            //{
            //    string YHSAHSN = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHSAHSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHSAHSN"]).ToString();
            //    string BisYHSAHSN=this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"])==null?"":this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"]).ToString();


            //    if ((bool)myParentForm.barToolbarsListItemAutoBisOptimize.EditValue &&                   YHSAHSN != BisYHSAHSN)
            //    {
            //        e.Appearance.BackColor = Color.FromArgb(204, 153, 255); //有二度優化的工序用顏色標記出來
            //    }

            //}
            else if (e.Column.FieldName == "PJHSAHSN")
            {
                string TeamGSD = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["TeamGSD"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["TeamGSD"]).ToString().ToUpper();
                //string BisYHSAHSN = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["BisYHSAHSN"]).ToString();
                //string JWorkSN = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["JWorkSN"]).ToString();

                //string PJHSAHSN = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["PJHSAHSN"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["PJHSAHSN"]).ToString();
                string PJHMTM = this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["PJHMTM"]) == null ? "" : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["PJHMTM"]).ToString();


                //if ((bool)myParentForm.barToolbarsListItemAutoPJH.EditValue && (TeamGSD != "O") && (JWorkSN != PJHSAHSN))
                if ((bool)myParentForm.barToolbarsListItemAutoPJH.EditValue && (TeamGSD != "O") && (PJHMTM != "100"))
                {
                    e.Appearance.BackColor = Color.FromArgb(153, 204, 0); //有平准化的工序用顏色標記出來
                }

            }
            //else if (e.Column.FieldName == "YHSAHSN")
            //{

            //    if (!(bool)myParentForm.barToolbarsListItemAutoOptimize.EditValue)
            //    {
            //        e.Handled = true;
            //        return;
            //    }
            //    if ((bool)myParentForm.barToolbarsListItemAutoOptimize.EditValue && (int)(this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHMTM"])==null?0:this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHMTM"])) > 100)
            //    {
            //        e.Appearance.BackColor = Color.FromArgb(255, 255, 128); //有優化的工序用顏色標記出來
            //    }

            //    decimal Cur_YHSAHSN = (decimal)(this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHSAHSN"]) == null ? 0 : this.gridView1.GetRowCellValue(e.RowHandle, this.gridView1.Columns["YHSAHSN"]));

            //    if ((myParentForm.lblJKLM9_T.Text != "") && (Convert.ToDecimal(myParentForm.lblJKLM9_T.Text) == Cur_YHSAHSN))
            //    {
            //        DoDefaultDrawCell(gridView1, e);
            //        DrawCellBorder(e);
            //        e.Handled = true;
            //    }
            //}
        }

        ///SAH值和MTM值顯示格式控制
        /// <summary>
        ///  SAH值和MTM值顯示格式控制
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void gridView1_CustomColumnDisplayText(object sender, CustomColumnDisplayTextEventArgs e)
        {
            if (this.gridView1.GetRowCellValue(e.RowHandle, "TeamGSD") == null) return;

            StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;

            string teamGSD = (string)this.gridView1.GetRowCellValue(e.RowHandle, "TeamGSD");
            bool IsTeamGSD_O = teamGSD.ToUpper() == "O";

            //if (e.Column.FieldName == "YHSAHSN" || e.Column.FieldName == "YHMTM")
            //{
            //    if (!(bool)myParentForm.barToolbarsListItemAutoOptimize.EditValue || IsTeamGSD_O)
            //    {
            //        e.DisplayText = "";

            //    }
            //}

            //if (e.Column.FieldName == "BisYHSAHSN" || e.Column.FieldName == "BisYHMTM")
            //{
            //    if (!(bool)myParentForm.barToolbarsListItemAutoBisOptimize.EditValue || IsTeamGSD_O)
            //    {
            //        e.DisplayText = "";
            //    }
            //}

            if (e.Column.FieldName == "JSCSAHSN")
            {
                if (!(bool)myParentForm.barToolbarsListItemAutoJSC.EditValue || IsTeamGSD_O)
                    e.DisplayText = "";
            }

            if (e.Column.FieldName == "PJHSAHSN" || e.Column.FieldName == "PJHMTM")
            {
                if (!(bool)myParentForm.barToolbarsListItemAutoPJH.EditValue || IsTeamGSD_O)
                {
                    e.DisplayText = "";
                }
            }

            try  //zrtag add  when  e.RowHandle==null  or others ==null
            {
                //指標綫為0的不顯示出來
                if (e.Column.FieldName == "YHLineValue" && (decimal)this.gridView1.GetRowCellValue(e.RowHandle, "YHLineValue") == 0)
                {
                    e.DisplayText = "";
                }

                //優化指標母為0的不顯示出來
                if (e.Column.FieldName == "BestLineValue" && (decimal)this.gridView1.GetRowCellValue(e.RowHandle, "BestLineValue") == 0)
                {
                    e.DisplayText = "";
                }
            }
            catch//(Exception ex)
            {

            }
        }

        ///保存當前行的序號
        /// <summary>
        /// 在 拆SAH/工序列單格中,右擊滑鼠,保存當前行的序號
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void gridView1_MouseUp(object sender, MouseEventArgs e)
        {
            StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;

            if (!myParentForm.objEditBar.Visible)
            {
                return;
            }

            if ((e.Button == MouseButtons.Right) && (this.gridView1.FocusedColumn.FieldName == "CWorkSN" || this.gridView1.FocusedColumn.FieldName == "GSDSAHSN"))
            {
                StyleProcedure_E CurInfo = (StyleProcedure_E)this.BindingSource.Current;

                if (!string.IsNullOrEmpty(CurInfo.JFlag))
                {
                    MessageBox.Show("當前工序已進行夾操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }

                if (this.gridView1.FocusedColumn.FieldName == "GSDSAHSN")
                {
                    if (this.GetSelectFlag("CWorkSN")) //在"拆SAH/工序"列已經選擇了至少一個已拆的工序
                    {
                        MessageBox.Show("您已選擇一個或多個拆工序，請在列\"拆SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }

                    if (!string.IsNullOrEmpty(CurInfo.CFlag)) //當前工序已經作了拆操作
                    {
                        MessageBox.Show("當前工序已作拆操作,請在列\"拆SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }
                }
                else if (this.gridView1.FocusedColumn.FieldName == "CWorkSN")
                {
                    if (this.GetSelectFlag("GSDSAHSN"))
                    {
                        MessageBox.Show("您已選擇一個或多個GSD SAH/工序，請在列\"GSD SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }

                    if (!this.GetSelectFlag("CWorkSN") && (!string.IsNullOrEmpty(CurInfo.CFlag) && !string.IsNullOrEmpty(CurInfo.JFlag)))
                    {
                        MessageBox.Show("請在列\"GSD SAH/工序\"上操作。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                        return;
                    }
                }

                if (SaveXHList.Contains(CurInfo.XH)) //取消右鍵選中
                {
                    SaveXHList.Remove(CurInfo.XH);
                }
                else //右鍵選中
                {
                    SaveXHList.Add(CurInfo.XH, this.gridView1.FocusedColumn.FieldName);
                }
                this.gridView1.RefreshRow(this.gridView1.FocusedRowHandle);
            }
        }

        ///控制當前行可否上移、下移
        /// <summary>
        ///控制當前行可否上移、下移 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
        {
            StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;
            if (myParentForm == null) return;
            if (myParentForm.Master.StyleProcedure_Es.Count == 0) return;//zrtag add

            myParentForm.barToolbarsListItemMovePrevious.Enabled = e.FocusedRowHandle > 0;
            myParentForm.barToolbarsListItemMoveNext.Enabled = e.FocusedRowHandle != this.gridView1.RowCount - 1;
            myParentForm.barToolbarsListItemCOp.Enabled = ((StyleProcedure_E)this.BindingSource.Current).TeamGSD.ToUpper() != "O";
        }

        ///車間確認、CP工序
        /// <summary>
        /// 車間確認、CP工序
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param> 
        void gridView1_DoubleClick(object sender, EventArgs e)
        {
            StyleProcedure_E obj = this.BindingSource.Current as StyleProcedure_E;

            //MessageBox.Show(" CFlag = " + obj.CFlag +
            //                " JFlag = " + obj.JFlag +
            //                " XH = " + obj.XH.ToString() +
            //                " SaveCFlag = " + obj.BeforeJSCCFlag +
            //                " SaveJFlag = " + obj.BeforeJSCJFlag);

            if ((this.ParentForm != null) && (this.ParentForm is StyleMasterDetailForm_E))
            {
                StyleMasterDetailForm_E myParentForm = this.ParentForm as StyleMasterDetailForm_E;
                StyleMaster myStyleMaster = ((StyleProcedure_E)this.BindingSource.Current).StyleMaster;//zr ((this.BindingSource.DataSource as BindingSource).Current as StyleMaster);

                if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColCJQR") //車間確認
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    if (string.IsNullOrEmpty(Current.CJQR))
                    {
                        Current.WorkshopConfirm();
                    }
                    else
                    {
                        Current.CancelWorkShopConfirm();
                    }
                    this.gridView1.UpdateCurrentRow();
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColCPGS") //CP工序
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    if (Current.CPGS == null || Current.CPGS == "")
                    {
                        Current.FlagCPGS(myStyleMaster);
                    }
                    else
                    {
                        Current.CancelCPGS(myStyleMaster);
                    }
                    this.gridView1.RefreshData();
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColGCDH") //人工代號(勞動力代號)
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    if (Current.GRDH!=null && Current.GRDH.ToUpper() != "FLOATER")
                    {
                        Current.SetGRDHFlag(myStyleMaster, Current.GRDH);
                        this.gridView1.RefreshData();
                    }
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColumn40") //衣車代碼
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    Current.SetYCDM(myStyleMaster, Current.YCDM);
                    this.gridView1.RefreshData();
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColumn13") //衣車附件
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    Current.SetYCAdj(myStyleMaster, Current.YCAdj);
                    this.gridView1.RefreshData();
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "bandedGridColumn7") //衣車附件
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    Current.SetYCSD(myStyleMaster, Current.YCSD);
                    this.gridView1.RefreshData();
                }
                else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "gridColumn12") //
                {
                    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                    Current.SetYCType(myStyleMaster, Current.YCType);
                    this.gridView1.RefreshData();
                }
                //else if (myParentForm.objEditBar.Visible && this.gridView1.FocusedColumn.Name == "bandedGridColumn7") //衣車附件
                //{
                //    StyleProcedure_E Current = (StyleProcedure_E)this.BindingSource.Current;
                //    Current.SetYCSD(myStyleMaster, Current.YCSD);
                //    this.gridView1.RefreshData();
                //}
            }

        }

        private void InitializeComponent()
        {
            this.gridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColCPGS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWorkNameEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn20 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn40 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colYCTypeEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn13 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn7 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn14 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColCJQR = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn16 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn27 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn26 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn24 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn19 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn41 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn42 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn43 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn39 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn44 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn45 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn21 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColGCDH = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn22 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumnCFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumnJFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gcEquaItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repEquaItem = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gridColumn28 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn29 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn30 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repEquaItem)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.gridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repEquaItem});
            this.objListGridControl.Size = new System.Drawing.Size(1153, 395);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gridView1
            // 
            this.gridView1.Appearance.FocusedRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.gridView1.Appearance.FocusedRow.Options.UseBackColor = true;
            this.gridView1.BandPanelRowHeight = 40;
            this.gridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand7,
            this.gridBand8,
            this.gridBand9,
            this.gridBand10,
            this.gridBand11,
            this.gridBand12,
            this.gridBand13,
            this.gridBand14,
            this.gridBand15,
            this.gridBand16,
            this.gridBand4,
            this.gridBand1});
            this.gridView1.ColumnPanelRowHeight = 50;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.gridColumn27,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColCPGS,
            this.gridColumn11,
            this.gridColumn40,
            this.gridColumn12,
            this.gridColumn13,
            this.gridColumn14,
            this.gridColumn15,
            this.gridColumn16,
            this.gridColumn17,
            this.gridColumn26,
            this.gridColCJQR,
            this.gridColumn24,
            this.gridColumn19,
            this.gridColumn41,
            this.gridColumn42,
            this.gridColumn43,
            this.gridColumn44,
            this.gridColumn45,
            this.gridColumn28,
            this.gridColumn29,
            this.gridColumn39,
            this.gridColumn20,
            this.gridColumn21,
            this.gridColumn22,
            this.gridColGCDH,
            this.gridColumnCFlag,
            this.gridColumnJFlag,
            this.gridColumn30,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.bandedGridColumn6,
            this.bandedGridColumn7,
            this.gcEquaItem,
            this.colWorkNameEN,
            this.colYCTypeEN});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(816, 276, 208, 308);
            this.gridView1.GridControl = this.objListGridControl;
            this.gridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "SN", this.gridColumn4, null)});
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsCustomization.AllowSort = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsPrint.UsePrintStyles = true;
            this.gridView1.OptionsView.AllowCellMerge = true;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            this.gridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
            this.gridView1.DoubleClick += new System.EventHandler(this.gridView1_DoubleClick);
            this.gridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.gridView1_CellMerge);
            this.gridView1.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(this.gridView1_CustomColumnDisplayText);
            this.gridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.gridView1_CustomDrawCell);
            this.gridView1.MouseUp += new System.Windows.Forms.MouseEventHandler(this.gridView1_MouseUp);
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand7.Caption = "組別";
            this.gridBand7.Columns.Add(this.gridColumn1);
            this.gridBand7.Columns.Add(this.gridColumn2);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 78;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn1.Caption = "未作LB";
            this.gridColumn1.FieldName = "TeamGSD";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.Width = 38;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn2.Caption = "LB*";
            this.gridColumn2.FieldName = "TeamYH";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.Width = 40;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand8.Caption = "工序";
            this.gridBand8.Columns.Add(this.gridColumn3);
            this.gridBand8.Columns.Add(this.gridColCPGS);
            this.gridBand8.Columns.Add(this.gridColumn4);
            this.gridBand8.Columns.Add(this.gridColumn11);
            this.gridBand8.Columns.Add(this.colWorkNameEN);
            this.gridBand8.Columns.Add(this.gridColumn20);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 412;
            // 
            // gridColumn3
            // 
            this.gridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn3.Caption = "次序";
            this.gridColumn3.FieldName = "SN";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn3.Visible = true;
            this.gridColumn3.Width = 39;
            // 
            // gridColCPGS
            // 
            this.gridColCPGS.AppearanceCell.Options.UseTextOptions = true;
            this.gridColCPGS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColCPGS.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColCPGS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColCPGS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColCPGS.Caption = "重要工序";
            this.gridColCPGS.FieldName = "CPGS";
            this.gridColCPGS.Name = "gridColCPGS";
            this.gridColCPGS.OptionsColumn.AllowEdit = false;
            this.gridColCPGS.Visible = true;
            this.gridColCPGS.Width = 42;
            // 
            // gridColumn4
            // 
            this.gridColumn4.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn4.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn4.Caption = "工序代號";
            this.gridColumn4.FieldName = "WorkSN";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.Width = 58;
            // 
            // gridColumn11
            // 
            this.gridColumn11.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn11.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridColumn11.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn11.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn11.Caption = "工序名稱";
            this.gridColumn11.FieldName = "WorkName";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.OptionsColumn.AllowEdit = false;
            this.gridColumn11.Visible = true;
            this.gridColumn11.Width = 210;
            // 
            // colWorkNameEN
            // 
            this.colWorkNameEN.AppearanceHeader.Options.UseTextOptions = true;
            this.colWorkNameEN.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWorkNameEN.Caption = "WorkNameEN";
            this.colWorkNameEN.FieldName = "WorkNameEN";
            this.colWorkNameEN.Name = "colWorkNameEN";
            this.colWorkNameEN.Width = 210;
            // 
            // gridColumn20
            // 
            this.gridColumn20.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn20.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn20.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn20.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn20.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn20.Caption = "人移/物移";
            this.gridColumn20.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn20.FieldName = "Move";
            this.gridColumn20.Name = "gridColumn20";
            this.gridColumn20.Visible = true;
            this.gridColumn20.Width = 63;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // gridBand9
            // 
            this.gridBand9.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand9.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand9.Caption = "工作位(連衣車)";
            this.gridBand9.Columns.Add(this.gridColumn40);
            this.gridBand9.Columns.Add(this.gridColumn12);
            this.gridBand9.Columns.Add(this.colYCTypeEN);
            this.gridBand9.Columns.Add(this.gridColumn13);
            this.gridBand9.Columns.Add(this.bandedGridColumn7);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 229;
            // 
            // gridColumn40
            // 
            this.gridColumn40.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn40.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn40.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn40.Caption = "代碼";
            this.gridColumn40.FieldName = "YCDM";
            this.gridColumn40.Name = "gridColumn40";
            this.gridColumn40.OptionsColumn.AllowEdit = false;
            this.gridColumn40.Visible = true;
            this.gridColumn40.Width = 59;
            // 
            // gridColumn12
            // 
            this.gridColumn12.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn12.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn12.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn12.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn12.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn12.Caption = "種類";
            this.gridColumn12.FieldName = "YCType";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.OptionsColumn.AllowEdit = false;
            this.gridColumn12.Visible = true;
            this.gridColumn12.Width = 45;
            // 
            // colYCTypeEN
            // 
            this.colYCTypeEN.Caption = "YCTypeEN";
            this.colYCTypeEN.FieldName = "YCTypeEN";
            this.colYCTypeEN.Name = "colYCTypeEN";
            this.colYCTypeEN.Width = 45;
            // 
            // gridColumn13
            // 
            this.gridColumn13.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn13.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn13.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridColumn13.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn13.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn13.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn13.Caption = "附件";
            this.gridColumn13.FieldName = "YCAdj";
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.OptionsColumn.AllowEdit = false;
            this.gridColumn13.Visible = true;
            this.gridColumn13.Width = 50;
            // 
            // bandedGridColumn7
            // 
            this.bandedGridColumn7.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn7.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn7.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn7.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn7.Caption = "衣車轉數";
            this.bandedGridColumn7.FieldName = "YCSD";
            this.bandedGridColumn7.Name = "bandedGridColumn7";
            this.bandedGridColumn7.Visible = true;
            // 
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand10.Caption = "未作LB";
            this.gridBand10.Columns.Add(this.gridColumn14);
            this.gridBand10.Columns.Add(this.gridColumn15);
            this.gridBand10.Columns.Add(this.gridColCJQR);
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Width = 152;
            // 
            // gridColumn14
            // 
            this.gridColumn14.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn14.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn14.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn14.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn14.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn14.Caption = "GSD SAH";
            this.gridColumn14.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn14.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn14.FieldName = "GSDSAHSN";
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.OptionsColumn.AllowEdit = false;
            this.gridColumn14.Visible = true;
            this.gridColumn14.Width = 54;
            // 
            // gridColumn15
            // 
            this.gridColumn15.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn15.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn15.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn15.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn15.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn15.Caption = "節時產量";
            this.gridColumn15.DisplayFormat.FormatString = "{0:N2}";
            this.gridColumn15.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn15.FieldName = "JSCL";
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.OptionsColumn.AllowEdit = false;
            this.gridColumn15.Visible = true;
            this.gridColumn15.Width = 45;
            // 
            // gridColCJQR
            // 
            this.gridColCJQR.AppearanceCell.Options.UseTextOptions = true;
            this.gridColCJQR.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColCJQR.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridColCJQR.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColCJQR.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColCJQR.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColCJQR.Caption = "工序車間確認";
            this.gridColCJQR.FieldName = "CJQR";
            this.gridColCJQR.Name = "gridColCJQR";
            this.gridColCJQR.OptionsColumn.AllowEdit = false;
            this.gridColCJQR.Visible = true;
            this.gridColCJQR.Width = 53;
            // 
            // gridBand11
            // 
            this.gridBand11.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand11.Caption = "拆夾LB";
            this.gridBand11.Columns.Add(this.gridColumn16);
            this.gridBand11.Columns.Add(this.gridColumn17);
            this.gridBand11.Columns.Add(this.gridColumn27);
            this.gridBand11.Columns.Add(this.gridColumn26);
            this.gridBand11.MinWidth = 20;
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 153;
            // 
            // gridColumn16
            // 
            this.gridColumn16.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn16.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn16.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn16.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn16.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn16.Caption = "拆SAH";
            this.gridColumn16.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn16.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn16.FieldName = "CWorkSN";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.OptionsColumn.AllowEdit = false;
            this.gridColumn16.Visible = true;
            this.gridColumn16.Width = 54;
            // 
            // gridColumn17
            // 
            this.gridColumn17.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn17.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn17.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn17.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn17.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn17.Caption = "夾SAH";
            this.gridColumn17.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn17.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn17.FieldName = "JWorkSN";
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.OptionsColumn.AllowEdit = false;
            this.gridColumn17.Visible = true;
            this.gridColumn17.Width = 49;
            // 
            // gridColumn27
            // 
            this.gridColumn27.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn27.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn27.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn27.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn27.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.gridColumn27.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn27.Caption = "順序號";
            this.gridColumn27.FieldName = "XH";
            this.gridColumn27.Name = "gridColumn27";
            this.gridColumn27.Width = 52;
            // 
            // gridColumn26
            // 
            this.gridColumn26.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn26.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn26.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn26.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn26.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn26.Caption = "BN次序";
            this.gridColumn26.FieldName = "BNCX";
            this.gridColumn26.Name = "gridColumn26";
            this.gridColumn26.OptionsColumn.AllowEdit = false;
            this.gridColumn26.Visible = true;
            this.gridColumn26.Width = 50;
            // 
            // gridBand12
            // 
            this.gridBand12.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand12.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand12.Caption = "優化LB";
            this.gridBand12.Columns.Add(this.bandedGridColumn3);
            this.gridBand12.Columns.Add(this.gridColumn24);
            this.gridBand12.Columns.Add(this.gridColumn19);
            this.gridBand12.Columns.Add(this.bandedGridColumn1);
            this.gridBand12.MinWidth = 20;
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Visible = false;
            this.gridBand12.Width = 193;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn3.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn3.Caption = "指標線";
            this.bandedGridColumn3.DisplayFormat.FormatString = "{0:N4}";
            this.bandedGridColumn3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.bandedGridColumn3.FieldName = "YHLineValue";
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn3.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn3.Width = 47;
            // 
            // gridColumn24
            // 
            this.gridColumn24.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn24.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn24.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn24.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn24.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn24.Caption = "優化MTM";
            this.gridColumn24.FieldName = "YHMTM";
            this.gridColumn24.Name = "gridColumn24";
            this.gridColumn24.OptionsColumn.AllowEdit = false;
            this.gridColumn24.Width = 44;
            // 
            // gridColumn19
            // 
            this.gridColumn19.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn19.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn19.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn19.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn19.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn19.Caption = "優化SAH";
            this.gridColumn19.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn19.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn19.FieldName = "YHSAHSN";
            this.gridColumn19.Name = "gridColumn19";
            this.gridColumn19.OptionsColumn.AllowEdit = false;
            this.gridColumn19.Width = 60;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn1.Caption = "BN次序";
            this.bandedGridColumn1.FieldName = "YHBNCX";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn1.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn1.Width = 42;
            // 
            // gridBand13
            // 
            this.gridBand13.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand13.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand13.Caption = "優化LB(二度優化)";
            this.gridBand13.Columns.Add(this.bandedGridColumn4);
            this.gridBand13.Columns.Add(this.gridColumn41);
            this.gridBand13.Columns.Add(this.gridColumn42);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Visible = false;
            this.gridBand13.Width = 151;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn4.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn4.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn4.Caption = "指標線";
            this.bandedGridColumn4.DisplayFormat.FormatString = "{0:N4}";
            this.bandedGridColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.bandedGridColumn4.FieldName = "BestLineValue";
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn4.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn4.Width = 48;
            // 
            // gridColumn41
            // 
            this.gridColumn41.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn41.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn41.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn41.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn41.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn41.Caption = "二度優化MTM";
            this.gridColumn41.FieldName = "BisYHMTM";
            this.gridColumn41.Name = "gridColumn41";
            this.gridColumn41.OptionsColumn.AllowEdit = false;
            this.gridColumn41.Width = 51;
            // 
            // gridColumn42
            // 
            this.gridColumn42.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn42.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn42.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn42.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn42.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn42.Caption = "二度優化SAH";
            this.gridColumn42.FieldName = "BisYHSAHSN";
            this.gridColumn42.Name = "gridColumn42";
            this.gridColumn42.OptionsColumn.AllowEdit = false;
            this.gridColumn42.Width = 52;
            // 
            // gridBand14
            // 
            this.gridBand14.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand14.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand14.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand14.Caption = "優化LB(間時拆)";
            this.gridBand14.Columns.Add(this.gridColumn43);
            this.gridBand14.Columns.Add(this.bandedGridColumn2);
            this.gridBand14.Columns.Add(this.gridColumn39);
            this.gridBand14.MinWidth = 20;
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Width = 156;
            // 
            // gridColumn43
            // 
            this.gridColumn43.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn43.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn43.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn43.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn43.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn43.Caption = "間時拆SAH";
            this.gridColumn43.FieldName = "JSCSAHSN";
            this.gridColumn43.Name = "gridColumn43";
            this.gridColumn43.OptionsColumn.AllowEdit = false;
            this.gridColumn43.Visible = true;
            this.gridColumn43.Width = 50;
            // 
            // bandedGridColumn2
            // 
            this.bandedGridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn2.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn2.Caption = "BN次序";
            this.bandedGridColumn2.FieldName = "JSCBNCX";
            this.bandedGridColumn2.Name = "bandedGridColumn2";
            this.bandedGridColumn2.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn2.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn2.Visible = true;
            this.bandedGridColumn2.Width = 50;
            // 
            // gridColumn39
            // 
            this.gridColumn39.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn39.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn39.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn39.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn39.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn39.Caption = "尖工間時支援節件數";
            this.gridColumn39.FieldName = "JGJJ";
            this.gridColumn39.Name = "gridColumn39";
            this.gridColumn39.OptionsColumn.AllowEdit = false;
            this.gridColumn39.Visible = true;
            this.gridColumn39.Width = 56;
            // 
            // gridBand15
            // 
            this.gridBand15.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand15.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand15.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand15.Caption = "優化LB(平准化)作參考用";
            this.gridBand15.Columns.Add(this.gridColumn44);
            this.gridBand15.Columns.Add(this.gridColumn45);
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Width = 103;
            // 
            // gridColumn44
            // 
            this.gridColumn44.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn44.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn44.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn44.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn44.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn44.Caption = "平准化MTM";
            this.gridColumn44.FieldName = "PJHMTM";
            this.gridColumn44.Name = "gridColumn44";
            this.gridColumn44.OptionsColumn.AllowEdit = false;
            this.gridColumn44.Visible = true;
            this.gridColumn44.Width = 53;
            // 
            // gridColumn45
            // 
            this.gridColumn45.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn45.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn45.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn45.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn45.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn45.Caption = "平准化SAH";
            this.gridColumn45.FieldName = "PJHSAHSN";
            this.gridColumn45.Name = "gridColumn45";
            this.gridColumn45.OptionsColumn.AllowEdit = false;
            this.gridColumn45.Visible = true;
            this.gridColumn45.Width = 50;
            // 
            // gridBand16
            // 
            this.gridBand16.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand16.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand16.Caption = "勞動力*";
            this.gridBand16.Columns.Add(this.gridColumn21);
            this.gridBand16.Columns.Add(this.gridColGCDH);
            this.gridBand16.MinWidth = 20;
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Width = 95;
            // 
            // gridColumn21
            // 
            this.gridColumn21.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn21.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn21.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn21.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn21.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn21.Caption = "數量";
            this.gridColumn21.FieldName = "LDL";
            this.gridColumn21.Name = "gridColumn21";
            this.gridColumn21.OptionsColumn.AllowEdit = false;
            this.gridColumn21.Visible = true;
            this.gridColumn21.Width = 50;
            // 
            // gridColGCDH
            // 
            this.gridColGCDH.AppearanceCell.Options.UseTextOptions = true;
            this.gridColGCDH.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColGCDH.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColGCDH.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColGCDH.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColGCDH.Caption = "代號";
            this.gridColGCDH.FieldName = "GRDH";
            this.gridColGCDH.Name = "gridColGCDH";
            this.gridColGCDH.OptionsColumn.AllowEdit = false;
            this.gridColGCDH.Visible = true;
            this.gridColGCDH.Width = 45;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand4.Caption = "工作位*";
            this.gridBand4.Columns.Add(this.gridColumn22);
            this.gridBand4.Columns.Add(this.bandedGridColumn6);
            this.gridBand4.Columns.Add(this.bandedGridColumn5);
            this.gridBand4.Columns.Add(this.gridColumnCFlag);
            this.gridBand4.Columns.Add(this.gridColumnJFlag);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 71;
            // 
            // gridColumn22
            // 
            this.gridColumn22.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn22.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn22.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn22.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn22.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn22.Caption = "生産線主區";
            this.gridColumn22.FieldName = "GZW";
            this.gridColumn22.Name = "gridColumn22";
            this.gridColumn22.Visible = true;
            this.gridColumn22.Width = 34;
            // 
            // bandedGridColumn6
            // 
            this.bandedGridColumn6.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn6.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn6.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn6.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn6.Caption = "生産線支援區";
            this.bandedGridColumn6.FieldName = "GZW_Floater";
            this.bandedGridColumn6.Name = "bandedGridColumn6";
            this.bandedGridColumn6.Visible = true;
            this.bandedGridColumn6.Width = 37;
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn5.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn5.AppearanceHeader.Options.UseTextOptions = true;
            this.bandedGridColumn5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn5.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridColumn5.Caption = "支援區";
            this.bandedGridColumn5.FieldName = "GZW_Support";
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.Width = 27;
            // 
            // gridColumnCFlag
            // 
            this.gridColumnCFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumnCFlag.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumnCFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumnCFlag.Caption = "拆标志";
            this.gridColumnCFlag.FieldName = "CFlag";
            this.gridColumnCFlag.Name = "gridColumnCFlag";
            this.gridColumnCFlag.Width = 52;
            // 
            // gridColumnJFlag
            // 
            this.gridColumnJFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumnJFlag.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumnJFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumnJFlag.Caption = "夹标志";
            this.gridColumnJFlag.FieldName = "JFlag";
            this.gridColumnJFlag.Name = "gridColumnJFlag";
            this.gridColumnJFlag.Width = 47;
            // 
            // gridBand1
            // 
            this.gridBand1.Columns.Add(this.gcEquaItem);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 36;
            // 
            // gcEquaItem
            // 
            this.gcEquaItem.AppearanceCell.Options.UseTextOptions = true;
            this.gcEquaItem.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcEquaItem.AppearanceHeader.Options.UseTextOptions = true;
            this.gcEquaItem.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcEquaItem.Caption = "影響因素";
            this.gcEquaItem.ColumnEdit = this.repEquaItem;
            this.gcEquaItem.FieldName = "equation";
            this.gcEquaItem.Name = "gcEquaItem";
            this.gcEquaItem.Visible = true;
            this.gcEquaItem.Width = 36;
            // 
            // repEquaItem
            // 
            this.repEquaItem.AutoHeight = false;
            this.repEquaItem.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repEquaItem.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("TypeDesc", "Type", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.repEquaItem.DisplayMember = "TypeDesc";
            this.repEquaItem.Name = "repEquaItem";
            this.repEquaItem.NullText = "";
            this.repEquaItem.PopupFormMinSize = new System.Drawing.Size(20, 10);
            this.repEquaItem.PopupWidth = 20;
            this.repEquaItem.ValueMember = "TypeId";
            // 
            // gridColumn28
            // 
            this.gridColumn28.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn28.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn28.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn28.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn28.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn28.Caption = "優化MTM";
            this.gridColumn28.FieldName = "BestMTM";
            this.gridColumn28.Name = "gridColumn28";
            this.gridColumn28.OptionsColumn.AllowEdit = false;
            this.gridColumn28.Width = 37;
            // 
            // gridColumn29
            // 
            this.gridColumn29.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn29.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn29.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn29.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn29.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn29.Caption = "優化SAH/工序";
            this.gridColumn29.DisplayFormat.FormatString = "{0:N4}";
            this.gridColumn29.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gridColumn29.FieldName = "BestSAHSN";
            this.gridColumn29.Name = "gridColumn29";
            this.gridColumn29.OptionsColumn.AllowEdit = false;
            this.gridColumn29.Width = 58;
            // 
            // gridColumn30
            // 
            this.gridColumn30.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn30.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn30.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn30.Caption = "工作位合并值";
            this.gridColumn30.FieldName = "GZWMergeShowValue";
            this.gridColumn30.Name = "gridColumn30";
            // 
            // StyleProcedureListForm_E
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "StyleProcedureListForm_E";
            this.Size = new System.Drawing.Size(1153, 422);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repEquaItem)).EndInit();
            this.ResumeLayout(false);

        }


    }
}
