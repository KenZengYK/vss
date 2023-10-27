using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;
namespace PH.BasicInfo.UI.TimeElement
{
    public partial class PerformanceItemListForm : ListForm
    {
        public PerformanceItemListForm()
        {
            InitializeComponent();
        }

        //public SupplierEvaluationItemSetting(IContainer container)
        //{
        //    container.Add(this);

        //    InitializeComponent();
        //}

        public override void DataBind()
        {
            SupplierProfileList SPDataList = new SupplierProfileList();
            this.DataContext = SPDataList.CurrentDataContext;
            this.BindingSource.DataSource = (this.DataContext as BasicInfoDataContext).PerformanceItems; //.GetDataByCondition("DeleteFlag=0 or DeleteFlag is null");
         
            this.EditorTypeName = typeof(PerformanceItemDetailForm).FullName;
            base.DataBind();
        }
    }
}
