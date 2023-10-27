using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using DevExpress.XtraBars;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class ProductPostionList : ListForm
    {

        QC_ProductTypeInfo _curtype;
        MobileQCDataContext _mctx;


        public ProductPostionList()
        {
            InitializeComponent();
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
        }



        protected override void OnClickAddNew()
        {

            _curtype = (this.ParentForm as ProductTypeDetailForm).BindingSource.Current as QC_ProductTypeInfo;
            _mctx = (this.ParentForm).DataContext as MobileQCDataContext;
            string _userid = PH.Platform.Common.SysParamHelper.Instance.UserID;
            FrmSelectPostion frm = new FrmSelectPostion(_curtype, _mctx, _userid);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                _mctx.SubmitChanges();

                (this.ParentForm as ProductTypeDetailForm).BindingSource.DataSource = _curtype;

                this.DataSource = null;
                this.DataSource = _curtype.QC_ProductType_CommonPositions;
                (this.ParentForm as ProductTypeDetailForm).DataBind();
                this.barBtnDel.Visibility = BarItemVisibility.Always;
  
            }


        }

        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            DialogResult dgr = MessageBox.Show("確定要刪除選擇的數據嗎?", "刪除確認", MessageBoxButtons.YesNo);
            if (dgr == DialogResult.Yes)
            {
                Dictionary<int, QC_ProductType_CommonPosition> dict = this.GetCheckData<QC_ProductType_CommonPosition>();
                _curtype = (this.ParentForm as ProductTypeDetailForm).BindingSource.Current as QC_ProductTypeInfo;
                foreach (KeyValuePair<int, QC_ProductType_CommonPosition> kvp in dict)
                {
                    _curtype.QC_ProductType_CommonPositions.Remove(kvp.Value);
                }

                this.DataContext.SubmitChanges();
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = _curtype.QC_ProductType_CommonPositions;


            }
        }
    }
}
