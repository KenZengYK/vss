using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using DevExpress.XtraGrid;
using PH.Platform.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.EQ
{
    public partial class EquipmentListForm : ListForm
    {
        internal string Flag;
        internal string ReadOnly;
        internal string HWCategoryCode;
        internal string HWGroupCode;

        public EquipmentListForm()
        {
            InitializeComponent();
        }

        public EquipmentListForm(string AFlag, string AReadOnly)
            : this()
        {
            Flag = AFlag;
            ReadOnly = AReadOnly;
        }

        public EquipmentListForm(string AFlag, string AReadOnly, string AHWCategoryCode)
            : this()
        {
            Flag = AFlag;
            ReadOnly = AReadOnly;
            HWCategoryCode = AHWCategoryCode;
        }



        //…¢”µFlag£ºMCAccessory ´ú±íEQGroupžé£º'General machine accessories' »ò'Production machine accessories'
        public EquipmentListForm(string AFlag, string AReadOnly, string AHWCategoryCode, string AHWGroupCode)
            : this()
        {
            Flag = AFlag;
            ReadOnly = AReadOnly;
            HWCategoryCode = AHWCategoryCode;
            HWGroupCode = AHWGroupCode;
        }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            List<ItemTool> lists = context.ItemTools.Where(p => (p.IsProjection ?? false) && p.Flag == Flag).ToList();

            if (!string.IsNullOrEmpty(this.HWCategoryCode))
            {
                lists = lists.Where(p => p.HWCategoryCode == HWCategoryCode).ToList();
            }

            if (!string.IsNullOrEmpty(this.HWGroupCode))
            {
                lists = lists.Where(p => p.EQGroupCode == HWGroupCode).ToList();
            }

            this.BindingSource.DataSource = lists;

            //this.BindingSource.DataSource = lists; //context.ItemTools.Where(p => (p.IsProjection ?? false) && p.Flag == Flag);
            this.EditorTypeName = typeof(EquipmentDetailForm).FullName;

            this.barBtnAddNew.Visibility = ReadOnly == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;

            base.DataBind();
        }

    }
}