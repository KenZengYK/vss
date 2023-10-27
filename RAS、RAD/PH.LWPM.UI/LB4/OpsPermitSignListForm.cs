using System.Collections.Generic;
using System.Linq;
using DevExpress.XtraGrid;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.Platform.UI.CS.UI2;

namespace PH.LWPM.UI.LB4
{
    public partial class OpsPermitSignListForm : ListForm
    {
        public OpsPermitSignListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.OpsPermitSigns;
            this.EditorTypeName = typeof(OpsPermitSignDetailForm).FullName;
            base.DataBind();

        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<OpsPermitSign> lists = bandedGridView1.FilteredList().Cast<OpsPermitSign>();

                switch (item.FieldName)
                {
                    case "Factory":
                        e.TotalValue = lists.Select(p => p.Factory).Distinct().Count();
                        break;

                    case "Line":
                        e.TotalValue = lists.Select(p => p.Line).Distinct().Count();
                        break;

                    case "InlineInspector":
                        e.TotalValue = lists.Select(p => p.InlineInspector).Distinct().Count();
                        break;

                    case "EndlineInspector":
                        e.TotalValue = lists.Select(p => p.EndlineInspector).Distinct().Count();
                        break;

                    case "QualAuditor_P":
                        e.TotalValue = lists.Select(p => p.QualAuditor_P).Distinct().Count();
                        break;

                    case "QualAuditor_F":
                        e.TotalValue = lists.Select(p => p.QualAuditor_F).Distinct().Count();
                        break;

                    case "MobileAuditor_P":
                        e.TotalValue = lists.Select(p => p.MobileAuditor_P).Distinct().Count();
                        break;

                    case "MobileAuditor_F":
                        e.TotalValue = lists.Select(p => p.MobileAuditor_F).Distinct().Count();
                        break;

                    case "Mechanic_P":
                        e.TotalValue = lists.Select(p => p.Mechanic_P).Distinct().Count();
                        break;

                    case "Mechanic_F":
                        e.TotalValue = lists.Select(p => p.Mechanic_F).Distinct().Count();
                        break;

                    case "LineLeader_P":
                        e.TotalValue = lists.Select(p => p.LineLeader_P).Distinct().Count();
                        break;

                    case "LineLeader_B":
                        e.TotalValue = lists.Select(p => p.LineLeader_B).Distinct().Count();
                        break;

                    case "LineLeader_F":
                        e.TotalValue = lists.Select(p => p.LineLeader_F).Distinct().Count();
                        break;

                    case "LineLeader_E":
                        e.TotalValue = lists.Select(p => p.LineLeader_E).Distinct().Count();
                        break;

                    case "LineLeader_A":
                        e.TotalValue = lists.Select(p => p.LineLeader_A).Distinct().Count();
                        break;

                    case "Supervisor_P":
                        e.TotalValue = lists.Select(p => p.Supervisor_P).Distinct().Count();
                        break;

                    case "Supervisor_F":
                        e.TotalValue = lists.Select(p => p.Supervisor_F).Distinct().Count();
                        break;

                    case "Superintendent_P":
                        e.TotalValue = lists.Select(p => p.Superintendent_P).Distinct().Count();
                        break;
                    case "Superintendent_F":
                        e.TotalValue = lists.Select(p => p.Superintendent_F).Distinct().Count();
                        break;
                }

            }
        }

        private void objListGridControl_Load(object sender, System.EventArgs e)
        {
            bandedGridView1.OptionsView.ShowFooter = true;
        }
    }
}
