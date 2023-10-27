using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class BaseCodeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BaseCodeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            if (string.IsNullOrEmpty(this.BaseCodeType))
            {
                MessageBox.Show("必須指定BaseCodeType", "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == this.BaseCodeType).OrderBy(p => p.SortID);
            this.FormState = PH.Platform.BO.Interface.WorkMode.Read;

            this.EditorTypeName = typeof(BaseCodeEditForm).FullName;

            if (this.Parent is DevExpress.XtraTab.XtraTabPage)
            {
                this.TabPage = this.Parent as DevExpress.XtraTab.XtraTabPage;
                this.TabControls = this.TabPage.TabControl;
            }
        }

        /// <summary>
        /// BaseCode表中Type字段的值，用於從BaseCode中取不同Type的記錄
        /// </summary>
        public string BaseCodeType
        {
            get;
            set;
        }

        /// <summary>
        /// 報表的標題
        /// </summary>
        public string ReportTitle
        {
            get;
            set;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.OnClickPrint();
        }

        public virtual void OnClickPrint()
        {
            BaseCodeReport rptBaseCode = new BaseCodeReport(this.objListGridView.FilteredList(), this.ReportTitle);
            rptBaseCode.ShowPreview();
        }
    }
}
