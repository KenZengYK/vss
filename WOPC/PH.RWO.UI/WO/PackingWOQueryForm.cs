using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.AuthMgr.BO;
using PH.Platform.BO;

namespace PH.RWO.UI.WO
{
    public partial class PackingWOQueryForm : PH.RWO.UI.WO.PackingBrandCategoryListForm
    {
        public PackingWOQueryForm()
        {
            InitializeComponent();
        }

        PH.RWO.BO.RWOSOPCDataContext _context;

        public override void DataBind()
        {
            base.DataBind();
            _context = ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            this.DataContext = _context;

            var lists = _context.WorkOrderCategories.Where(p => p.WorkOrder.WOStatus != "-1" && p.WorkOrder.WOStatus != "8" &&
                p.WorkOrder.Project.SoIssueDate >= DateTime.Now.AddYears(-1));

            this.BindingSource.DataSource = lists;
            this.EditorTypeName = typeof(WO.PackingWOCategoryParentChildForm).FullName;
        }


        //public override void DataBind()
        //{
        //    this.EditorTypeName = typeof(WO.PackingWOCategoryParentChildForm).FullName;
        //    //base.DataBind();

        //    _context = ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
        //    this.DataContext = _context;
        //    this.BindingSource.DataSource = typeof(PH.RWO.BO.WorkOrderCategory);

        //    DataQueryParameter result = new DataQueryParameter();
        //    result.BoType = typeof(PH.RWO.BO.WorkOrderCategory);

        //    //只取一年之內的WO， 由David加入 2020-08-21
        //    result.FixedWherePart = "WorkOrderNo in (select WorkOrderNo from WorkOrder where WOStatus <> '-1' and WOStatus <> '8' and DeliveryShipCompleted >= dateadd(year, -1, getdate()))";

        //    //result.FixedWherePart = "WorkOrderNo in (select WorkOrderNo from WorkOrder where DeliveryShipCompleted >= dateadd(year, -1, getdate()))";



        //    result.View = this.objListGridView;
        //    result.DataContext = this.DataContext;
        //    //result.FixedWherePart = " MIDStatus <> 'TMID-WIP' ";
        //    result.WarnRecord = 100;
        //    this.StartEnquiry(result);

        //    base.DataBind();


        //}
    }
}
