using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class HWCategoryListForm : BaseCodeListForm
    {
        public HWCategoryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(HWCategoryEditForm).FullName;
            this.BaseCodeType = "McCategory";
        }

        public override void OnClickPrint()
        {
            //base.OnClickPrint();
            HWCategoryReport rptHWCategory = new HWCategoryReport(this.objListGridView.FilteredList());
            rptHWCategory.ShowPreview();
        }
    }
}
