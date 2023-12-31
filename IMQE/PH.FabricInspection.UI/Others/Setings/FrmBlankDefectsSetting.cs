using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using DevExpress.XtraEditors;
using System.Globalization;
using PH.FabricInspection.BO;
using System.Linq;
using PH.Platform.Common;

namespace PH.FabricInspection.UI
{
    public partial class FrmBlankDefectsSetting : DevExpress.XtraEditors.XtraForm
    {
        //private int SPREAD_BUTTON_COUNT = 10;
        private int PART_BUTTON_COUNT = 30;

        //private int spreadButtonWidth = 115;
        //private int spreadButtonHeight = 65;

        private int partButtonWidth = 115;
        private int partButtonHeight = 65;

        private Color selectedButtonBackColor = System.Drawing.Color.Yellow;

        private Font buttonFont = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Bold);

        private Fabric_Insp_Header inspectionHeader = null;

        private List<Fabric_Defect_File> listPartDefectsMaster = null;

        private List<Fabric_Insp_Header> tblInspectionHeader = new List<Fabric_Insp_Header>();

        private string currentCompanyNo = "";

        private PH.FabricInspection.BO.FabricInspectionDataContext context;

        private MasterListForm masterListForm;

        public FrmBlankDefectsSetting(MasterListForm paramMasterListForm, Fabric_Insp_Header paramInspectionHeader )
        { 

            InitializeComponent();

            masterListForm = paramMasterListForm;
            context = (PH.FabricInspection.BO.FabricInspectionDataContext)masterListForm.DataContext;
            string styleCode = "";

            if (paramInspectionHeader != null)
            {
                inspectionHeader = paramInspectionHeader;
                //styleCode = inspectionHeader.Item_No.Substring(0, 9);
                styleCode = inspectionHeader.Item_No.Substring(0, 3);
                currentCompanyNo = paramInspectionHeader.Company;
                tblInspectionHeader.Add(inspectionHeader);
            }
            else
            {
                currentCompanyNo = "P1";
            }
            this.bsIQC01.DataSource = tblInspectionHeader;
            BindDataControl();

            //Xsj(补)20110924:根据StyleCode生成相关检测项的按钮填充到xscPartDefects面板
            loadPartDefects(styleCode);
            //loadSpreadDefects(styleCode);

            teHeaderIDNO.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderItemNo.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderItemDesc.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderSupplierLength.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderSupplierWidth.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderGMSQM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderInspectionDate.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teSupplierLengthUnit.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teSupplierWidthUnit.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;

            //ActiveControl = teHeaderInspLength;
            this.Text = this.Text + " [User:" + GlobalInfo.GetCurrentUserId() + "]";
            WindowState = FormWindowState.Maximized;

        }
   

        public static bool ShowBlankDefectsSetting(MasterListForm paramMasterListForm, Fabric_Insp_Header paramInspectionHeader)
        { 
            try
            {
                FrmBlankDefectsSetting frmCompany = new FrmBlankDefectsSetting(paramMasterListForm, paramInspectionHeader);

                DialogResult result = frmCompany.ShowDialog();
                return (result == DialogResult.OK);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the CompanySelect form  \n" + ex.Message);
            }
            return (false);
        }


        /// <summary>
        /// Xsj(补)20110924:绑定teSupplierWidthUnit(TextEdit)数据源
        /// </summary>
        private void BindDataControl()
        { 

            if (this.teHeaderIDNO.DataBindings.Count > 0)
            {
                return;
            }
            //TextEdit
            if (bsIQC01.DataSource != null)
            {
                //Xsj(补)20110925:绑定数据源到teSupplierWidthUnit，并设定teSupplierWidthUnit中的修改反应回数据源中
                this.teSupplierWidthUnit.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Supplier_Width_Unit", true, DataSourceUpdateMode.OnPropertyChanged));
            }

        }



        /// <summary>
        /// 所示的局部疵點的名稱是否全部來自與New Database tables中IQC02  
        /// Fabric Defects master file的表且defect_type=’P’的數據
        /// </summary>
        public void loadPartDefects(string styleCode)
        { 

            try
            {
                //freddy -- 2009-03-31 for convert to PlatForm2
                //var tempData = from p in context.Fabric_Defect_Files
                //               where p.Company.Equals(currentCompanyNo) && p.Style_Code.Equals(styleCode)
                //               orderby p.Seq_No ascending
                //               select p;
                //listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();

                //Fabric_Defect_FileList fabric_Defect_FilesList = new Fabric_Defect_FileList();

                //listPartDefectsMaster = fabric_Defect_FilesList.GetDefectFilesListWith(currentCompanyNo, styleCode).ToList<Fabric_Defect_File>();

                var objs = from c in context.Fabric_Defect_Files
                           from p in context.PHQCDefects
                           where c.Defect_Code == p.PHDefectCode && c.Company == currentCompanyNo && c.Style_Code == styleCode
                           select new { c.Company, c.Defect_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark };

                if (objs.Count() <= 0)
                {
                    string strDefaultStyleCode = "DEFAULT";
                    //freddy -- 2009-03-31 for convert to PlatForm2
                    //tempData = from p in context.Fabric_Defect_Files
                    //           where p.Company.Equals(currentCompanyNo)  && p.Style_Code.Equals(strDefaultStyleCode)
                    //           orderby p.Seq_No ascending
                    //           select p;

                    //listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();

                    //listPartDefectsMaster = fabric_Defect_FilesList.GetDefectFilesListWith(currentCompanyNo, strDefaultStyleCode).ToList<Fabric_Defect_File>();
                    objs = from c in context.Fabric_Defect_Files
                           from p in context.PHQCDefects
                           where c.Defect_Code == p.PHDefectCode && c.Company == currentCompanyNo && c.Style_Code == strDefaultStyleCode
                           select new { c.Company, c.Defect_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark };

                }

                int iRow = 0;
                int iCol = 0;
                int iCountPerRow = 4;
                int i = 0;
                //Xsj(补)20110924:向xscPartDefects面板(Panel)中添加当前StyleCode指定的检测项
                foreach (var m in objs)
                {
                    SimpleButton tempButton = new StateButton();
                    tempButton.Width = partButtonWidth;
                    tempButton.Height = partButtonHeight;
                    SysParamHelper sph = SysParamHelper.Instance;
                    
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        tempButton.Text = m.DefectChineseName;

                    if (sph.LangID == "TH")
                        tempButton.Text = m.DefectThaiName;

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        tempButton.Text = m.DefectEnglishName;
                       

                    tempButton.Font = buttonFont;

                    tempButton.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;

                    iCol = i % iCountPerRow;
                    tempButton.Left = 5 + (iCol * tempButton.Width);
                    tempButton.Top = 2 + iRow * (tempButton.Height + 2);

                    tempButton.Enabled = false;
                    xscPartDefects.Controls.Add(tempButton);

                    if ((i % iCountPerRow) == (iCountPerRow - 1))
                    {
                        iRow++;
                    }
                    i = i + 1;

                }

                //Xsj(补)20110924:当上述生成的按钮少于指定数时，在此生成空的Button用于填充面板余下的空白区
                if (objs.Count() < PART_BUTTON_COUNT)
                {
                    for (int n = objs.Count(), iLen = PART_BUTTON_COUNT; n < iLen; n++)
                    {
                        SimpleButton tempButton = new StateButton();
                        tempButton.Width = partButtonWidth;
                        tempButton.Height = partButtonHeight;
                        tempButton.Font = buttonFont;

                        tempButton.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;

                        iCol = n % iCountPerRow;
                        tempButton.Left = 5 + (iCol * tempButton.Width);
                        tempButton.Top = 2 + iRow * (tempButton.Height + 2);
                        tempButton.Enabled = false;
                        xscPartDefects.Controls.Add(tempButton);

                        if ((n % iCountPerRow) == (iCountPerRow - 1))
                        {
                            iRow++;
                        }
                    }

                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load Defects \n" + ex.Message);
            }


        }

        //作废
        //public void loadSpreadDefects(string styleCode)
        //{
        //    try
        //    {
        //        var tempData = from p in context.Fabric_Defect_Files
        //                       where p.Company.Equals(currentCompanyNo) && p.Defect_Type.Equals("S") && p.Style_Code.Equals(styleCode) 
        //                       orderby p.Seq_No ascending
        //                       select p;
        //        listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();

        //        if (listPartDefectsMaster.Count <= 0)
        //        {
        //            string strDefaultStyleCode = "DEFAULT";
        //            tempData = from p in context.Fabric_Defect_Files
        //                       where p.Company.Equals(currentCompanyNo) && p.Defect_Type.Equals("S") && p.Style_Code.Equals(strDefaultStyleCode)
        //                       orderby p.Seq_No ascending
        //                       select p;
        //            listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();
        //        }

        //        int iRow = 0;
        //        int iCol = 0;
        //        int iCountPerRow = 5;

        //        for (int i = 0, iLen = listPartDefectsMaster.Count; i < iLen; i++)
        //        {
        //            SimpleButton tempButton = new StateButton();
        //            tempButton.Width = spreadButtonWidth;
        //            tempButton.Height = spreadButtonHeight;
        //            tempButton.Text = listPartDefectsMaster[i].Defect_Nname;
        //            tempButton.Font = buttonFont;

        //            iCol = i % iCountPerRow;
        //            tempButton.Left = 5 + (iCol * tempButton.Width);
        //            tempButton.Top = 2 + iRow * (tempButton.Height + 2);

        //            tempButton.Enabled = false;
        //            xscSpreadDefects.Controls.Add(tempButton);
        //            if ((i % iCountPerRow) == (iCountPerRow - 1))
        //            {
        //                iRow++;
        //            }

        //        }

        //        if (listPartDefectsMaster.Count < SPREAD_BUTTON_COUNT)
        //        {
        //            for (int i = listPartDefectsMaster.Count, iLen = SPREAD_BUTTON_COUNT; i < iLen; i++)
        //            {
        //                SimpleButton tempButton = new StateButton();
        //                tempButton.Width = spreadButtonWidth;
        //                tempButton.Height = spreadButtonHeight;
        //                tempButton.Font = buttonFont;

        //                iCol = i % iCountPerRow;
        //                tempButton.Left = 5 + (iCol * tempButton.Width);
        //                tempButton.Top = 2 + iRow * (tempButton.Height + 2);

        //                tempButton.Enabled = false;

        //                xscSpreadDefects.Controls.Add(tempButton);
        //                if ((i % iCountPerRow) == (iCountPerRow - 1))
        //                {
        //                    iRow++;
        //                }
        //            }

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load data from Defects \n" + ex.Message);
        //    }

        //}

        /// <summary>
        /// Xsj(补)20110924:Return按钮动作，关闭并返回。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbHeaderReturn_Click(object sender, EventArgs e)
        { 
            this.DialogResult = DialogResult.Cancel;
        }

        /// <summary>
        /// Xsj(补)20110924:窗体Show时，弹出FrmLotIDInputter窗体
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FrmBlankDefectsSetting_Shown(object sender, EventArgs e)
        { 
            if (tblInspectionHeader.Count > 0)
            {
                FrmLotIDInputter.ShowLotIDInputter(masterListForm, this, tblInspectionHeader[0].Lot_Id, tblInspectionHeader[0].AuditStage);
            }
            else
            {
                FrmLotIDInputter.ShowLotIDInputter(masterListForm, this, "", "1st");
            }
        }

      


    }
}