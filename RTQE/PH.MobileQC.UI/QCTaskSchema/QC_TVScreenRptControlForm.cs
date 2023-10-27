using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using PH.MobileQC.BO;
using PH.MobileQC.UI.Helper;

namespace PH.MobileQC.UI.QCTaskSchema
{
    public partial class QC_TVScreenRptControlForm : PH.Platform.UI.CS.UI0.BlankForm
    { 
        private List<LineBO> _lineBOList = new List<LineBO>();

        public QC_TVScreenRptControlForm()
        {
            InitializeComponent();

            GetDataSource();
            InitFactory();
            StartRefreshScreen();
        }


        private void QC_TVScreenRptControlForm_Load(object sender, EventArgs e)
        {
        }

        private void InitFactory()
        {
            //this.imageCBox_Factory.Properties.Items.Clear();
            //List<String> list = this._lineBOList.Select(p => p.Factory).Distinct().ToList();
            //foreach (string item in list)
            //{
            //    this.imageCBox_Factory.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item,item));
            //}
            MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            imageCBox_Factory.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                imageCBox_Factory.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(dt.Rows[i]["Name"].ToString(), dt.Rows[i]["Name"].ToString()));
            }

        }

        private void InitWorkShop(string Factory)
        {
            this.imageCBox_WorkShop.Properties.Items.Clear();
            List<String> list = this._lineBOList.Where(p => p.Factory == Factory).Select(p => p.WorkShop).Distinct().ToList();
            foreach (string item in list)
            {
                this.imageCBox_WorkShop.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
            }
        }

        private void InitWorkLine(string Factory, string WorkShop)
        {
            this.imageCBox_LineNO.Properties.Items.Clear();
            List<String> list = this._lineBOList.Where(p => p.Factory == Factory && p.WorkShop == WorkShop).Select(p => p.Line).Distinct().ToList();
            foreach (string item in list)
            {
                this.imageCBox_LineNO.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
            } 
        }

        private void GetDataSource()
        { 
            LineHelper lineHelper = new LineHelper();
            this._lineBOList = lineHelper.GetLineDataSource();
        }

        private void StartRefreshScreen()
        {
            SetRefreshInterval();
            this.timer_RefreshScreen.Enabled = true;
        }

        private void SetRefreshInterval()
        {
            int interval=Convert.ToInt32(this.spinEdit_RefreshInterval.EditValue); 
            this.timer_RefreshScreen.Interval = interval * 1000 * 60;
        }

        private void imageCBox_Factory_SelectedValueChanged(object sender, EventArgs e)
        {
            this.imageCBox_WorkShop.Properties.Items.Clear();
            this.imageCBox_LineNO.Properties.Items.Clear();
            if (this.imageCBox_Factory.EditValue != null)
            {
                string factory = this.imageCBox_Factory.EditValue.ToString();
                InitWorkShop(factory);
            }
        }

        private void imageCBox_WorkShop_SelectedValueChanged(object sender, EventArgs e)
        {
            this.imageCBox_LineNO.Properties.Items.Clear();
            if (this.imageCBox_WorkShop.EditValue != null)
            {
                string factory = this.imageCBox_Factory.EditValue.ToString();
                string workShop = this.imageCBox_WorkShop.EditValue.ToString();
                InitWorkLine(factory, workShop);
            }

        }

        private void sBtn_ShowRpt_Click(object sender, EventArgs e)
        {
            //ShowRpt();

            try
            {
                this.Cursor = Cursors.WaitCursor;
                if (this.imageCBox_LineNO.EditValue == null)
                {
                    MessageBox.Show("請選擇[組裝線]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                ShowTVScreen();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }


        private void ShowTVScreen()
        {
            if (this.imageCBox_LineNO.EditValue == null)
            { 
                return;
            }            
            string lineNO = this.imageCBox_LineNO.EditValue.ToString();
            int pageIndex=1;
            int pageSize=1000;
            string dateTm = DateTime.Now.ToString("yyMMddHHmmssfff");
            string url = string.Format("http://10.2.1.60:800//QCResultForm.aspx?LineNO={0}&PageIndex={1}&PageSize={2}&ScreenType={3}&Tm={4}", lineNO, pageIndex, pageSize, "Citrix", dateTm);
            //string url = string.Format("http://10.2.4.102:9090//QCResultForm.aspx?LineNO={0}&PageIndex={1}&PageSize={2}&ScreenType={3}&Tm={4}", lineNO, pageIndex, pageSize, "Citrix", dateTm);
            this.webBrowser1.Url = new Uri(url);

            this.lblLastRefreshTime.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
 
        } 


        private void ShowRpt()
        { 

            if (this.imageCBox_LineNO.EditValue == null)
            {
                MessageBox.Show("請選擇[組裝線]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string lineNO = this.imageCBox_LineNO.EditValue.ToString();


            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            SqlDataAdapter dap = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "P_GetQCResult";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@LineNO", SqlDbType.NVarChar, 20);
            cmd.Parameters["@LineNO"].Value = lineNO;
            cmd.Parameters.Add("@PageIndex", SqlDbType.Int);
            cmd.Parameters["@PageIndex"].Value = 1;
            cmd.Parameters.Add("@PageSize", SqlDbType.Int);
            cmd.Parameters["@PageSize"].Value = 10000;
            cmd.Connection = new SqlConnection(dcon.Connection.ConnectionString);
            cmd.CommandTimeout = 1000 * 60 * 3;
            dap.SelectCommand = cmd;

            DataTable dt = new DataTable();
            dap.Fill(dt);

            List<QCResultBO> result = new List<QCResultBO>();
            result = (from v in dt.AsEnumerable()
                      select new QCResultBO
                      {
                          DetailID = v["DetailID"].ToString(),
                          LineNO = v["Line"].ToString(),
                          ProjectNO = v["Project"].ToString(),
                          WONO = v["WO"].ToString(),
                          CustStyleNO = v["Style"].ToString(),
                          WFID = v["Worker"].ToString(),
                          Seniority = v["Seniority"].ToString(),
                          AuditDate = v["QC_time"].ToString(),
                          AudtiQty = v["QCCount"].ToString(),
                          DefectQty = v["LightCount"].ToString(),
                          DefectSmplSeq = v["DefectSmplSeq"].ToString(),
                          DefectPointAtThatOpt = v["DefectPointAtThatOpt"].ToString(),
                          DefectPointAtOtherOpt = v["DefectPointAtOtherOpt"].ToString(),
                          TrafficLightFlag = v["TrafficLightFlag"].ToString(),
                          DefectCode = v["DefectCode"].ToString(),
                          DefectName_CN = v["DefectChineseName"].ToString(),
                          WCount = v["WCount"].ToString(),
                          WorkStation = v["workstation"].ToString(),
                          ProcedureSeq = v["gxh"].ToString(),
                          ProcedureCode = v["W_Procedure"].ToString(),
                          ProcedureName_CN = v["gxmc"].ToString(),
                          RefreshTime = DateTime.Now,
                          AuditNote = v["AuditNote"].ToString()
                      }).ToList();

            rptQCTVScreen rpt = new rptQCTVScreen();
            rpt.DataSource = result;
            rpt.ShowPreview(); 
        } 

        private void sBtn_StopAndGO_Click(object sender, EventArgs e)
        {
            if (this.sBtn_ShowRpt.Tag.ToString() == "STOP")
            {
                this.sBtn_ShowRpt.Text = "啟動";
                this.sBtn_ShowRpt.Tag = "START";
                this.timer_RefreshScreen.Enabled = false;
            }
            else if (this.sBtn_ShowRpt.Tag.ToString() == "START")
            {
                this.sBtn_ShowRpt.Text = "暫停";
                this.sBtn_ShowRpt.Tag = "STOP";
                this.timer_RefreshScreen.Enabled = true;
            }
        }

        private void timer_RefreshScreen_Tick(object sender, EventArgs e)
        {
            ShowTVScreen();
        }

        private void spinEdit_RefreshInterval_EditValueChanged(object sender, EventArgs e)
        {
            SetRefreshInterval();
        }

        private void sBtn_PrintScreen_Click(object sender, EventArgs e)
        { 
            this.webBrowser1.ShowPrintPreviewDialog();
        }

    }
}
