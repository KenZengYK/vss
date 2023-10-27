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

namespace PH.LWPM.UI.PC
{
    public partial class PCHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PCHeaderListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.PCHeaders.OrderByDescending(p => p.CreateDate);

            this.EditorTypeName = typeof(PCHeaderDetailForm).FullName;
            base.DataBind();
        }

        private void barBtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            PCHeader obj = this.BindingSource.Current as PCHeader;
            if (obj == null) return;
            PCReport rpt = new PCReport(obj, db.GetPCReportData(obj.PCNO));
            rpt.ShowPreview();

            //string SqlStr = "select b.SortID as ItemNo, a.SortID as POLineSortID,  " +
            //                "      'Brand: ' + isnull(a.Brand, 'Nil') + ' / Model No: ' + isnull(a.ModelNo, 'Nil') as BrandModelNo, " +
            //                "       case a.IsBigCategory " + 
            //                "           when 1 then 'Brand: ' + a.Brand + ' / Model No.: ' + a. ModelNo + a.Description  " +
            //                "           else a.Description end as Description, " +
            //                "       a.HSCode, a.Unit, a.Qty, a.UnitPrice, round(a.Qty * a.UnitPrice, 2) as Amount, a.DeliveryDate, a.IsBigCategory " +
            //                "from PODetail as a join PCDetail as b on a.PONO = b.PONO and b.PCNO = '{0}' " +
            //                "order by b.SortID, a.SortID";

            //string SqlStr = "select b.SortID as ItemNo, a.SortID as POLineSortID,  " +
            //                "      'Brand: ' + isnull(a.Brand, 'Nil') + ' / Model No: ' + isnull(a.ModelNo, 'Nil') as BrandModelNo, " +
            //                "       a.Description, a.HSCode, a.Unit, a.Qty, a.UnitPrice, round(a.Qty * a.UnitPrice, 2) as Amount, a.DeliveryDate, a.IsBigCategory " +
            //                "from PODetail as a join PCDetail as b on a.PONO = b.PONO and b.PCNO = '{0}' " +
            //                "order by b.SortID, a.SortID";

            //SqlStr = string.Format(SqlStr, obj.PCNO);

            ////IEnumerable<PCReportMerge> lists = (this.DataContext as RAPLQDataContext).ExecuteQuery<PCReportMerge>(SqlStr);
            //PCReport rpt = new PCReport(obj, db.GetPCReportData(obj.PCNO));
            ////rpt.bindingSource.DataSource = db.GetPCReportData(obj.PCNO).OrderBy(p => p.SortID); //lists.ToList();
            //rpt.ShowPreview();
        }
    }
}
