using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Main
{
    public partial class SelectOverallFailReasonForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectOverallFailReasonForm()
        {
            InitializeComponent();

            this.PrepareData();
        }

        void PrepareData()
        {
            //PHPlatformMiscDataContext dictDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //var OverallFailReasonList = dictDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.Fabric.OverallFailReason").OrderBy(p => p.DataCode);
            //this.bindingSource.DataSource = OverallFailReasonList;

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.bindingSource.DataSource = (db as FabricInspectionDataContext).OverallFailReasons.OrderBy(p => p.SeqNo);
        }

        //public List<string> ReasonGroupList = new List<string>();
        //public List<string> ReasonDefectNameList = new List<string>();

        public void GetSelectedDataBySplit(ref List<string> AReasonGroupList, ref List<string> ReasonDefectNameList)
        {
            AReasonGroupList.Clear();
            ReasonDefectNameList.Clear();
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                OverallFailReason obj = this.gridView.GetRow(i) as OverallFailReason;

                if (obj != null && obj.CheckFlag)
                {
                    AReasonGroupList.Add(obj.ReasonGroup);
                    ReasonDefectNameList.Add(obj.ReasonNameEN);
                }
            }
        }



        //原先合在一起显示的方法，现在没有使用了
        public string GetSelectedData()
        {
            string Str = "";
            string GroupID = "";
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                OverallFailReason obj = this.gridView.GetRow(i) as OverallFailReason;

                if (obj != null && obj.CheckFlag)
                {
                    if (obj.ReasonGroup != GroupID)
                    {
                        Str = Str.TrimEnd(new char[] { ' ', ';' }) + "  ";
                        Str += obj.ReasonGroup + ") " + obj.ReasonNameEN + "; ";
                        //Str += obj.ReasonGroup + ") " + obj.ReasonCode + " / " + obj.ReasonNameEN + "; ";
                    }
                    else
                    {
                        Str += obj.ReasonNameEN + "; ";
                        //Str += obj.ReasonCode + " / " + obj.ReasonNameEN + "; ";
                    }
                    GroupID = obj.ReasonGroup;
                }

            }
            return Str.TrimStart(' ').TrimEnd(new char[] { ';', ' ' });
        }

    }
}