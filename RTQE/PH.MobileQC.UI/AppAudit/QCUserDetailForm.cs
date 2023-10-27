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

namespace PH.MobileQC.UI.AppAudit
{
    public partial class QCUserDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        private class LineBO
        {
            public string Factory
            {
                get;
                set;
            }

            public string WorkShop
            {
                get;
                set;
            }

            public string Line
            {
                get;
                set;
            }
        }

        private static List<LineBO> lineBOS = new List<LineBO>();
        //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        public QCUserDetailForm()
        {
            InitializeComponent();
            this.roleUserListForm1.EditorTypeName = typeof(RoleUserDetailForm).FullName;
            this.appRightInfoListForm1.EditorTypeName = typeof(AppRightInfoDetailForm).FullName;

            //DataTable dt = context.GetFactoryType();
            //factoryCheckedComboBoxEdit.Properties.Items.Clear();
            // for (int i = 0; i < dt.Rows.Count; i++)
            //  {
            //      factoryCheckedComboBoxEdit.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            //   }
            


        }

        private void QCUserDetailForm_Load(object sender, EventArgs e)
        {
            InitFactoryWorkShopAndLine();
        }


        private void disableCtrls()
        {
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
        }

        private void InitFactoryWorkShopAndLine()
        {
            PH.MobileQC.BO.QC_QCUser bo = this.BindingSource.Current as PH.MobileQC.BO.QC_QCUser;
            if (bo == null) return;
            if (QCUserDetailForm.lineBOS.Count == 0)
            {
                try
                {
                    List<LineBO> result = new List<LineBO>();
                    string sqlCmdTxt = string.Format(@"select tplant as factory,tShop,pline  
                                 from openquery(INTERBASE, 'select distinct tplant,TSHOP, PLINE from Mobile_QC')
                                 order by factory,tShop,pline desc");
                    SqlConnection con = bo.CurrentDataContext.Connection as SqlConnection;
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = sqlCmdTxt;
                    SqlDataAdapter sdap = new SqlDataAdapter();
                    sdap.SelectCommand = cmd;
                    System.Data.DataTable dt = new DataTable();
                    sdap.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        QCUserDetailForm.lineBOS = (from v in dt.AsEnumerable()
                                                    select new LineBO
                                                    {
                                                        Factory = v["factory"].ToString(),
                                                        WorkShop = v["tShop"].ToString(),
                                                        Line = v["pline"].ToString()
                                                    }).ToList();
                    }
                }
                catch (Exception ex)
                {
                }
            }
            if (QCUserDetailForm.lineBOS.Count > 0)
            {
                this.factoryCheckedComboBoxEdit.Properties.Items.Clear();
                List<string> factorys = QCUserDetailForm.lineBOS.Select(p => p.Factory).Distinct().ToList();
                foreach (string item in factorys)
                {
                    this.factoryCheckedComboBoxEdit.Properties.Items.Add(item);
                }

                setWorkShopCombox(bo.Factory);
                setWorkLineCombox(bo.WorkShop);

                //this.workShopCheckedComboBoxEdit.Properties.Items.Clear();
                //List<string> workShops = QCUserDetailForm.lineBOS.Select(p => p.WorkShop).Distinct().ToList();
                //foreach (string item in workShops)
                //{
                //    this.workShopCheckedComboBoxEdit.Properties.Items.Add(item);
                //}

                //this.workLineCheckedComboBoxEdit.Properties.Items.Clear();
                //List<string> workLines = QCUserDetailForm.lineBOS.Select(p => p.Line).Distinct().ToList();
                //foreach (string item in workLines)
                //{
                //    this.workLineCheckedComboBoxEdit.Properties.Items.Add(item);
                //}
            }
        }


        public override void DataBind()
        {
            PH.MobileQC.BO.QC_QCUser userBO = this.BindingSource.Current as PH.MobileQC.BO.QC_QCUser;
            if (userBO == null) return;

            this.roleUserListForm1.DataSource = userBO.QC_RoleUsers;
            this.appRightInfoListForm1.DataSource = userBO.QC_AppRightInfos;
        }

        protected override void OnClickSave()
        {
            RecordBasicInfo();
            base.OnClickSave();
        }

        protected override void OnClickSaveAndReturn()
        {
            RecordBasicInfo();
            base.OnClickSaveAndReturn();
        }

        private void RecordBasicInfo()
        {
            this.BindingSource.EndEdit();
            PH.MobileQC.BO.QC_QCUser bo = this.BindingSource.Current as PH.MobileQC.BO.QC_QCUser;
            if (bo == null) return;
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.CreateDate = DateTime.Now;
            }

            PH.MobileQC.BO.QC_QCUser updateBO = (PH.MobileQC.BO.QC_QCUser)bo.CurrentDataContext.GetChangeSet().Updates.Where(p => ((PH.MobileQC.BO.QC_QCUser)p).UserCode == bo.UserCode).FirstOrDefault();

            if (updateBO != null)
            {
                bo.AlterUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                bo.AlterDate = DateTime.Now;
            }
        }


        private void userCodeButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PlatUserChooseForm frm = new PlatUserChooseForm();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                PH.MobileQC.BO.QC_QCUser userBO = this.BindingSource.Current as PH.MobileQC.BO.QC_QCUser;
                userBO.UserCode = frm.SelectedUserBO.UserCode;
            }
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            disableCtrls();
        }

        private void factoryCheckedComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {
            if (this.factoryCheckedComboBoxEdit.EditValue == null) return;
            setWorkShopCombox(this.factoryCheckedComboBoxEdit.EditValue.ToString());
        }

        private void workShopCheckedComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {

            if (this.workShopCheckedComboBoxEdit.EditValue == null) return;
            setWorkLineCombox(this.workShopCheckedComboBoxEdit.EditValue.ToString());
        }

        private void setWorkShopCombox(string Factories)
        {
            this.workLineCheckedComboBoxEdit.Properties.Items.Clear();
            this.workShopCheckedComboBoxEdit.Properties.Items.Clear();
            if (Factories == null || Factories.Trim() == null) return;
            string[] vals = Factories.Split(',');
            List<string> factorys = new List<string>();
            foreach (string item in vals)
            {
                factorys.Add(item.Trim());
            }            
            List<string> workShops = QCUserDetailForm.lineBOS.Where(p => factorys.Contains(p.Factory)).Select(p => p.WorkShop).Distinct().ToList();
            foreach (string item in workShops)
            {
                this.workShopCheckedComboBoxEdit.Properties.Items.Add(item);
            }
        }

        private void setWorkLineCombox(string WorkShops)
        {
            this.workLineCheckedComboBoxEdit.Properties.Items.Clear();
            if (WorkShops == null || WorkShops.Trim() == "") return;
            string[] vals = WorkShops.Split(',');
            List<string> workShops = new List<string>();
            foreach (string item in vals)
            {
                workShops.Add(item.Trim());
            } 
            List<string> lines = QCUserDetailForm.lineBOS.Where(p => workShops.Contains(p.WorkShop)).Select(p => p.Line).Distinct().ToList();
            foreach (string item in lines)
            {
                this.workLineCheckedComboBoxEdit.Properties.Items.Add(item);
            }
        }


    }
}
