using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;
using System.IO;
using System.Security;

namespace PH.MobileQC.UI
{
    public partial class DetailDetailDetail : PH.Platform.UI.CS.UI2.DetailForm
    {
        private MobileQCDataContext context;  // =  PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();


        private MobileQC.BO.QC_Master _currQCMaster
        {
            get
            {
                MobileQC.BO.QC_Master value = null;
                MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
                if (currQcDetailDetail != null)
                {
                    MobileQC.BO.QC_Detail currQcDetail = currQcDetailDetail.QC_Detail;
                    if (currQcDetail != null)
                    { 
                        value = currQcDetail.QC_Master; 
                    }
                }
                return value;
            }
        }

        private MobileQC.BO.QC_Detail _currQCDetail
        {
            get
            {
                MobileQC.BO.QC_Detail value = null;
                MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
                if (currQcDetailDetail != null)
                {
                    value = currQcDetailDetail.QC_Detail; 
                }
                return value;
            }
        }


        private MobileQC.BO.QC_Detail_Detail _currQCDetailDetail
        {
            get
            { 
                MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
                return currQcDetailDetail;
            }
        }


        public DetailDetailDetail()
        {
            InitializeComponent();
           // context = this.DataContext as MobileQCDataContext;
        }


        private void DetailDetailDetail_Load(object sender, EventArgs e)
        {
            this.PrepareThirdData();
            //this.ShowImg("");
        }



        public override void DataBind()
        {
            context = this.DataContext as MobileQCDataContext;
            base.DataBind();
            this.ShowImg();

            if (!this.IsNew)
            {
                if (this.edtW_procedure.DataBindings["Text"] == null)
                {
                    this.edtW_procedure.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "W_procedure", true));
                }
                if (this.edtWorker.DataBindings["Text"] == null)
                {
                    this.edtWorker.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Worker", true));
                }
            }
            else if (this.IsNew)
            { 
                if (this._currQCDetailDetail != null)
                {
                    this._currQCDetailDetail.ID = System.Guid.NewGuid();
                    this._currQCDetailDetail.CreateUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    this._currQCDetailDetail.CreateDate = DateTime.Now;
                    if (this._currQCMaster != null)
                    {
                        this._currQCDetailDetail.W_procedure = this._currQCMaster.W_procedure;
                        this._currQCDetailDetail.Worker = this._currQCMaster.Worker;
                    }
                    this._currQCDetailDetail.DefectQty = 1;
                }
            }

        }


        private void PrepareThirdData()
        {

            MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
            if (currQcDetailDetail != null)
            {
                MobileQC.BO.QC_Detail currQcDetail = currQcDetailDetail.QC_Detail;
                if (currQcDetail != null)
                {
                    if (currQcDetail.LightCount > 0)
                    {
                        int endIndex = this.productSeqImageComboBoxEdit.Properties.Items.Count;
                        int startIndex = currQcDetail.LightCount.Value;
                        for (int i = endIndex - 1; i >= startIndex; i--)
                        {
                            this.productSeqImageComboBoxEdit.Properties.Items.RemoveAt(i);
                        }
                    }
                }
            }


            PH.DefectCode.BO.FabricInspectionDataContext context2 = PH.Platform.BO.ContextBuilder.CreateContext<PH.DefectCode.BO.FabricInspectionDataContext>();//.PHQCDefectList list = new PH.DefectCode.BO.PHQCDefectList();
            var defect_Code = from c in context2.PHQCDefects select c;

            this.edtDefetct_Code.Properties.DataSource = defect_Code;
            this.edtDefetct_Code.Properties.DisplayMember = "PHDefectCode";
            this.edtDefetct_Code.Properties.ValueMember = "PHDefectCode";
            switch (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID)
            {
                case "EN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "EN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});

                    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                    this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
                    break;
                case "TW":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "CN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

                    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                    this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
                    break;
                case "CN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "CN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

                    this.edtW_procedure.Properties.Columns["GXM"].Visible = true;
                    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                    break;
                case "TH":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5), 
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectThaiName", "TN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});

                    this.edtW_procedure.Properties.Columns["GXM"].Visible = true;
                    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                    break;
                default:
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "EN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});

                    this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                    this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
                    break;
            }


            var problem = from a in context.QC_Defects where a.Defect_Type == 2 select a;
            this.edtProblem.Properties.DataSource = problem;
            this.edtProblem.Properties.DisplayMember = "Defect_Spec";
            this.edtProblem.Properties.ValueMember = "Defect_Code";


            var cause = from a in context.QC_Defects where a.Defect_Type == 6 select a;
            this.edtCause.Properties.DataSource = cause;
            this.edtCause.Properties.DisplayMember = "Defect_Code";
            this.edtCause.Properties.ValueMember = "Defect_Code";


            BandComBoxWorkforceAndMachine();
            BindWProcedure();
        }

        private void BindWProcedure()
        {
            //MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
            //if (currQcDetailDetail == null) return;

            //MobileQC.BO.QC_Detail currQcDetail = currQcDetailDetail.QC_Detail;
            //if (currQcDetail == null) return;

            //MobileQC.BO.QC_Master currQcMaster = currQcDetail.QC_Master;
            //if (currQcMaster == null) return;

            if (this._currQCMaster == null) return;

            string SqlStr = string.Empty;
            SqlStr = string.Format(@"SELECT GXH,GXDH,GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM [PHGDB2].dbo.Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' ORDER BY gxh", this._currQCMaster.Style);

            this.edtW_procedure.Properties.DataSource = context.ExecuteQuery<operation>(SqlStr).ToList<operation>();

            this.edtW_procedure.Properties.ValueMember = "GXDH";
            this.edtW_procedure.Properties.DisplayMember = "GXDH";
        }


        private void edtW_procedure_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsNew)
            {
                this.BandComBoxWorkforceAndMachine(); 
            }

            if (this._currQCMaster != null && this.edtW_procedure.EditValue!=null)
            {
                this._currQCDetailDetail.IsFindAtSameTime = !(this._currQCMaster.W_procedure == this.edtW_procedure.EditValue.ToString());
            }

        }

        private void edtW_procedure_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtW_procedure.Properties.DataSource != null)
            {
                (this.edtW_procedure.Properties.DataSource as IList<operation>).Add(new operation() { GXDH = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtW_procedure.EditValue = e.DisplayValue;
                this.edtW_procedure.Text = e.DisplayValue.ToString();
            }
        }

        protected override void OnClickSave()
        {
            if (CheckThirdInputData())
            {
                base.OnClickSave();
            }
        }

        protected override void OnClickSaveAndReturn()
        {
            if (CheckThirdInputData())
            {
                base.OnClickSaveAndReturn();
            }
        }

        //Xsj:檢驗頁面3的輸入合法性
        private bool CheckThirdInputData()
                    {
            bool result = true;
            if (this.productSeqImageComboBoxEdit.EditValue == null || this.productSeqImageComboBoxEdit.EditValue == System.DBNull.Value)
            {
                MessageBox.Show("[Product Seq]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.productSeqImageComboBoxEdit.Focus();
                result = false;
            }
            else if (this.edtW_procedure.EditValue == null || this.edtW_procedure.EditValue == System.DBNull.Value)
            {
                MessageBox.Show("[Operation Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtW_procedure.Focus();
                result = false;
            }
            else if (this.edtDefetct_Code.EditValue == null || this.edtDefetct_Code.EditValue == System.DBNull.Value)
            {
                MessageBox.Show("[Defect Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtDefetct_Code.Focus();
                result = false;
            }
            else if (this.edtProblem.EditValue == null || this.edtProblem.EditValue == System.DBNull.Value)
            {
                MessageBox.Show("[Defect Position Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtProblem.Focus();
                result = false;
            }
            else if (this.edtCause.EditValue == null || this.edtCause.EditValue == System.DBNull.Value)
            {
                MessageBox.Show("[Defect Cause Desc.]不能為空。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.edtCause.Focus();
                result = false;
            }
            else if (this.defectQtySpinEdit.EditValue == null || this.defectQtySpinEdit.EditValue == System.DBNull.Value || Convert.ToInt32(this.defectQtySpinEdit.EditValue) < 0)
            {
                MessageBox.Show("[Defect Cause Desc.]不能為空或小於0。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.defectQtySpinEdit.Focus();
                result = false;
            }
            else
            {
                MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
                if (currQcDetailDetail != null)
                {
                    MobileQC.BO.QC_Detail currQcDetail = currQcDetailDetail.QC_Detail;
                    if (currQcDetail != null && Convert.ToInt32(this.defectQtySpinEdit.EditValue) > currQcDetail.LightCount)
                    {
                        MessageBox.Show("[Defect Cause Desc.]不能大於" + currQcDetail.LightCount + "。", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        this.defectQtySpinEdit.Focus();
                        result = false;
                    }
                }
            }
            return result;
        }


        private void BandComBoxWorkforceAndMachine()
        {
            //MobileQC.BO.QC_Detail_Detail currQcDetailDetail = this.BindingSource.Current as MobileQC.BO.QC_Detail_Detail;
            //if (currQcDetailDetail == null) return;

            //MobileQC.BO.QC_Detail currQcDetail = currQcDetailDetail.QC_Detail;
            //if (currQcDetail == null) return;

            //MobileQC.BO.QC_Master currQcMaster = currQcDetail.QC_Master;
            //if (currQcMaster == null) return;


            if (this._currQCMaster == null) return;



            PH.LWPM.BO.RAPLQDataContext contextLWPM = PH.Platform.BO.ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
            contextLWPM.CommandTimeout = 8000;

            string SqlStr = @"SELECT  WorkerId,WorkerName,addworkerId1,addworker1,addworkerId2, addworker2,addworkerId3,addworker3,MachineId,addMachineId1, addMachineId2,addMachineId3
                                  FROM Lb5Matching WHERE LineCode = '{0}' AND J2_job = '{1}' AND Qn= '{2}' AND Rwo = '{3}' AND Date = '{4}' AND j_NO = '{5}' AND OTN = '{6}' AND OperationCode = '{7}'";
            SqlStr = string.Format(SqlStr, this._currQCMaster.Line, this._currQCMaster.WO, this._currQCMaster.QNNo, this._currQCMaster.RWO,
                DateTime.Now.ToString("yyyy-MM-dd"), this._currQCMaster.Project, this._currQCMaster.OTN, this._currQCMaster.W_procedure);

            DataTable dt = contextLWPM.ExecuteDataTable(SqlStr, "LB5Matching");

            if (dt.Rows.Count <= 0)
            {
                return;
            }

            // 從LB5中得到員工和機器
            this.edtWorker.Properties.DisplayMember = "Id";
            this.edtWorker.Properties.ValueMember = "Id";

            List<workers> workList = new List<workers>();
            List<machines> machineList = new List<machines>();


            foreach (DataRow obj in dt.Rows)
            {
                workList.Add(new workers() { Id = obj["WorkerId"].ToString(), NameCn = obj["WorkerName"].ToString().Trim() });
                if (obj["addworkerId1"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId1"].ToString(), NameCn = obj["addworker1"].ToString().Trim() });
                }
                if (obj["addworkerId2"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId2"].ToString(), NameCn = obj["addworker2"].ToString().Trim() });
                }
                if (obj["addworkerId3"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId3"].ToString(), NameCn = obj["addworker3"].ToString().Trim() });
                }

            }
        }

        private void edtWorker_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtWorker.Properties.DataSource != null)
            {
                (this.edtWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtWorker.EditValue = e.DisplayValue;
                this.edtWorker.Text = e.DisplayValue.ToString();
            }
        }


        void ShowImg()
        {
           // var IQueryable<string> = (this.DataContext as MobileQCDataContext).QC_Detail_Details.Where(P => P.MasterID.ToString() == masterid).Select(S => S.ImgUrl);
            //P1.Image = iMG != null ? ByteArrayToImage(iMG.ToArray()) : null;
            QC_Detail_Detail qdd = this.BindingSource.Current as QC_Detail_Detail;
            if (qdd == null || string.IsNullOrEmpty(qdd.ImgUrl))
                return;

            /* remark by joseph at 8/15
            int _idx = qdd.ImgUrl.LastIndexOf(@"\");
            string s1 = qdd.ImgUrl.Substring(0, _idx);
            int _idx1 = s1.LastIndexOf(@"\");
            string ss= qdd.ImgUrl.Substring(_idx1+1).Replace(@"\",@"/");
            string s2 = qdd.ImgUrl.Substring(_idx1+1, _idx - _idx1-1);
             * */


            //string url = "http://10.2.9.44:9000/File/" + ss;
            string url = "http://10.2.9.44:90/MobileQCPics/" + qdd.ImgUrl;

            try
            {
                Image obj = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream());
                pe.Image = obj;
            }
            catch (NotSupportedException ne)
            {
                MessageBox.Show("试图读取/查找或写入不支持调用功能的流!");
                return;
            }
            catch (ArgumentNullException ae)
            {
                MessageBox.Show("以下Url地址 :" + url + "錯誤或不存在!");
                return;
            }
            catch (SecurityException se)
            {
                MessageBox.Show("訪問權限不足!");
                return;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            // pictureEdit1.Image = new Bitmap((new System.Net.WebClient()).OpenRead(url)); 
            //string url = "\\sharename\\" + mfloader + "\\" + qdd.ImgUrl;


            //FileStream fileStream = new FileStream(url, FileMode.Open, FileAccess.Read);
            //int byteLength = (int)fileStream.Length;
            //byte[] fileBytes = new byte[byteLength];
            //fileStream.Read(fileBytes, 0, byteLength);
            //fileStream.Close();
            //pe.Image = Image.FromStream(new MemoryStream(fileBytes));

        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            ShowImg();
        }


        private Image ByteArrayToImage(byte[] bytes)
        {
            if (bytes.Length > 0)
            {
                MemoryStream Ms = new MemoryStream();
                Ms.Write(bytes, 0, bytes.Length);
                return Image.FromStream(Ms);
            }
            return null;
        }

    }
}
