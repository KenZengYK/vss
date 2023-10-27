using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.McBrand
{
    public partial class BrandChildFrm : DetailForm
    {
        Boolean AddnewFlg;
        public BrandChildFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            string SqlStr = @"select a.Code as HWTypeCode, a.Name as HWTypeNameCN, a.NameEN as HWTypeNameEN, a.Description as HWGroupCode, 
                                    (select b.HSCode from BaseCode as b where b.Type = 'McGroup' and b.Lang = a.Description) as HWCategoryCode
                             from BaseCode as a 
                             where Type = 'METHODTYPE'";

            this.txtHWTypeCode.Properties.DataSource = (this.DataContext as RAPLQDataContext).ExecuteDataTable(SqlStr, "dt");
        }

        protected override void OnClickSave()
        {
            //if (AddnewFlg)
            //{
            //    if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(), brandNameTextEdit.Text)) return;
            //}
            base.OnClickSave();
            SaveImg();

        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            P1.Properties.ReadOnly = (this.BindingSource.Current as PH.LWPM.BO.McBrand).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New || (this.BindingSource.Current as PH.LWPM.BO.McBrand).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit ? false : true;

        }
        protected override void OnClickSaveAndReturn()
        {
            //if (AddnewFlg)
            //{
            //    if (this.ValidationSaveCondition(factoryComboBoxEdit.Text.TrimEnd(),brandNameTextEdit.Text)) return;
            //}
            base.OnClickSaveAndReturn();
            SaveImg();

        }

        private void ChildFrm_Load(object sender, EventArgs e)
        {
            AddnewFlg = (this.BindingSource.Current as PH.LWPM.BO.McBrand).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;
            //factoryComboBoxEdit.Properties.Items.AddRange((this.DataContext as RAPLQDataContext).McBrands.Where(P => P.Factory != null).Select(S => S.Factory).Distinct().OrderBy(E => E).ToArray());

            this.ShowImg();
        }
        void SaveImg()
        {
            if (AddnewFlg)
            {
                McBrandImg mg = new McBrandImg();
                //mg.Factory = factoryComboBoxEdit.Text;
                mg.BrandName = brandNameTextEdit.Text;
                if (P1.Image != null) mg.BrandImg = DBAccess.ImageToByteArray(P1.Image);
                (this.DataContext as RAPLQDataContext).McBrandImgs.InsertOnSubmit(mg);
                (this.DataContext as RAPLQDataContext).SubmitChanges();
            }
            else
            {
                var CurBrand = (this.DataContext as RAPLQDataContext).McBrandImgs.Where(P => P.BrandName == brandNameTextEdit.Text).FirstOrDefault();
                if (CurBrand == null)
                {
                    McBrandImg mg = new McBrandImg();
                    //mg.Factory = factoryComboBoxEdit.Text;
                    mg.BrandName = brandNameTextEdit.Text;
                    if (P1.Image != null)
                    {
                        mg.BrandImg = DBAccess.ImageToByteArray(P1.Image);
                    }
                    (this.DataContext as RAPLQDataContext).McBrandImgs.InsertOnSubmit(mg);
                }
                else
                {
                    if (P1.Image != null)
                    {
                        CurBrand.BrandImg = DBAccess.ImageToByteArray(P1.Image);
                    }
                    else
                    {
                        CurBrand.BrandImg = null;
                    }
                }
                (this.DataContext as RAPLQDataContext).SubmitChanges();
            }
        }
        void ShowImg()
        {
            var iMG = (this.DataContext as RAPLQDataContext).McBrandImgs.Where(P => P.BrandName == brandNameTextEdit.Text).Select(S => S.BrandImg).FirstOrDefault();

            P1.Image = iMG != null ? DBAccess.ByteArrayToImage(iMG.ToArray()) : null;

        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            this.ShowImg();
        }
        private Boolean ValidationSaveCondition(string factory, string brandname)
        {

            if (factory == string.Empty)
            {
                if (MessageBox.Show("Please input \"Factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }

            if (brandname == string.Empty)
            {
                if (MessageBox.Show("Please input \"Brand Name\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            if ((this.DataContext as RAPLQDataContext).McBrands.Where(P => P.BrandName == brandname).Count() > 0)
            {
                if (MessageBox.Show("This BrandName is already exists！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
            return false;
        }
        //public override void ProcessFunctionRight()
        //{
        //    base.ProcessFunctionRight();

        //    if (ClsRight.GetUserRight(this.MenuID, "EditCmb"))
        //    {
        //       factoryComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;

        //    }

        //}
    }
}
