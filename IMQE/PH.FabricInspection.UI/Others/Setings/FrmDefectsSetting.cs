using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.Platform.Common;
using System.IO;
using System.Data.Linq;

namespace PH.FabricInspection.UI
{
    public partial class FrmDefectsSetting : DevExpress.XtraEditors.XtraForm
    {
        private string DEFAULT_DEFECT_PLACE = "";

        //private int SPREAD_BUTTON_COUNT = 10;
        //private int PART_BUTTON_COUNT = 20;
        private int PART_BUTTON_COUNT = 24;
        private int TURN_NO_BUTTON_COUNT = 10;

        //private int spreadButtonWidth = 115;
        //private int spreadButtonHeight = 67;

        private int partButtonWidth = 115;
        private int partButtonHeight = 67;

        private int turnNoButtonWidth = 76;
        //private int turnNoButtonHeight = 43;

        private int maxTurnNo = 0;
        /// <summary>
        /// Xsj(补)20110926：当前板号 
        /// </summary>
        private int currenDefectTurnNo = 0;

        private Color selectedButtonBackColor = System.Drawing.Color.Yellow;

        private Font buttonFont = new System.Drawing.Font("Tahoma", 9.25F, System.Drawing.FontStyle.Bold);
        private DevExpress.XtraEditors.SimpleButton focusedPartButton = null;
        private DevExpress.XtraEditors.SimpleButton focusedSpreadButton = null;

        private DevExpress.XtraEditors.SimpleButton focusedPartLevelButton = null;
        private DevExpress.XtraEditors.SimpleButton focusedSpreadLevelButton = null;

        private Fabric_Insp_Header inspectionHeader = null;

        private List<Fabric_Defect_File> listPartDefectsMaster = null;

        private List<Fabric_Insp_Header> tblInspectionHeader = new List<Fabric_Insp_Header>();

        private string currentCompanyNo = "";

        private GridControl focusedGridControl = null;

        private bool timerStarted = false;
        private bool needToCaptureImage = false;

        private int timeElapsed = 0;
        private decimal dBroadsPerSecond = 6;
        private decimal dTimeForPhotograph = (decimal)0.1;
        private decimal dRate = 1;
        private bool DefectClick = false;

        private bool bPhotoCaptured = false;
        private byte[] lockedObject = new byte[0];
        private VideoControllerCenter videoCenter = null;
        private PH.FabricInspection.BO.FabricInspectionDataContext context;
        private MasterListForm masterListForm;

        public FrmDefectsSetting(MasterListForm paramMasterListForm, Fabric_Insp_Header paramInspectionHeader )
        {
            InitializeComponent();
          
            masterListForm = paramMasterListForm;
            context = (PH.FabricInspection.BO.FabricInspectionDataContext)masterListForm.DataContext;

            //if (string.IsNullOrEmpty(paramInspectionHeader.Supplich_Batch))
            //{
            //    paramInspectionHeader.Supplich_Batch = "none";
            //}
            //if (string.IsNullOrEmpty(paramInspectionHeader.Roll_No))
            //{
            //    paramInspectionHeader.Roll_No = "none";
            //}


            inspectionHeader = paramInspectionHeader;
            currentCompanyNo = paramInspectionHeader.Company;

            tblInspectionHeader.Add(inspectionHeader);
            this.bsIQC01.DataSource = tblInspectionHeader;
            //Xsj(补)20110926:绑控件数据源
            BindDataControl();

            //string styleCode = inspectionHeader.Item_No.Substring(0, 9);
            string styleCode = inspectionHeader.Item_No.Substring(0, 3);
            //Xsj(补)20110926:依StyleCode载入需要检测的项目，并生成面板按钮
            loadPartDefects(styleCode);
            //loadSpreadDefects(styleCode);

            bsPartDefects.DataSource = inspectionHeader.Fabric_Insp_PartDefects;
            bsSpreadDefects.DataSource = inspectionHeader.Fabric_Insp_SpreadDefects;
            bsWidths.DataSource = inspectionHeader.Fabric_Insp_Widths;
            bsPictures.DataSource = inspectionHeader.Fabric_Insp_Pictures;

            //setSpreadButtonEnable(false);
            // Xsj(补)20110926：置按钮(Serious，Medium，Slightly)的Enable为false.;
            setPartButtonEnable(false);

            teHeaderIDNO.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderItemNo.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderItemDesc.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderSupplierLength.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderSupplierWidth.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderGMSQM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teHeaderInspectionDate.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            //teSupplierLengthUnit.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            teSupplierWidthUnit.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;

            lcBroadPerSecond.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            lcSecondsPerClick.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            lcRate.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;

            sbPhotograph.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            sbPhotograph.BackColor = selectedButtonBackColor;
            sbPhotograph.Down = true;

            // Xsj(补)20110926：对gridPartDefects、gridSpreadDefects、gridWidths进行显示或隐藏
            gridPartDefects_Enter(gridPartDefects, null);

            //ActiveControl = teHeaderInspLength;
            this.Text = this.Text + " [User:" + GlobalInfo.GetCurrentUserId() + "]";
            WindowState = FormWindowState.Maximized;


        }


        /// <summary>
        /// Xsj(补)20110926:调用入口
        /// </summary>
        /// <param name="paramMasterListForm"></param>
        /// <param name="paramInspectionHeader"></param>
        /// <returns></returns>
        public static bool ShowDefectsSetting(MasterListForm paramMasterListForm, Fabric_Insp_Header paramInspectionHeader)
        {

            try
            {

                FrmDefectsSetting frmCompany = new FrmDefectsSetting(paramMasterListForm, paramInspectionHeader);

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
        /// Xsj(补)20110926:绑定数据源
        /// </summary>
        private void BindDataControl()
        {
            if (this.teHeaderIDNO.DataBindings.Count > 0)
            {
                return;
            }
            //TextEdit
            this.teHeaderIDNO.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Lot_Id", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderItemNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Item_No", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderItemDesc.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Item_Desc", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderSupplierLength.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Actual_Length", true, DataSourceUpdateMode.OnPropertyChanged));
            //this.teSupplierLengthUnit.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Supplier_Length_Unit", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderSupplierWidth.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Supplier_Width", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teSupplierWidthUnit.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Supplier_Width_Unit", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderGMSQM.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "GM_SQM", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderInspectionDate.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Create_Date", true, DataSourceUpdateMode.OnPropertyChanged));
            //TODO 布幅 未处理
            //this.teInspectionWidth.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "insp_length", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderInspLength.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Insp_Length", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderPHSample.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "PH_Sample", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderCalc1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Panel_Size1", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderCalc2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Panel_Size2", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderSupplierBatch.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Supplich_Batch", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teHeaderRollNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Roll_No", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teUsable_width.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Usable_Width", true, DataSourceUpdateMode.OnPropertyChanged));
            this.teSideToSideH_Width.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "SideToSideH_Width", true, DataSourceUpdateMode.OnPropertyChanged));

            this.txtLightStatus.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "LightStatus", true, DataSourceUpdateMode.OnPropertyChanged));

            this.txtWeftYarnPercentage.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "WeftYarnPercentage", true, DataSourceUpdateMode.OnPropertyChanged));
            this.txtWeftYarnClass.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "WeftYarnClass", true, DataSourceUpdateMode.OnPropertyChanged));
            this.txtWeftYarn.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "WeftYarn", true, DataSourceUpdateMode.OnPropertyChanged));
            this.txtMouldTrial.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "MouldTrial", true, DataSourceUpdateMode.OnPropertyChanged));
            this.txtElongation.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "Elongation", true, DataSourceUpdateMode.OnPropertyChanged));
            //this.txtElongationStatus.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "ElongationStatus", true, DataSourceUpdateMode.OnPropertyChanged));
            //this.txtWeftYarnStatus.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "WeftYarnStatus", true, DataSourceUpdateMode.OnPropertyChanged));
            //this.txtMouldTrialStatus.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsIQC01, "MouldTrialStatus", true, DataSourceUpdateMode.OnPropertyChanged));


        }

        /// <summary>
        /// 所示的局部疵點的名稱是否全部來自與New Database tables中IQC02  
        /// Fabric Defects master file的表且defect_type=’P’的數據
        /// </summary>
        public void loadPartDefects(string styleCode)
        {

            try
            {
                //var tempData = from p in context.Fabric_Defect_Files
                //               where p.Company.Equals(currentCompanyNo) && p.Defect_Type.Equals("P") && p.Style_Code.Equals(styleCode)
                //               orderby p.Seq_No ascending 
                //               select p;

                //freddy -- 2009-03-31 for convert to PlatForm2
                //var tempData = from p in context.Fabric_Defect_Files
                //               where p.Company.Equals(currentCompanyNo) && p.Style_Code.Equals(styleCode)
                //               orderby p.Seq_No ascending
                //               select p;
                //listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();

                Fabric_Defect_FileList fabric_Defect_FilesList = new Fabric_Defect_FileList();

                //zxz listPartDefectsMaster = fabric_Defect_FilesList.GetDefectFilesListWith(currentCompanyNo, styleCode).ToList<Fabric_Defect_File>();
                FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

                var objs = from c in context.Fabric_Defect_Files
                           from p in context.PHQCDefects
                           where c.Defect_Code == p.PHDefectCode && c.Company == currentCompanyNo && c.Style_Code == styleCode
                           select new { c.Company, c.Defect_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark };


                //zxz if (listPartDefectsMaster.Count <= 0)
                if (objs.Count() <= 0)
                {
                    string strDefaultStyleCode = "DEFAULT";
                    //tempData = from p in context.Fabric_Defect_Files
                    //           where p.Company.Equals(currentCompanyNo) && p.Defect_Type.Equals("P") && p.Style_Code.Equals(strDefaultStyleCode)
                    //           orderby p.Seq_No ascending
                    //           select p;

                    //freddy -- 2009-03-31 for convert to PlatForm2
                    //tempData = from p in context.Fabric_Defect_Files
                    //           where p.Company.Equals(currentCompanyNo) && p.Style_Code.Equals(strDefaultStyleCode)
                    //           orderby p.Seq_No ascending
                    //           select p;
                    //listPartDefectsMaster = tempData.ToList<Fabric_Defect_File>();

                    //zxz listPartDefectsMaster = fabric_Defect_FilesList.GetDefectFilesListWith(currentCompanyNo, strDefaultStyleCode).ToList<Fabric_Defect_File>();


                    objs = from c in context.Fabric_Defect_Files
                           from p in context.PHQCDefects
                           where c.Defect_Code == p.PHDefectCode && c.Company == currentCompanyNo && c.Style_Code == strDefaultStyleCode
                           select new { c.Company, c.Defect_Code, p.DefectEnglishName, p.DefectChineseName, p.DefectThaiName, c.Seq_No, p.DefectEnglishRemark, p.DefectChineseRemark, p.DefectThaiRemark };

                }

                int iRow = 0;
                int iCol = 0;
                int iCountPerRow = 4;
                int i = 0;
                //string currentCompanyNo = ""
                //zxz for (int i = 0, iLen = listPartDefectsMaster.Count; i < iLen; i++)
                foreach (var m in objs)
                {
                    SimpleButton tempButton = new StateButton();
                    tempButton.Width = partButtonWidth;
                    tempButton.Height = partButtonHeight;

                    //if (listPartDefectsMaster[i].Defect_Code != 204)  FOR KB SHARLY
                    //{
                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        tempButton.Text = m.DefectChineseName + "\n (" + m.Defect_Code + ")";
                        tempButton.Tag = m.DefectChineseName + "\n (" + m.Defect_Code + ")";
                    }


                    if (sph.LangID == "TH")
                    {
                        tempButton.Text = m.DefectThaiName + "\n (" + m.Defect_Code + ")";
                        tempButton.Tag = m.DefectThaiName + "\n (" + m.Defect_Code + ")";
                    }

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {

                        tempButton.Text = m.DefectEnglishName + "\n (" + m.Defect_Code + ")";
                        tempButton.Tag = m.DefectEnglishName + "\n (" + m.Defect_Code + ")";
                    }

                    //}
                    //else FOR KB SHARLY
                    //{
                    //    tempButton.Text = listPartDefectsMaster[i].Defect_Name_Kb + "(" + listPartDefectsMaster[i].Defect_Code + ")";
                    //    tempButton.Tag = listPartDefectsMaster[i].Defect_Name_Kb + "(" + listPartDefectsMaster[i].Defect_Code + ")";
                    //}
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        tempButton.ToolTip = m.DefectChineseRemark;

                    if (sph.LangID == "TH")
                        tempButton.ToolTip = m.DefectThaiRemark;

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        tempButton.ToolTip = m.DefectEnglishRemark;

                    tempButton.Font = buttonFont;

                    tempButton.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;

                    iCol = i % iCountPerRow;
                    tempButton.Left = 5 + (iCol * tempButton.Width);
                    tempButton.Top = 2 + iRow * (tempButton.Height + 2);

                    //Xsj:定義生成檢測項按鈕的點擊動作
                    tempButton.Click += new System.EventHandler(this.partButtons_Click);
                    xscPartDefects.Controls.Add(tempButton);

                    if ((i % iCountPerRow) == (iCountPerRow - 1))
                    {
                        iRow++;
                    }
                    i = i + 1;

                }


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
                MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
            }


        }

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
        //            tempButton.Text = listPartDefectsMaster[i].Defect_Nname + "(" + listPartDefectsMaster[i].Defect_Code + ")";
        //            tempButton.Tag = listPartDefectsMaster[i].Defect_Nname;


        //            tempButton.Font = buttonFont;

        //            iCol = i % iCountPerRow;
        //            tempButton.Left = 5 + (iCol * tempButton.Width);
        //            tempButton.Top = 2 + iRow * (tempButton.Height + 2);

        //            tempButton.Click += new System.EventHandler(this.spreadButtons_Click);
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
        //        MessageBox.Show("Error happened when load data from DefectsMaster \n" + ex.Message);
        //    }

        //}

        //private void spreadButtons_Click(object sender, EventArgs e)
        //{
        //    ClearButtonBackColor();
        //    Control tempControl = null;
        //    for (int i = 0, iSize = xscSpreadDefects.Controls.Count; i < iSize; i++)
        //    {
        //        tempControl = xscSpreadDefects.Controls[i];
        //        if (tempControl is SimpleButton)
        //        {
        //            ((SimpleButton)tempControl).BackColor = sbDeleteWidth.BackColor;
        //            ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
        //            ((StateButton)tempControl).Down = false;
        //        }
        //    }
        //    focusedSpreadButton = (SimpleButton)sender;
        //    focusedSpreadButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
        //    focusedSpreadButton.Appearance.BackColor = selectedButtonBackColor;

        //    ((StateButton)focusedSpreadButton).Down = true;

        //    setSpreadButtonEnable(true);

        //}

        /// <summary>
        ///  Xsj(补)20110926:设置按钮(Serious，Medium，Slightly)的Enable值.
        /// </summary>
        /// <param name="enable"></param>
        private void setSpreadButtonEnable(bool enable)
        {
            //sbSpreadLevelHigh.Enabled = enable;
            //sbSpreadLevelMiddle.Enabled = enable;
            //sbSpreadLevelLow.Enabled = enable;

            sbNewSpreadLevelHigh.Enabled = enable;
            sbNewSpreadLevelMiddle.Enabled = enable;
            sbNewSpreadLevelLow.Enabled = enable;

            if (enable)
            {
                //setPartButtonEnable(false);
                //sbSpreadLevelHigh.ForeColor = Color.Red;
                //sbSpreadLevelMiddle.ForeColor = Color.Red;
                //sbSpreadLevelLow.ForeColor = Color.Red;

            }
            else
            {
                //sbSpreadLevelHigh.ForeColor = Color.Black;
                //sbSpreadLevelMiddle.ForeColor = Color.Black;
                //sbSpreadLevelLow.ForeColor = Color.Black;
            }


        }

        /// <summary>
        /// Xsj(补)20110926:设置按钮的Enable值
        /// </summary>
        /// <param name="enable"></param>
        private void setPartButtonEnable(bool enable)
        {
            //sbLevel1.Enabled = enable;
            //sbLevel2.Enabled = enable;
            //sbLevel3.Enabled = enable;
            //sbLevel4.Enabled = enable;

            //sbNumAdd.Enabled = enable;
            //sbNumSub.Enabled = enable;

            if (enable)
            {
                //setSpreadButtonEnable(false);

                //sbLevel1.ForeColor = Color.Red;
                //sbLevel2.ForeColor = Color.Red;
                //sbLevel3.ForeColor = Color.Red;
                //sbLevel4.ForeColor = Color.Red;
                //sbNumAdd.ForeColor = Color.Red;
                //sbNumSub.ForeColor = Color.Red;

            }
            else
            {
                //sbLevel1.ForeColor = Color.Black;
                //sbLevel2.ForeColor = Color.Black;
                //sbLevel3.ForeColor = Color.Black;
                //sbLevel4.ForeColor = Color.Black;
                //sbNumAdd.ForeColor = Color.Black;
                //sbNumSub.ForeColor = Color.Black;
            }
            setSpreadButtonEnable(enable);
        }

        /// <summary>
        ///  Xsj(补)20110926：生成的检测项按钮的点击动作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void partButtons_Click(object sender, EventArgs e)
        {
            // Xsj(补)20110926：设置相关按钮样式
            ClearButtonBackColor();
            Control tempControl = null;
            for (int i = 0, iSize = xscPartDefects.Controls.Count; i < iSize; i++)
            {
                tempControl = xscPartDefects.Controls[i];
                if (tempControl is StateButton)
                {
                    ((SimpleButton)tempControl).BackColor = sbDeleteWidth.BackColor;
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
            }
            focusedPartButton = (SimpleButton)sender;
            // Xsj(补)20110926：设置当前被点击按钮的样式
            focusedPartButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            focusedPartButton.Appearance.BackColor = selectedButtonBackColor;
            ((StateButton)focusedPartButton).Down = true;

            focusedSpreadButton = (SimpleButton)sender;

            //Xsj(补)20110926： 置Serious，Medium，Slightly按钮为可用状态
            setPartButtonEnable(true);
        }


        /// <summary>
        /// Xsj(补)20110926：获取Fabric_Insp_PartDefect资料
        /// </summary>
        /// <param name="defectTurnNo"></param>
        /// <param name="name"></param>
        /// <param name="defectDegree"></param>
        /// <param name="defectPlace"></param>
        /// <returns></returns>
        private Fabric_Insp_PartDefect getPartyDefectDetail(int defectTurnNo, string name, int defectDegree, string defectPlace)
        {
            Fabric_Insp_PartDefect partyDefectDetail = null;
            //bsPartDefects.Position
            //bsPartDefects.Count
            //bsPartDefects.MoveFirst

            bsPartDefects.MoveFirst();
            for (int i = 0, iSize = bsPartDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = (Fabric_Insp_PartDefect)bsPartDefects.Current;
                if ((partyDefectDetail.Defect_Name == name)
                    && (partyDefectDetail.Defect_Degree == defectDegree)
                    && (partyDefectDetail.Detect_Turn_No == defectTurnNo)
                    && (partyDefectDetail.Defect_Type == "P")
                    && (partyDefectDetail.Defect_Place == defectPlace))
                {
                    try
                    {
                        //if (i < gridViewPartDefects.RowCount)
                        //{
                        //    gridViewPartDefects.TopRowIndex = i;
                        //}
                        int iRowHandle = gridViewPartDefects.GetRowHandle(i);
                        if (iRowHandle >= 0)
                        {
                            gridViewPartDefects.TopRowIndex = iRowHandle;
                        }
                    }
                    catch
                    {
                    }
                    return partyDefectDetail;
                }
                bsPartDefects.MoveNext();
            }


            return null;
        }

        private void sbLevel1_Click(object sender, EventArgs e)
        {
            Control tempControl = null;
            for (int i = 0, iSize = pnlPartLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = pnlPartLevel.Controls[i];
                if (tempControl is StateButton)
                {
                    ((StateButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
            }
            focusedPartLevelButton = (SimpleButton)sender;
            focusedPartLevelButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            focusedPartLevelButton.Appearance.BackColor = selectedButtonBackColor;

            ((StateButton)focusedPartLevelButton).Down = true;

        }

        /// <summary>
        /// Xsj(补)20110926：Serious按钮点击动作（严重缺陷)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbSpreadLevelHigh_Click(object sender, EventArgs e)
        {
            // Xsj(补)20110926：判断有没有点击了检测细项按钮
            if (focusedSpreadButton == null)
            {
                MessageBox.Show("Please first select Spread Defect!");
                return;
            }

            Control tempControl = null;
            for (int i = 0, iSize = pnlPartLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = pnlPartLevel.Controls[i];
                if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                }
            }

            for (int i = 0, iSize = PnlNewSpreadLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = PnlNewSpreadLevel.Controls[i];
                if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                }
            }

            // Xsj(补)20110926：设置当前检测水平按钮样式
            string name = focusedSpreadButton.Text;
            focusedSpreadLevelButton = (SimpleButton)sender;
            focusedSpreadLevelButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            focusedSpreadLevelButton.Appearance.BackColor = selectedButtonBackColor;

            //if ((focusedSpreadLevelButton == sbNewSpreadLevelHigh) || (focusedSpreadLevelButton == sbSpreadLevelHigh)) {
            //    sbNewSpreadLevelHigh.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbNewSpreadLevelHigh.Appearance.BackColor = selectedButtonBackColor;

            //    sbSpreadLevelHigh.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbSpreadLevelHigh.Appearance.BackColor = selectedButtonBackColor;
            //}
            //else if ((focusedSpreadLevelButton == sbNewSpreadLevelMiddle) || (focusedSpreadLevelButton == sbSpreadLevelMiddle))
            //{
            //    sbNewSpreadLevelMiddle.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbNewSpreadLevelMiddle.Appearance.BackColor = selectedButtonBackColor;

            //    sbSpreadLevelMiddle.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbSpreadLevelMiddle.Appearance.BackColor = selectedButtonBackColor;
            //} else
            //    if ((focusedSpreadLevelButton == sbNewSpreadLevelLow) || (focusedSpreadLevelButton == sbSpreadLevelLow))
            //{
            //    sbNewSpreadLevelLow.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbNewSpreadLevelLow.Appearance.BackColor = selectedButtonBackColor;

            //    sbSpreadLevelLow.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //    sbSpreadLevelLow.Appearance.BackColor = selectedButtonBackColor;
            //} 

            string defectDegree = (string)focusedSpreadLevelButton.Tag;


            setSpreadDefectLevel(name, defectDegree);

        }


        /// <summary>
        /// xsj（补)20110927:生成检测数据
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defectDegree"></param>
        private void setSpreadDefectLevel(string name, string defectDegree)
        {
            try
            {
                int iWidthFromPlace = 0;
                int iWidthToPlace = 0;
                decimal iLengthFromPlace = 0;
                decimal iLengthToPlace = 0;

                // Xsj(补)20110926：先让操作者输入出问题的物料部位信息（FromPlace ,ToPlace)
                if (FrmSpreadDefectSetting.ShowSpreadDefectSetting(ref iWidthFromPlace, ref iWidthToPlace, ref iLengthFromPlace, ref iLengthToPlace))
                {
                    string Code = null;
                    Code = name.Split('(', ')')[1].ToString();
                    Fabric_Insp_SpreadDefect spreadDefectDetail = getSpreadDefectDetail(Code, defectDegree, iWidthFromPlace, iWidthToPlace, iLengthFromPlace, iLengthToPlace, inspectionHeader.System_Install_No, currentCompanyNo);
                    if (spreadDefectDetail == null)
                    {
                        spreadDefectDetail = (Fabric_Insp_SpreadDefect)bsSpreadDefects.AddNew();
                        spreadDefectDetail.Company = currentCompanyNo;
                        spreadDefectDetail.System_Install_No = inspectionHeader.System_Install_No; //由david加入 2020-10-19

                        //if (inspectionHeader.System_Install_No > 0)
                        //{
                        //spreadDefectDetail.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                        //    //spreadDefectDetail.System_Install_No = inspectionHeader.System_Install_No;
                        //}
                        //spreadDefectDetail.Lot_Id = inspectionHeader.Lot_Id;
                        //spreadDefectDetail.Item_No = inspectionHeader.Item_No;

                        spreadDefectDetail.Defect_Type = "S";
                        spreadDefectDetail.Defect_Name = Code;
                        spreadDefectDetail.Spread_Defect_Degree = defectDegree;
                        spreadDefectDetail.From_Place = iWidthFromPlace;
                        spreadDefectDetail.To_Place = iWidthToPlace;
                        spreadDefectDetail.From_Place_Length = iLengthFromPlace;
                        spreadDefectDetail.To_Place_Length = iLengthToPlace;
                        spreadDefectDetail.Change_Date = DateTime.Now;
                        spreadDefectDetail.Change_User = GlobalInfo.GetCurrentUserId();

                        bsSpreadDefects.EndEdit();
                        bsIQC01.EndEdit();
                    }

                    bsSpreadDefects.ResetBindings(false);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when add spread Defect\n" + ex.Message);
            }
        }

        private Fabric_Insp_SpreadDefect getSpreadDefectDetail(string name, string defectDegree, int AWidthFromPlace, int AWidthToPlace,
            decimal ALengthFromPlace, decimal ALengthToPlace, int systemInstallNo, string companyNo)
        {

            foreach (Fabric_Insp_SpreadDefect spreadDefectDetail in bsSpreadDefects)
            {
                if ((spreadDefectDetail.Defect_Name == name)
                    && (spreadDefectDetail.Spread_Defect_Degree == defectDegree)
                    && (spreadDefectDetail.From_Place == AWidthFromPlace)
                    && (spreadDefectDetail.To_Place == AWidthToPlace)
                    && (spreadDefectDetail.From_Place_Length == ALengthFromPlace)
                    && (spreadDefectDetail.To_Place_Length == ALengthToPlace)
                    && (spreadDefectDetail.System_Install_No == systemInstallNo)
                    && (spreadDefectDetail.Company == companyNo)
                    && (spreadDefectDetail.Defect_Type == "S"))
                {
                    return spreadDefectDetail;
                }
            }


            return null;
        }

        private void sbNumAdd_Click(object sender, EventArgs e)
        {
            if ((focusedPartButton == null) || (focusedPartLevelButton == null))
            {
                MessageBox.Show("Please select Part Defect and Level!");
                return;
            }
            //sbNumSub.BackColor = sbWidthDetail.BackColor;
            //sbNumSub.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;

            //sbNumAdd.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //sbNumAdd.Appearance.BackColor = selectedButtonBackColor;
            try
            {
                string name = focusedPartButton.Text;
                if (focusedPartButton.Tag != null)
                {
                    name = (string)focusedPartButton.Tag;
                }
                int defectDegree = Convert.ToInt32(focusedPartLevelButton.Text);

                setPartDefectLevel(name, defectDegree, DEFAULT_DEFECT_PLACE);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when add party Defect\n" + ex.Message);
            }


        }

        private void sbNumSub_Click(object sender, EventArgs e)
        {
            if ((focusedPartButton == null) || (focusedPartLevelButton == null))
            {
                MessageBox.Show("Please select Part Defect and Level!");
                return;
            }
            //sbNumAdd.BackColor = sbWidthDetail.BackColor;
            //sbNumAdd.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;

            //sbNumSub.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            //sbNumSub.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            if (focusedPartButton.Tag != null)
            {
                name = (string)focusedPartButton.Tag;
            }
            int defectDegree = Convert.ToInt32(focusedPartLevelButton.Text);
            Fabric_Insp_PartDefect partyDefectDetail = getPartyDefectDetail(currenDefectTurnNo, name, defectDegree, DEFAULT_DEFECT_PLACE);
            if (partyDefectDetail == null)
            {
                MessageBox.Show("No selected Part Defect's data can be subtracted!");
                return;
            }
            else
            {
                if (partyDefectDetail.Defect_Degree_Count <= 0)
                {
                    MessageBox.Show("Current defect's degree is less or equal than zero!");
                    return;
                }
                else
                {
                    partyDefectDetail.Defect_Degree_Count = partyDefectDetail.Defect_Degree_Count - 1;
                }
            }

            if (partyDefectDetail.Defect_Degree_Count <= 0)
            {
                //partyDefectDetail.MarkDelete();
                bsPartDefects.Remove(partyDefectDetail);

            }
            bsPartDefects.ResetBindings(false);


        }

        /// <summary>
        ///  Xsj(补)20110926：获取指定板号的Fabric_Insp_Width
        /// </summary>
        /// <param name="detectTurnNo"></param>
        /// <param name="companyNo"></param>
        /// <param name="systemInstallNo"></param>
        /// <returns></returns>
        private Fabric_Insp_Width getWidthDetail(int detectTurnNo, string companyNo, int systemInstallNo)
        {
            foreach (Fabric_Insp_Width partyDefectDetail in bsWidths)
            {
                if ((partyDefectDetail.Company == companyNo)
                    && (partyDefectDetail.System_Install_No == systemInstallNo)
                    && (partyDefectDetail.Detect_Turn_No == detectTurnNo))
                {
                    return partyDefectDetail;
                }
            }


            return null;
        }


        /// <summary>
        /// Xsj(补)20110926：Width按钮事件 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbWidthDetail_Click(object sender, EventArgs e)
        {
            ClearButtonBackColor();
            sbWidthDetail.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            sbWidthDetail.Appearance.BackColor = selectedButtonBackColor;

            // setSpreadButtonEnable(false);

            setPartButtonEnable(false);

            decimal currentValue = 0;
            decimal currentSideToSideWithValue = 0;
            // Xsj(补)20110926：获取输入的值 
            /**************add by shulin 2022-11-13*****************/

            int GetLength = 0;
            decimal tempFarbicLength = string.IsNullOrEmpty(teHeaderSupplierLength.Text) ?
                                        0 : Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
            if (tempFarbicLength > 0)
            {
                GetLength = (int)Math.Ceiling(tempFarbicLength);
            }
            else
            {
                tempFarbicLength = string.IsNullOrEmpty(teHeaderInspLength.Text) ?
                                    0 : Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);

                GetLength = (int)Math.Ceiling(tempFarbicLength);
            }
            /*******************************/



            /**changge by shulin 2022-11-13**/
            //if (FrmWidthInputter.ShowWidthInputter("Width",  ref currentValue, ref currentSideToSideWithValue))

            if (FrmWidthInputter.ShowWidthInputter("Width", GetLength, bsWidths,  inspectionHeader, ref currentValue, ref currentSideToSideWithValue))
            {
                try
                {
                    currentValue = Convert.ToDecimal(currentValue);
                    //currentValue = Convert.ToInt32(currentValue);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("current Usable Width value[" + currentValue + "] is not a validate int value \n" + ex.Message);
                    return;
                }

                try
                {
                    //currentSideToSideWithValue = Convert.ToInt32(currentSideToSideWithValue);
                    currentSideToSideWithValue = Convert.ToDecimal(currentSideToSideWithValue);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("current SideToSide Width value[" + currentSideToSideWithValue + "] is not a validate int value \n" + ex.Message);
                    return;
                }

                Fabric_Insp_Width widthDetail = getWidthDetail(currenDefectTurnNo, currentCompanyNo, inspectionHeader.System_Install_No);
                if (widthDetail == null)
                {
                    widthDetail = (Fabric_Insp_Width)bsWidths.AddNew();

                    //由david加入以下两句 2020-10-19
                    widthDetail.System_Install_No = inspectionHeader.System_Install_No;
                    widthDetail.Company = inspectionHeader.Company;
                }

                widthDetail.Company = currentCompanyNo;
                //widthDetail.Item_No = inspectionHeader.Item_No;
                //widthDetail.Lot_Id = inspectionHeader.Lot_Id;
                //widthDetail.master = inspectionHeader;


                widthDetail.Usable_Width = currentValue;
                widthDetail.SideToSide_Width = currentSideToSideWithValue;

                //widthDetail.Usable_Width = (int)currentValue;
                //widthDetail.SideToSide_Width = (int)currentSideToSideWithValue;

                widthDetail.Detect_Turn_No = currenDefectTurnNo;

                //if (inspectionHeader.System_Install_No > 0)
                //{
                //    widthDetail.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                //    //                    widthDetail.System_Install_No = inspectionHeader.System_Install_No;
                //}
                ////widthDetail.System_Install_No = inspectionHeader.System_Install_No;

                bsWidths.EndEdit();
                bsIQC01.EndEdit();
                bsWidths.ResetBindings(false);

            }

        }

        /// <summary>
        /// Xsj(补)20110926：Confirm按钮动作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbHeaderConfirm_Click(object sender, EventArgs e)
        {
            ClearButtonBackColor();
            //setSpreadButtonEnable(false);
            setPartButtonEnable(false);
            if (MyMessageBox.ShowMyMessageBox("Do you want to save it?", "Information") == DialogResult.No)
            {
                return;
            }
            try
            {
                if (timerStarted)
                {
                    timer1.Stop();
                    timerStarted = false;
                    sbSetupSpeed.Enabled = true;
                    sbStartSuspend.Text = "Start";
                    gcBroadFuncButtons.Enabled = true;
                }
                if (needToCaptureImage)
                {
                    needToCaptureImage = false;
                    sbPhotograph.Text = "Photograph";
                }
                //xsj(补)20110926:保存检测资料
                if (SaveData())
                {
                    //Xsj:清理相机资源
                    this.DialogResult = DialogResult.OK;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when save data \n" + ex.Message);
            }
        }


        /// <summary>
        /// Xsj(补)20110926：保存检测数据 
        /// </summary>
        /// <returns></returns>
        private bool SaveData()
        {
            StringWriter sw = new StringWriter();
            try
            {
                Fabric_Insp_Header inspectionHeader = null;

                if (this.bsIQC01.Current == null)
                {
                    return true;
                }

                this.bsPartDefects.EndEdit();
                this.bsSpreadDefects.EndEdit();
                this.bsWidths.EndEdit();
                this.bsPictures.EndEdit();
                this.bsIQC01.EndEdit();



                inspectionHeader = (Fabric_Insp_Header)this.bsIQC01.Current;

                if (teHeaderInspLength.Text.Length == 0)
                {
                    MessageBox.Show("Inspection Lenth must input.");
                    ActiveControl = teHeaderInspLength;
                    teHeaderInspLength.SelectAll();
                    return false;
                }

                if (teHeaderCalc1.Text.Length == 0)
                {
                    MessageBox.Show("Panel Size must input.");
                    ActiveControl = teHeaderCalc1;
                    teHeaderCalc1.SelectAll();
                    return false;
                }

                if (teHeaderCalc2.Text.Length == 0)
                {
                    MessageBox.Show("Panel Size must input.");
                    ActiveControl = teHeaderCalc2;
                    teHeaderCalc2.SelectAll();
                    return false;
                }

                if (teHeaderPHSample.Text.Length == 0)
                {
                    MessageBox.Show("teHeaderPHSample must input.");
                    ActiveControl = teHeaderPHSample;
                    teHeaderPHSample.SelectAll();
                    return false;
                }

                if (teHeaderRollNo.Text.Length == 0)
                {
                    MessageBox.Show("Roll No must input.");
                    ActiveControl = teHeaderRollNo;
                    teHeaderRollNo.SelectAll();
                    return false;
                }

                if (teUsable_width.Text.Length == 0)
                {
                    MessageBox.Show("Usable Width must input.");
                    ActiveControl = teUsable_width;
                    teUsable_width.SelectAll();
                    return false;
                }

                if (inspectionHeader.Usable_Width <= 0)
                {
                    MessageBox.Show("Usable Width must be larger than zero.");
                    ActiveControl = teUsable_width;
                    teUsable_width.SelectAll();
                    return false;
                }

                //int currentSystemInstallNo = inspectionHeader.System_Install_No;

                //// Xsj(补)20110926:獲取流水號System_Install_No
                //if (inspectionHeader.System_Install_No <= 0)
                //{
                //    //currentSystemInstallNo = GetMaxSystemInstallNo();

                //    // Xsj(补)20110926：获取最大的System_Install_No
                //    inspectionHeader.System_Install_No = inspectionHeader.GetMaxInstallNo();   //GetMaxSystemInstallNo();

                //}

                //inspectionHeader.Create_Date = DateTime.Now;

                //foreach (Fabric_Insp_SpreadDefect spreadDefect in inspectionHeader.Fabric_Insp_SpreadDefects)
                //{
                //    if (spreadDefect.System_Install_No != inspectionHeader.System_Install_No)
                //    {
                //        spreadDefect.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                //        //                        spreadDefect.System_Install_No = inspectionHeader.System_Install_No;
                //    }
                //    //if (spreadDefect.System_Install_No != currentSystemInstallNo)
                //    //{
                //    //    spreadDefect.System_Install_No = currentSystemInstallNo;
                //    //}
                //}

                //foreach (Fabric_Insp_PartDefect partDefect in inspectionHeader.Fabric_Insp_PartDefects)
                //{
                //    //if (partDefect.System_Install_No != currentSystemInstallNo)
                //    //{
                //    //    partDefect.System_Install_No = currentSystemInstallNo;
                //    //}
                //    if (partDefect.System_Install_No != inspectionHeader.System_Install_No)
                //    {
                //        partDefect.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                //        //                        partDefect.System_Install_No = inspectionHeader.System_Install_No;
                //    }
                //}

                //foreach (Fabric_Insp_Width widthDetail in inspectionHeader.Fabric_Insp_Widths)
                //{
                //    //if (widthDetail.System_Install_No != currentSystemInstallNo)
                //    //{
                //    //    widthDetail.System_Install_No = currentSystemInstallNo;
                //    //}
                //    if (widthDetail.System_Install_No != inspectionHeader.System_Install_No)
                //    {
                //        widthDetail.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                //        //                        widthDetail.System_Install_No = inspectionHeader.System_Install_No;
                //    }
                //}

                //foreach (Fabric_Insp_Picture pictureDetail in inspectionHeader.Fabric_Insp_Pictures)
                //{
                //    //if (pictureDetail.System_Install_No != currentSystemInstallNo)
                //    //{
                //    //    pictureDetail.System_Install_No = currentSystemInstallNo;
                //    //}
                //    if (pictureDetail.System_Install_No != inspectionHeader.System_Install_No)
                //    {
                //        pictureDetail.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                //        //                        pictureDetail.System_Install_No = inspectionHeader.System_Install_No;
                //    }
                //}

                //if (inspectionHeader.System_Install_No != currentSystemInstallNo)
                //{
                //    inspectionHeader.System_Install_No = currentSystemInstallNo;
                //}


                try
                {
                    inspectionHeader.Usable_Width = Convert.ToDecimal(teUsable_width.Text);
                }
                catch
                {
                }
                try
                {
                    inspectionHeader.Actual_Length = Convert.ToDecimal(teHeaderSupplierLength.Text);
                }
                catch
                {
                }

                inspectionHeader.Inspector = GlobalInfo.GetCurrentUserId();
                //if ((inspectionHeader.Create_User == null) || (inspectionHeader.Create_User.Trim() == ""))
                //{ 
                //    inspectionHeader.Create_User = GlobalInfo.GetCurrentUserId();
                //    inspectionHeader.Create_Date = DateTime.Now;
                //}
                #region
                //Xsj:應Shelley的要求注釋掉如下代碼，目的是為了Change_Date用於記錄：驗布時間和復檢時間
                //else
                //{
                inspectionHeader.Change_User = GlobalInfo.GetCurrentUserId();
                inspectionHeader.Change_Date = DateTime.Now;
                //}
                //Xsj:應Shelley的要求添加如下代碼 
                inspectionHeader.Inspection_Date = DateTime.Now;
                //inspectionHeader.Change_User = GlobalInfo.GetCurrentUserId();
                //inspectionHeader.Change_Date = DateTime.Now;
                #endregion

                if (inspectionHeader.Special_Marker == null)
                {
                    inspectionHeader.Special_Marker = 0;
                }

                if (inspectionHeader.Turn_Size == null)
                {
                    inspectionHeader.Turn_Size = 0;
                }

                inspectionHeader.IQC_Reference = GetIQCReference(inspectionHeader.System_Install_No, (DateTime)inspectionHeader.Create_Date);
                inspectionHeader.Use_Status = "1";

                inspectionHeader.LightStatus = txtLightStatus.Text;
                inspectionHeader.WeftYarnClass = txtWeftYarnClass.Text;
                if (txtWeftYarnPercentage.Text != null && txtWeftYarnPercentage.Text != "")
                    inspectionHeader.WeftYarnPercentage = Convert.ToDecimal(txtWeftYarnPercentage.Text);

                inspectionHeader.WeftYarn = txtWeftYarn.Text;
                inspectionHeader.MouldTrial = txtMouldTrial.Text;
                inspectionHeader.Elongation = txtElongation.Text;

                if (inspectionHeader.Elongation == "N")
                {
                    inspectionHeader.ElongationStatus = "0";
                }
                else
                {
                    if (inspectionHeader.ElongationStatus == "0")
                    {
                        inspectionHeader.ElongationStatus = null;
                    }
                }


                if (inspectionHeader.WeftYarn == "N")
                {
                    inspectionHeader.WeftYarnStatus = "0";
                }
                else
                {
                    if (inspectionHeader.WeftYarnStatus == "0")
                    {
                        inspectionHeader.WeftYarnStatus = null;
                    }
                }

                if (inspectionHeader.MouldTrial == "N")
                {
                    inspectionHeader.Mould_Trial_Result = "0";
                }
                else
                {
                    if (inspectionHeader.Mould_Trial_Result == "0")
                    {
                        inspectionHeader.Mould_Trial_Result = null;
                    }
                }

                //在保存到DB之前才取RefNo, 不然会出现重复的RefNo. 由David加入 2020-10-21
                if (!inspectionHeader.RefNo.HasValue)
                {
                    inspectionHeader.RefNo = this.GetMaxRefNo(this.context, inspectionHeader.Stock_In_Date, inspectionHeader.Item_No);
                    inspectionHeader.AuditNo1 = inspectionHeader.RefNo.ToString().Substring(0, 6) + "-" + inspectionHeader.RefNo.ToString().Substring(6);
                }


                ///====================================================================
                ///Modified By:Michael Luo
                ///Modified at:2008-09-02
                ///Function Description:
                ///Obtain Project No & HDO No & PO No & Invoice No & Supplier Item No
                ///====================================================================
                ///Modified By:Sharly
                ///Modified at:2009-03-19
                ///Function Description: cancel call AS400
                //List<PH984Field> tempPH984Field = PH984Field.GetAllDataFromAS400WithItemNo(inspectionHeader.Company, inspectionHeader.Item_No, inspectionHeader.Stock_In_Date);
                //if (tempPH984Field.Count > 0)
                //{
                //    inspectionHeader.ProjectNo = tempPH984Field[0].ProjectNo.Trim();
                //    inspectionHeader.PO = tempPH984Field[0].PO.Trim();
                //    inspectionHeader.HdoNo = tempPH984Field[0].HdoNo.Trim();
                //    inspectionHeader.InvoiceNo = tempPH984Field[0].InvoiceNo.Trim();
                //    inspectionHeader.Supplier_Item_No = tempPH984Field[0].Supplier_Item_No.Trim();
                //    inspectionHeader.Supplier_Code = tempPH984Field[0].SupplierName.Trim();
                //}
                ///=======================================================================

                // Xsj(补)20110926：计算得分
                MasterTableUtil.RecalcMasterValue(context, inspectionHeader);

                bsPartDefects.EndEdit();
                bsSpreadDefects.EndEdit();
                bsWidths.EndEdit();
                bsPictures.EndEdit();

                bsIQC01.EndEdit();

                //追蹤sql語句
                //StringWriter sw = new StringWriter();
                this.context.Log = sw;
                //string sql = sw.ToString();
                //File.WriteAllText("IMQE.txt", sql);

                ////-------------------------------------------


                this.context.GetChangeSet().Inserts.Count();
                this.context.GetChangeSet().Deletes.Count();
                this.context.GetChangeSet().Updates.Count();

                string SqlStr = "insert DebugLog(LotID, Inserts, Deletes, Updates, Date)" +
                                "Values('{0}', {1}, {2}, {3}, getdate())";

                SqlStr = string.Format(SqlStr,
                    inspectionHeader.Lot_Id,
                    this.context.GetChangeSet().Inserts.Count(),
                    this.context.GetChangeSet().Deletes.Count(),
                    this.context.GetChangeSet().Updates.Count());
                this.context.ExecuteCommand(SqlStr);


                //this.context.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                this.context.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                //File.WriteAllText("IMQE.txt", sw.ToString());

                //return true;
            }
            catch (ChangeConflictException conflictEx)
            {
                foreach (ObjectChangeConflict occ in context.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
                context.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
            catch (Exception ex)
            {
                File.WriteAllText("IMQE.txt", sw.ToString());
                MessageBox.Show(ex.Message);
                return false;
            }
            return true;

        }

        //得到最大的Ref No. 由David 加入  2020-09-29
        public int? GetMaxRefNo(FabricInspectionDataContext ADB, string AStockInDate, string AItemNo)
        {
            string SqlStr = string.Format("select dbo.fn_GetMaxRefNo('{0}','{1}')", AStockInDate, AItemNo);
            DataTable dt = ADB.ExecuteDataTable(SqlStr, "dtRefNo");
            if (dt == null || dt.Rows.Count == 0) return 0;

            return (int)dt.Rows[0][0];

            //var obj = ADB.Fabric_Insp_Headers.FirstOrDefault(p => p.Stock_In_Date == AStockInDate && p.Item_No == AItemNo && p.RefNo.HasValue);
            //if (obj != null)
            //{
            //    return obj.RefNo;
            //}

            //int MaxRefNoByStockInDate = ADB.Fabric_Insp_Headers.Where(p => p.Stock_In_Date == AStockInDate).Select(p => (p.RefNo ?? 0)).Max();
            //return (MaxRefNoByStockInDate > 0) ? (MaxRefNoByStockInDate + 1) : (Convert.ToInt32(AStockInDate) * 1000 + 1);
        }

        private bool IsExistMasterRecord(string lotId)
        {
            var p = from c in context.Fabric_Insp_Headers where c.Lot_Id.Trim().ToUpper().Equals(lotId.ToUpper().Trim()) select c;
            if (p.ToList().Count <= 0)
            {
                return false;
            }
            return true;
        }

        // M+年+系统统一生成的编号 + 检验月份 + 日期   M 是固定不變)
        private string GetIQCReference(int systemNo, DateTime inspectDate)
        {
            try
            {
                string no = "";
                string year = inspectDate.Year.ToString();
                string month = inspectDate.Month.ToString();
                if (month.Length < 2)
                {
                    month = "0" + month;
                }
                string day = inspectDate.Day.ToString();
                if (day.Length < 2)
                {
                    day = "0" + day;
                }
                no = year[year.Length - 1] + systemNo + month + day;
                return "M" + no;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }


        ///// <summary>
        /////  Xsj(补)20110926：获取最大的System_Install_No
        ///// </summary>
        ///// <returns></returns>
        //private int GetMaxSystemInstallNo()
        //{
        //    string strToday = MasterTableUtil.getTodayString();
        //    int maxNo = 0;

        //    try
        //    {
        //        //freddy -- 2009-03-31 for convert to PlatForm2
        //        //var tempData = from p in context.Fabric_Insp_Headers
        //        //               select p;
        //        //List<Fabric_Insp_Header> tempIQC02s = tempData.ToList<Fabric_Insp_Header>();

        //        Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();

        //        List<Fabric_Insp_Header> tempIQC02s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(strToday).ToList<Fabric_Insp_Header>();


        //        if (tempIQC02s != null)
        //        {

        //            int tempNo = 0;
        //            string tempInstallNo = "";
        //            Fabric_Insp_Header tempInspectionHeader = null;
        //            for (int i = 0, iSize = tempIQC02s.Count; i < iSize; i++)
        //            {
        //                tempInspectionHeader = tempIQC02s[i];
        //                //if (tempInspectionHeader == null) {
        //                //    return;
        //                //}
        //                tempInstallNo = tempInspectionHeader.System_Install_No.ToString();
        //                if (tempInstallNo.StartsWith(strToday))
        //                {
        //                    tempNo = Convert.ToInt32(tempInstallNo.Substring(strToday.Length));
        //                    if (tempNo > maxNo)
        //                    {
        //                        maxNo = tempNo;
        //                    }
        //                }

        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load data from Master \n" + ex.Message);
        //    }

        //    maxNo = maxNo + 1;

        //    // Xsj(补)20110926：获取内存中当天的最大流水号
        //    int tempMaxNo = GetMaxSystemInstallNoInMemory();
        //    if (tempMaxNo > maxNo)
        //    {
        //        maxNo = tempMaxNo;
        //    }
        //    string strMaxNo = maxNo.ToString();
        //    if (strMaxNo.Length > 3)
        //    {
        //        strMaxNo = strMaxNo.Substring(0, 3);
        //    }

        //    return Convert.ToInt32((strToday + MasterTableUtil.getFixedLengthString(strMaxNo, 3)));

        //}



        ///// <summary>
        /////  Xsj(补)20110926：获取内存中最大的System_Install_No
        ///// </summary>
        ///// <returns></returns>
        //private int GetMaxSystemInstallNoInMemory()
        //{
        //    string strToday = MasterTableUtil.getTodayString();
        //    int maxNo = 0;
        //    try
        //    {
        //        int tempNo = 0;
        //        string tempInstallNo = "";
        //        foreach (Fabric_Insp_Header tempInspectionHeader in masterListForm.BindingSource)
        //        {
        //            //if (tempInspectionHeader == null) {
        //            //    return;
        //            //}
        //            tempInstallNo = tempInspectionHeader.System_Install_No.ToString();
        //            if (tempInstallNo.StartsWith(strToday))
        //            {
        //                tempNo = Convert.ToInt32(tempInstallNo.Substring(strToday.Length));
        //                if (tempNo > maxNo)
        //                {
        //                    maxNo = tempNo;
        //                }
        //            }

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load data from Master \n" + ex.Message);
        //    }

        //    maxNo = maxNo + 1;

        //    return maxNo;
        //}

        //private string getTodayString()
        //{
        //    string timeFormat = "yyMMdd";
        //    DateTime time = DateTime.Now;
        //    string strDate = time.ToString(timeFormat, new CultureInfo("en-US"));
        //    if (strDate.Length > 0)
        //    {
        //        if (strDate[0] == '0')
        //        {
        //            strDate = strDate.Substring(1);
        //        }
        //    }
        //    return strDate;
        //}

        //private string getFixedLengthString(string strValue, int iLen)
        //{
        //    string tempValue = strValue;
        //    while (tempValue.Length < iLen)
        //    {
        //        tempValue = "0" + tempValue;
        //    }
        //    return tempValue;
        //}

        /// <summary>
        /// Xsj(补)20110926：Return按钮动作 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbHeaderReturn_Click(object sender, EventArgs e)
        {
            try
            {
                ClearButtonBackColor();
                //setSpreadButtonEnable(false);

                setPartButtonEnable(false);

                if (MyMessageBox.ShowMyMessageBox("Do you want to save it?", "Information") == DialogResult.Yes)
                {
                    if (timerStarted)
                    {
                        timer1.Stop();
                        timerStarted = false;
                        sbSetupSpeed.Enabled = true;
                        sbStartSuspend.Text = "Start";
                        gcBroadFuncButtons.Enabled = true;
                    }
                    if (needToCaptureImage)
                    {
                        needToCaptureImage = false;
                        sbPhotograph.Text = "Photograph";
                    }
                    if (!SaveData())
                    {
                        return;
                    }
                }
                else
                {
                    // Xsj(补)20110926：取消操作
                    masterListForm.BindingSource.CancelEdit();
                }

                this.DialogResult = DialogResult.Cancel;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void teHeaderCalc1_KeyPress(object sender, KeyPressEventArgs e)
        {
            switch (e.KeyChar)
            {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                case '-':
                case '.':
                case (char)13:
                case (char)10:
                case (char)9:
                case (char)8:
                    e.Handled = false;
                    if (!FloatUtil.IsFloat(((DevExpress.XtraEditors.TextEdit)sender).Text + e.KeyChar))
                    {
                        e.Handled = true;
                    }
                    break;
                default:
                    e.Handled = true;
                    break;
            }

        }

        private void sbDeleteWidth_Click(object sender, EventArgs e)
        {

            ClearButtonBackColor();
            if (focusedGridControl == null)
            {
                MessageBox.Show("Please select Data to delete.");
                return;
            }

            if (focusedGridControl == gridPartDefects)
            {
                if (this.bsPartDefects.DataSource == null)
                {
                    return;
                }
                if (bsPartDefects.Count > 0)
                {
                    try
                    {
                        Type type = this.bsPartDefects.Current.GetType();
                        this.context.GetTable(type).DeleteOnSubmit(this.bsPartDefects.Current);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                    this.bsPartDefects.RemoveCurrent();
                }
            }
            else
                if (focusedGridControl == gridSpreadDefects)
                {
                    if (this.bsSpreadDefects.DataSource == null)
                    {
                        return;
                    }
                    if (bsSpreadDefects.Count > 0)
                    {
                        try
                        {
                            Type type = this.bsSpreadDefects.Current.GetType();
                            this.context.GetTable(type).DeleteOnSubmit(this.bsSpreadDefects.Current);
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }

                        this.bsSpreadDefects.RemoveCurrent();
                    }
                }

                else
                    if (focusedGridControl == gridWidths)
                    {
                        if (this.bsWidths.DataSource == null)
                        {
                            return;
                        }

                        if (bsWidths.Count > 0)
                        {
                            try
                            {
                                Type type = this.bsWidths.Current.GetType();
                                this.context.GetTable(type).DeleteOnSubmit(this.bsWidths.Current);
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }

                            this.bsWidths.RemoveCurrent();
                        }
                    }

        }

        private void teHeaderInspLength_Enter(object sender, EventArgs e)
        {

            ClearButtonBackColor();
            //setSpreadButtonEnable(false);

            setPartButtonEnable(false);

            TextEdit focusedTextEdit = (TextEdit)sender;
            decimal initValue = 0;
            try
            {
                initValue = Convert.ToDecimal(focusedTextEdit.Text);
            }
            catch
            {
            }
            string strCaption = (string)focusedTextEdit.Tag;
            if (FrmNumInputter.ShowNumInputter(strCaption, ref initValue))
            {
                if (initValue >= 0)
                {
                    focusedTextEdit.Text = initValue.ToString();

                }
                else
                {
                    MessageBox.Show("The value  must be greater than zero or enqual zero");
                }
            }

        }

        private void teHeaderSupplierBatch_Enter(object sender, EventArgs e)
        {

            ClearButtonBackColor();
            //setSpreadButtonEnable(false);

            setPartButtonEnable(false);

            TextEdit focusedTextEdit = (TextEdit)sender;
            string initValue = focusedTextEdit.Text;

            string strCaption = (string)focusedTextEdit.Tag;
            string currentValue = FrmCharInputter.ShowCharInputter(strCaption, initValue);
            if (currentValue != "")
            {
                focusedTextEdit.Text = currentValue;

            }

        }

        /// <summary>
        ///  Xsj(补)20110926：对gridPartDefects、gridSpreadDefects、gridWidths进行显示或隐藏
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void gridPartDefects_Enter(object sender, EventArgs e)
        {
            focusedGridControl = (GridControl)sender;
            pePartyDefectsGrid.Visible = false;
            peSpreadDefectsGrid.Visible = false;
            peWidthGrid.Visible = false;

            if (focusedGridControl == gridPartDefects)
            {
                pePartyDefectsGrid.Visible = true;
            }
            else if (focusedGridControl == gridSpreadDefects)
            {
                peSpreadDefectsGrid.Visible = true;
            }
            else if (focusedGridControl == gridWidths)
            {
                peWidthGrid.Visible = true;
            }
        }

        /// <summary>
        /// Xsj(补)20110926：设置相关按钮样式
        /// </summary>
        private void ClearButtonBackColor()
        {
            //Xsj(补)20110926：设置xscPartDefects内按钮样式
            ClearDefectsButtonBackColor(xscPartDefects);
            //ClearDefectsButtonBackColor(xscSpreadDefects);

            //Xsj(补)20110926：pnlPartLevel面板中的StateButton的外观
            ClearLevelButtonBackColor();
            // Xsj(补)20110926：pnlNewPartLevel，PnlNewSpreadLevel面板中的StateButton的外观
            clearNewLevelButtonBackColor();
            sbWidthDetail.BackColor = sbDeleteWidth.BackColor;
            sbWidthDetail.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
        }

        /// <summary>
        ///  Xsj(补)20110926：设置StateButton的外观
        /// </summary>
        /// <param name="xscDefects"></param>
        private void ClearDefectsButtonBackColor(XtraScrollableControl xscDefects)
        {
            Control tempControl = null;
            for (int i = 0, iSize = xscDefects.Controls.Count; i < iSize; i++)
            {
                tempControl = xscDefects.Controls[i];
                if (tempControl is StateButton)
                {
                    ((StateButton)tempControl).BackColor = sbDeleteWidth.BackColor;
                    ((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
            }
        }

        /// <summary>
        /// Xsj(补)20110926：pnlPartLevel面板中的StateButton的外观
        /// </summary>
        private void ClearLevelButtonBackColor()
        {
            Control tempControl = null;
            for (int i = 0, iSize = pnlPartLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = pnlPartLevel.Controls[i];
                if (tempControl is StateButton)
                {
                    ((StateButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
                else if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                }

            }

        }

        /// <summary>
        /// Xsj(補):设置pnlNewPartLevel面板中的Lable外觀
        /// </summary>
        private void clearNewLevelButtonBackColor()
        {
            //  Xsj(补)20110926：设置pnlNewPartLevel面板中的StateButton的外观
            clearNewPartLevelButtonBackColor();
            //  Xsj(补)20110926：设置PnlNewSpreadLevel面板中检索相关的Label并反回其BackColor
            clearNewSpreadLevelButtonBackColor();
        }

        /// <summary>
        ///  Xsj(补)20110926：设置pnlNewPartLevel面板中的StateButton的外观
        /// </summary>
        private void clearNewPartLevelButtonBackColor()
        {
            Control tempControl = null;

            for (int i = 0, iSize = pnlNewPartLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = pnlNewPartLevel.Controls[i];
                if (tempControl is StateButton)
                {
                    //((StateButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    //((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;


                    if (tempControl.Tag != null)
                    {
                        string tempTag = (string)tempControl.Tag;

                        if (tempTag.Length >= 2)
                        {
                            ((StateButton)tempControl).Appearance.BackColor = findLabelColorWithTag(tempTag[0] + "");
                        }
                    }
                }
                else if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).BackColor = sbStdNewPartLevelColor.BackColor;
                }
            }



        }

        /// <summary>
        /// Xsj(补)20110926：设置pnlNewPartLevel面板中检索相关的Label并反回其BackColor
        /// </summary>
        /// <param name="strTag"></param>
        /// <returns></returns>
        private Color findLabelColorWithTag(string strTag)
        {
            Control tempControl = null;

            for (int i = 0, iSize = pnlNewPartLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = pnlNewPartLevel.Controls[i];
                if (tempControl is Label)
                {
                    if (tempControl.Tag != null)
                    {
                        string tempTag = (string)tempControl.Tag;

                        if (tempTag.Length == 1)
                        {
                            if (tempTag.Equals(strTag))
                            {
                                return tempControl.BackColor;
                            }
                        }
                    }
                }

            }

            return sbDeleteWidth.BackColor;

        }

        /// <summary>
        ///  Xsj(补)20110926：设置PnlNewSpreadLevel面板中检索相关的Label并反回其BackColor
        /// </summary>
        private void clearNewSpreadLevelButtonBackColor()
        {
            Control tempControl = null;

            for (int i = 0, iSize = PnlNewSpreadLevel.Controls.Count; i < iSize; i++)
            {
                tempControl = PnlNewSpreadLevel.Controls[i];
                if (tempControl is StateButton)
                {
                    ((StateButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
                else if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;

                }
            }

        }


        private void arrangTurnNoButtons(int turnID)
        {
            pcTurnNoButtons.Controls.Clear();
            int iSize = Math.Min((turnID + 1) * TURN_NO_BUTTON_COUNT, maxTurnNo);
            SimpleButton tempButton;
            int j = 1;
            int iCol = 0;
            for (int i = turnID * TURN_NO_BUTTON_COUNT; i < iSize; i++)
            {
                tempButton = new StateButton();
                tempButton.Width = turnNoButtonWidth;
                tempButton.Height = sbTurnNoPrev10.Height;
                tempButton.Text = (i + 1).ToString();
                tempButton.Tag = i + 1;

                //tempButton.Font = buttonFont;

                tempButton.Appearance.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;

                iCol = i % TURN_NO_BUTTON_COUNT;
                tempButton.Left = iCol * (5 + tempButton.Width);
                tempButton.Top = sbTurnNoPrev10.Top;

                tempButton.Click += new System.EventHandler(this.turnNoButtons_Click);
                pcTurnNoButtons.Controls.Add(tempButton);

                if (j == 1)
                {
                    turnNoButtons_Click(tempButton, null);
                }
                j++;
            }
            if (turnID - 1 >= 0)
            {
                sbTurnNoPrev10.Tag = turnID - 1;
                sbTurnNoPrev10.Enabled = true;
            }
            else
            {
                sbTurnNoPrev10.Enabled = false;
            }

            if (iSize < maxTurnNo)
            {
                sbTurnNoNext10.Tag = turnID + 1;
                sbTurnNoNext10.Enabled = true;
            }
            else
            {
                sbTurnNoNext10.Enabled = false;
            }

        }

        private void turnNoButtons_Click(object sender, EventArgs e)
        {
            ClearButtonBackColor();
            ClearTurnNoButtonBackColor();

            StateButton turnNoButton = (StateButton)sender;
            turnNoButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
            turnNoButton.Appearance.BackColor = selectedButtonBackColor;
            turnNoButton.Down = true;
            currenDefectTurnNo = (int)turnNoButton.Tag;
            ScrollRowToTop(currenDefectTurnNo);
        }

        private void ScrollRowToTop(int defectTurnNo)
        {
            object tempRow = null;
            for (int i = 0, iSize = gridViewPartDefects.RowCount; i < iSize; i++)
            {
                tempRow = gridViewPartDefects.GetRow(i);
                if (tempRow != null)
                {
                    if (tempRow is Fabric_Insp_PartDefect)
                    {
                        if (((Fabric_Insp_PartDefect)tempRow).Detect_Turn_No == defectTurnNo)
                        {
                            gridViewPartDefects.TopRowIndex = i;
                            break;
                        }
                    }
                }
            }

            for (int i = 0, iSize = gridViewWidth.RowCount; i < iSize; i++)
            {
                tempRow = gridViewWidth.GetRow(i);
                if (tempRow != null)
                {
                    if (tempRow is Fabric_Insp_Width)
                    {
                        if (((Fabric_Insp_Width)tempRow).Detect_Turn_No == defectTurnNo)
                        {
                            gridViewWidth.TopRowIndex = i;
                            break;
                        }
                    }
                }
            }
        }

        private void ClearTurnNoButtonBackColor()
        {
            Control tempControl = null;
            for (int i = 0, iSize = pcTurnNoButtons.Controls.Count; i < iSize; i++)
            {
                tempControl = pcTurnNoButtons.Controls[i];
                if (tempControl is StateButton)
                {
                    ((StateButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((StateButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                    ((StateButton)tempControl).Down = false;
                }
                else if (tempControl is SimpleButton)
                {
                    ((SimpleButton)tempControl).Appearance.BackColor = sbDeleteWidth.BackColor;
                    ((SimpleButton)tempControl).ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
                }

            }

        }

        private void initTurnNoButtons(decimal dFabricLength)
        {
            try
            {
                maxTurnNo = (int)Math.Ceiling(dFabricLength);
                arrangTurnNoButtons(0);
            }
            catch
            {

            }

        }

        private void teHeaderInspLength_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    decimal tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
            //    if (tempFarbicLength <= 0)
            //    {
            //        tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);
            //        initTurnNoButtons(tempFarbicLength);
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //    //MessageBox.Show("please input a valid data\n" + ex.Message);
            //}
        }

        private void sbTurnNoPrev10_Click(object sender, EventArgs e)
        {
            SimpleButton tempButton = (SimpleButton)sender;
            if (tempButton.Tag != null)
            {
                int iTurn = (int)tempButton.Tag;
                arrangTurnNoButtons(iTurn);
            }


        }

        /// <summary>
        ///  Xsj(补)20110926：启动/停止自动跳板和拍照功能
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbStartSuspend_Click(object sender, EventArgs e)
        {
            if (timerStarted)
            {
                timer1.Stop();
                timerStarted = false;
                sbSetupSpeed.Enabled = true;
                sbStartSuspend.Text = "Start";
                gcBroadFuncButtons.Enabled = true;
                //sbPhotograph.Text = "Photograph";
                sbPhotograph.Enabled = true;
            }
            else
            {
                timer1.Start();
                timerStarted = true;
                sbSetupSpeed.Enabled = false;
                sbStartSuspend.Text = "Suspend";
                gcBroadFuncButtons.Enabled = false;
                //sbPhotograph.Text = "UNPhoto";
                sbPhotograph.Enabled = false;
            }

            //Xsj:20111011注释掉如下旧的拍照逻辑
            //if (timerStarted)
            //{
            //    startVideoControllerCenter();
            //}

        }

        //增加手動拍照 BEGIN SHARLY
        private void sbPhotograph_Click(object sender, EventArgs e)
        {

            if (!needToCaptureImage)
            {
                needToCaptureImage = false;
                captureImage();
            }
            else
                needToCaptureImage = false;


            sbPhotograph.Enabled = false;
            PhotoTime.Start();

        }
        //增加手動拍照 END SHARLY


        private void timer1_Tick(object sender, EventArgs e)
        {
            timeElapsed = timeElapsed + 1;

            if (dBroadsPerSecond > 0)
            {
                //1:拍照
                //取消自動拍照 BEGIN SHARLY
                //if (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100 == dTimeForPhotograph * 1000)
                //{
                //    if (needToCaptureImage)
                //    {
                //        if (!bPhotoCaptured)
                //        {
                //            //listBoxControl1.Items.Add("photo:" + dBroadsPerSecond + "*" + dRate + "-" + timeElapsed + "<=" + dTimeForPhotograph + " _" + (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100).ToString());

                //            captureImage();
                //            bPhotoCaptured = true;
                //        }
                //    }
                //}
                //取消自動拍照 END SHARLY


                //Xsj:更改自动拍照如下
                if (PHCameraController.MyPHCameraController.cameraActionProperties != null && PHCameraController.MyPHCameraController.cameraActionProperties.IsAuto)
                {
                    if (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100 == dTimeForPhotograph * 1000)
                    {
                        if (!needToCaptureImage)
                        {
                            if (!bPhotoCaptured)
                            {
                                //listBoxControl1.Items.Add("photo:" + dBroadsPerSecond + "*" + dRate + "-" + timeElapsed + "<=" + dTimeForPhotograph + " _" + (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100).ToString());

                                captureImage();
                                bPhotoCaptured = true;
                            }
                        }
                    }
                }

                //2：跳板
                if (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100 <= 0)
                {
                    
                    //listBoxControl1.Items.Add("board:" + dBroadsPerSecond.ToString() + "*" + dRate.ToString() + "-" + timeElapsed.ToString() + "<= 0" + " _" + (dBroadsPerSecond * 1000 * dRate - timeElapsed * 100).ToString());
                    timeElapsed = 0;
                    bPhotoCaptured = false;
                    currenDefectTurnNo = currenDefectTurnNo + 1;
                    if (!FindAndClickTurnButton(currenDefectTurnNo))
                    {
                        if (TURN_NO_BUTTON_COUNT > 0)
                        {
                            if (currenDefectTurnNo <= maxTurnNo)
                            {
                                DefectClick = false;
                                int iTurnId = (int)Math.Floor((decimal)(currenDefectTurnNo / TURN_NO_BUTTON_COUNT));
                                arrangTurnNoButtons(iTurnId);
                                FindAndClickTurnButton(currenDefectTurnNo);
                            }
                            else
                            {
                                //stop
                                sbStartSuspend_Click(null, null);
                            }
                        }
                    }

                }

            }

        }


        /// <summary>
        /// Xsj(补)20110926：查找数据源中是否存在指定板号的相片 
        /// </summary>
        /// <param name="iBroadNo"></param>
        /// <returns></returns>
        private Fabric_Insp_Picture findPhote(int iBroadNo)
        {
            //foreach (Fabric_Insp_Picture tempPhote in inspectionHeader.Fabric_Insp_Pictures)
            //{
            //    if (tempPhote.BroadNo == iBroadNo)
            //    {
            //        return tempPhote;
            //    }
            //}

            foreach (Fabric_Insp_Picture tempPhote in bsPictures)
            {
                if (tempPhote.BroadNo == iBroadNo)
                {
                    return tempPhote;
                }
            }
            return null;
        }


        /// <summary>
        ///  Xsj(补)20110926：相机拍照功能
        /// </summary>
        ///  
        private void captureImage()
        {

            //Xsj(补)20110926：lockedObject用于辅助防止并发冲突
            lock (lockedObject)
            {
                //if ((videoCenter != null) && (videoCenter.isStarted))
                //{
                //string x =null;
                ////Xsj(补)20110926：图像名命规则--"Item_No A/B 000"
                //x = teHeaderItemNo.Text.Substring(0, 12);
                //x = x + teHeaderIDNO.Text + " B" + currenDefectTurnNo.ToString("000") ;

                /*
                 * //Xsj(补)20110926：拍照并返回byte[]
                byte[] imageBytes = videoCenter.captureImageAsBytes(x);

                //Image image = videoCenter.captureImage();

                //Xsj(补)20110926：从数据源中查找当前板号已有的照片
                //Xsj(补)20110926：如果一个板号存在两张相片时，此处的逻辑出现问题
                Fabric_Insp_Picture tempPhote = findPhote(currenDefectTurnNo);
                try
                {                       
                    if (tempPhote != null)
                    {
                        //tempPhote.Photo_Image = image;
                        tempPhote.Photo_Image = new System.Data.Linq.Binary(imageBytes);

                        //tempPhote.Image_Bytes = imageBytes;
                    }
                    else
                    {

                        //tempPhote = Photo.NewPhoto(GlobalInfo.FBIDB, currentCompanyNo, inspectionHeader.Item_No, inspectionHeader.Lot_Id, currenDefectTurnNo, image);
                        tempPhote = (Fabric_Insp_Picture)bsPictures.AddNew();
                        tempPhote.Company = currentCompanyNo;
                        //tempPhote.Item_No = inspectionHeader.Item_No;
                        //tempPhote.Lot_Id = inspectionHeader.Lot_Id;
                        tempPhote.BroadNo = currenDefectTurnNo;

                        if (inspectionHeader.System_Install_No > 0)
                        {
                            tempPhote.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                            //                                tempPhote.System_Install_No = inspectionHeader.System_Install_No;
                        }

                        //phote.Image_Bytes = imageBytes;

                        //tempPhote.Photo_Image = image;
                        //tempPhote.Photo_Image = new System.Data.Linq.Binary(imageBytes); //sharly 取消圖片的保存
                        tempPhote.Create_Date = DateTime.Now;
                    }
                    //                            tempPhote.Save();


                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error happened when capture image\n" + ex.Message);

                }

                //}
                 */


                //Xsj:更改以上拍照逻辑为以下
                if (!MyCameraController.CameraController.cameraListStatus.IsOK) //(!myCameraController.cameraListStatus.IsOK)
                {
                    MessageBox.Show(MyCameraController.CameraController.cameraListStatus.NoteMsg, "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                string x = null;
                //Xsj(补)20110926：图像名命规则--"Item_No A/B 000"
                x = teHeaderItemNo.Text.Substring(0, 12);

                //x = x + teHeaderIDNO.Text + " B" + currenDefectTurnNo.ToString("000");
                x = x + teHeaderIDNO.Text.Replace("\r\n", "~") + " B" + currenDefectTurnNo.ToString("000");  //因为有多个ID的时候，有换行符，是非法文件名，需要特殊处理David 2022-11-01

                Fabric_Insp_Picture tempPhote = findPhote(currenDefectTurnNo);
                if (tempPhote == null)
                {
                    tempPhote = (Fabric_Insp_Picture)bsPictures.AddNew();
                    tempPhote.Company = currentCompanyNo;
                    tempPhote.System_Install_No = inspectionHeader.System_Install_No; //由David加入 2020-10-19
                    tempPhote.BroadNo = currenDefectTurnNo;

                    //if (inspectionHeader.System_Install_No > 0)
                    //{
                    //    tempPhote.System_Install_No_ForUpdate = inspectionHeader.System_Install_No;
                    //}

                    tempPhote.Create_Date = DateTime.Now;
                }

                MyCameraController.CameraController.CameraAction(tempPhote, x);

            }
        }




        private bool FindAndClickTurnButton(int iTurnNo)
        {
            StateButton tempButton = null;
            foreach (Control turnButton in pcTurnNoButtons.Controls)
            {
                if (turnButton is StateButton)
                {
                    tempButton = (StateButton)turnButton;
                    if ((tempButton.Tag != null) && ((int)tempButton.Tag == iTurnNo))
                    {
                        turnNoButtons_Click(tempButton, null);
                        return true;
                    }
                }
            }
            return false;
        }

        /// <summary>
        /// Xsj(补)20110926：Setup Data按钮动作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbSetupSpeed_Click(object sender, EventArgs e)
        {
            string tempLightStatus = txtLightStatus.Text;
            string tempWeftYarnClass = txtWeftYarnClass.Text;
            string tempWeftYarn = txtWeftYarn.Text;
            string tempMouldTrial = txtMouldTrial.Text;
            string tempElongation = txtElongation.Text;
            decimal tempWeftYarnPercentage = 0;
            if ((txtWeftYarnPercentage.Text != null) && (txtWeftYarnPercentage.Text != ""))
            {
                tempWeftYarnPercentage = Convert.ToDecimal(txtWeftYarnPercentage.Text);
            }

            decimal tempBroadsPerMinute = dBroadsPerSecond;
            if (dBroadsPerSecond != 0)
            {
                tempBroadsPerMinute = 60 / dBroadsPerSecond;
            }
            decimal tempRate = dRate;
            if (tempRate - 1 >= 0)
            {
                tempRate = (tempRate - 1) * 100;
            }

            Fabric_Insp_Header obj = this.bsIQC01.Current as Fabric_Insp_Header;
            SpeedValue speedValue = FrmSpeedValueInputter.ShowSpeedValueInputter(tempBroadsPerMinute, dTimeForPhotograph, tempRate, tempLightStatus, tempWeftYarnClass,
                tempWeftYarnPercentage, tempElongation, tempMouldTrial, tempWeftYarn, obj);

            
            if (speedValue != null)
            {
                dBroadsPerSecond = speedValue.SecondPerBroad; 
                dTimeForPhotograph = speedValue.TimeForPhotograph;
                //dRate = speedValue.RatePercent; 
                
                dRate = speedValue.Rate;
                lcBroadPerSecond.Text = speedValue.SecondPerBroad.ToString();
                lcSecondsPerClick.Text = speedValue.TimeForPhotograph.ToString();
                lcRate.Text = speedValue.RatePercent.ToString();
                txtLightStatus.Text = speedValue.LightStatus;
                txtWeftYarnClass.Text = speedValue.WeftYarnClass;
                txtWeftYarnPercentage.Text = speedValue.WeftYarnPercentage.ToString();
                txtElongation.Text = speedValue.Elongation;
                txtMouldTrial.Text = speedValue.MouldTrial;
                txtWeftYarn.Text = speedValue.WeftYarn;

                //由David加入 2020-10-09  
                obj.ColorMatching = speedValue.ColorMatching;
                obj.Lamination = speedValue.Lamination;
                obj.Bonding = speedValue.Bonding;
                obj.CutCurling = speedValue.CutCurling;

            }

        }

        //private void sbPhotograph_Click(object sender, EventArgs e)
        //{
        //    needToCaptureImage = !needToCaptureImage;
        //    if (needToCaptureImage)
        //    {
        //        sbPhotograph.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
        //        sbPhotograph.BackColor = selectedButtonBackColor;
        //        sbPhotograph.Down = true;
        //    }
        //    else
        //    {
        //        sbPhotograph.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
        //        sbPhotograph.BackColor = sbDeleteWidth.BackColor;
        //        sbPhotograph.Down = true;
        //    }
        //}

        /// <summary>
        ///  Xsj(补)20110926：实例化相机驱动实体类
        /// </summary>
        private void startVideoControllerCenter()
        {
            if (videoCenter == null)
            {
                try
                {

                    videoCenter = VideoControllerCenter.getInstance();
                    //videoCenter.Left = this.Left + this.Width - 10;
                    //videoCenter.Top = 300;
                    videoCenter.Left = Screen.PrimaryScreen.Bounds.X + Screen.PrimaryScreen.Bounds.Width - videoCenter.Width;
                    videoCenter.Top = 20;
                    videoCenter.Show();
                    videoCenter.start();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error happened when start Videocam\n" + ex.Message);

                }
            }
        }

        private void teHeaderSupplierLength_TextChanged(object sender, EventArgs e)
        {
            try
            {
                decimal tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
                if (tempFarbicLength > 0)
                {
                    initTurnNoButtons(tempFarbicLength);
                }
                else
                {
                    tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);
                    initTurnNoButtons(tempFarbicLength);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //MessageBox.Show("please input a valid data\n" + ex.Message);


            }

        }

        private void teUsable_width_Enter(object sender, EventArgs e)
        {
            ClearButtonBackColor();
            //setSpreadButtonEnable(false);

            setPartButtonEnable(false);


            decimal currentValue = 0;
            try
            {
                currentValue = Convert.ToDecimal(teUsable_width.Text);
            }
            catch
            {
            }

            decimal currentSideToSideWithValue = 0;
            try
            {
                currentSideToSideWithValue = Convert.ToDecimal(teSideToSideH_Width.Text);
            }
            catch
            {
            }

            /**************add by shulin 2022-11-13*****************/

            int GetLength = 0;
            decimal tempFarbicLength = string.IsNullOrEmpty(teHeaderSupplierLength.Text)?
                                        0:Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
            if (tempFarbicLength > 0)
            {
                GetLength = (int)Math.Ceiling(tempFarbicLength);
            }
            else
            {
                tempFarbicLength = string.IsNullOrEmpty(teHeaderInspLength.Text) ?
                                    0: Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);

                GetLength = (int)Math.Ceiling(tempFarbicLength);
            }
            /*******************************/



            /**changge by shulin 2022-11-13**/
            //if (FrmWidthInputter.ShowWidthInputter("Width",  ref currentValue, ref currentSideToSideWithValue))

            if (FrmWidthInputter.ShowWidthInputter("Width",GetLength,bsWidths,  inspectionHeader, ref currentValue, ref currentSideToSideWithValue))
            {
                try
                {
                    currentValue = Convert.ToDecimal(currentValue);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("current Usable Width value[" + currentValue + "] is not a validate decimal value \n" + ex.Message);
                    return;
                }
                if (currentValue > 0)
                {
                    teUsable_width.Text = currentValue.ToString();

                }
                else
                {
                    MessageBox.Show("Usable Width  must be greater than zero");
                    return;
                }

                try
                {
                    currentSideToSideWithValue = Convert.ToDecimal(currentSideToSideWithValue); //由David修改 2020-10-12
                    //currentSideToSideWithValue = Convert.ToInt32(currentSideToSideWithValue);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("current SideToSide Width value[" + currentSideToSideWithValue + "] is not a validate int value \n" + ex.Message);
                    return;
                }

                if (currentSideToSideWithValue > 0)
                {
                    teSideToSideH_Width.Text = currentSideToSideWithValue.ToString();

                }
                else
                {
                    MessageBox.Show("SideToSide Width  must be greater than zero");
                    return;
                }
            }
        }

        /// <summary>
        ///  Xsj(补)20110926：点击数字按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbPartDefectPlace_Click(object sender, EventArgs e)
        {
            //Xsj(补)20110926：判断是否点击了具体的检测项按钮。正常操作流程：先點擊測試項，注明問題。然後點擊板號的子號
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewLevelButtonBackColor();

            try
            {
                string name = focusedPartButton.Text;
                if (focusedPartButton.Tag != null)
                {
                    name = (string)focusedPartButton.Tag;
                }

                StateButton tempButton = (StateButton)sender;
                tempButton.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;
                tempButton.Appearance.BackColor = selectedButtonBackColor;
                ((StateButton)tempButton).Down = true;

                string tempTag = "";
                if (tempButton.Tag != null)
                {
                    tempTag = (string)tempButton.Tag;
                }

                if (tempTag.Length < 2)
                {
                    MessageBox.Show("Please set tag for this button first!");
                    return;
                }

                string defectPlace = tempTag[0] + "";
                int defectDegree = Convert.ToInt32(tempTag[1] + "");

                setPartDefectLevel(name, defectDegree, defectPlace);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when add party Defect\n" + ex.Message);
            }

        }

        /// <summary>
        /// Xsj(补)20110926：更新Fabric_Insp_PartDefect记录
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defectDegree"></param>
        /// <param name="defectPlace"></param>
        private void setPartDefectLevel(string name, int defectDegree, string defectPlace)
        {
            string Code = null;

            //膠水漬 (物料)
            //(AO001)
            //如果name等于：膠水漬 (物料) \r\n (AO001)时，下面这些写法，本来是想取出"AO001",但取出来是中文字"物料"，需要修正，由David修改 2020-10-21
            //Code = name.Split('(', ')')[1].ToString(); 

            try
            {
                Code = name.Split(new string[] { "\n ", "\n" }, StringSplitOptions.RemoveEmptyEntries)[1].ToString().Replace("(", "").Replace(")", "");
            }
            catch
            {
                throw new Exception("Get defect code was failed");
            }

            Fabric_Insp_PartDefect partyDefectDetail = getPartyDefectDetail(currenDefectTurnNo, Code, defectDegree, defectPlace);
            if (partyDefectDetail == null)
            {
                //partyDefectDetail = new PartDefect();
                partyDefectDetail = (Fabric_Insp_PartDefect)bsPartDefects.AddNew();
                partyDefectDetail.Company = currentCompanyNo;
                partyDefectDetail.System_Install_No = inspectionHeader.System_Install_No; //由David加入 2020-10-19

                //partyDefectDetail.Lot_Id = inspectionHeader.Lot_Id;
                //partyDefectDetail.Item_No = inspectionHeader.Item_No;

                partyDefectDetail.Defect_Type = "P";

                partyDefectDetail.Defect_Name = Code;

                partyDefectDetail.Defect_Degree = defectDegree;
                partyDefectDetail.Defect_Degree_Count = 0;

                partyDefectDetail.Detect_Turn_No = currenDefectTurnNo;

                partyDefectDetail.Defect_Place = defectPlace;

                //inspectionHeader.PartDefects.Add(partyDefectDetail);
                //bsPartDefects.Add(partyDefectDetail);
                //gridViewPartDefects.TopRowIndex = gridViewPartDefects.RowCount - 1;
            }

            partyDefectDetail.Defect_Degree_Count = partyDefectDetail.Defect_Degree_Count + 1;
            partyDefectDetail.Defect_Deduce_Points = partyDefectDetail.Defect_Degree_Count * partyDefectDetail.Defect_Degree;

            bsPartDefects.EndEdit();
            bsIQC01.EndEdit();
            bsPartDefects.ResetBindings(false);
        }

        private void sbPartLevelPlaceGroup_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceGroup.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "1/2/3");
        }

        private void sbPartLevelPlaceGroupMiddle1_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceGroupMiddle1.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "4/5/6");

        }

        private void sbPartLevelPlaceGroupLeftDown_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceGroupDown.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "7/8/9");

        }

        private void sbPartLevelPlaceLeft_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceLeft.Appearance.BackColor = selectedButtonBackColor;


            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "1/4/7");

        }

        private void sbPartLevelPlaceGroupMiddle2_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceGroupMiddle2.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "2/5/8");

        }

        private void sbPartLevelPlaceGroupRight_Click(object sender, EventArgs e)
        {
            if (focusedPartButton == null)
            {
                MessageBox.Show("Please select Part Defect !");
                return;
            }

            clearNewPartLevelButtonBackColor();
            sbPartLevelPlaceGroupRight.Appearance.BackColor = selectedButtonBackColor;

            string name = focusedPartButton.Text;
            setPartDefectLevel(name, 4, "3/6/9");

        }




        //Xsj:20111011:add 
        //-------------------------------------------Start
        private void FrmDefectsSetting_Load(object sender, EventArgs e)
        {
            string val = "";
            List<string> x = new List<string>();
            val = teHeaderItemNo.Text.Substring(0, 12);
            x.Add(val);

            val = teHeaderIDNO.Text.Replace("\r\n", "~");
            val = val.Substring(0, val.IndexOf('-'));
            x.Add(val);

            val = teHeaderIDNO.Text.Replace("\r\n", "~");
            x.Add(val);

            //Xsj20121221:加载触摸屏时，设置当前图片的保存位置。并显示相机控制器界面.
            MyCameraController.SetPhotoSavePath(x);
            MyCameraController.CameraController.Show();

        }


        private void FrmDefectsSetting_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Xsj20121220:退出触摸屏后，清除提当前保存图片路径和隐藏相机控制界面
            MyCameraController.ClearPhotoSavePath();
            MyCameraController.CameraController.Hide();
        }

        private void PhotoTime_Tick(object sender, EventArgs e)
        {
            if (PhotoTime.Interval == 5000)
            {
                sbPhotograph.Enabled = true;
                PhotoTime.Stop();
            }
            else 
            {
                PhotoTime.Interval = PhotoTime.Interval + 1000;
            }
        }

        private void stateButton1_Click(object sender, EventArgs e)
        {

            //  
           
            if (string.IsNullOrEmpty(teHeaderInspLength.Text) && 
                string.IsNullOrEmpty(teUsable_width.Text) && 
                string.IsNullOrEmpty(teSideToSideH_Width.Text))
            {
                MessageBox.Show("Insp Length(m) or Width(mm) can't be null value", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                int GetLength = 0;
                decimal tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
                if (tempFarbicLength > 0)
                {
                    GetLength = (int)Math.Ceiling(tempFarbicLength);
                }
                else
                {
                    tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);
                    GetLength = (int)Math.Ceiling(tempFarbicLength);
                }


                //int InspLength = Convert.ToInt32(teHeaderInspLength.Text.ToString()) ;

                decimal Usable_width = Convert.ToDecimal(teUsable_width.Text.ToString());
                decimal SideToSideH_Width = Convert.ToDecimal(teSideToSideH_Width.Text.ToString());
                int aa = 5;
                while (aa <= GetLength)
                {
                    Fabric_Insp_Width widthDetail = (Fabric_Insp_Width)bsWidths.AddNew();
                    widthDetail.System_Install_No = inspectionHeader.System_Install_No;
                    widthDetail.Company = inspectionHeader.Company;
                    widthDetail.Usable_Width = Usable_width;
                    widthDetail.SideToSide_Width = SideToSideH_Width;
                    widthDetail.Detect_Turn_No = aa;
                    aa = aa + 10;
                }

                MessageBox.Show("Generating data succeeded!");

            }
            catch
            {
                 MessageBox.Show("Failed to generate data!");
                /*catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the CompanySelect form  \n" + ex.Message);
            }*/

            }

        }

        //-------------------------------------------End

    }
}