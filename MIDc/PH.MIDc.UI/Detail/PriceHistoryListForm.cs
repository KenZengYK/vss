using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class PriceHistoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private RepositoryItemPHSpinEdit _riseRWM;

        public PriceHistoryListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(PriceHistoryDetailForm).FullName;
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            CreateSpinEdit();

            Controller.SetColumnPHSpinEdit(objListGridView, "Price", _riseRWM);
            Controller.DisableSpinEditScrollings(this);

            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
            this.AllowAddRow = true;
        }

        private void CreateSpinEdit()
        {
            _riseRWM = new RepositoryItemPHSpinEdit();
            //this.gcCMYS.RepositoryItems.Add(riseRWM);
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = true;
            //this.repositoryItemMySpinEdit.EditFormat.FormatType = FormatType.Custom;
            _riseRWM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            _riseRWM.DisplayFormat.FormatString = "#,##0.######";
        }
    }
}
