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


namespace PH.MobileQC.UI
{
    public partial class MasterList_Comp : PH.Platform.UI.CS.UI2.ListForm//PH.Platform.UI.CS.UI2.ListForm :PH.Platform.UI.CS.UI2.ListForm
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
        public MasterList_Comp()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MasterDetail).FullName;
        }

        public MasterList_Comp(string flag)
        {
            InitializeComponent();
            this.EditorTypeName = typeof(MasterDetail).FullName;
            Flag = flag;
        }

        public override void DataBind()
        {
            base.DataBind();
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);

            this.DataContext = context;
            this.DataSource = (from m in context.QC_Masters select m).Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            param.BoType = typeof(QC_Master);
            param.WarnRecord = 1000;

            param.FixedWherePart = Flag == "A" ? "QCType='Part' and QCRoleCode='MobileQC_MQA'" : "QCType='Part' and QCRoleCode='MobileQC_MQC'";

            this.StartEnquiry(param);
        }

        protected override void OnClickFind()
        {
            this.BindingSource.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            base.OnClickFind();
          
        }

        private void objListGridView_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //if (e.Column.FieldName == "QCCount")
            if (e.Column.FieldName == "ReAudit_Disp")
            {
               // string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit");
                string _audit = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "ReAudit_Disp");
                if (_audit.Substring(0,1) == "Y")
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }

            if (e.Column.FieldName == "FCount")
            {
                string _qty = this.objListGridView.GetRowCellDisplayText(e.RowHandle, "FCount");
                if (int.Parse(_qty)>0)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }
        }

        public string Condition="";


        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //string considtions = "";
            FrmMastListPrint fsd = new FrmMastListPrint(this);
            fsd.StartPosition = FormStartPosition.CenterParent;
            DialogResult drg = fsd.ShowDialog();
            if (drg == DialogResult.OK &&!string.IsNullOrEmpty(Condition))
            {
                string[] arycond =Condition.Split(new char[] { ';'});
                string _fac = arycond[0];
                string _start = arycond[1]+" 00:00:00";
                string _end = arycond[2]+" 23:00:00";
                DateTime d1= DateTime.Parse(_start);
                DateTime d2= DateTime.Parse(_end);

                //MobileQCDataContext mdc =this.DataContext as MobileQCDataContext;
                MobileQCDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                //List<QC_Master> lst = (from ms in mdc.QC_Masters
                //                       where ms.Factory == _fac && ms.QC_time.GetValueOrDefault().CompareTo(d1) >= 0 
                //             && ms.QC_time.GetValueOrDefault().CompareTo(d2) <= 0 select ms).ToList();
               // List<QC_Master> lst = aa.ToList();



                //List<QC_Master> lst = (from ms in mdc.QC_Masters
                //                       where ms.Factory == _fac orderby ms.QC_time descending
                //                       select ms).Take(200).ToList();

                string _role = Flag == "A" ? "MobileQC_MQA" : "MobileQC_MQC";

                string sqlstr = string.Format("select * from qc_master where isnull(qctype,'')='Part' and factory='{0}' and qcrolecode='{1}' and qc_time between '{2}' and '{3}'", _fac,_role,_start,_end);
               // string sqlstr = string.Format("select * from qc_master where factory='{0}' and qcrolecode='{1}' and qc_time between '{2}' and '{3}' and style='1195'", _fac, _role, _start, _end);
                var lst = (IEnumerable<QC_Master>)this.BindingSource.DataSource;


                List<QC_Master> qclist = new List<QC_Master>();
                for(int i=0;i<this.objListGridView.RowCount;i++)
                {
                    QC_Master qc = this.objListGridView.GetRow(i) as QC_Master;                   
                    qclist.Add(qc);
                  
                }

               // if (lst == null || lst.Count == 0)
                if (this.BindingSource.Count==0)
                {
                    MessageBox.Show("沒有數據 !");
                    return;
                }
                else
                {
                    string ss = arycond[1] + " ~ " + arycond[2];
                  //  var ds = lst.Where(p => p.Style == "1195").ToList();
                    rptMastList_Comp rpt = new rptMastList_Comp(qclist, ss, Flag);
                    rpt.ShowPreview();
                }
            }


        }

    }
}
