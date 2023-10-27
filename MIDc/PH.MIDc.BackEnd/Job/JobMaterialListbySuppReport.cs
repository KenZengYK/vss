using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace PH.MIDc.BackEnd
{
    public partial class JobMaterialListbySuppReport : UserControl, PH.Platform.BackEnd.BO.IServerJob, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobMaterialListbySuppReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            this.editSupplier.Properties.Items.Clear();
            if (user == "peter" || user == "admin")
            {
                this.editSupplier.Properties.Items.Add(_all);
                editSave2DB.Visible = true;
                editSuppSortby.Visible = true;
            }
            else
            {
                editSave2DB.Visible = false;
                editSuppSortby.Visible = false;
                this.editSupplier.Properties.MaxLength = 4;
            }
            //PH.BasicInfo.BO.ERPSupplierProfileList list = new PH.BasicInfo.BO.ERPSupplierProfileList();
            //PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();

            _detaillist = new PH.MIDc.BO.DetailList();
            _detaillist.CurrentDataContext.CommandTimeout = 2000;
            var supps = _detaillist.GetERPSuppliers(true);

            //  foreach (var item in list.GetAllData())
            foreach (var item in supps)
            {
                string matTypeSupp = item;// item.ERPSupplier;
                if (string.IsNullOrEmpty(matTypeSupp)) continue;
                if (string.IsNullOrEmpty(matTypeSupp.Trim())) continue;

                this.editSupplier.Properties.Items.Add(matTypeSupp);
            }
        }

        string _all = "--ALL--";
        string _param;

        string _supp;
        bool _sortbyMIDStatus;
        bool _groupStatusStudyRun;
        PH.MIDc.BO.MaterialSortby _sortbyOther;
        bool _save2db;
        bool _suppAscending;

        public string Supp
        {
            get { return this.editSupplier.Text; }
        }
        public bool SortbyMIDStatus
        {
            get { return this.editMIDStatus.Checked; }
        }
        public bool GroupStatusStudyRun
        {
            get { return this.editStatus.SelectedIndex == 0; }
        }
        public PH.MIDc.BO.MaterialSortby SortbyOther
        {
            get { return (PH.MIDc.BO.MaterialSortby)this.editSortbyOther.SelectedIndex; }
        }
        public bool Save2DB
        {
            get { return this.editSave2DB.Checked; }
        }
        public bool SuppAscending
        {
            get { return this.editSuppSortby.SelectedIndex == 0; }
        }

        public void GetValues(string parameters)
        {
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            //_isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._supp = ss[0];
            this._sortbyMIDStatus = Convert.ToBoolean(ss[1]);
            this._sortbyOther = (PH.MIDc.BO.MaterialSortby)Convert.ToInt32(ss[2]);
            this._groupStatusStudyRun = Convert.ToBoolean(ss[3]);
            this._save2db = Convert.ToBoolean(ss[4]);
            this._suppAscending = Convert.ToBoolean(ss[5]);
        }

        #region IServerJob Members

        PH.MIDc.BO.DetailList _detaillist;
        public MaterialListReport Report { get; set; }

        public void BackEndJob(string parameters)
        {
            GetValues(parameters);

            bool isMatType = false;
            string matTypeSupp;

            _detaillist = new PH.MIDc.BO.DetailList();
            _detaillist.CurrentDataContext.CommandTimeout = 2000;

            if (_supp == _all)
            {
                //PH.BasicInfo.BO.ERPSupplierProfileList list = new PH.BasicInfo.BO.ERPSupplierProfileList();
                //PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                //var supps = list.GetAllData();

                var supps = _detaillist.GetERPSuppliers(_suppAscending);

                foreach (var item in supps)
                {
                    matTypeSupp = item;// item.ERPSupplier;
                    if (string.IsNullOrEmpty(matTypeSupp)) continue;
                    if (string.IsNullOrEmpty(matTypeSupp.Trim())) continue;

                    CreateReport(_detaillist, matTypeSupp, _groupStatusStudyRun, _sortbyMIDStatus, _sortbyOther, isMatType, _save2db);

                }
            }
            else
            {
                matTypeSupp = _supp;
                CreateReport(_detaillist, matTypeSupp, _groupStatusStudyRun, _sortbyMIDStatus, _sortbyOther, isMatType, _save2db);
            }


        }

        private void CreateReport(PH.MIDc.BO.DetailList detailList, string matTypeSupp, bool statusStudyRun, bool sortbyMIDStatus, PH.MIDc.BO.MaterialSortby sortby, bool isMatType, bool save2db)
        {
            string filename;
            bool haveData = false;

            DevExpress.XtraPrinting.NativeFormatOptions opt = new DevExpress.XtraPrinting.NativeFormatOptions();
            opt.Compressed = true;
            opt.ShowOptionsBeforeSave = false;

            try
            {
                #region 2.1  Study,Test&Run
                if (statusStudyRun)
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        Report = new PH.MIDc.BackEnd.MaterialListReport(sortbyMIDStatus, sortby, statusStudyRun, isMatType, matTypeSupp);
                        filename = string.Format("MaterialList({0})-{1}- by {2}", matTypeSupp, (statusStudyRun ? "Study,Check&Run-Gen" : "Hold"), sortby);
                        Report.ExportOptions.PrintPreview.DefaultFileName = filename;
                        var a1 = _detaillist.GetDetailbySupp(matTypeSupp, statusStudyRun);
                        Report.SetDetailsDataSource(a1);
                        haveData = (a1 != null && a1.Count > 0);

                        if (save2db)
                        {
                            Report.CreateDocument();
                            Report.PrintingSystem.SaveDocument(ms, opt);
                            //Report.ExportToPdf(ms);
                            detailList.SaveToDB(ms, matTypeSupp, isMatType, statusStudyRun, filename, haveData);
                        }
                    }
                }
                #endregion

                #region 2.2  Hold,Stop&Drop

                else // statusStudyRun = false;
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        Report = new PH.MIDc.BackEnd.MaterialListReport(sortbyMIDStatus, sortby, statusStudyRun, isMatType, matTypeSupp);
                        filename = string.Format("MaterialList({0})-{1}- by {2}", matTypeSupp, (statusStudyRun ? "Study,Check&Run-Gen" : "Hold"), sortby);
                        Report.ExportOptions.PrintPreview.DefaultFileName = filename;
                        var a2 = _detaillist.GetDetailbySupp(matTypeSupp, statusStudyRun);
                        Report.SetDetailsDataSource(a2);
                        haveData = (a2 != null && a2.Count > 0);

                        if (save2db)
                        {
                            Report.CreateDocument();
                            Report.PrintingSystem.SaveDocument(ms, opt);
                            //Report.ExportToPdf(ms);
                            detailList.SaveToDB(ms, matTypeSupp, isMatType, statusStudyRun, filename, haveData);
                        }
                    }
                }
                #endregion
            }
            catch
            { }
        }

        #endregion


        #region IParameterSetControl Members

        public string GetParameter()
        {
            string supp = this.editSupplier.Text;
            bool byMID = this.editMIDStatus.Checked;
            int i = this.editSortbyOther.SelectedIndex;
            bool groupStatusStudyRun = this.GroupStatusStudyRun;
            bool save2db = this.Save2DB;
            bool suppAscending = this.SuppAscending;

            string s = string.Format("{0};{1};{2};{3};{4};{5}", supp, byMID, i, groupStatusStudyRun, save2db, suppAscending);
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobMaterialListbySuppReport ctl = new JobMaterialListbySuppReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editSupplier.EditValue = paras[0];
                ctl.editMIDStatus.Checked = Convert.ToBoolean(paras[1]);
                ctl.editSortbyOther.SelectedIndex = Convert.ToInt32(paras[2]);
                ctl.editStatus.EditValue = Convert.ToBoolean(paras[3]);
                ctl.editSave2DB.Checked = Convert.ToBoolean(paras[4]);
                ctl.editSuppSortby.EditValue = Convert.ToBoolean(paras[5]);
            }

            return ctl;
        }

        #endregion
    }
}
