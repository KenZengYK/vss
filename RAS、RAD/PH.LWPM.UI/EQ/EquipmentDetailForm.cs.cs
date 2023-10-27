using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.EQ
{
    public partial class EquipmentDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public EquipmentDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            this.edtEQGroup.Properties.DataSource = db.BaseCodes.Where(p => p.Type == "McGroup" && (p.HSCode == "C3" || p.HSCode == "C5")).OrderBy(p => p.SortID);
            //this.edtEQGroup.Properties.DataSource = db.BaseCodes.Where(p => p.Type == "EQGroup").OrderBy(p => p.SortID);

            this.edtEQGroup.Properties.DisplayMember = "Name";
            this.edtEQGroup.Properties.ValueMember = "Lang";

            this.edtItemLevel.Properties.DataSource = db.BaseCodes.Where(p => p.Type == "EQItemLevel").OrderBy(p => p.SortID);
            this.edtItemLevel.Properties.DisplayMember = "Name";
            this.edtItemLevel.Properties.ValueMember = "Code";

            this.edtToolsContainerCode.Properties.Items.AddRange(db.BaseCodes.Where(p => p.Type == "EQToolsContainer").OrderBy(p => p.SortID).Select(p => p.Name).ToArray());

            this.barBtnAddNew.Visibility = (this.PrevForm as EquipmentListForm).ReadOnly == "ReadOnly" ? BarItemVisibility.Never : BarItemVisibility.Always;
            this.barBtnEdit.Visibility = this.barBtnAddNew.Visibility;
            this.barBtnDel.Visibility = this.barBtnAddNew.Visibility;
        }

        protected override void SaveCurrent()
        {
            ItemTool obj = this.BindingSource.Current as ItemTool;
            obj.IsProjection = true;
            obj.Flag = (this.PrevForm as EquipmentListForm).Flag;
            base.SaveCurrent();
        }
    }
}
