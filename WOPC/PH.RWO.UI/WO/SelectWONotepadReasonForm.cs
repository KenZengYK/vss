using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.UI.WO
{
    public partial class SelectWONotepadReasonForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectWONotepadReasonForm()
        {
            InitializeComponent();

            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.bindingSource.DataSource = db.WONotepadReasons.OrderBy(p => p.Seq);
        }

        public List<WONotepadReason> GetSelectList()
        {
            List<WONotepadReason> SelectLists = new List<WONotepadReason>();
            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                WONotepadReason obj = this.gridView.GetRow(i) as WONotepadReason;
                if (obj != null && obj.CheckFlag)
                {
                    SelectLists.Add(obj);
                }
            }

            return SelectLists;
        }


        //public WONotepadReason SelectedWONotepadReason
        //{
        //    get
        //    {
        //        return this.bindingSource.Current as WONotepadReason;
        //    }
        //}

    }
}