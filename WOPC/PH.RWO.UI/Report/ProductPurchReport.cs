using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BackEnd.Reports.SL;
using PH.RWO.BackEnd.Reports.SL.PO;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.UI.Report
{
    public partial class ProductPurchReport : PH.Platform.UI.CS.UI0.PrintBaseForm
    {

        RWOSOPCDataContext RwoCtx = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public ProductPurchReport()
        {
            InitializeComponent();
            //BindData();

        }

        private void ProductPurchReport_Load(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            /*
                _lstcitys = (this.DataContext as RAPLQDataContext).BaseCodes.Where(P => P.Type == "AREA").ToList();
                areaComboBoxEdit.Properties.DisplayMember = "Name";
                areaComboBoxEdit.Properties.ValueMember = "Code";
                areaComboBoxEdit.Properties.DataSource = _lstcitys;
                areaComboBoxEdit.Properties.PopupSizeable = true;            
                areaComboBoxEdit.Properties.PopupWidth = 20;         
           */

            //-------bind project
            //this.glueProject .Properties.DisplayMember = dt.Columns[2].ColumnName;
            //this.glueProject.Properties.ValueMember = dt.Columns[0].ColumnName;

          //  this.dateEditFrom.EditValue = DateTime.Now;
          //  this.dateEditTo.EditValue = DateTime.Now;

            DataTable dt = RwoCtx.ExecuteDataTable("select ProjectNo,WorkOrderNo,StyleNo,CustomerStyleNo, from dbo.vw_searchproject", "tbproj");
            DataRow nrow = dt.NewRow();
            nrow["ProjectNo"] = null;
            nrow["WorkOrderNo"] = null;
            nrow["SalesOrderno"] = null;
            nrow["StyleNo"] = null;
            dt.Rows.Add(nrow);
           
            bs.DataSource = dt;
            bs.Sort = "ProjectNo";
            glueProject.Properties.DisplayMember = "ProjectNo";
            glueProject.Properties.ValueMember = "ProjectNo";
            glueProject.Properties.DataSource = bs;

            this.glueProject.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.True;
            this.glueProject.Properties.View.BestFitColumns();
            this.glueProject.Properties.ShowFooter = false;
            this.glueProject.Properties.View.OptionsView.ShowAutoFilterRow = true; //显示不显示grid上第一个空行,也是用于检索的应用
            this.glueProject.Properties.AutoComplete = false;
            this.glueProject.Properties.ImmediatePopup = true;

            //this.glueProject.Properties.poPopupFilterMode = DevExpress.XtraEditors.PopupFilterMode.Contains;
            this.glueProject.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
        }

        private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            
            string _project = glueProject.EditValue == null ? "" : glueProject.EditValue.ToString();
            string _wo = edtWO.EditValue == null ? "" : edtWO.EditValue.ToString();
            string _style = edtStyle.EditValue == null ? "" : edtStyle.EditValue.ToString();
            string _custstyle = edtCustStyle.EditValue == null ? "" : edtCustStyle.EditValue.ToString();
            string _datefrom = dateEditFrom.EditValue == null ? "" : dateEditFrom.EditValue.ToString();
            string _dateto = dateEditTo.EditValue == null ? "" : dateEditTo.EditValue.ToString();


            if (_project==""&&_wo==""&&_style==""&&_custstyle==""&&_datefrom==""&&_dateto=="")
            {
                MessageBox.Show("請至少選擇一個條件!");
                return;
            }

            if (rbPH.Checked)
            {
                RptPOWhole whole = new RptPOWhole();
                whole.CurProject = _project;
                whole.CurWorkOrder = _wo;
                whole.CurStyle = _style;
                whole.CurCustStyle = _custstyle;
                whole.DateFrom = _datefrom;
                whole.DateTo = _dateto;

                whole.IsPH = rbPH.Checked;
                whole.CurCtx = RwoCtx;
                whole.ShowPreview();
            }
            else
            {
                RptPOWhole_A whole = new RptPOWhole_A();
                whole.CurProject = _project;
                whole.CurWorkOrder = _wo;
                whole.CurStyle = _style;
                whole.CurCustStyle = _custstyle;
                whole.DateFrom = _datefrom;
                whole.DateTo = _dateto;

                whole.IsPH = rbPH.Checked;
                whole.CurCtx = RwoCtx;
                whole.ShowPreview();            
            }
           
        }
        BindingSource bs = new BindingSource();
        private void lueProj_EditValueChanged(object sender, EventArgs e)
        {
            /*
             
            if (lueWageType.Text.ToString() != "")
            {
                BaseCode bc = this.lueWageType.Properties.GetDataSourceRowByKeyValue(lueWageType.EditValue) as BaseCode;
                if (bc != null)
                {
                    this.edtWageType_TW.Text = bc.Description;
                    //this.edtWageType_Bd.Text = bc.NameBd;
                }
            }             
             */
        }

        private void glueProject_EditValueChanged(object sender, EventArgs e)
        {

            //DataRowView drv = bs.Current as DataRowView;
            //if (drv!=null)
            //{
            //    this.edtStyle.EditValue = drv.Row["StyleNo"].ToString();
            //    this.edtWO.EditValue = drv.Row["WorkOrderNo"].ToString();
            //    this.edtCustStyle.EditValue = drv.Row["CustomerStyleNo"].ToString();
            //}
        }

        private void glueProject_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {

            DataRowView drv = bs.Current as DataRowView;
            if (drv != null)
            {
                this.edtStyle.EditValue = drv.Row["StyleNo"].ToString();
                this.edtWO.EditValue = drv.Row["WorkOrderNo"].ToString();
                this.edtCustStyle.EditValue = drv.Row["CustomerStyleNo"].ToString();
            }
        }

      
    }
}
