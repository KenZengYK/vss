using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;


namespace PH.MobileQC.UI.FullInspection
{
    public partial class FullInspectionHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public FullInspectionHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            FullInspectionHeader header = this.BindingSource.Current as FullInspectionHeader;

            var lists = header.FullInspectionDetails.ToList();

            int RecordNo = 1;
            DateTime? SaveDate = lists.FirstOrDefault() == null ? null : lists.FirstOrDefault().InspectionDate;
            foreach (var obj in lists)
            {
                if (obj.InspectionDate.HasValue && obj.InspectionDate.Value.Date != SaveDate.Value.Date)
                {
                    RecordNo = 1;
                    SaveDate = obj.InspectionDate;
                }
                obj.RecordNoShow = RecordNo++;
            }

            fullInspectionDetailListForm1.DataSource = lists;
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            barBtnDel.Visibility = BarItemVisibility.Never;
        }

    }
}
