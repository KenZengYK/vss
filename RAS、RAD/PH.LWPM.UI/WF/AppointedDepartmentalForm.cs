using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class AppointedDepartmentalForm : Form
    {
        //string _DepartmentalRowIDs;
        //public AppointedDepartmentalForm(string ADepartmentalRowIDs)
        public AppointedDepartmentalForm()
        {
            InitializeComponent();
            //this._DepartmentalRowIDs = ADepartmentalRowIDs;
            this.PrepareData();
        }

        public void PrepareData()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.gridControl.DataSource = db.DepartalSorts.OrderBy(p => p.SeqNo);

            //if (string.IsNullOrEmpty(_DepartmentalRowIDs)) return;
            
            //string[] RowIDs = _DepartmentalRowIDs.Split(',');
            //for (int i = 0; i < this.gridView.RowCount; i++)
            //{
            //    DepartalSort obj = this.gridView.GetRow(i) as DepartalSort;
            //     if (obj != null && RowIDs.Contains(obj.RowID.ToString()))
            //     {
            //         obj.CheckFlag = true;
            //     }
            //}
        }

        public string ChoiceDepartmentalRowIDs
        {
            get
            {
                string Str = "";
                for (int i = 0; i < this.gridView.RowCount; i++)
                {
                    DepartalSort obj = this.gridView.GetRow(i) as DepartalSort;
                    if (obj != null && obj.CheckFlag)
                    {
                        Str += obj.RowID.ToString() + ",";
                    }
                }
                return Str.TrimEnd(',');
            }
        }
    }
}
