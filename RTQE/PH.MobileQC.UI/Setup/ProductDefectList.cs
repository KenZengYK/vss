using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI3;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;
using PH.FabricInspection.BO;
using DevExpress.XtraBars;

namespace PH.MobileQC.UI.Setup
{
    public partial class ProductDefectList : ListForm
    {


        QC_ProductTypeInfo _curtype;
        MobileQCDataContext _mctx;

        public ProductDefectList()
        {
            InitializeComponent();
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
        }


        protected override void OnClickAddNew()
        {

          //  List<ContractAttach> _lst = ((this.ParentForm as ContractDetailA).ListForm as ContractSetting).CurrentList;
            _curtype = (this.ParentForm as ProductTypeDetailForm).BindingSource.Current as QC_ProductTypeInfo;      
             _mctx = (this.ParentForm).DataContext as MobileQCDataContext;
             string _userid = PH.Platform.Common.SysParamHelper.Instance.UserID;
            FrmSelectDefect frm = new FrmSelectDefect(_curtype, _mctx,_userid);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                _mctx.SubmitChanges();

                (this.ParentForm as ProductTypeDetailForm).BindingSource.DataSource = _curtype;

                this.DataSource = null;
                this.DataSource = _curtype.QC_ProductType_CommonDefects;
                (this.ParentForm as ProductTypeDetailForm).DataBind();
             //   this.objListGridControl.RefreshDataSource();
            }


        }

        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            DialogResult dgr = MessageBox.Show("確定要刪除選擇的數據嗎?", "刪除確認", MessageBoxButtons.YesNo);
            if (dgr == DialogResult.Yes)
            {
                //Dictionary<ContractInfoDetail> aa = this.GetCheckData<ContractInfoDetail>();
                Dictionary<int, QC_ProductType_CommonDefect> dict = this.GetCheckData<QC_ProductType_CommonDefect>();
                _curtype = (this.ParentForm as ProductTypeDetailForm).BindingSource.Current as QC_ProductTypeInfo;
                foreach (KeyValuePair<int, QC_ProductType_CommonDefect> kvp in dict)
                {
                    _curtype.QC_ProductType_CommonDefects.Remove(kvp.Value);
                }

                this.DataContext.SubmitChanges();
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = _curtype.QC_ProductType_CommonDefects;


            }
        }



    }
}
