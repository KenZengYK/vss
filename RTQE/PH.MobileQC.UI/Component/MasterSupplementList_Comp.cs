using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.UI.CS.DataQuery;
using DevExpress.XtraPrinting;


namespace PH.MobileQC.UI
{
    public partial class MasterSupplementList_Comp : PH.Platform.UI.CS.UI2.ListForm//PH.Platform.UI.CS.UI2.ListForm :PH.Platform.UI.CS.UI2.ListForm
    {
        #region
        public CheckRptCondition conditionform;
        public QC_Master _CurQC_Master
        {
            get
            {
                return (this.BindingSource.Current as QC_Master);
            }
        }

        #endregion

        string Flag = "";
        public MasterSupplementList_Comp()
        {
            InitializeComponent();
           // this.EditorTypeName = typeof(MasterDetail).FullName;
        }

        public MasterSupplementList_Comp(string flag)
        {
            InitializeComponent();
            // this.EditorTypeName = typeof(MasterDetail).FullName;
            Flag = flag;
        }


       // QueryMasterList queryForm = new QueryMasterList();
       // queryForm.DataQueryParameter QueryParameter = new QueryMasterList.DataQueryParameter();
       // BindingSource activeBindingSource = null;

        public override void DataBind()
        {

            this.NeedCheckPermission = false;

        
           // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);

            this.DataContext = context;
          //  this.DataSource = (from m in context.QC_Masters select m).Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //param.BoType = typeof(QC_Master); 
             // param.BoType = typeof(QC_Master_Extend); 
            param.BoType = typeof(Proc_MasterList);
            param.WarnRecord = 1000;
            param.View = this.objListGridView;
           
            //param.QueryType = QueryType.StoredProcedure;
            //param.StoredProcedureName = "Proc_MasterList";
            param.DataContext = this.DataContext;
           // param.CreateConditions();
            string _role = "";

            if (Flag == "A")
                _role = "MobileQC_MQA";
            else if (Flag == "C")
                _role = "MobileQC_MQC";

            param.IsCustQuery = true;


//            param.CustQuerySQL = @"select distinct a.masterid,a.Factory,a.WorkShop,a.Line,a.Project,a.WO,a.WOC,a.RWO,a.QNNO,a.Style,
//                               case when c.W_Procedure is null then a.W_Procedure else c.W_Procedure end as W_procedure,
//                               (case when a.QCRoleCode='MobileQC_MQA' then '巡審定' else '巡審查' end) as RoleName,a.QCRoleCode,
//                               case when c.W_Procedure is null then a.Worker else c.Worker end as Worker,
//                            left(dbo.FN_GetFAE(a.style,a.w_procedure),1) as FAE,
//                              dbo.[FN_GetReaudit](a.masterid) as ReAudit,
//                            (select 1 from workforce where inactive=0 and (mtm=0 or mtm is null) and id=a.worker 
//                             and factory=case when substring(a.workshop,1,3)='PPW' then 'SL (Sales)' else a.factory end
//                              ) as Active,a.QC_time,a.QCCount,a.QCMan,c.DefectCode,c.Problem as DefectLoc,c.FCount,
//                             (case when b.qc_light='P' then b.lightcount else a.qccount-b.lightcount end)  as PCount,
//                             (select defectchinesename  from [PH.FabricInspection].dbo.PHQCDefect where phdefectcode=c.defectcode) as DefectName
//                             from qc_master a join qc_detail b on a.masterid=b.masterid
//                              join (select masterid,W_Procedure,worker,DefectCode,Problem,count(defectcode) as FCount from qc_detail_detail 
//                                 group by masterid,W_Procedure,worker,DefectCode,Problem) c on a.masterid=c.masterid 
//                              where b.lightcount<7";

            param.CustQuerySQL = @"select distinct a.masterid,a.Factory,a.WorkShop,a.Line,a.Project,a.WO,a.WOC,a.RWO,a.QNNO,a.Style,
                               case when c.W_Procedure is null then a.W_Procedure else c.W_Procedure end as W_procedure,
                               (case when a.QCRoleCode='MobileQC_MQA' then '巡審定' else '巡審查' end) as RoleName,a.QCRoleCode,
                               case when c.W_Procedure is null then a.Worker else c.Worker end as Worker, '' as FAE,                              
                              dbo.[FN_GetReaudit](a.masterid) as ReAudit,
                            (select 1 from workforce where inactive=0 and (mtm=0 or mtm is null) and id=a.worker 
                             and factory=case when substring(a.workshop,1,3)='PPW' then 'SL (Sales)' else a.factory end
                              ) as Active,a.QC_time,a.QCCount,a.QCMan,c.DefectCode,c.Problem as DefectLoc,a.QCCount-b.PCount as FCount,b.PCount,                             
                             (select defectchinesename  from [PH.FabricInspection].dbo.PHQCDefect where phdefectcode=c.defectcode) as DefectName
                             from qc_master a join 
                               (select masterid,count(id) as PCount from qc_detail where qc_light='P' group by masterid) b on a.masterid=b.masterid
                              join (select masterid,W_Procedure,worker,DefectCode,Problem,count(defectcode) as FCount from qc_detail_detail 
                                 group by masterid,W_Procedure,worker,DefectCode,Problem) c on a.masterid=c.masterid 
                              where a.qctype='Part'and a.qc_time>=dateadd(mm,-2,getdate())";

            if (!string.IsNullOrEmpty(_role))
              param.CustQuerySQL =param.CustQuerySQL+" and a.qcrolecode='"+_role+"'";

            
            //and  a.qc_time>=dateadd(day,-20,getdate()
            //queryForm.SetFindParameters(param);
            this.StartEnquiry(param);
            base.DataBind();
        }



        protected override void OnClickFind()
        {

          //  queryForm.ShowDialog();

            //this.BindingSource.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            string sql = this.QueryParameter.CustQuerySQL;
            base.OnClickFind();
          
        }

        private void objListGridView_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "QCCount")
            {
                string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit");
                if (_audit=="Y")
                {
                    e.Appearance.ForeColor = Color.Red;
                    //e.Appearance.BackColor = Color.Red; 
                    //e.Appearance.BackColor2 = Color.Red;
                }
            }
            if (e.Column.FieldName == "RoleName")
            {
                string _rolename = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "RoleName");
                if (_rolename == "")
                { 
                  
                }
            }
        }

        private void objListGridView_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            if (e.Column.FieldName == "W_procedure")
            {
                e.Merge = true;
                e.Handled = true;
            }
            else
            {
                e.Merge = false;
                e.Handled = true;
            }
        }

        private void barBtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //XlsExportOptions xo =new XlsExportOptions();
            //xo.UseNativeFormat =false;
            
            //this.objListGridView.ExportToXls("d:\\test111.xls", xo);



            if (this.BindingSource.Count == 0)
            {
                MessageBox.Show("沒有數據,請查詢出數據后再打印!");
                return;
            }
            else
            {
                List<Proc_MasterList> qclist = new List<Proc_MasterList>();
                for (int i = 0; i < this.objListGridView.RowCount; i++)
                {
                    Proc_MasterList qc = this.objListGridView.GetRow(i) as Proc_MasterList;
                    qclist.Add(qc);
                }
                rptMasterSupplement_Comp rpt = new rptMasterSupplement_Comp(qclist);
                rpt.ShowPreview();
            }
        }

    }
}
