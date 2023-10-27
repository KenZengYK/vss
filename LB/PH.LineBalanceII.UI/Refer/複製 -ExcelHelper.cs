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

        #region ���캯��
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

        #region ̎��Excel��ʽ
        /// <summary>
        /// ̎��Excel��ʽ
        /// </summary>
        public void ProcessExcelFormat()
        {
            try
            {
                _Excel = new PHExcel.Application();
                PHExcel.Workbook workbook;
                this._Excel.Application.DisplayAlerts = false; //�P�]��ʾ
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
                    MessageBox.Show("����Excelʧ��", "��ʾ", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                _WorkBooks = _Excel.Workbooks;
                _WorkBook = _Excel.ActiveWorkbook;

                _WorkSheet = (PHExcel.Worksheet)workbook.ActiveSheet;

                if (this._PrintMainTable)
                {

                    //������^
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    ((PHExcel.Range)_WorkSheet.Rows[1, Missing.Value]).Insert(PHExcel.XlInsertShiftDirection.xlShiftDown, Missing.Value);
                    this._WorkRange = _WorkSheet.get_Range("A1", "AC1");
                    this._WorkRange.Select();
                    this._WorkRange.Merge(Missing.Value);
                 
                    if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Simplified ||
                        PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Trad)
                    {
                        this._WorkRange.FormulaR1C1 = "�M�Ϲ���� " + this._Master.ZH;
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

                    //�͑���̖
                    this.DrawCellWithBorder("A2", "B2", this._StyleMasterDetailForm.lblCustomerStyle.Text, true);
                    this.DrawCellWithBorder("C2", "D2", this._Master.KHKH, true);

                    //PH��̖
                    this.DrawCellWithBorder("E2", "E2", this._StyleMasterDetailForm.lblPHStyle.Text, true);
                    this.DrawCellWithBorder("F2", "G2", this._Master.PHKH, true);

                    //�bƷe
                    this.DrawCellWithBorder("H2", "I2", this._StyleMasterDetailForm.lblCategory.Text, true);
                    this.DrawCellWithBorder("J2", "K2", this._Master.CPLB, true);

                    //��ʿ����(��ֵ)
                    this.DrawCellWithBorder("L2", "M2", this._StyleMasterDetailForm.lblSize.Text, true);
                    this.DrawCellWithBorder("N2", "O2", this._Master.SizeYJ, true);

                    //�M��
                    this.DrawCellWithBorder("P2", "Q2", this._StyleMasterDetailForm.lblZH.Text, true);
                    this.DrawCellWithBorder("R2", "X2", this._Master.ZH, true);

                    //�汾
                    this.DrawCellWithBorder("Y2", "Z2", this._StyleMasterDetailForm.lblEdition.Text, true);
                    this.DrawCellWithBorder("AA2", "AA2", this._Master.Edition.ToString(), false);

                    //ʹ��
                    this.DrawCellWithBorder("AB2", "AC2", this._StyleMasterDetailForm.lblUsed.Text, true);
                    this.DrawCellWithBorder("AD2", "AG2", this._Master.IsUsed.ToString() == "True" ? "��" : "", true);

                    //̎��A�����r��Ԫ��ρK
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
                                this._WorkRange = _WorkSheet.get_Range("N" + BeginOpRowIndex, "N" + BeginOpRowIndex); //��������O�ñ����ɫ
                                this._WorkRange.Interior.ColorIndex = 38;
                            }

                            NextCFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 34]).FormulaR1C1.ToString();

                            while (NextCFlag != "" && CurCFlag == NextCFlag)
                            {
                                EndOpRowIndex = (i + 1).ToString();

                                this._WorkRange = _WorkSheet.get_Range("N" + EndOpRowIndex, "N" + EndOpRowIndex); //��������O�ñ����ɫ
                                this._WorkRange.Interior.ColorIndex = 38;

                                i++;
                                NextCFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 34]).FormulaR1C1.ToString();
                            }

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "" && EndOpRowIndex != "-19" && EndOpRowIndex != "")
                            {
                                this.MergeCell("A" + BeginOpRowIndex, "A" + EndOpRowIndex);  //�M�eGSD      (�ρK��Ԫ��)
                                this.MergeCell("B" + BeginOpRowIndex, "B" + EndOpRowIndex);  //�M�e������   (�ρK��Ԫ��)
                                this.MergeCell("C" + BeginOpRowIndex, "C" + EndOpRowIndex);  //��̖         (�ρK��Ԫ��)
                                this.MergeCell("E" + BeginOpRowIndex, "E" + EndOpRowIndex);  //�����̖     (�ρK��Ԫ��)
                                this.MergeCell("F" + BeginOpRowIndex, "F" + EndOpRowIndex);  //�������Q     (�ρK��Ԫ��)
                                this.MergeCell("H" + BeginOpRowIndex, "H" + EndOpRowIndex);  //��܇���a     (�ρK��Ԫ��)
                                this.MergeCell("I" + BeginOpRowIndex, "I" + EndOpRowIndex);  //��܇�N�     (�ρK��Ԫ��)
                                this.MergeCell("J" + BeginOpRowIndex, "J" + EndOpRowIndex);  //��܇����     (�ρK��Ԫ��)
                                this.MergeCell("K" + BeginOpRowIndex, "K" + EndOpRowIndex);  //GSD SAH/���� (�ρK��Ԫ��)
                                this.MergeCell("L" + BeginOpRowIndex, "L" + EndOpRowIndex);  //���r�a��     (�ρK��Ԫ��)

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
                    while (i < this._GridView.RowCount + 6)  //��̎Ҫ�[�v�ɴΣ���Ҫ̎���Ȳ��֊A�؁����r
                    {
                        string YHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 18]).FormulaR1C1.ToString();
                        string BisYHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 22]).FormulaR1C1.ToString();
                        string PJHMTM = ((PHExcel.Range)_WorkSheet.Cells[i, 27]).FormulaR1C1.ToString();

                        //̎�탞��SAH�б����ɫ
                        if (YHMTM != null && YHMTM != "" && Convert.ToInt32(YHMTM) > 100)
                        {
                            this._WorkRange = _WorkSheet.get_Range("S" + i, "S" + i);
                            this._WorkRange.Interior.ColorIndex = 6;
                        }

                        //̎����ȃ���SAH�б����ɫ
                        if (BisYHMTM != YHMTM)
                        {
                            this._WorkRange = _WorkSheet.get_Range("W" + i, "W" + i);
                            this._WorkRange.Interior.ColorIndex = 39;
                        }


                        //̎��ƽ׼��SAH�б����ɫ
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
                                this._WorkRange = _WorkSheet.get_Range("O" + BeginOpRowIndex, "O" + BeginOpRowIndex);//�A�������O�ñ����ɫ
                                this._WorkRange.Interior.ColorIndex = 34;
                            }

                            NextJFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 35]).FormulaR1C1.ToString();

                            while (NextJFlag != "" && CurJFlag == NextJFlag)
                            {
                                EndOpRowIndex = (i + 1).ToString();

                                this._WorkRange = _WorkSheet.get_Range("O" + EndOpRowIndex, "O" + EndOpRowIndex); //�A�������O�ñ����ɫ
                                this._WorkRange.Interior.ColorIndex = 34;

                                i++;
                                NextJFlag = ((PHExcel.Range)_WorkSheet.Cells[i + 1, 35]).FormulaR1C1.ToString();
                            }

                            if (BeginOpRowIndex != "-19" && BeginOpRowIndex != "" && EndOpRowIndex != "-19" && EndOpRowIndex != "")
                            {
                                this.MergeCell("O" + BeginOpRowIndex, "O" + EndOpRowIndex);      //�ASAH/����         (�ρK��Ԫ��)
                                this.MergeCell("P" + BeginOpRowIndex, "P" + EndOpRowIndex);      //BN����             (�ρK��Ԫ��)
                                this.MergeCell("Q" + BeginOpRowIndex, "Q" + EndOpRowIndex);      //����ָ�˾�         (�ρK��Ԫ��)
                                this.MergeCell("R" + BeginOpRowIndex, "R" + EndOpRowIndex);      //����MTM            (�ρK��Ԫ��)
                                this.MergeCell("S" + BeginOpRowIndex, "S" + EndOpRowIndex);      //����SAH/����       (�ρK��Ԫ��)
                                this.MergeCell("T" + BeginOpRowIndex, "T" + EndOpRowIndex);      //������BNCX         (�ρK��Ԫ��)
                                this.MergeCell("U" + BeginOpRowIndex, "U" + EndOpRowIndex);      //�O�Ѿ�ָ�˾�       (�ρK��Ԫ��)
                                this.MergeCell("V" + BeginOpRowIndex, "V" + EndOpRowIndex);      //���ȃ���MTM        (�ρK��Ԫ��)
                                this.MergeCell("W" + BeginOpRowIndex, "W" + EndOpRowIndex);      //���ȃ���SAH        (�ρK��Ԫ��)
                                this.MergeCell("AA" + BeginOpRowIndex, "AA" + EndOpRowIndex);    //ƽ׼��MTM          (�ρK��Ԫ��)
                                this.MergeCell("AB" + BeginOpRowIndex, "AB" + EndOpRowIndex);    //ƽ׼��SAH          (�ρK��Ԫ��)
                                this.MergeCell("AC" + BeginOpRowIndex, "AC" + EndOpRowIndex);    //�ڄ���(����)       (�ρK��Ԫ��)

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
                                        //̎���g�r��SAH�б����ɫ
                                        string JSCSAH = ((PHExcel.Range)_WorkSheet.Cells[FloatIndex, 24]).FormulaR1C1.ToString();
                                        string BisYHSAH = ((PHExcel.Range)_WorkSheet.Cells[FloatIndex, 23]).FormulaR1C1.ToString();
                                        if (JSCSAH != BisYHSAH)
                                        {
                                            this._WorkRange = _WorkSheet.get_Range("X" + FloatIndex, "X" + EndOpRowIndex);
                                            this._WorkRange.Interior.ColorIndex = 37;
                                        }

                                        this.MergeCell("Y" + FloatIndex, "Y" + EndOpRowIndex);   //�g�r��BN����       (�ρK��Ԫ��)
                                        this.MergeCell("X" + FloatIndex, "X" + EndOpRowIndex);   //�g�r��SAH          (�ρK��Ԫ��)
                                        this.MergeCell("AD" + FloatIndex, "AD" + EndOpRowIndex); //�ڄ�����̖         (�ρK��Ԫ��)
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

                    //̎����������Footer����
                    int row = this._GridView.RowCount + 7;
                    this.SetCellBorder("A" + row.ToString(), "AG" + (row + 7).ToString(), true, true, true, true, false, false);

                    this.MergeCell("A" + row, "M" + row, this._StyleMasterDetailForm.label1.Text); //�D���f��
                    this._WorkSheet.get_Range("A" + row, "M" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    row++;
                    this.MergeCell("A" + row, "C" + row, this._StyleMasterDetailForm.lblExplain.Text); //��ע
                    this._WorkSheet.get_Range("A" + row, "C" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    row++;
                    this.MergeCell("A" + row, "D" + row, this._StyleMasterDetailForm.lblSplit.Text);     //��
                    this.MergeCell("F" + row, "F" + row, this._StyleMasterDetailForm.lblMerge.Text);     //�A
                    this.MergeCell("H" + row, "J" + row, this._StyleMasterDetailForm.lblOptimize.Text);  //����
                    this.MergeCell("L" + row, "N" + row, this._StyleMasterDetailForm.lblBest.Text);      //�O��

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblDetail.Text, true);       //��ʩLB���EժҪ
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand10.Caption, true);   //δ��LB
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand11.Caption, true);   //���ALB
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand12.Caption, true);   //����LB
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand13.Caption, true);  //�O��LB(���ȃ���)
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.ChildStyleProcedureListForm.gridBand14.Caption, true); //�O��LB(�g�r��)

                    row++;
                    this.MergeCell("A" + row, "D" + (row + 1), "", 38); //����ɫ
                    this.MergeCell("F" + row, "F" + (row + 1), "", 34); //�A���ɫ
                    this.MergeCell("H" + row, "J" + (row + 1), "", 6);  //�������ɫ
                    this.MergeCell("L" + row, "N" + (row + 1), "", 39); //�O�ѵ��ɫ

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblWorkforce.Text, true); //�ڄ�����Ӌ
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM7_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM7_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM7_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM7_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM7_Y.Text, true);

                    row++;
                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblWorkStation.Text, true); //����λ(��܇+��ʽ̨)��Ӌ
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM8_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM8_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM8_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM8_Y.Text, true);

                    row++;
                    this.MergeCell("A" + row, "D" + row, this._StyleMasterDetailForm.lblConfirm.Text); //܇�g�_�J���a

                    this.DrawCellWithBorder("P" + row, "S" + row, this._StyleMasterDetailForm.lblLBUsage.Text, true);  //LB%��ƽ����
                    this.DrawCellWithBorder("T" + row, "U" + row, this._StyleMasterDetailForm.lblJKLM13_O.Text, true);
                    this.DrawCellWithBorder("V" + row, "W" + row, this._StyleMasterDetailForm.lblJKLM13_R.Text, true);
                    this.DrawCellWithBorder("X" + row, "Y" + row, this._StyleMasterDetailForm.lblJKLM13_T.Text, true);
                    this.DrawCellWithBorder("Z" + row, "AB" + row, this._StyleMasterDetailForm.lblJKLM13_X.Text, true);
                    this.DrawCellWithBorder("AC" + row, "AG" + row, this._StyleMasterDetailForm.lblJKLM13_Y.Text, true);

                    row++;
                    this.MergeCell("C" + row, "J" + row, this._StyleMasterDetailForm.lblConfirmOp1.Text); //0 ����܇�g�_�J�˴˹���֮SAH,��δ�_�J�з����x���e�`
                    this._WorkSheet.get_Range("C" + row, "J" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
                    this.MergeCell("L" + row, "O" + row, this._StyleMasterDetailForm.lblConfirmOp2.Text); //1 ����܇�g�_�J�������_
                    this._WorkSheet.get_Range("L" + row, "O" + row).HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;

                    ////�h������Ҫ�@ʾ�������(���־�к͊A���I��)
                    ((PHExcel.Range)_WorkSheet.Cells[1, 35]).EntireColumn.Delete(0); //�h���A��־��
                    ((PHExcel.Range)_WorkSheet.Cells[1, 34]).EntireColumn.Delete(0); //�h������I��

                    this.AdjustMainTableFormat();   //�{�������ʽ
                    this.SetMainTablePrintFormat(); //��������O����ӡ��ʽ
                }

                if (this._PrintAdjTable)
                {
                    this.PrintAdjTable();          //�õ������Y��
                    this.AdjustAdjTableFormat();   //�{�������ʽ
                    this.SetAdjTablePrintFormat(); //�O�ø������ӡ��ʽ
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
                //this._Excel.Application.DisplayAlerts = true;  //�֏���ʾ
            }
            catch
            {
                MessageBox.Show("����Excelʧ�ܻ�l���e�`!", "��ʾ", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            finally
            {
                this._Excel.Quit();
            }
        }
        #endregion

        #region �L�u��߅��Ć�Ԫ��
        /// <summary>
        /// �L�u��߅��Ć�Ԫ��
        /// </summary>
        /// <param name="ACell1">Cell1</param>
        /// <param name="ACell2">Cell2</param>
        /// <param name="ACaption">�@ʾ��Caption</param>
        /// <param name="AIsMerge">�Ƿ�ρK��Ԫ��Caption</param>
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
        /// �L�u��߅��Ć�Ԫ��
        /// </summary>
        /// <param name="ACell1">Cell1</param>
        /// <param name="ACell2">Cell2</param>
        /// <param name="ACaption">�@ʾ��Caption</param>
        /// <param name="AIsMerge">�Ƿ�ρK��Ԫ��Caption</param>
        /// <param name="AColorIndex">Excel�е�Color Index</param>
        /// <param name="AIsFontBold">���w�Ƿ�Ӵ�</param>
        private void DrawCellWithBorder(object ACell1, object ACell2, string ACaption, bool AIsMerge, int AColorIndex, bool AIsFontBold)
        {
            this.DrawCellWithBorder(ACell1, ACell2, ACaption, AIsMerge);
            this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
            this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
            this._WorkRange.Interior.ColorIndex = AColorIndex;
            this._WorkRange.Font.Bold = AIsFontBold;
        }
        #endregion

        #region �O�ÝM��ʽ߅��(�ϡ��¡����ҡ�ˮƽ����ֱ)
        /// <summary>
        /// �O�ÝM��ʽ߅��(�ϡ��¡����ҡ�ˮƽ����ֱ)
        /// </summary>
        /// <param name="ACell1">Ҫ�O�õ���ʼ��Ԫ��</param>
        /// <param name="ACell2">Ҫ�O�õĽ�ֹ��Ԫ��</param>
        /// <param name="AEdgeTop">��߅��</param>
        /// <param name="AEdgeBottom">��߅��</param>
        /// <param name="AEdgeLeft">��߅��</param>
        /// <param name="AEdgeRigth">��߅��</param>
        /// <param name="AInsideVertical">��ֱ߅��</param>
        /// <param name="AInsideHorizontal">ˮƽ߅��</param>
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

        #region �ρ�ָ���Ć�Ԫ��
        /// <summary>
        /// �ρ�ָ���Ć�Ԫ��
        /// </summary>
        /// <param name="ACell1">�ρK����ʼ��Ԫ��</param>
        /// <param name="ACell2">�ρK�Ľ�ֹ��Ԫ��</param>
        private void MergeCell(object ACell1, object ACell2)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
        }

        /// <summary>
        /// �ρ�ָ���Ć�Ԫ��,�Kָ���@ʾ�ı�
        /// </summary>
        /// <param name="ACell1">�ρK����ʼ��Ԫ��</param>
        /// <param name="ACell2">�ρK�Ľ�ֹ��Ԫ��</param>
        /// <param name="ACaption">��Ԫ���@ʾ���ı�</param>
        private void MergeCell(object ACell1, object ACell2, string ACaption)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.FormulaR1C1 = ACaption;
            range.Merge(Missing.Value);
        }

        /// <summary>
        /// �ρ�ָ���Ć�Ԫ��,�Kָ���@ʾ�ı��ͱ������ɫ
        /// </summary>
        /// <param name="ACell1">�ρK����ʼ��Ԫ��</param>
        /// <param name="ACell2">�ρK�Ľ�ֹ��Ԫ��</param>
        /// <param name="ACaption">��Ԫ���@ʾ���ı�</param>
        /// <param name="AColorIndex">������ɫ������</param>
        private void MergeCell(object ACell1, object ACell2, string ACaption, object AColorIndex)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
            range.FormulaR1C1 = ACaption;
            range.Interior.ColorIndex = AColorIndex;
        }

        /// <summary>
        /// �ρ�ָ���Ć�Ԫ��
        /// </summary>
        /// <param name="ACell1">�ρK����ʼ��Ԫ��</param>
        /// <param name="ACell2">�ρK�Ľ�ֹ��Ԫ��</param>
        /// <param name="AColorIndex">������ɫ������</param>
        private void MergeCell(object ACell1, object ACell2, object AColorIndex)
        {
            PHExcel.Range range = _WorkSheet.get_Range(ACell1, ACell2);
            range.Select();
            range.Merge(Missing.Value);
            range.Interior.ColorIndex = AColorIndex;
        }
        #endregion

        #region ��ӡ����
        /// <summary>
        /// ��ӡ����
        /// </summary>
        private void PrintAdjTable()
        {
            if (this._PrintMainTable)
            {
                this._WorkSheet = (PHExcel.Worksheet)this._Excel.Sheets.Add(Missing.Value, this._WorkSheet, Missing.Value, Missing.Value);
            }

            int row = 1;
            //������^
            this._WorkRange = ((PHExcel.Worksheet)this._Excel.ActiveWorkbook.ActiveSheet).get_Range("A1", "W1");
            this._WorkRange.Select();
            this._WorkRange.Merge(Missing.Value);
           
            if (PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Simplified ||
                PH.AuthManage.Utils.AuthController.phLanguage == PH.AuthManage.BO.PHLanguage.Chinese_Trad)
            {
                this._WorkRange.FormulaR1C1 = "�M�Ϲ���� " + this._Master.ZH;
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
            //�͑���̖
            this.DrawCellWithBorder("A2", "B2", this._StyleMasterDetailForm.lblCustomerStyle.Text, true);
            this.DrawCellWithBorder("C2", "E2", this._Master.KHKH, true);

            //PH��̖
            this.DrawCellWithBorder("E2", "E2", this._StyleMasterDetailForm.lblPHStyle.Text, true);
            this.DrawCellWithBorder("F2", "G2", this._Master.PHKH, true);

            //�bƷe
            this.DrawCellWithBorder("H2", "H2", this._StyleMasterDetailForm.lblCategory.Text, true);
            this.DrawCellWithBorder("I2", "I2", this._Master.CPLB, true);

            //��ʿ����(��ֵ)
            this.DrawCellWithBorder("I2", "K2", this._StyleMasterDetailForm.lblSize.Text, true);
            this.DrawCellWithBorder("L2", "M2", this._Master.SizeYJ, true);

            //�M��
            this.DrawCellWithBorder("N2", "N2", this._StyleMasterDetailForm.lblZH.Text, true);
            this.DrawCellWithBorder("O2", "S2", this._Master.ZH, true);

            //�汾
            this.DrawCellWithBorder("T2", "T2", this._StyleMasterDetailForm.lblEdition.Text, true);
            this.DrawCellWithBorder("U2", "U2", this._Master.Edition.ToString(), false);

            //ʹ��
            this.DrawCellWithBorder("V2", "V2", this._StyleMasterDetailForm.lblUsed.Text, true);
            this.DrawCellWithBorder("W2", "W2", this._Master.IsUsed.ToString() == "True" ? "��" : "", true);

            row += 2;

            //this.SetCellBorder("A" + row.ToString(), "AG" + (row + 19).ToString(), true, true, true, true, true, true);
            this.DrawCellWithBorder("A" + row, "D" + (row + 2), this._StyleMasterDetailForm.lblDetail.Text, true); // "��ʩLB���E����"
            this.DrawCellWithBorder("E" + row, "E" + (row + 2), this._StyleMasterDetailForm.lblNonLB.Text, true);  // "�˜�SAHδ��LB"
            this.DrawCellWithBorder("F" + row, "F" + (row + 2), this._StyleMasterDetailForm.lblCJLB.Text, true);   // "���ASAH���ALB"
            this.DrawCellWithBorder("G" + row, "G" + (row + 2), this._StyleMasterDetailForm.lblYHLB.Text, true);   // "����SAH����LB"
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblBestLB.Text, true);       // "�O   ��"

            this.DrawCellWithBorder("K" + row, "L" + row, this._StyleMasterDetailForm.gridBandNonLB.Caption, true);   //����λ
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.gridBand1.Caption, true);       //δ���ALB
            this.DrawCellWithBorder("N" + row, "P" + row, this._StyleMasterDetailForm.gridBand2.Caption, true);       //���ALB
            this.DrawCellWithBorder("Q" + row, "S" + row, this._StyleMasterDetailForm.gridBand3.Caption, true);      //����LB
            this.DrawCellWithBorder("T" + row, "W" + row, this._StyleMasterDetailForm.gridBand5.Caption, true);     //�O��LB

            row++;
            this.DrawCellWithBorder("H" + row, "H" + (row + 1), this._StyleMasterDetailForm.lblBisYH.Text, true);   // "���ȃ���"
            this.DrawCellWithBorder("I" + row, "I" + (row + 1), this._StyleMasterDetailForm.lblJSC.Text, true);     // "�g�r��"
            this.DrawCellWithBorder("K" + row, "K" + (row + 1), this._StyleMasterDetailForm.bandColNonLBCode.Caption, true); //���a
            this.DrawCellWithBorder("L" + row, "L" + (row + 1), this._StyleMasterDetailForm.bandColNonLBType.Caption, true); //��܇�N�
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.gridBand6.Caption, true);     //δ���ALB ����(��܇+�¹�̨)
            this.DrawCellWithBorder("N" + row, "P" + row, this._StyleMasterDetailForm.gridBand24.Caption, true);    //���ALB ����(��܇+�¹�̨)
            this.DrawCellWithBorder("Q" + row, "S" + row, this._StyleMasterDetailForm.gridBand25.Caption, true);   //����LB ����(��܇+�¹�̨)
            this.DrawCellWithBorder("T" + row, "W" + row, this._StyleMasterDetailForm.gridBand26.Caption, true);  //�O��LB ����(��܇+�¹�̨)

            row++;
            this.DrawCellWithBorder("M" + row, "M" + row, this._StyleMasterDetailForm.bandColNonLBCount.Caption, true); //δ���LB(����)

            this.DrawCellWithBorder("N" + row, "N" + row, this._StyleMasterDetailForm.bandedGridColumn7.Caption, true); //���ALB(���^)
            this.DrawCellWithBorder("O" + row, "O" + row, this._StyleMasterDetailForm.bandedGridColumn8.Caption, true); //���ALB(֧Ԯ�^)
            this.DrawCellWithBorder("P" + row, "P" + row, this._StyleMasterDetailForm.bandedGridColumn9.Caption, true); //���ALB(����)

            this.DrawCellWithBorder("Q" + row, "Q" + row, this._StyleMasterDetailForm.bandedGridColumn10.Caption, true); //����LB(���^)
            this.DrawCellWithBorder("R" + row, "R" + row, this._StyleMasterDetailForm.bandedGridColumn11.Caption, true); //����LB(֧Ԯ�^)
            this.DrawCellWithBorder("S" + row, "S" + row, this._StyleMasterDetailForm.bandedGridColumn12.Caption, true); //����LB(����)

            this.DrawCellWithBorder("T" + row, "T" + row, this._StyleMasterDetailForm.bandedGridColumn13.Caption, true); //�O��LB(���^)
            this.DrawCellWithBorder("U" + row, "U" + row, this._StyleMasterDetailForm.bandedGridColumn14.Caption, true); //�O��LB(֧Ԯ�^)
            this.DrawCellWithBorder("V" + row, "V" + row, this._StyleMasterDetailForm.bandedGridColumn15.Caption, true); //�O��LB(�⹤�^)
            this.DrawCellWithBorder("W" + row, "W" + row, this._StyleMasterDetailForm.bandedGridColumn16.Caption, true); //�O��LB(����)

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblGSD.Text, true); // "GSDSAH �� Ӌ(�������bSAH)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM1_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM1_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM1_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM1_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM1_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblAGroup.Text, true); //"A �M SAH СӋ"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM2_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM2_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM2_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM2_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM2_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblBGroup.Text, true); //"B �M SAH СӋ"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM3_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM3_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM3_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM3_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM3_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblCGroup.Text, true); //"C �M SAH СӋ"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM4_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM4_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM4_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM4_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM4_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblSection.Text, true); // "�����r�a��(��)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM6_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM6_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM6_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM6_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM6_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row.ToString(), this._StyleMasterDetailForm.lblWorkforce.Text, true);  //"�ڄ�����Ӌ"
            this.DrawCellWithBorder("E" + row, "E" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row.ToString(), this._StyleMasterDetailForm.lblJKLM7_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row.ToString(), "D" + row.ToString(), this._StyleMasterDetailForm.lblFloater.Text, true); // "Floater��Ӌ"
            this.DrawCellWithBorder("E" + row.ToString(), "E" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("F" + row.ToString(), "F" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("G" + row.ToString(), "G" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("H" + row.ToString(), "H" + row.ToString(), "N.A.", true);
            this.DrawCellWithBorder("I" + row.ToString(), "I" + row.ToString(), this._StyleMasterDetailForm.lblSumFloater.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblWorkStation.Text, true); // "����λ(��܇+�ֹ�̨)��Ӌ"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM8_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM8_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM8_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM8_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM8_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMaxSAH.Text, true);  //"������i SAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM9_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM9_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM9_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM9_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM9_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMinZJ.Text, true); // "��С���iSAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM21_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM21_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM21_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM21_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM21_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblMinSAH.Text, true); // "��СSAH"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM10_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM10_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM10_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM10_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM10_Y.Text, true);
            row++;

            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblLBUsage.Text, true); // "LB%��ƽ����"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM13_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM13_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM13_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM13_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM13_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblLine.Text, true); // "����ָ�˾�/�O��ָ�˾�"
            this.DrawCellWithBorder("E" + row, "E" + row, "N.A.", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "N.A.", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM20_T.Text, true);
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM20_X.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "D" + row, this._StyleMasterDetailForm.lblUsage.Text, true); // "SAH��λ��(����)"
            this.DrawCellWithBorder("E" + row, "E" + row, this._StyleMasterDetailForm.lblJKLM14_O.Text, true);
            this.DrawCellWithBorder("F" + row, "F" + row, this._StyleMasterDetailForm.lblJKLM14_R.Text, true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM14_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM14_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM14_Y.Text, true);

            row++;
            this.DrawCellWithBorder("A" + row, "A" + (row + 2), this._StyleMasterDetailForm.label43.Text, true, 6, false);

            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblMaxMTM.Text, true, 36, false); // "MTM���ֵ"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM15_T.Text, true);
            this.DrawCellWithBorder("H" + row, "I" + row, this._StyleMasterDetailForm.lblJKLM15_X.Text, true);

            row++;
            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblWorker1.Text, true, 36, false); // "MTM(104-120)�˔�"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM16_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM16_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, "", true);

            row++;
            this.DrawCellWithBorder("B" + row, "D" + row, this._StyleMasterDetailForm.lblWorker2.Text, true, 36, false); // "MTM(104-120)�˔��ٷֱ�"
            this.DrawCellWithBorder("E" + row, "E" + row, "", true);
            this.DrawCellWithBorder("F" + row, "F" + row, "", true);
            this.DrawCellWithBorder("G" + row, "G" + row, this._StyleMasterDetailForm.lblJKLM17_T.Text, true);
            this.DrawCellWithBorder("H" + row, "H" + row, this._StyleMasterDetailForm.lblJKLM17_X.Text, true);
            this.DrawCellWithBorder("I" + row, "I" + row, "", true);

            row++;
            this.MergeCell("A" + row, "W" + row);
            ((PHExcel.Range)this._WorkSheet.Rows[row, Missing.Value]).RowHeight = 8;

            this.DrawCellWithBorder("A" + (row + 1), "C" + (row + 2), this._StyleMasterDetailForm.lblPrepareMan.Text, true); //�u�l��
            this.DrawCellWithBorder("D" + (row + 1), "G" + (row + 2), "", true);
            this.DrawCellWithBorder("H" + (row + 1), "J" + (row + 2), this._StyleMasterDetailForm.lblIEConfirm.Text, true); //IE���_�J
            this.DrawCellWithBorder("K" + (row + 1), "N" + (row + 2), "", true);
            this.DrawCellWithBorder("O" + (row + 1), "Q" + (row + 2), this._StyleMasterDetailForm.lblWorkShopConfirm.Text, true); //���b���_�J
            this.DrawCellWithBorder("R" + (row + 1), "W" + (row + 2), "", true);

            this.DrawCellWithBorder("A" + (row + 3), "C" + (row + 4), this._StyleMasterDetailForm.lblDate.Text, true); //�u�l����
            this.DrawCellWithBorder("D" + (row + 3), "G" + (row + 4), "", true);
            this.DrawCellWithBorder("H" + (row + 3), "J" + (row + 4), this._StyleMasterDetailForm.lblDate1.Text, true); //����
            this.DrawCellWithBorder("K" + (row + 3), "N" + (row + 4), "", true);
            this.DrawCellWithBorder("O" + (row + 3), "Q" + (row + 4), this._StyleMasterDetailForm.lblDate2.Text, true); //����
            this.DrawCellWithBorder("R" + (row + 3), "W" + (row + 4), "", true);

            //̎����λ
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

                    this.DrawCellWithBorder("K" + row, "K" + row, obj.YCDM, false);          //��܇���a
                    this.DrawCellWithBorder("L" + row, "L" + row, obj.YCType, false);        //��܇�N�

                    this.DrawCellWithBorder("M" + row, "M" + row, obj.NoneLBYCCount.ToString(), true);  //δ���ALB ����(��܇+�ֹ�̨)

                    this.DrawCellWithBorder("N" + row, "N" + row, obj.CJLBMainAreaYCCount.ToString(), false);     //���ALB(���^)
                    this.DrawCellWithBorder("O" + row, "O" + row, obj.CJLBSupportAreaYCCount.ToString(), false);  //���ALB(֧Ԯ�^)
                    this.DrawCellWithBorder("P" + row, "P" + row, obj.CJLBYCCount.ToString(), true);              //���ALB(����)

                    this.DrawCellWithBorder("Q" + row, "Q" + row, obj.YHLBMainAreaYCCount.ToString(), false);     //����LB(���^)
                    this.DrawCellWithBorder("R" + row, "R" + row, obj.YHLBSupportAreaYCCount.ToString(), false);  //����LB(֧Ԯ�^)
                    this.DrawCellWithBorder("S" + row, "S" + row, obj.YHLBYCCount.ToString(), true);              //����LB(����)

                    this.DrawCellWithBorder("T" + row, "T" + row, obj.BestLBMainAreaYCCount.ToString(), false);     //�O��LB(���^)
                    this.DrawCellWithBorder("U" + row, "U" + row, obj.BestLBSupportAreaYCCount.ToString(), false);  //�O��LB(֧Ԯ�^)
                    this.DrawCellWithBorder("V" + row, "V" + row, obj.BestLBFloaterAreaYCCount.ToString(), false);  //�O��LB(�⹤�^)
                    this.DrawCellWithBorder("W" + row, "W" + row, obj.BestLBYCCount.ToString(), true);              //�O��LB(����)

                    row++;
                }
                //̎����λ��Ӌ
                this.DrawCellWithBorder("K" + row, "L" + row, "��Ӌ", true);
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

            #region ������
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
            //this.DrawCellWithBorder("AB" + row, "AE" + row, this._StyleMasterDetailForm.gridBandFloater.Caption, true, 40, false); // "�⹤����λ"

            //row++;
            //this.DrawCellWithBorder("AB" + row, "AB" + row, this._StyleMasterDetailForm.bandCoFloaterCode.Caption, true, 40, false); // "���a"
            //this.DrawCellWithBorder("AC" + row, "AC" + row, this._StyleMasterDetailForm.bandCoFloaterType.Caption, true, 40, false); // "�N�"
            //this.DrawCellWithBorder("AD" + row, "AE" + row, this._StyleMasterDetailForm.bandCoFloaterCount.Caption, true, 40, false); // "����"

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

        #region �{���������ĸ�ʽ
        /// <summary>
        /// �{���������ĸ�ʽ
        /// </summary>
        private void AdjustMainTableFormat()
        {
            //�{���ڶ��к͵������L��
            ((PHExcel.Range)this._WorkSheet.Rows[2, Missing.Value]).RowHeight = 32;
            ((PHExcel.Range)this._WorkSheet.Rows[3, Missing.Value]).RowHeight = 8;

            if (this._PrintMainTable)
            {
                for (int i = 4; i <= 5; i++) //�{�����}�е��L��
                {
                    this._WorkRange = (PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value];
                    this._WorkRange.Select();
                    this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignCenter;
                    this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
                    this._WorkRange.Interior.ColorIndex = 0;
                    this._WorkRange.RowHeight = 32;
                }

                this._WorkSheet.get_Range("L6", "L" + this._GridView.RowCount).NumberFormatLocal = "0.00_ ";     //���r�b��
                this._WorkSheet.get_Range("K6", "K" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //�˜� SAH/����
                this._WorkSheet.get_Range("N6", "N" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //��SAH /����
                this._WorkSheet.get_Range("O6", "O" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //�ASAH /����
                this._WorkSheet.get_Range("S6", "S" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //����SAH /����
                this._WorkSheet.get_Range("W6", "W" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //���ȃ���SAH /����
                this._WorkSheet.get_Range("X6", "X" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ ";   //�g�r�� SAH /����
                this._WorkSheet.get_Range("AB6", "AB" + this._GridView.RowCount).NumberFormatLocal = "0.0000_ "; //ƽ׼�� SAH /����


                ((PHExcel.Range)this._WorkSheet.Rows[this._GridView.RowCount + 6, Missing.Value]).RowHeight = 8;
                ((PHExcel.Range)this._WorkSheet.Rows[this._GridView.RowCount + 14, Missing.Value]).RowHeight = 8;

                //�{�����w�L��
                for (int i = 6; i <= this._GridView.RowCount + 5; i++)
                {
                    //�Ԅ��{���и�,׌�������QColumn̫�L�r�����Ԅ��{���и�(�и� = Excel�Ԅ��и� + 8)
                    this._WorkRange = (PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value];
                    this._WorkRange.AutoFit();
                    this._WorkRange.RowHeight = Convert.ToInt32(this._WorkRange.RowHeight) + 8;
                    //                    this._WorkRange.RowHeight = 20;

                    if (_WorkSheet.get_Range("Q" + i.ToString(), "Q" + i.ToString()).FormulaR1C1.ToString() == "0")
                    {
                        _WorkSheet.get_Range("Q" + i.ToString(), "Q" + i.ToString()).FormulaR1C1 = ""; //����ָ�˾����0�Ĳ��@ʾ

                    }
                    if (_WorkSheet.get_Range("U" + i.ToString(), "U" + i.ToString()).FormulaR1C1.ToString() == "0")
                    {
                        _WorkSheet.get_Range("U" + i.ToString(), "U" + i.ToString()).FormulaR1C1 = ""; //�O��ָ�˾����0�Ĳ��@ʾ

                    }
                }
                this.SetCellBorder("A4", "AG" + (this._GridView.RowCount + 5).ToString(), true, true, true, true, true, true);

                //�������QColumn����
                this._WorkRange = this._WorkSheet.get_Range("F6", "F" + (this._GridView.RowCount + 6));
                this._WorkRange.Select();
                this._WorkRange.HorizontalAlignment = PHExcel.XlHAlign.xlHAlignLeft;
                this._WorkRange.VerticalAlignment = PHExcel.XlVAlign.xlVAlignCenter;
                this._WorkRange.WrapText = true;
            }

            //�O�ö�퓹���һ�����^
            this._WorkSheet.PageSetup.PrintTitleRows = "$1:$3";
        }
        #endregion

        #region ��������O����ӡ��ʽ
        /// <summary>
        /// ��������O����ӡ��ʽ
        /// </summary>
        private void SetMainTablePrintFormat()
        {
            this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlLandscape; //�O�����M���ӡ
            //this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,�Ӵ�""&14@Line Balancing Engineering Sheet / &""����,�Ӵ�""��ƽ�⹤�̱�";
            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,�Ӵ�""&14IE &""����,�Ӵ�""�����&""Arial,�Ӵ�"" - &""����,�Ӵ�""��ƽ�⹤�̱�&""Arial,�Ӵ�"" / IE Boo - Line Balancing";
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

        #region �����O����ӡ��ʽ
        /// <summary>
        /// �����O����ӡ��ʽ
        /// </summary>
        private void SetAdjTablePrintFormat()
        {
            this._WorkSheet.PageSetup.Orientation = PHExcel.XlPageOrientation.xlLandscape; //�O�����M���ӡ
            this._WorkSheet.PageSetup.BottomMargin = 0.18;
            this._WorkSheet.PageSetup.TopMargin = 0.18;
            this._WorkSheet.PageSetup.LeftMargin = 0.18;
            this._WorkSheet.PageSetup.RightMargin = 0.18;
            //this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,�Ӵ�""&14@Line Balancing Engineering Sheet / &""����,�Ӵ�""��ƽ�⹤�̱�";
            this._WorkSheet.PageSetup.CenterHeader = @"&""Arial,�Ӵ�""&14IE &""����,�Ӵ�""�����&""Arial,�Ӵ�"" - &""����,�Ӵ�""��ƽ�⹤�̱�&""Arial,�Ӵ�"" / IE Boo - Line Balancing";
            this._WorkSheet.PageSetup.CenterHorizontally = true;
            this._WorkSheet.PageSetup.CenterVertically = true;
            this._WorkSheet.PageSetup.BlackAndWhite = false;
            this._WorkSheet.PageSetup.Zoom = false;
            this._WorkSheet.PageSetup.FitToPagesWide = 1;
            this._WorkSheet.PageSetup.FitToPagesTall = 1;
        }
        #endregion

        #region �{�������ʽ
        /// <summary>
        /// �{�������ʽ
        /// </summary>
        private void AdjustAdjTableFormat()
        {
            //�{���ڶ��к͵������L��
            ((PHExcel.Range)this._WorkSheet.Rows[2, Missing.Value]).RowHeight = 32;  //�͑���̖���И��}
            ((PHExcel.Range)this._WorkSheet.Rows[3, Missing.Value]).RowHeight = 8;   //���_��
            ((PHExcel.Range)this._WorkSheet.Rows[4, Missing.Value]).RowHeight = 32;  //Title��һ��
            ((PHExcel.Range)this._WorkSheet.Rows[5, Missing.Value]).RowHeight = 32;  //Title�ڶ���
            ((PHExcel.Range)this._WorkSheet.Rows[6, Missing.Value]).RowHeight = 22;  //Title������

            for (int i = 7; i <= 23; i++)
            {
                ((PHExcel.Range)this._WorkSheet.Rows[i, Missing.Value]).RowHeight = 22;
            }
            ((PHExcel.Range)this._WorkSheet.Rows[24, Missing.Value]).RowHeight = 8;

            if (this._PrintAdjTable)
            {
                this._WorkSheet.get_Range("E7", "I10").NumberFormatLocal = "0.0000_ ";    //GSDSAH��A�M��B�M��C�M��Ӌ
                this._WorkSheet.get_Range("M7", "W23").NumberFormatLocal = "G/ͨ�ø�ʽ";  //����λ��ʽ
                this._WorkSheet.get_Range("E11", "I11").NumberFormatLocal = "0.00_ ";     //�����r�a��(��)
                this._WorkSheet.get_Range("E12", "I12").NumberFormatLocal = "G/ͨ�ø�ʽ"; //�ڄ�����Ӌ
                this._WorkSheet.get_Range("E13", "I13").NumberFormatLocal = "0.00_ ";     //Floater��Ӌ
                this._WorkSheet.get_Range("E14", "I14").NumberFormatLocal = "0.00_ ";     //����λ(��܇+�ֹ�̨)��Ӌ
                this._WorkSheet.get_Range("E15", "I17").NumberFormatLocal = "0.0000_ ";   //������i �� ��С���iSAH�� ��СSAH
                this._WorkSheet.get_Range("E18", "I18").NumberFormatLocal = "0.00%";      //LB%��ƽ����
                this._WorkSheet.get_Range("E19", "I20").NumberFormatLocal = "0.0000_ ";   //ָ�˾���SAH��λ��(����)
                this._WorkSheet.get_Range("E21", "I22").NumberFormatLocal = "G/ͨ�ø�ʽ"; //MTM���ֵ��MTM(104-120)�˔�
                this._WorkSheet.get_Range("E23", "N23").NumberFormatLocal = "0.00%";      //MTM(104-120)�˔��ٷֱ�

                this.SetCellBorder("A4", "W23", true, true, true, true, false, false);
                this.SetCellBorder("K4", "W23", true, true, true, true, false, false);

                ((PHExcel.Range)this._WorkSheet.Columns["A", Missing.Value]).ColumnWidth = 3.57;
                ((PHExcel.Range)this._WorkSheet.Columns["M", Missing.Value]).ColumnWidth = 9; //δ���LB(����)Column���һЩ

                this._WorkRange = this._WorkSheet.get_Range("A1", "W100");
                this._WorkRange.Font.Name = "Arial";
                this._WorkRange.Font.Size = 10;

                ////�O�ö�퓹���һ�����^
                //if (this._PrintMainTable && this._PrintAdjTable)
                //{
                //    this._WorkSheet.PageSetup.PrintTitleRows = "$1:$3";
                //}
            }
        }
        #endregion       
    }
}
