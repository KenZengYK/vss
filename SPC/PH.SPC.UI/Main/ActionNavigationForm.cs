using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Main
{
    public partial class ActionNavigationForm : DevExpress.XtraEditors.XtraForm
    {
        Style _Style;
        SPCDataContext db;
        ActionNavigationWorkModes _ActionNavigationWorkMode;

        public ActionNavigationForm(Style AStyle, ActionNavigationWorkModes AActionNavigationWorkMode)
        {
            InitializeComponent();
            _Style = AStyle;
            _ActionNavigationWorkMode = AActionNavigationWorkMode;
            colCheckFlag.Visible = AActionNavigationWorkMode == ActionNavigationWorkModes.PassForward_P;

            PrepareData();
        }

        void PrepareData()
        {
            db = ContextBuilder.CreateContext<SPCDataContext>();

            //Stage
            string SqlStr = "select DataType, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'SampleStage'";
            DataTable dtStage = db.ExecuteDataTable(SqlStr, "dtStage");
            txtStage.Properties.DataSource = dtStage;
            txtStage.Properties.ValueMember = "DataType";
            txtStage.Properties.DisplayMember = "DataType";
            //txtStage.EditValue = "1st";

            SampleOrder obj = _Style.SampleOrder;
            if (obj == null || string.IsNullOrEmpty(obj.CustomerID) || string.IsNullOrEmpty(obj.Factory))
            {
                return;
            }

            txtStage.EditValue = obj.StageCode;
            this.bindingSource1.DataSource = db.GetCustomerSampleOrderSort(obj.CustomerID, obj.Factory, obj.StageCode);
        }

        public string Stage
        {
            get
            {
                return txtStage.Text;
            }
        }

        /// <summary>
        /// 當ActionNavigationWorkModes.PassForward_S時，取得選中的Sample Type
        /// </summary>
        public string SampleType
        {
            get
            {
                if (_ActionNavigationWorkMode == ActionNavigationWorkModes.PassForward_S)
                {
                    GetCustomerSampleOrderSortResult obj = this.bindingSource1.Current as GetCustomerSampleOrderSortResult;
                    return obj.SampleOrderType;
                }
                return "";
            }
        }

        /// <summary>
        /// 當ActionNavigationWorkModes.PassForward_P時，取得選中的Sample Type List
        /// </summary>
        public List<string> SampleTypeList
        {
            get
            {
                List<string> lists = new List<string>();
                if (_ActionNavigationWorkMode == ActionNavigationWorkModes.PassForward_P)
                {
                    for (int i = 0; i < this.gridView.RowCount; i++)
                    {
                        GetCustomerSampleOrderSortResult obj = this.gridView.GetRow(i) as GetCustomerSampleOrderSortResult;
                        if (obj != null && obj.CheckFlag)
                        {
                            lists.Add(obj.SampleOrderType);
                        }
                    }
                }
                return lists;
            }
        }

        private void txtStage_EditValueChanged(object sender, EventArgs e)
        {
            SampleOrder obj = _Style.SampleOrder;
            this.bindingSource1.DataSource = db.GetCustomerSampleOrderSort(obj.CustomerID, obj.Factory, txtStage.EditValue.ToString());
        }
    }

    public enum ActionNavigationWorkModes
    {
        PassForward_S,
        PassForward_P
    }
}