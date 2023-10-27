using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class IncotermMasterDBListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public IncotermMasterDBListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            BindingSource.DataSource = (DataContext as BasicInfoDataContext).IncotermMasterDBs.OrderBy(p => p.TransitPointSeq).ThenBy(p => p.Code);
            EditorTypeName = typeof(IncotermMasterDBDetailForm).FullName;

            bandedGridView1.OptionsView.ShowColumnHeaders = false;
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveCode = "";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                IncotermMasterDB obj = bandedGridView1.GetRow(i) as IncotermMasterDB;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveCode = obj.Code;
                }
                else
                {
                    if (obj.Code == SaveCode)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveCode = obj.Code;
                    }
                }
            }
        }


    }
}
