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
    public partial class JobMaterialListbyMatTypeReport : UserControl, PH.Platform.BackEnd.BO.IServerJob, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public JobMaterialListbyMatTypeReport()
        {
            InitializeComponent();

            if (System.Diagnostics.Process.GetCurrentProcess().ProcessName == "devenv") return;

            string user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower();
            this.editMaterialType.Properties.Items.Clear();
            if (user == "peter" || user == "admin")
            {
                this.editMaterialType.Properties.Items.Add(_all);
                editSave2DB.Visible = true;
                editMatTypeSortby.Visible = true;
            }
            else
            {
                editSave2DB.Visible = false;
                editMatTypeSortby.Visible = false;
                editMaterialType.Properties.MaxLength = 3;
            }
            PH.MIDc.BO.MaterialTypeList list = new PH.MIDc.BO.MaterialTypeList();
            var matTypes=list.GetMaterialTypes(true);
            foreach (var item in matTypes)
            {
                string matTypeSupp = item.MaterialType1;
                if (string.IsNullOrEmpty(matTypeSupp)) continue;
                if (string.IsNullOrEmpty(matTypeSupp.Trim())) continue;

                this.editMaterialType.Properties.Items.Add(matTypeSupp);
            }
        }

        string _all = "--ALL--";
        string _param;

        string _materialType;
        bool _sortbyMIDStatus;
        bool _groupStatusStudyRun;
        PH.MIDc.BO.MaterialSortby _sortbyOther;
        bool _save2db;
        bool _matTypeAscending;

        public string MaterialType
        {
            get { return this.editMaterialType.Text; }
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
        public bool MatTypeAscending
        {
            get { return this.editMatTypeSortby.SelectedIndex == 0; }
        }

        public void GetValues(string parameters)
        {
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            //_isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._materialType = ss[0];
            this._sortbyMIDStatus = Convert.ToBoolean(ss[1]);
            this._sortbyOther = (PH.MIDc.BO.MaterialSortby)Convert.ToInt32(ss[2]);
            this._groupStatusStudyRun = Convert.ToBoolean(ss[3]);
            this._save2db = Convert.ToBoolean(ss[4]);
            this._matTypeAscending = Convert.ToBoolean(ss[5]);
        }

        #region IServerJob Members

        PH.MIDc.BO.DetailList _detaillist;
        public MaterialListReport Report { get; set; }

        public void BackEndJob(string parameters)
        {
            GetValues(parameters);

            bool isMatType = true;
            string matTypeSupp;

            _detaillist = new PH.MIDc.BO.DetailList();
            _detaillist.CurrentDataContext.CommandTimeout = 2000;

            if (_materialType == _all)
            {
                //string[] matTypes = new string[18] { "SLD", "RNG", "HOK", "RBT", "ELW", "CRT", "CLT", "NRT", "NST", "NNL", "NSC", "BHE", "NHE", "NRL", "CRN", "EMB", "CRL", "BND" };
                //foreach (string item in matTypes)
                //{
                //matTypeSupp = item;

                PH.MIDc.BO.MaterialTypeList matTypelist = new PH.MIDc.BO.MaterialTypeList();
                var matTypes = matTypelist.GetMaterialTypes(_matTypeAscending);
                foreach (var item in matTypes)
                {
                    matTypeSupp = item.MaterialType1;

                    if (string.IsNullOrEmpty(matTypeSupp)) continue;
                    if (string.IsNullOrEmpty(matTypeSupp.Trim())) continue;

                    CreateReport(_detaillist, matTypeSupp, _groupStatusStudyRun, _sortbyMIDStatus, _sortbyOther, isMatType, _save2db);

                }
            }
            else
            {
                matTypeSupp = _materialType;
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
                        filename = string.Format("MaterialList({0})-{1}- by {2}", matTypeSupp, (statusStudyRun ? "Study, Check & Run-Gen" : "Hold"), sortby);
                        Report.ExportOptions.PrintPreview.DefaultFileName = filename;
                        var a1 = _detaillist.GetDetailbyMatType(matTypeSupp, statusStudyRun);
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
                        filename = string.Format("MaterialList({0})-{1}- by {2}", matTypeSupp, (statusStudyRun ? "Study, Check & Run-Gen" : "Hold"), sortby);
                        Report.ExportOptions.PrintPreview.DefaultFileName = filename;
                        var a2 = _detaillist.GetDetailbyMatType(matTypeSupp, statusStudyRun);
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
            string mattype = this.editMaterialType.Text;
            bool byMID = this.editMIDStatus.Checked;
            int i = this.editSortbyOther.SelectedIndex;
            bool groupStatusStudyRun = this.GroupStatusStudyRun;
            bool save2db = this.Save2DB;
            bool matTypeAscending = this.MatTypeAscending;

            string s = string.Format("{0};{1};{2};{3};{4};{5}", mattype, byMID, i, groupStatusStudyRun, save2db, matTypeAscending);
            return s;
        }

        public UserControl ParameterControl(string parameters)
        {
            JobMaterialListbyMatTypeReport ctl = new JobMaterialListbyMatTypeReport();
            if (!string.IsNullOrEmpty(parameters))
            {
                string[] paras = parameters.Split(';');
                ctl.editMaterialType.EditValue = paras[0];
                ctl.editMIDStatus.Checked = Convert.ToBoolean(paras[1]);
                ctl.editSortbyOther.SelectedIndex = Convert.ToInt32(paras[2]);
                ctl.editStatus.EditValue = Convert.ToBoolean(paras[3]);
                ctl.editSave2DB.Checked = Convert.ToBoolean(paras[4]);
                ctl.editMatTypeSortby.EditValue = Convert.ToBoolean(paras[5]);
            }

            return ctl;
        }

        #endregion
    }
}
