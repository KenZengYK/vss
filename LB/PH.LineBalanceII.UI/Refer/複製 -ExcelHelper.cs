using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.Grid;
using PHExcel = Microsoft.Office.Interop.Excel;
using PH.LineBalanceII.BO;


namespace PH.LineBalanceII.UI
{
    public class ExcelHelper
    {
        #region Field Define
        private string _ExcelFilePath;
        private StyleMasterDetailForm _StyleMasterDetailForm;
        private GridView _GridView;
        private StyleMaster _Master;
        private bool _PrintMainTable;
        private bool _PrintAdjTable;
        private PHExcel.Application _Excel;
        private PHExcel.Workbooks _WorkBooks;
        private PHExcel.Workbook _WorkBook;
        private PHExcel.Worksheet _WorkSheet;
        private PHExcel.Range _WorkRange;
        #endregion

        #region 構造函數
        public ExcelHelper(string AExcelFilePath, StyleMasterDetailForm AStyleMasterDetailForm, GridView AGridView, StyleMaster AMaster, bool APrintMainTable, bool APrintAdjTable)
        {
            this._ExcelFilePath = AExcelFilePath;
            this._StyleMasterDetailForm = AStyleMasterDetailForm;
            this._GridView = AGridView;
            this._Master = AMaster;
            this._PrintMainTable = APrintMainTable;
            this._PrintAdjTable = APrintAdjTable;
        }
        #endregion

        #region 處理Excel格式
        /// <summary>
        /// 處理Excel格式
        /// </summary>
        public void ProcessExcelFormat()
        {
            try
            {
                _Excel = new PHExcel.Application();
                PHExcel.Workbook workbook;
                this._Excel.Application.DisplayAlerts = false; //關閉提示
                if (this._PrintMainTable)
                {
                    workbook = _Excel.Application.Workbooks._Open(this._ExcelFilePath, Missing.Value, Missing.Value,
                        Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value, Missing.Value,
                        Missing.Value, Missing.Value, Missing.Value);
                }
                else
                {
                    workbook = _Excel.Application.Workbooks.Add(Missing.Value);
                }

                if (_Excel == null)
                {
                    MessageBox.Show("启动Excel失败", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                _WorkBooks = _Excel.Workbooks;
                _WorkBook = _Excel.ActiveWorkbook;

                _WorkSheet = (PHExcel.Worksheet)workbook.ActiveSheet;

                if (this._PrintMainTable)
                {

                    //插入表頭
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    this._WorkRange = _WorkSheet.get_Range("A1", "AC1");
                    this._WorkRange.Select();
                    this._WorkRange.Merge(Missing.Value);
                 
                    if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Simplified ||
                        PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Trad)
                    {
                        this._WorkRange.FormulaR1C1 = "組合工序單 " + this._Master.ZH;
                    }
                    else if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.English ||
                        PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Thai)
                    {
                        this._WorkRange.FormulaR1C1 = "Associated Bill of Operation " + this._Master.ZH;
                    }
                    //}

                    this._WorkRange.Font.Bold = true;
                    this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
                    this._WorkRange.MergeCells = true;

                    //客戶款號
                    this.DrawCellWithBorder("A2", "B2", this._StyleMasterDetailForm.lblCustomerStyle.Text, true);
                    this.DrawCellWithBorder("C2", "D2", this._Master.KHKH, true);

                    //PH款號
                    this.DrawCellWithBorder("E2", "E2", this._StyleMasterDetailForm.lblPHStyle.Text, true);
                    this.DrawCellWithBorder("F2", "G2", this._Master.PHKH, true);

                    //産品類別
                    this.DrawCellWithBorder("H2", "I2", this._StyleMasterDetailForm.lblCategory.Text, true);
                    this.DrawCellWithBorder("J2", "K2", this._Master.CPLB, true);

                    //曬士依據(基值)
                    this.DrawCellWithBorder("L2", "M2", this._StyleMasterDetailForm.lblSize.Text, true);
                    this.DrawCellWithBorder("N2", "O2", this._Master.SizeYJ, true);

                    //組合
                    this.DrawCellWithBorder("P2", "Q2", this._StyleMasterDetailForm.lblZH.Text, true);
                    this.DrawCellWithBorder("R2", "X2", this._Master.ZH, true);

                    //版本
                    this.DrawCellWithBorder("Y2", "Z2", this._StyleMasterDetailForm.lblEdition.Text, true);
                    this.DrawCellWithBorder("AA2", "AA2", this._Master.Edition.ToString(), false);

                    //使用
                    this.DrawCellWithBorder("AB2", "AC2", this._StyleMasterDetailForm.lblUsed.Text, true);
                    this.DrawCellWithBorder("AD2", "AG2", this._Master.IsUsed.ToString() == "True" ? "√" : "", true);

                    //處理夾或拆工序時單元格合並
                    string CurCFlag = "-19";
                    string NextCFlag = "-19";
                    string CurJFlag = "-19";
                    string NextJFlag = "-19";

                    string BeginOpRowIndex = "-19";
                    string EndOpRowIndex = "-19";

                    int i = 6;
                    while (i < this._GridView.RowCount + 6)
                    {
                        CurCFlag = ((PHExcel.Range)_WorkSheet.Cells[i, 34]).FormulaR1C1.ToString();

                        if (CurCFlag != "-19" && CurCFlag != "")
                        {
                            BeginOpRowIndex = i.ToString();

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "")
                            {
                                this._WorkRange = _WorkSheet.get_Range("N" + BeginOpRowIndex, "N" + BeginOpRowIndex); //拆操作列設置背景顔色
                                this._WorkRange.Interior.ColorIndex = 38;
                            }

                            NextCFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 34]).FormulaR1C1.ToString();

                            while (NextCFlag != "" && CurCFlag == NextCFlag)
                            {
                                EndOpRowIndex = (i + 1).ToString();

                                this._WorkRange = _WorkSheet.get_Range("N" + EndOpRowIndex, "N" + EndOpRowIndex); //拆操作列設置背景顔色
                                this._WorkRange.Interior.ColorIndex = 38;

                                i++;
                                NextCFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 34]).FormulaR1C1.ToString();
                            }

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "" && EndOpRowIndex != "-19" && EndOpRowIndex != "")
                            {
                                this.MergeCell("A" + BeginOpRowIndex, "A" + EndOpRowIndex);  //組別GSD      (合並單元格)
                                this.MergeCell("B" + BeginOpRowIndex, "B" + EndOpRowIndex);  //組別優化後   (合並單元格)
                                this.MergeCell("C" + BeginOpRowIndex, "C" + EndOpRowIndex);  //序號         (合並單元格)
                                this.MergeCell("E" + BeginOpRowIndex, "E" + EndOpRowIndex);  //工序代號     (合並單元格)
                                this.MergeCell("F" + BeginOpRowIndex, "F" + EndOpRowIndex);  //工序名稱     (合並單元格)
                                this.MergeCell("H" + BeginOpRowIndex, "H" + EndOpRowIndex);  //衣車代碼     (合並單元格)
                                this.MergeCell("I" + BeginOpRowIndex, "I" + EndOpRowIndex);  //衣車種類     (合並單元格)
                                this.MergeCell("J" + BeginOpRowIndex, "J" + EndOpRowIndex);  //衣車附件     (合並單元格)
                                this.MergeCell("K" + BeginOpRowIndex, "K" + EndOpRowIndex);  //GSD SAH/工序 (合並單元格)
                                this.MergeCell("L" + BeginOpRowIndex, "L" + EndOpRowIndex);  //節時產量     (合並單元格)

                                BeginOpRowIndex = "-19";
                                EndOpRowIndex = "-19";
                            }
                            i++;
                        }
                        else
                        {
                            i++;
                        }
                    }

                    i = 6;
                    while (i < this._GridView.RowCount + 6)  //此處要遊歷兩次，是要處理先拆又夾回來的情況
                    {
                        string YHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 18]).FormulaR1C1.ToString();
                        string BisYHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 22]).FormulaR1C1.ToString();
                        string PJHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 27]).FormulaR1C1.ToString();

                        //處理優化SAH列背景顔色
                        if (YHMTM != null && YHMTM != "" && Convert.ToInt32(YHMTM) > 100)
                        {
                            this._WorkRange = _WorkSheet.get_Range("S" + i, "S" + i);
                            this._WorkRange.Interior.ColorIndex = 6;
                        }

                        //處理二度優化SAH列背景顔色
                        if (BisYHMTM != YHMTM)
                        {
                            this._WorkRange = _WorkSheet.get_Range("W" + i, "W" + i);
                            this._WorkRange.Interior.ColorIndex = 39;
                        }


                        //處理平准化SAH列背景顔色
                        if (BisYHMTM != PJHMTM)
                        {
                            this._WorkRange = _WorkSheet.get_Range("AB" + i, "AB" + i);
                            this._WorkRange.Interior.ColorIndex = 43;
                        }

                        CurJFlag = ((PHExcel.Range)_WorkSheet.Cells[i, 35]).FormulaR1C1.ToString();
                        if (CurJFlag != "-19" && CurJFlag != "")
                        {
                            BeginOpRowIndex = i.ToString();

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "")
                            {
                                this._WorkRange = _WorkSheet.get_Range("O" + BeginOpRowIndex, "O" + BeginOpRowIndex);//夾操作列設置背景顔色
                                this._WorkRange.Interior.ColorIndex = 34;
                            }

                            NextJFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 35]).FormulaR1C1.ToString();

                            while (NextJFlag != "" && CurJFlag == NextJFlag)
                            {
                                EndOpRowIndex = (i + 1).ToString();

                                this._WorkRange = _WorkSheet.get_Range("O" + EndOpRowIndex, "O" + EndOpRowIndex); //夾操作列設置背景顔色
                                this._WorkRange.Interior.ColorIndex = 34;

                                i++;
                                NextJFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 35]).FormulaR1C1.ToString();
                            }

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "" && EndOpRowIndex != "-19" && EndOpRowIndex != "")
                            {
                                this.MergeCell("O" + BeginOpRowIndex, "O" + EndOpRowIndex);      //夾SAH/工序         (合並單元格)
                                this.MergeCell("P" + BeginOpRowIndex, "P" + EndOpRowIndex);      //BN次序             (合並單元格)
                                this.MergeCell("Q" + BeginOpRowIndex, "Q" + EndOpRowIndex);      //優化指標線         (合並單元格)
                                this.MergeCell("R" + BeginOpRowIndex, "R" + EndOpRowIndex);      //優化MTM            (合並單元格)
                                this.MergeCell("S" + BeginOpRowIndex, "S" + EndOpRowIndex);      //優化SAH/工序       (合並單元格)
                                this.MergeCell("T" + BeginOpRowIndex, "T" + EndOpRowIndex);      //優化後BNCX         (合並單元格)
                                this.MergeCell("U" + BeginOpRowIndex, "U" + EndOpRowIndex);      //極佳線指標線       (合並單元格)
                                this.MergeCell("V" + BeginOpRowIndex, "V" + EndOpRowIndex);      //二度優化MTM        (合並單元格)
                                this.MergeCell("W" + BeginOpRowIndex, "W" + EndOpRowIndex);      //二度優化SAH        (合並單元格)
                                this.MergeCell("AA" + BeginOpRowIndex, "AA" + EndOpRowIndex);    //平准化MTM          (合並單元格)
                                this.MergeCell("AB" + BeginOpRowIndex, "AB" + EndOpRowIndex);    //平准化SAH          (合並單元格)
                                this.MergeCell("AC" + BeginOpRowIndex, "AC" + EndOpRowIndex);    //勞動力(數量)       (合並單元格)

                                int FloatIndex = Convert.ToInt32(BeginOpRowIndex);
                                for (int j = Convert.ToInt32(BeginOpRowIndex); j <= Convert.ToInt32(EndOpRowIndex); j++)
                                {
                                    if (((PHExcel.Range)_WorkSheet.Cells[FloatIndex, 30]).FormulaR1C1.ToString().ToUpper() == "FLOATER")
                                    {
                                        this._WorkRange = _WorkSheet.get_Range("X" + BeginOpRowIndex, "X" + BeginOpRowIndex);
                                        this._WorkRange.Interior.ColorIndex = 37;
                                        FloatIndex++;
                                        continue;
                                    }
                                    else
                                    {
                                        //處理間時拆SAH列背景顔色
                                        string JSCSAH = ((PHExcel.Range)_WorkSheet.Cells[FloatIndex, 24]).FormulaR1C1.ToString();
                                        string BisYHSAH = ((PHExcel.Range)_WorkSheet.Cells[FloatIndex, 23]).FormulaR1C1.ToString();
                                        if (JSCSAH != BisYHSAH)
                                        {
                                            this._WorkRange = _WorkSheet.get_Range("X" + FloatIndex, "X" + EndOpRowIndex);
                                            this._WorkRange.Interior.ColorIndex = 37;
                                        }

                                        this.MergeCell("Y" + FloatIndex, "Y" + EndOpRowIndex);   //間時拆BN次序       (合並單元格)
                                        this.MergeCell("X" + FloatIndex, "X" + EndOpRowIndex);   //間時拆SAH          (合並單元格)
                                        this.MergeCell("AD" + FloatIndex, "AD" + EndOpRowIndex); //勞動力代號         (合並單元格)
                                        break;
                                    }
                                }

                                BeginOpRowIndex = "-19";
                                EndOpRowIndex = "-19";
                            }
                            i++;
                        }
                        else
                        {
                            i++;
                        }
                    }

                    //處理主工序表的Footer部分
                    int row = this._GridView.RowCount + 7;
                    this.SetCellBorder("A" + row.ToString(), "AG" + (row + 7).ToString(), true, true, true, true, false, false);

                    this.MergeCell("A" + row, "M" + row, this._StyleMasterDetailForm.label1.Text); //圖例說明
                    this._WorkSheet.get_Range("A" + row, "M" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    row++;
                    this.MergeCell("A" + row, "C" + row, this._StyleMasterDetailForm.lblExplain.Text); //備注
                    this._WorkSheet.get_Range("A" + row, "C" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    row++;
                    this.MergeCell("A" + row, "D" + row, this._StyleMasterDetailForm.lblSplit.Text);     //拆
                    this.MergeCell("F" + row, "F" + row, this._StyleMasterDetailForm.lblMerge.Text);     //夾
                    this.MergeCell("H" + row, "J" + row, this._StyleMasterDetailForm.lblOptimize.Text);  //優化
                    this.MergeCell("L" + row, "N" + row, this._StyleMasterDetailForm.lblBest.Text);      //極佳

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblDetail.Text, true);       //實施LB步驟摘要
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand10.Caption, true);   //未做LB
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand11.Caption, true);   //拆夾LB
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand12.Caption, true);   //優化LB
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand13.Caption, true);  //極佳LB(二度優化)
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand14.Caption, true); //極佳LB(間時拆)

                    row++;
                    this.MergeCell("A" + row, "D" + (row + 1), "", 38); //拆的顔色
                    this.MergeCell("F" + row, "F" + (row + 1), "", 34); //夾的顔色
                    this.MergeCell("H" + row, "J" + (row + 1), "", 6);  //優化的顔色
                    this.MergeCell("L" + row, "N" + (row + 1), "", 39); //極佳的顔色

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblWorkforce.Text, true); //勞動力合計
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM7_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM7_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM7_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM7_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM7_Y.Text, true);

                    row++;
                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblWorkStation.Text, true); //工作位(衣車+手式台)合計
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM8_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM8_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM8_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM8_Y.Text, true);

                    row++;
                    this.MergeCell("A" + row, "D" + row, this._StyleMasterDetailForm.lblConfirm.Text); //車間確認代碼

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblLBUsage.Text, true);  //LB%拉平衡率
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM13_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM13_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM13_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM13_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM13_Y.Text, true);

                    row++;
                    this.MergeCell("C" + row, "J" + row, this._StyleMasterDetailForm.lblConfirmOp1.Text); //0 代表車間確認了此工序之SAH,但未確認有否工序選擇錯誤
                    this._WorkSheet.get_Range("C" + row, "J" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
                    this.MergeCell("L" + row, "O" + row, this._StyleMasterDetailForm.lblConfirmOp2.Text); //1 代表車間確認工序正確
                    this._WorkSheet.get_Range("L" + row, "O" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    ////刪除不需要顯示出來的列(拆標志列和夾標誌列)
                    ((PHExcel.Range)_WorkSheet.Cells[1, 35]).EntireColumn.Delete(0); //刪除夾標志列
                    ((PHExcel.Range)_WorkSheet.Cells[1, 34]).EntireColumn.Delete(0); //刪除拆標誌列

                    this.AdjustMainTableFormat();   //調整主表格式
                    this.SetMainTablePrintFormat(); //主工序表設置列印格式
                }

                if (this._PrintAdjTable)
                {
                    this.PrintAdjTable();          //得到附表資料
                    this.AdjustAdjTableFormat();   //調整附表格式
                    this.SetAdjTablePrintFormat(); //設置附表的列印格式
                }

                if (this._PrintMainTable)
                {
                    this._Excel.ActiveWorkbook.Save();
                }
                else
                {
                    this._Excel.ActiveWorkbook.SaveCopyAs(this._ExcelFilePath);
                }

                this._Excel.Visible = true;
                this._Excel.Worksheets.PrintPreview(true);

                //_Excel.Application.ActiveWindow.PrintPreview(true);
                //this._Excel.Application.DisplayAlerts = true;  //恢復提示
            }
            catch
            {
                MessageBox.Show("启动Excel失败或發生錯誤!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            finally
            {
                this._Excel.Quit();
            }
        }
        #endregion

        #region 繪製帶邊框的單元格
        /// <summary>
        /// 繪製帶邊框的單元格
        /// </summary>
        /// <param name="ACell1">Cell1</param>
        /// <param name="ACell2">Cell2</param>
        /// <param name="ACaption">顯示的Caption</param>
        /// <param name="AIsMerge">是否合並單元格Caption</param>
        private void DrawCellWithBorder(object ACell1, object ACell2, string ACaption, bool AIsMerge)
        {
            this._WorkRange = _WorkSheet.get_Range(ACell1, ACell2);
            this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
            this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
            this._WorkRange.WrapText = true;

            PHExcel.Border border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeLeft];
            border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
            border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;

            border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeTop];
            border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
            border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;

            border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeBottom];
            border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
            border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;

            border = this._WorkRange.Borders[PHExcel.XlBordersIndex.xlEdgeRight];
            border.LineStyle = PHExcel.XlLineStyle.xlContinuous;
            border.ColorIndex = PHExcel.XlColorIndex.xlColorIndexAutomatic;

            this._WorkRange.Select();
            if (AIsMerge)
            {
                this._WorkRange.Merge(Missing.Value);
            }
            this._WorkRange.FormulaR1C1 = ACaption;
        }

        /// <summary>
        /// 繪製帶邊框的單元格
        /// </summary>
        /// <param name="ACell1">Cell1</param>
        /// <param name="ACell2">Cell2</param>
        /// <param name="ACaption">顯示的Caption</param>
        /// <param name="AIsMerge">是否合並單元格Caption</param>
        /// <param name="AColorIndex">Excel中的Color Index</param>
        /// <param name="AIsFontBold">字體是否加粗</param>
        private void DrawCellWithBorder(object ACell1, object ACell2, string ACaption, bool AIsMerge, int AColorIndex, bool AIsFontBold)
        {
            this.DrawCellWithBorder(ACell1, ACell2, ACaption, AIsMerge);
            this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
            this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
            this._WorkRange.Interior.ColorIndex = AColorIndex;
            this._WorkRange.Font.Bold = AIsFontBold;
        }
        #endregion

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

        #region 合併指定的單元格
        /// <summary>
        /// 合併指定的單元格
        /// </summary>
        /// <param name="ACell1">合並的起始單元格</param>
        /// <param name="ACell2">合並的截止單元格</param>
        private void MergeCell(object ACell1, object ACell2)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
        }

        /// <summary>
        /// 合併指定的單元格,並指定顯示文本
        /// </summary>
        /// <param name="ACell1">合並的起始單元格</param>
        /// <param name="ACell2">合並的截止單元格</param>
        /// <param name="ACaption">單元格顯示的文本</param>
        private void MergeCell(object ACell1, object ACell2, string ACaption)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.FormulaR1C1 = ACaption;
            range.Merge(Missing.Value);
        }

        /// <summary>
        /// 合併指定的單元格,並指定顯示文本和背景填充色
        /// </summary>
        /// <param name="ACell1">合並的起始單元格</param>
        /// <param name="ACell2">合並的截止單元格</param>
        /// <param name="ACaption">單元格顯示的文本</param>
        /// <param name="AColorIndex">背景颜色索引号</param>
        private void MergeCell(object ACell1, object ACell2, string ACaption, object AColorIndex)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
            range.FormulaR1C1 = ACaption;
            range.Interior.ColorIndex = AColorIndex;
        }

        /// <summary>
        /// 合併指定的單元格
        /// </summary>
        /// <param name="ACell1">合並的起始單元格</param>
        /// <param name="ACell2">合並的截止單元格</param>
        /// <param name="AColorIndex">背景颜色索引号</param>
        private void MergeCell(object ACell1, object ACell2, object AColorIndex)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
            range.Interior.ColorIndex = AColorIndex;
        }
        #endregion

        #region 列印附表
        /// <summary>
        /// 列印附表
        /// </summary>
        private void PrintAdjTable()
        {
            if (this._PrintMainTable)
            {
                this._WorkSheet = (PHExcel.Worksheet)this._Excel.Sheets.Add(Missing.Value, this._WorkSheet, Missing.Value, Missing.Value);
            }

            int row = 1;
            //插入表頭
            this._WorkRange = ((PHExcel.Worksheet)this._Excel.ActiveWorkbook.ActiveSheet).get_Range("A1", "W1");
            this._WorkRange.Select();
            this._WorkRange.Merge(Missing.Value);
           
            if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Simplified ||
                PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Trad)
            {
                this._WorkRange.FormulaR1C1 = "組合工序單 " + this._Master.ZH;
            }
            else if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.English ||
                     PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Thai)
            {
                this._WorkRange.FormulaR1C1 = "Associated Bill of Operation " + this._Master.ZH;
            }

            this._WorkRange.Font.Bold = true;
            this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
            this._WorkRange.MergeCells = true;

            row++;
            //客戶款號
            this.DrawCellWithBorder("A2", "B2", this._StyleMasterDetailForm.lblCustomerStyle.Text, true);
            this.DrawCellWithBorder("C2", "E2", this._Master.KHKH, true);

            //PH款號
            this.DrawCellWithBorder("E2", "E2", this._StyleMasterDetailForm.lblPHStyle.Text, true);
            this.DrawCellWithBorder("F2", "G2", this._Master.PHKH, true);

            //産品類別
            this.DrawCellWithBorder("H2", "H2", this._StyleMasterDetailForm.lblCategory.Text, true);
            this.DrawCellWithBorder("I2", "I2", this._Master.CPLB, true);

            //曬士依據(基值)
            this.DrawCellWithBorder("I2", "K2", this._StyleMasterDetailForm.lblSize.Text, true);
            this.DrawCellWithBorder("L2", "M2", this._Master.SizeYJ, true);

            //組合
            this.DrawCellWithBorder("N2", "N2", this._StyleMasterDetailForm.lblZH.Text, true);
            this.DrawCellWithBorder("O2", "S2", this._Master.ZH, true);

            //版本
            this.DrawCellWithBorder("T2", "T2", this._StyleMasterDetailForm.lblEdition.Text, true);
            this.DrawCellWithBorder("U2", "U2", this._Master.Edition.ToString(), false);

            //使用
            this.DrawCellWithBorder("V2", "V2", this._StyleMasterDetailForm.lblUsed.Text, true);
            this.DrawCellWithBorder("W2", "W2", this._Master.IsUsed.ToString() == "True" ? "√" : "", true);

            row += 2;

            //this.SetCellBorder("A" + row.ToString(), "AG" + (row + 19).ToString(), true, true, true, true, true, true);
            this.DrawCellWithBorder("A" + row, "D" + (row + 2), this._StyleMasterDetailForm.lblDetail.Text, true); // "實施LB步驟明細"
            this.DrawCellWithBorder("E" + row, "E" + (row + 2), this._StyleMasterDetailForm.lblNonLB.Text, true);  // "標準SAH未做LB"
            this.DrawCellWithBorder("F" + row, "F" + (row + 2), this._StyleMasterDetailForm.lblCJLB.Text, true);   // "拆夾SAH拆夾LB"
            this.DrawCellWithBorder("G" + row, "G" + (row + 2), this._StyleMasterDetailForm.lblYHLB.Text, true);   // "優化SAH優化LB"
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblBestLB.Text, true);       // "極   佳"

            this.DrawCellWithBorder("K" + row, "L" + row, this._StyleMasterDetailForm.gridBandNonLB.Caption, true);   //工作位
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.gridBand1.Caption, true);       //未拆夾LB
            this.DrawCellWithBorder("N" + row, "P" + row, this._StyleMasterDetailForm.gridBand2.Caption, true);       //拆夾LB
            this.DrawCellWithBorder("Q" + row, "S" + row, this._StyleMasterDetailForm.gridBand3.Caption, true);      //優化LB
            this.DrawCellWithBorder("T" + row, "W" + row, this._StyleMasterDetailForm.gridBand5.Caption, true);     //極佳LB

            row++;
            this.DrawCellWithBorder("H" + row, "H" + (row + 1), this._StyleMasterDetailForm.lblBisYH.Text, true);   // "二度優化"
            this.DrawCellWithBorder("I" + row, "I" + (row + 1), this._StyleMasterDetailForm.lblJSC.Text, true);     // "間時拆"
            this.DrawCellWithBorder("K" + row, "K" + (row + 1), this._StyleMasterDetailForm.bandColNonLBCode.Caption, true); //代碼
            this.DrawCellWithBorder("L" + row, "L" + (row + 1), this._StyleMasterDetailForm.bandColNonLBType.Caption, true); //衣車種類
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.gridBand6.Caption, true);     //未拆夾LB 數量(衣車+衣工台)
            this.DrawCellWithBorder("N" + row, "P" + row, this._StyleMasterDetailForm.gridBand24.Caption, true);    //拆夾LB 數量(衣車+衣工台)
            this.DrawCellWithBorder("Q" + row, "S" + row, this._StyleMasterDetailForm.gridBand25.Caption, true);   //優化LB 數量(衣車+衣工台)
            this.DrawCellWithBorder("T" + row, "W" + row, this._StyleMasterDetailForm.gridBand26.Caption, true);  //極佳LB 數量(衣車+衣工台)

            row++;
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.bandColNonLBCount.Caption, true); //未拆夹LB(總數)

            this.DrawCellWithBorder("N" + row, "N" + row, this._StyleMasterDetailForm.bandedGridColumn7.Caption, true); //拆夾LB(主區)
            this.DrawCellWithBorder("O" + row, "O" + row, this._StyleMasterDetailForm.bandedGridColumn8.Caption, true); //拆夾LB(支援區)
            this.DrawCellWithBorder("P" + row, "P" + row, this._StyleMasterDetailForm.bandedGridColumn9.Caption, true); //拆夾LB(總數)

            this.DrawCellWithBorder("Q" + row, "Q" + row, this._StyleMasterDetailForm.bandedGridColumn10.Caption, true); //優化LB(主區)
            this.DrawCellWithBorder("R" + row, "R" + row, this._StyleMasterDetailForm.bandedGridColumn11.Caption, true); //優化LB(支援區)
            this.DrawCellWithBorder("S" + row, "S" + row, this._StyleMasterDetailForm.bandedGridColumn12.Caption, true); //優化LB(總數)

            this.DrawCellWithBorder("T" + row, "T" + row, this._StyleMasterDetailForm.bandedGridColumn13.Caption, true); //極佳LB(主區)
            this.DrawCellWithBorder("U" + row, "U" + row, this._StyleMasterDetailForm.bandedGridColumn14.Caption, true); //極佳LB(支援區)
            this.DrawCellWithBorder("V" + row, "V" + row, this._StyleMasterDetailForm.bandedGridColumn15.Caption, true); //極佳LB(尖工區)
            this.DrawCellWithBorder("W" + row, "W" + row, this._StyleMasterDetailForm.bandedGridColumn16.Caption, true); //極佳LB(總數)

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblGSD.Text, true); // "GSDSAH 合 計(不含包裝SAH)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM1_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM1_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM1_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM1_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM1_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblAGroup.Text, true); //"A 組 SAH 小計"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM2_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM2_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM2_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM2_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM2_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblBGroup.Text, true); //"B 組 SAH 小計"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM3_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM3_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM3_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM3_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM3_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblCGroup.Text, true); //"C 組 SAH 小計"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM4_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM4_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM4_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM4_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM4_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblSection.Text, true); // "拉節時產量(件)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM6_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM6_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM6_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM6_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM6_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row.ToString(), this._StyleMasterDetailForm.lblWorkforce.Text, true);  //"勞動力合計"
            this.DrawCellWithBorder("E" + row, "E" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row.ToString(), "D" + row.ToString(), this._StyleMasterDetailForm.lblFloater.Text, true); // "Floater合計"
            this.DrawCellWithBorder("E" + row.ToString(), "E" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("F" + row.ToString(), "F" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("G" + row.ToString(), "G" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("H" + row.ToString(), "H" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("I" + row.ToString(), "I" + row.ToString(), this._StyleMasterDetailForm.lblSumFloater.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblWorkStation.Text, true); // "工作位(衣車+手工台)合計"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM8_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM8_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM8_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM8_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMaxSAH.Text, true);  //"最大樽頸 SAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM9_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM9_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM9_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM9_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM9_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMinZJ.Text, true); // "最小樽頸SAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM21_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM21_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM21_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM21_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM21_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMinSAH.Text, true); // "最小SAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM10_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM10_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM10_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM10_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM10_Y.Text, true);
            row++;

            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblLBUsage.Text, true); // "LB%拉平衡率"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM13_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM13_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM13_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM13_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM13_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblLine.Text, true); // "優化指標線/極佳指標線"
            this.DrawCellWithBorder("E" + row, "E" + row, "N.A.", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "N.A.", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM20_T.Text, true);
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM20_X.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblUsage.Text, true); // "SAH中位數(參考)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM14_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM14_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM14_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM14_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM14_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "A" + (row + 2), this._StyleMasterDetailForm.label43.Text, true, 6, false);

            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblMaxMTM.Text, true, 36, false); // "MTM最大值"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM15_T.Text, true);
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM15_X.Text, true);

            row++;
            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblWorker1.Text, true, 36, false); // "MTM(104-120)人數"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM16_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM16_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, "", true);

            row++;
            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblWorker2.Text, true, 36, false); // "MTM(104-120)人數百分比"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM17_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM17_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, "", true);

            row++;
            this.MergeCell("A" + row, "W" + row);
            ((PHExcel.Range)this._WorkSheet.Rows[row, Missing.Value]).RowHeight = 8;

            this.DrawCellWithBorder("A" + (row + 1), "C" + (row + 2), this._StyleMasterDetailForm.lblPrepareMan.Text, true); //製錶人
            this.DrawCellWithBorder("D" + (row + 1), "G" + (row + 2), "", true);
            this.DrawCellWithBorder("H" + (row + 1), "J" + (row + 2), this._StyleMasterDetailForm.lblIEConfirm.Text, true); //IE部確認
            this.DrawCellWithBorder("K" + (row + 1), "N" + (row + 2), "", true);
            this.DrawCellWithBorder("O" + (row + 1), "Q" + (row + 2), this._StyleMasterDetailForm.lblWorkShopConfirm.Text, true); //生産部確認
            this.DrawCellWithBorder("R" + (row + 1), "W" + (row + 2), "", true);

            this.DrawCellWithBorder("A" + (row + 3), "C" + (row + 4), this._StyleMasterDetailForm.lblDate.Text, true); //製錶日期
            this.DrawCellWithBorder("D" + (row + 3), "G" + (row + 4), "", true);
            this.DrawCellWithBorder("H" + (row + 3), "J" + (row + 4), this._StyleMasterDetailForm.lblDate1.Text, true); //日期
            this.DrawCellWithBorder("K" + (row + 3), "N" + (row + 4), "", true);
            this.DrawCellWithBorder("O" + (row + 3), "Q" + (row + 4), this._StyleMasterDetailForm.lblDate2.Text, true); //日期
            this.DrawCellWithBorder("R" + (row + 3), "W" + (row + 4), "", true);

            //處理工作位
            int Sum_CJMainArea, Sum_CJSupportArea, Sum_YHMainArea, Sum_YHSupportArea, Sum_BestMainArea, Sum_BestSupportArea, Sum_BestFloatArea;
            Sum_CJMainArea = Sum_CJSupportArea = Sum_YHMainArea = Sum_YHSupportArea = Sum_BestMainArea = Sum_BestSupportArea = Sum_BestFloatArea = 0;
            row = 7;
            if (this._Master.SummaryList.Count > 0)
            {
                foreach (Summary obj in this._Master.SummaryList)
                {
                    Sum_CJMainArea += obj.CJLBMainAreaYCCount;
                    Sum_CJSupportArea += obj.CJLBSupportAreaYCCount;
                    Sum_YHMainArea += obj.YHLBMainAreaYCCount;
                    Sum_YHSupportArea += obj.YHLBSupportAreaYCCount;
                    Sum_BestMainArea += obj.BestLBMainAreaYCCount;
                    Sum_BestSupportArea += obj.BestLBSupportAreaYCCount;
                    Sum_BestFloatArea += obj.BestLBFloaterAreaYCCount;

                    this.DrawCellWithBorder("K" + row, "K" + row, obj.YCDM, false);          //衣車代碼
                    this.DrawCellWithBorder("L" + row, "L" + row, obj.YCType, false);        //衣車種類

                    this.DrawCellWithBorder("M" + row, "M" + row, obj.NoneLBYCCount.ToString(), true);  //未拆夾LB 數量(衣車+手工台)

                    this.DrawCellWithBorder("N" + row, "N" + row, obj.CJLBMainAreaYCCount.ToString(), false);     //拆夾LB(主區)
                    this.DrawCellWithBorder("O" + row, "O" + row, obj.CJLBSupportAreaYCCount.ToString(), false);  //拆夾LB(支援區)
                    this.DrawCellWithBorder("P" + row, "P" + row, obj.CJLBYCCount.ToString(), true);              //拆夾LB(總數)

                    this.DrawCellWithBorder("Q" + row, "Q" + row, obj.YHLBMainAreaYCCount.ToString(), false);     //優化LB(主區)
                    this.DrawCellWithBorder("R" + row, "R" + row, obj.YHLBSupportAreaYCCount.ToString(), false);  //優化LB(支援區)
                    this.DrawCellWithBorder("S" + row, "S" + row, obj.YHLBYCCount.ToString(), true);              //優化LB(總數)

                    this.DrawCellWithBorder("T" + row, "T" + row, obj.BestLBMainAreaYCCount.ToString(), false);     //極佳LB(主區)
                    this.DrawCellWithBorder("U" + row, "U" + row, obj.BestLBSupportAreaYCCount.ToString(), false);  //極佳LB(支援區)
                    this.DrawCellWithBorder("V" + row, "V" + row, obj.BestLBFloaterAreaYCCount.ToString(), false);  //極佳LB(尖工區)
                    this.DrawCellWithBorder("W" + row, "W" + row, obj.BestLBYCCount.ToString(), true);              //極佳LB(總數)

                    row++;
                }
                //處理工作位合計
                this.DrawCellWithBorder("K" + row, "L" + row, "合計", true);
                this.DrawCellWithBorder("M" + row, "M" + row, this._Master.GSDGZW, true);
                this.DrawCellWithBorder("N" + row, "N" + row, Sum_CJMainArea.ToString(), false);
                this.DrawCellWithBorder("O" + row, "O" + row, Sum_CJSupportArea.ToString(), false);
                this.DrawCellWithBorder("P" + row, "P" + row, this._Master.CJGZW, true);
                this.DrawCellWithBorder("Q" + row, "Q" + row, Sum_YHMainArea.ToString(), false);
                this.DrawCellWithBorder("R" + row, "R" + row, Sum_YHSupportArea.ToString(), false);
                this.DrawCellWithBorder("S" + row, "S" + row, this._Master.YHGZW, true);
                this.DrawCellWithBorder("T" + row, "T" + row, Sum_BestMainArea.ToString(), false);
                this.DrawCellWithBorder("U" + row, "U" + row, Sum_BestSupportArea.ToString(), false);
                this.DrawCellWithBorder("V" + row, "V" + row, Sum_BestFloatArea.ToString(), false);
                this.DrawCellWithBorder("W" + row, "W" + row, this._Master.PJHGZW, true);
            }

            #region 不用了
            //row = 6;
            //if (this._PrintMainTable)
            //{
            //    row = this._GridView.RowCount + 6 + 8;
            //}
            //if (this._Master.SummaryList.Count > 0)
            //{
            //    foreach (Summary obj in this._Master.SummaryList)
            //    {
            //        this.DrawCellWithBorder("P" + row.ToString(), "P" + row.ToString(), obj.YCDM, true, 36, false);
            //        this.DrawCellWithBorder("Q" + row.ToString(), "Q" + row.ToString(), obj.YCType, true, 36, false);
            //        this.DrawCellWithBorder("R" + row.ToString(), "S" + row.ToString(), obj.NoneLBYCCount.ToString(), true, 36, false);
            //        row += 1;
            //    }
            //    this.DrawCellWithBorder("P" + row.ToString(), "Q" + row.ToString(), "Total", true, 36, false);
            //    this.DrawCellWithBorder("R" + row.ToString(), "S" + row.ToString(), this._StyleMasterDetailForm.lblJKLM8_O.Text, true, 36, false);
            //}

            //row = 6;
            //if (this._PrintMainTable)
            //{
            //    row = this._GridView.RowCount + 6 + 8;
            //}
            ////int Sum_CJGZW = 0;
            //if (this._Master.CJGZWSummaryList.Count > 0)
            //{
            //    foreach (Summary obj in this._Master.CJGZWSummaryList)
            //    {
            //        this.DrawCellWithBorder("T" + row, "T" + row, obj.YCDM, true, 36, false);
            //        this.DrawCellWithBorder("U" + row, "U" + row, obj.YCType, true, 36, false);
            //        this.DrawCellWithBorder("V" + row, "W" + row, obj.YCCount.ToString(), true, 36, false);

            //        this.DrawCellWithBorder("X" + row, "X" + row, obj.YCDM, true, 36, false);
            //        this.DrawCellWithBorder("Y" + row, "Y" + row, obj.YCType, true, 36, false);
            //        this.DrawCellWithBorder("Z" + row, "AA" + row, obj.YCCount.ToString(), true, 36, false);

            //        this.DrawCellWithBorder("AB" + row, "AB" + row, obj.YCDM, true, 36, false);
            //        this.DrawCellWithBorder("AC" + row, "AC" + row, obj.YCType, true, 36, false);
            //        this.DrawCellWithBorder("AD" + row, "AE" + row, obj.YCCount.ToString(), true, 36, false);

            //        //Sum_CJGZW += obj.YCCount;
            //        row += 1;
            //    }
            //    this.DrawCellWithBorder("T" + row, "U" + row, "Total", true, 36, false);
            //    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true, 36, false);

            //    this.DrawCellWithBorder("X" + row, "Y" + row, "Total", true, 36, false);
            //    this.DrawCellWithBorder("Z" + row, "AA" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true, 36, false);

            //    this.DrawCellWithBorder("AB" + row, "AC" + row, "Total", true, 36, false);
            //    this.DrawCellWithBorder("AD" + row, "AE" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true, 36, false);
            //}

            //row = 6 + this._Master.CJGZWSummaryList.Count + 2;
            //if (this._PrintMainTable)
            //{
            //    row = this._GridView.RowCount + 6 + 8 + this._Master.CJGZWSummaryList.Count + 2;
            //}
            //this.DrawCellWithBorder("AB" + row, "AE" + row, this._StyleMasterDetailForm.gridBandFloater.Caption, true, 40, false); // "尖工工作位"

            //row++;
            //this.DrawCellWithBorder("AB" + row, "AB" + row, this._StyleMasterDetailForm.bandCoFloaterCode.Caption, true, 40, false); // "代碼"
            //this.DrawCellWithBorder("AC" + row, "AC" + row, this._StyleMasterDetailForm.bandCoFloaterType.Caption, true, 40, false); // "種類"
            //this.DrawCellWithBorder("AD" + row, "AE" + row, this._StyleMasterDetailForm.bandCoFloaterCount.Caption, true, 40, false); // "數量"

            //row++;
            //int Sum_FloaterGZW = 0;
            //if (this._Master.FloaterGZWSummaryList.Count > 0)
            //{
            //    foreach (Summary obj in this._Master.FloaterGZWSummaryList)
            //    {
            //        this.DrawCellWithBorder("AB" + row, "AB" + row, obj.YCDM, true, 36, false);
            //        this.DrawCellWithBorder("AC" + row, "AC" + row, obj.YCType, true, 36, false);
            //        this.DrawCellWithBorder("AD" + row, "AE" + row, obj.YCCount.ToString(), true, 36, false);
            //        Sum_FloaterGZW += obj.YCCount;
            //        row += 1;
            //    }
            //    this.DrawCellWithBorder("AB" + row, "AC" + row, "Total", true, 36, false);
            //    this.DrawCellWithBorder("AD" + row, "AE" + row, Sum_FloaterGZW.ToString(), true, 36, false);
            //}
            #endregion

            this._WorkBook.Save();
        }
        #endregion

        #region 調整主工序表的格式
        /// <summary>
        /// 調整主工序表的格式
        /// </summary>
        private void AdjustMainTableFormat()
        {
            //調整第二行和第三行風格
            ((PHExcel.Range)this._WorkSheet.Rows[2, Missing.Value]).RowHeight = 32;
            ((PHExcel.Range)this._WorkSheet.Rows[3, Missing.Value]).RowHeight = 8;

            if (this._PrintMainTable)
            {
                for (int i = 4; i <= 5; i++) //調整標題行的風格
                {
                    this._WorkRange = (PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value];
                    this._WorkRange.Select();
                    this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
                    this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
                    this._WorkRange.Interior.ColorIndex = 0;
                    this._WorkRange.RowHeight = 32;
                }

                this._WorkSheet.get_Range("L6", "L" + this._GridView.RowCount).NumberFormatLocal = "0.00_ ";     //節時産量
                this._WorkSheet.get_Range("K6", "K" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //標準 SAH/工序
                this._WorkSheet.get_Range("N6", "N" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //拆SAH /工序
                this._WorkSheet.get_Range("O6", "O" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //夾SAH /工序
                this._WorkSheet.get_Range("S6", "S" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //優化SAH /工序
                this._WorkSheet.get_Range("W6", "W" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //二度優化SAH /工序
                this._WorkSheet.get_Range("X6", "X" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //間時拆 SAH /工序
                this._WorkSheet.get_Range("AB6", "AB" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ "; //平准化 SAH /工序


                ((PHExcel.Range)this._WorkSheet.Rows[this._GridView.RowCount + 6, Missing.Value]).RowHeight = 8;
                ((PHExcel.Range)this._WorkSheet.Rows[this._GridView.RowCount + 14, Missing.Value]).RowHeight = 8;

                //調整表體風格
                for (int i = 6; i <= this._GridView.RowCount + 5; i++)
                {
                    //自動調整行高,讓工序名稱Column太長時可以自動調整行高(行高 = Excel自動行高 + 8)
                    this._WorkRange = (PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value];
                    this._WorkRange.AutoFit();
                    this._WorkRange.RowHeight = Convert.ToInt32(this._WorkRange.RowHeight) + 8;
                    //                    this._WorkRange.RowHeight = 20;

                    if (_WorkSheet.get_Range("Q" + i.ToString(), "Q" + i.ToString()).FormulaR1C1.ToString() == "0")
                    {
                        _WorkSheet.get_Range("Q" + i.ToString(), "Q" + i.ToString()).FormulaR1C1 = ""; //優化指標線等於0的不顯示

                    }
                    if (_WorkSheet.get_Range("U" + i.ToString(), "U" + i.ToString()).FormulaR1C1.ToString() == "0")
                    {
                        _WorkSheet.get_Range("U" + i.ToString(), "U" + i.ToString()).FormulaR1C1 = ""; //極佳指標線等於0的不顯示

                    }
                }
                this.SetCellBorder("A4", "AG" + (this._GridView.RowCount + 5).ToString(), true, true, true, true, true, true);

                //工序名稱Column居左
                this._WorkRange = this._WorkSheet.get_Range("F6", "F" + (this._GridView.RowCount + 6));
                this._WorkRange.Select();
                this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
                this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
                this._WorkRange.WrapText = true;
            }

            //設置多頁共用一個表頭
            this._WorkSheet.PageSetup.PrintTitleRows = "$1:$3";
        }
        #endregion

        #region 主工序表設置列印格式
        /// <summary>
        /// 主工序表設置列印格式
        /// </summary>
        private void SetMainTablePrintFormat()
        {
            this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlLandscape; //設置頁面橫向打印
            //this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14@Line Balancing Engineering Sheet / &""宋体,加粗""拉平衡工程表";
            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14IE &""宋体,加粗""工序單&""Arial,加粗"" - &""宋体,加粗""拉平衡工程表&""Arial,加粗"" / IE Boo - Line Balancing";
            this._WorkSheet.PageSetup.TopMargin = this._Excel.InchesToPoints(0.78740157480315);
            this._WorkSheet.PageSetup.BottomMargin = this._Excel.InchesToPoints(0.78740157480315);
            this._WorkSheet.PageSetup.HeaderMargin = this._Excel.InchesToPoints(0.511811023622047);
            this._WorkSheet.PageSetup.FooterMargin = this._Excel.InchesToPoints(0.511811023622047);
            this._WorkSheet.PageSetup.LeftMargin = this._Excel.InchesToPoints(0);
            this._WorkSheet.PageSetup.RightMargin = this._Excel.InchesToPoints(0);

            //this._WorkSheet.PageSetup.CenterHorizontally = true;
            //this._WorkSheet.PageSetup.CenterVertically = true;

            this._WorkSheet.PageSetup.Zoom = 64;
            //this._WorkSheet.PageSetup.PrintGridlines = true;
        }
        #endregion

        #region 附表設置列印格式
        /// <summary>
        /// 附表設置列印格式
        /// </summary>
        private void SetAdjTablePrintFormat()
        {
            this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlLandscape; //設置頁面橫向打印
            this._WorkSheet.PageSetup.BottomMargin = 0.18;
            this._WorkSheet.PageSetup.TopMargin = 0.18;
            this._WorkSheet.PageSetup.LeftMargin = 0.18;
            this._WorkSheet.PageSetup.RightMargin = 0.18;
            //this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14@Line Balancing Engineering Sheet / &""宋体,加粗""拉平衡工程表";
            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,加粗""&14IE &""宋体,加粗""工序單&""Arial,加粗"" - &""宋体,加粗""拉平衡工程表&""Arial,加粗"" / IE Boo - Line Balancing";
            this._WorkSheet.PageSetup.CenterHorizontally = true;
            this._WorkSheet.PageSetup.CenterVertically = true;
            this._WorkSheet.PageSetup.BlackAndWhite = false;
            this._WorkSheet.PageSetup.Zoom = false;
            this._WorkSheet.PageSetup.FitToPagesWide = 1;
            this._WorkSheet.PageSetup.FitToPagesTall = 1;
        }
        #endregion

        #region 調整附表格式
        /// <summary>
        /// 調整附表格式
        /// </summary>
        private void AdjustAdjTableFormat()
        {
            //調整第二行和第三行風格
            ((PHExcel.Range)this._WorkSheet.Rows[2, Missing.Value]).RowHeight = 32;  //客戶款號　行標題
            ((PHExcel.Range)this._WorkSheet.Rows[3, Missing.Value]).RowHeight = 8;   //隔開行
            ((PHExcel.Range)this._WorkSheet.Rows[4, Missing.Value]).RowHeight = 32;  //Title第一行
            ((PHExcel.Range)this._WorkSheet.Rows[5, Missing.Value]).RowHeight = 32;  //Title第二行
            ((PHExcel.Range)this._WorkSheet.Rows[6, Missing.Value]).RowHeight = 22;  //Title第三行

            for (int i = 7; i <= 23; i++)
            {
                ((PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value]).RowHeight = 22;
            }
            ((PHExcel.Range)this._WorkSheet.Rows[24, Missing.Value]).RowHeight = 8;

            if (this._PrintAdjTable)
            {
                this._WorkSheet.get_Range("E7", "I10").NumberFormatLocal = "0.0000_ ";    //GSDSAH、A組、B組、C組合計
                this._WorkSheet.get_Range("M7", "W23").NumberFormatLocal = "G/通用格式";  //工作位格式
                this._WorkSheet.get_Range("E11", "I11").NumberFormatLocal = "0.00_ ";     //拉節時產量(件)
                this._WorkSheet.get_Range("E12", "I12").NumberFormatLocal = "G/通用格式"; //勞動力合計
                this._WorkSheet.get_Range("E13", "I13").NumberFormatLocal = "0.00_ ";     //Floater合計
                this._WorkSheet.get_Range("E14", "I14").NumberFormatLocal = "0.00_ ";     //工作位(衣車+手工台)合計
                this._WorkSheet.get_Range("E15", "I17").NumberFormatLocal = "0.0000_ ";   //最大樽頸 、 最小樽頸SAH、 最小SAH
                this._WorkSheet.get_Range("E18", "I18").NumberFormatLocal = "0.00%";      //LB%拉平衡率
                this._WorkSheet.get_Range("E19", "I20").NumberFormatLocal = "0.0000_ ";   //指標線、SAH中位數(參考)
                this._WorkSheet.get_Range("E21", "I22").NumberFormatLocal = "G/通用格式"; //MTM最大值、MTM(104-120)人數
                this._WorkSheet.get_Range("E23", "N23").NumberFormatLocal = "0.00%";      //MTM(104-120)人數百分比

                this.SetCellBorder("A4", "W23", true, true, true, true, false, false);
                this.SetCellBorder("K4", "W23", true, true, true, true, false, false);

                ((PHExcel.Range)this._WorkSheet.Columns["A", Missing.Value]).ColumnWidth = 3.57;
                ((PHExcel.Range)this._WorkSheet.Columns["M", Missing.Value]).ColumnWidth = 9; //未拆夹LB(数量)Column设宽一些

                this._WorkRange = this._WorkSheet.get_Range("A1", "W100");
                this._WorkRange.Font.Name = "Arial";
                this._WorkRange.Font.Size = 10;

                ////設置多頁共用一個表頭
                //if (this._PrintMainTable && this._PrintAdjTable)
                //{
                //    this._WorkSheet.PageSetup.PrintTitleRows = "$1:$3";
                //}
            }
        }
        #endregion       
    }
}
