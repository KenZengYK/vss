using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Data.Linq;
using System.Reflection;
using System.IO.Compression;
using PH.RWO.BO;
using System.Runtime.InteropServices;
using Excel = Microsoft.Office.Interop.Excel;

namespace PH.RWO.BackEnd
{
    /// <summary>
    /// 實現自動
    /// </summary>
    public partial class JobExportToRFID : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl, PH.Platform.BackEnd.BO.IServerJob
    {
        public JobExportToRFID()
        {
            InitializeComponent();
            // BackEndJob(this.txtCondition.Text+"@"+this.txtOutPutPath.Text);
        }
        //public string Condition { get { return txtCondition.Text; } }

        private string _pathRFID, _pathCustomer, _pathCustStyle;
        private int _days;

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { "|" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._days = Convert.ToInt32(ss[0]);
            this._pathRFID = ss[1].Trim();
            this._pathCustomer = ss[2].Trim();
            this._pathCustStyle = ss[3].Trim();
        }


        public void BackEndJob(string parameters)
        {
            GetValues(parameters);

            RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            context.CommandTimeout = 5000;
            //string _condition = parameters.Split('@')[0];
            //if (_condition.Trim().Length > 0)
            //{
            //    _condition = _condition.ToLower().Contains("where") ? _condition : " where " + _condition;
            //}
            //IList<View_Export> list = Global.GetItemsForListing<View_Export>("select * from view_export " + _condition, context);
            //this.bindingSource1.DataSource = list;
            //parameters += "\\rwo{0}.xls";
            //string path = string.Format(parameters.Split('@')[1], System.DateTime.Now.ToString("yyyy_MM_dd"));
            //int days = Convert.ToInt32(parameters.Split('@')[0]);
            ISingleResult<sp_ExportRFIDResult> list = context.sp_ExportRFID(_days);
            List<sp_ExportRFIDResult> rwos = list.ToList<sp_ExportRFIDResult>();


            //string path = parameters.Split('@')[1];

            #region 1.RWO QTY

            //var rwos = from a in context.View_Exports
            //           select a;
            this.colProjectNo.Visible = false;
            this.viewRWO.GridControl.DataSource = null;
            this.viewRWO.GridControl.DataSource = rwos;

            string fileName = string.Format("RwoToRfid.xls", System.DateTime.Now);
            ExportRFID(_pathRFID, fileName, this.viewRWO);
            #endregion

            #region 2.RWO QTY with ProjectNo

            //var rwos = from a in context.View_Exports;
            //           select a;
            this.colProjectNo.Visible = true;
            //this.viewRWO.GridControl.DataSource = null;
            //this.viewRWO.GridControl.DataSource = rwos;

            fileName = string.Format("RwoProject{0:yyyy_MM_dd}.xls", System.DateTime.Now);
            ExportRFID(_pathRFID, fileName, this.viewRWO);
            #endregion

            #region 3.Customer
            //var custs = (from a in context.CustomerCodes
            //             where (a.CustomerCode1 != null && a.CustomerCode1 != "")
            //             select new { Cust = a.CustomerCode1 }).Distinct().OrderBy(p => p.Cust);
            var aa = (from a in rwos
                      where (a.Customer != null && a.Customer != "")
                      select new { Cust = a.Customer }).Distinct().OrderBy(p => p.Cust);
            List<sp_ExportRFIDResult> custs = new List<sp_ExportRFIDResult>();
            foreach (var item in aa)
            {
                custs.Add(new sp_ExportRFIDResult() { Customer = item.Cust });
            }
            this.viewCustomer.GridControl.DataSource = null;
            this.viewCustomer.GridControl.DataSource = custs;
            fileName = string.Format("Customer.xls", System.DateTime.Now);
            ExportRFID(_pathCustomer, fileName, this.viewCustomer);
            #endregion

            #region 4.Cust Style
            // select distinct CustomerStyleNo from workorder
            //var custStyles = (from a in context.WorkOrders
            //                  where a.Company == "P1"
            //                  && (a.CustomerStyleNo != null && a.CustomerStyleNo != "")
            //                  //orderby a.CustomerStyleNo
            //                  select new { a.CustomerStyleNo }).Distinct().OrderBy(p => p.CustomerStyleNo);
            var bb = (from a in rwos
                      where (a.CustomerStyleNo != null && a.CustomerStyleNo != "")
                      select new { CustomerStyleNo = a.CustomerStyleNo }).Distinct().OrderBy(p => p.CustomerStyleNo);
            List<sp_ExportRFIDResult> custStyles = new List<sp_ExportRFIDResult>();
            foreach (var item in bb)
            {
                custStyles.Add(new sp_ExportRFIDResult() { CustomerStyleNo = item.CustomerStyleNo });
            }
            this.viewCustStyle.GridControl.DataSource = null;
            this.viewCustStyle.GridControl.DataSource = custStyles;
            fileName = string.Format("CustStyle.xls", System.DateTime.Now);
            ExportRFID(_pathCustStyle, fileName, this.viewCustStyle);
            #endregion

            //if (bl)
            //{
            //    System.Diagnostics.ProcessStartInfo info = new System.Diagnostics.ProcessStartInfo();
            //    info.FileName = "Copyfile.bat";
            //    info.Arguments = path;
            //    System.Diagnostics.Process.Start(info);
            //}
        }

        private void ExportRFID(string path, string fileName, DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            string f = System.IO.Path.GetFileNameWithoutExtension(fileName);
            DevExpress.XtraPrinting.XlsExportOptions op = new DevExpress.XtraPrinting.XlsExportOptions();
            op.UseNativeFormat = true;
            op.SheetName = f;
            string file = path + "\\" + fileName;
            try
            {
                view.ExportToXls(file, op);
            }
            catch
            {
                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "\\Rwo"))
                {
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "\\Rwo");
                }
                path = string.Format(System.AppDomain.CurrentDomain.BaseDirectory + "\\Rwo\\{0}", fileName);
                view.ExportToXls(file, op);
            }

            SaveExcel(file);
        }

        #region IParameterSetControl Members
        /// <summary>
        /// 獲取參數
        /// </summary>
        /// <returns>返回字符串</returns>
        public string GetParameter()
        {
            return string.Format("{0}|{1}|{2}|{3}",
                (int)this.editDays.Value,
                this.editRFID.Text.Trim(),
                this.editCustomer.Text.Trim(),
                this.editCustStyle.Text.Trim());
        }

        /// <summary>
        /// 實現將參數回傳給UI
        /// </summary>
        /// <param name="parameters">參數</param>
        /// <returns>the control of  setting uc</returns>
        public UserControl ParameterControl(string parameters)
        {
            JobExportToRFID uc = new JobExportToRFID();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] strs = parameters.Split('|');
                uc.editDays.EditValue = strs[0];
                uc.editRFID.EditValue = strs[1];
                uc.editCustomer.EditValue = strs[2];
                uc.editCustStyle.EditValue = strs[3];

            }
            return uc;
        }
        #endregion

        private void SaveExcel(string FileName)
        {
            try
            {
                object oMissing = System.Reflection.Missing.Value;
                Excel.ApplicationClass xlApp = new Excel.ApplicationClass();
                xlApp.Visible = false;
                xlApp.Application.DisplayAlerts = false;
                Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(FileName, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing);
                xlWorkbook.Saved = true;
                xlWorkbook.Save();
                xlWorkbook.Close(false, oMissing, oMissing);
                Kill(xlApp);
            }

            catch
            {
                //MessageBox.Show(ex.Message);
            }
        }

        [DllImport("User32.dll", CharSet = CharSet.Auto)]
        public static extern int GetWindowThreadProcessId(IntPtr hwnd, out int ID);
        public static void Kill(Excel.Application excel)
        {
            IntPtr t = new IntPtr(excel.Hwnd);   //得到这个句柄，具体作用是得到这块内存入口 
            int k = 0;
            GetWindowThreadProcessId(t, out k);   //得到本进程唯一标志k
            System.Diagnostics.Process p = System.Diagnostics.Process.GetProcessById(k);   //得到对进程k的引用
            p.Kill();     //关闭进程k
        }
    }
}
