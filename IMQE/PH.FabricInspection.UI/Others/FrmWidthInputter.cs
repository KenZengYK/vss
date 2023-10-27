using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.FabricInspection.UI
{
    public partial class FrmWidthInputter : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;
        public decimal currentValue = 0;
        public decimal currentSideToSideWidth = 0;
        public int Length = 0;
        public BindingSource bsWidths = null;
        public Fabric_Insp_Header inspectionHeader = new Fabric_Insp_Header();
        /**********change by shulin  2022-11-13***********/
        //public FrmWidthInputter(string caption, decimal initValue, decimal initSideToSideWidth)
        public FrmWidthInputter(string caption, int GetLength, BindingSource bs,   Fabric_Insp_Header HeaderObj, decimal initValue, decimal initSideToSideWidth)
        {
            InitializeComponent();
            this.ActiveControl = teUsableWidth;
            if (initValue > 0)
            {
                teUsableWidth.Text = initValue.ToString();
            }
            if (initSideToSideWidth > 0)
            {
                teSideToSideWidth.Text = initSideToSideWidth.ToString();
            }

            /*******add by shulin  2022-11-13******/
            Length = GetLength;
            bsWidths = bs;
            inspectionHeader = HeaderObj;
            GetFunction();
            //btCalcWith.Enabled = CheckEidt;
            /**************************************/

            teUsableWidth.SelectAll();
            this.Text = caption;
        }


        public static bool ShowWidthInputter(string caption, int GetLength, BindingSource bs, Fabric_Insp_Header inspectionHeader, ref decimal initUsableWidth, ref decimal initSideToSideWidth)
        {
            try
            {
                /**********change by shulin  2022-11-13***********/
                //FrmWidthInputter frmWidthSetting = new FrmWidthInputter(caption,initUsableWidth, initSideToSideWidth);
                FrmWidthInputter frmWidthSetting = new FrmWidthInputter(caption, GetLength, bs,  inspectionHeader, initUsableWidth, initSideToSideWidth);

                DialogResult result = frmWidthSetting.ShowDialog();
                if (result == DialogResult.OK)
                {
                    initUsableWidth = frmWidthSetting.currentValue;
                    initSideToSideWidth = frmWidthSetting.currentSideToSideWidth;
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Width Setting \n" + ex.Message);
            }
            return false;
        }

        private void sbNum7_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    string str = (string)((SimpleButton)sender).Tag;
                    for (int i = 0, iSize = str.Length; i < iSize; i++)
                    {
                        KeyPressEventArgs keyArgs = new KeyPressEventArgs(str[i]);
                        focusedTextEdit.SendKey(keyArgs);
                    }

                }

            }
        }

        private void teFrom_Enter(object sender, EventArgs e)
        {
            focusedTextEdit = (DevExpress.XtraEditors.TextEdit)sender;
            focusedTextEdit.SelectAll();

        }

        private void sbNumEnter_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit == null)
            {
                return;
            }

            if (focusedTextEdit == teUsableWidth)
            {
                this.ActiveControl = teSideToSideWidth;
                teSideToSideWidth.SelectAll();

            }
            else if (focusedTextEdit == teSideToSideWidth)
            {
                if (!FloatUtil.IsFloat(teUsableWidth.Text.Trim()))
                {
                    MessageBox.Show("Please input a validate value for Usable Width");
                    this.ActiveControl = teUsableWidth;
                    teUsableWidth.SelectAll();
                    return;
                }

                if (Convert.ToDecimal(teUsableWidth.Text.Trim()) < 0)
                {
                    MessageBox.Show("The value of Usable Width must be greater than zero");
                    this.ActiveControl = teUsableWidth;
                    teUsableWidth.SelectAll();
                    return;
                }

                if (!FloatUtil.IsFloat(teSideToSideWidth.Text.Trim()))
                {
                    MessageBox.Show("Please input a validate value for SideToSide Width");
                    this.ActiveControl = teSideToSideWidth;
                    teSideToSideWidth.SelectAll();

                    return;
                }

                //if (Convert.ToInt32(teSideToSideWidth.Text.Trim()) < 0)
                if (Convert.ToDecimal(teSideToSideWidth.Text.Trim()) < 0) //由David修改 2020-10-12
                {
                    MessageBox.Show("The value of SideToSide Width must be greater than zero");
                    this.ActiveControl = teSideToSideWidth;
                    teSideToSideWidth.SelectAll();
                    return;
                }

                currentValue = Convert.ToDecimal(teUsableWidth.Text.Trim());
                currentSideToSideWidth = Convert.ToDecimal(teSideToSideWidth.Text.Trim());//由David修改 2020-10-12
                //currentSideToSideWidth = Convert.ToInt32(teSideToSideWidth.Text.Trim());
                this.DialogResult = DialogResult.OK;
            }

        }

        private void sbNumClear_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    focusedTextEdit.Text = "";
                }

            }

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void FrmNumInputter_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                sbNumEnter_Click(sender, null);
            }
        }

        private void sbReturn_Click(object sender, EventArgs e)
        {

            this.DialogResult = DialogResult.Cancel;


            //PH.Platform.AuthMgr.BO.AuthMgrDataContext AuthDB = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();

            //PH.Platform.AuthMgr.BO.Auth_User user = AuthDB.Auth_User.FirstOrDefault(p => p.UserID == "");
            //PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //if (user.Auth_UserRole.Any(p => p.RoleID = "OneKeyGenerate"))
            //{
 
            //}
            

        }

        void GetFunction() 
        {
            PH.Platform.AuthMgr.BO.AuthMgrDataContext AuthDB = ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
            string UserName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            PH.Platform.AuthMgr.BO.Auth_User userData = AuthDB.Auth_User.FirstOrDefault(p => p.UserID == UserName);
            if (userData.Auth_UserRole.Any(p => p.RoleID == "00000000000449"))
            {
                btCalcWith.Enabled = true;
            }
            else
            {
                btCalcWith.Enabled = false;
            }

        }

        //public override void ProcessFunctionRight()
        //{
        //    base.ProcessFunctionRight();

        //    //if (MIDStatus == "PMID-Completed")
        //    //{
        //    //    if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator) { return; }

        //    //    var obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Approve");
        //    //    this.btnAction.Visibility = (obj == null) ? BarItemVisibility.Never : BarItemVisibility.Always;
        //    //    this.PrintHangTag.Visibility = this.btnAction.Visibility;
        //    //    this.btnPrintSheet.Visibility = this.btnAction.Visibility;
        //    //    this.barSubItem1.Visibility = this.btnAction.Visibility;
        //    //}

        //    //PH.Platform.AuthMgr.BO.Auth_FunRight checkFunctionRight =
        //    //    PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Edit");

        //    //getRiskQAEidt = checkFunctionRight == null;
        //}


        /**********add by shulin  2022-11-13 一键生成Width***********/
        private void btCalcWith_Click(object sender, EventArgs e)
        {
            //public int Length =0;
            //public BindingSource bsWidths = null;
            //public Fabric_Insp_Header inspectionHeader = new Fabric_Insp_Header();


            if (Length == 0 &&
                string.IsNullOrEmpty(teUsableWidth.Text) &&
                string.IsNullOrEmpty(teSideToSideWidth.Text))
            {
                MessageBox.Show("Insp Length(m) or Width(mm) 不能爲空值!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }


            if (bsWidths.Count > 0)
            {
                MessageBox.Show("View Details of Width已經存在數據，無法一鍵生成新數據!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (inspectionHeader == null)
            {
                MessageBox.Show("請生成主表數據!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                int GetLength = Length;
                //decimal tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderSupplierLength.Text) * (decimal)1.1);
                //if (tempFarbicLength > 0)
                //{
                //    GetLength = (int)Math.Ceiling(tempFarbicLength);
                //}
                //else
                //{
                //    tempFarbicLength = Convert.ToDecimal(Convert.ToDecimal(teHeaderInspLength.Text) * (decimal)1.1);
                //    GetLength = (int)Math.Ceiling(tempFarbicLength);
                //}


                //int InspLength = Convert.ToInt32(teHeaderInspLength.Text.ToString()) ;

                decimal Usable_width = Convert.ToDecimal(teUsableWidth.Text.ToString());
                decimal SideToSideH_Width = Convert.ToDecimal(teSideToSideWidth.Text.ToString());
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

                // sbNumEnter.;
                sbNumEnter_Click(sbNumEnter, null);
                MessageBox.Show("Generating data succeeded!");

            }
            catch
            {
                MessageBox.Show("Failed to generate data!");
            }


        }



    }


}