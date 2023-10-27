
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraEditors.Registrator;
using DevExpress.XtraEditors.ViewInfo;
using DevExpress.XtraEditors.Drawing;
using DevExpress.XtraEditors;
using DevExpress.Utils.Win;

namespace PH.POPC.UI.Notify
{
    [UserRepositoryItem("RegisterTextEditPopUp")]
    class RepositoryItemTextEditPopUp : RepositoryItemPopupContainerEdit
    {
        object _dataSource;
        ListBoxControl lb;
        DataView dv;
        string _displayMember, editValue = "";
        string[] splitEditValue = new string[0];
        char separator = ',';

        public const string TextEditPopUpName = "TextEditPopUp";
        public override string EditorTypeName { get { return TextEditPopUpName; } }

        public static void RegisterTextEditPopUp()
        {
            EditorRegistrationInfo.Default.Editors.Add(new EditorClassInfo(
                TextEditPopUpName, typeof(TextEditPopUp), typeof(RepositoryItemTextEditPopUp),
                typeof(PopupContainerEditViewInfo), new ButtonEditPainter(), true));
        }

        public override void Assign(RepositoryItem item)
        {
            BeginUpdate();
            base.Assign(item);
            RepositoryItemTextEditPopUp source = item as RepositoryItemTextEditPopUp;
            if (source == null) return;
            this.DataSource = source.DataSource;
            this.DisplayMember = source.DisplayMember;
            EndUpdate();
        }

        static RepositoryItemTextEditPopUp() { RegisterTextEditPopUp(); }
        public RepositoryItemTextEditPopUp()
            : base()
        {
            // Create PopupContainerControl with a ListBoxControl and bind it
            // to the editor
            lb = new ListBoxControl();
            lb.Dock = System.Windows.Forms.DockStyle.Fill;
            lb.Click += new EventHandler(lb_Click);

            PopupContainerControl pc = new PopupContainerControl();
            pc.Controls.Add(lb);

            this.PopupControl = pc;
            this.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(RepositoryItemTextEditPopUp_EditValueChanging);
            this.KeyDown += new KeyEventHandler(RepositoryItemTextEditPopUp_KeyDown);
        }

        void RepositoryItemTextEditPopUp_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            if (e.NewValue != null)
                editValue = e.NewValue.ToString();

            splitEditValue = editValue.Split(separator);

            if (editValue.EndsWith(","))
                HidePopupHint();
            ShowPopupHint(splitEditValue[splitEditValue.Length - 1].TrimStart());
        }

        protected override void OnOwnerEditChanged()
        {
            this.KeyDown += new KeyEventHandler(RepositoryItemTextEditPopUp_KeyDown);
            this.OwnerEdit.Validating += new System.ComponentModel.CancelEventHandler(OwnerEdit_Validated);
            base.OnOwnerEditChanged();
        }

        void OwnerEdit_Validated(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (this.OwnerEdit.EditValue != null)
                UpdateDataSource(this.OwnerEdit.EditValue.ToString());
        }

        void RepositoryItemTextEditPopUp_KeyDown(object sender, KeyEventArgs e)
        {
            if (!this.OwnerEdit.IsPopupOpen)
            {
                NotPopupEnter(e.KeyValue);
                return;
            }

            PopupNavigation(e.KeyValue);
            e.Handled = true;
        }

        void PopupNavigation(int keyValue)
        {
            switch (keyValue)
            {
                case 38:
                    // Arrow up key
                    if (lb.SelectedIndex > 0)
                        lb.SelectedIndex--;
                    break;
                case 40:
                    // Arrow down key
                    lb.SelectedIndex++;
                    break;
                case 13:
                    // Enter key
                    AppendToEditValue(lb.Text);
                    HidePopupHint();
                    break;
                case 27:
                    // ESC key
                    HidePopupHint();
                    break;
            }
        }
        void NotPopupEnter(int keyValue)
        {
            switch (keyValue)
            {
                case 13:
                    // Enter key
                    string s = this.OwnerEdit.Text.TrimEnd();
                    if (!string.IsNullOrEmpty(s) && !s.EndsWith(","))
                    {
                        s += ", ";
                    }
                    this.OwnerEdit.Text = s;
                    this.OwnerEdit.SelectionStart = s.Length;
                    break;
            }
        }

        void lb_Click(object sender, EventArgs e)
        {
            AppendToEditValue(lb.Text);
            HidePopupHint();
        }

        // Skip default button creation
        public override void CreateDefaultButton() { }

        void ShowPopupHint(string word)
        {
            if (word.Length == 0) return;

            if (SetDataViewFilter(word))
            {
                this.OwnerEdit.ShowPopup();
                this.OwnerEdit.Focus();
                this.OwnerEdit.SelectionStart = editValue.Length;
            }
            else
                HidePopupHint();
        }

        bool SetDataViewFilter(string word)
        {
            if (DisplayMember == null || dv == null) return false;
            if (word.Contains("'")) return false;

            dv.RowFilter = "[" + DisplayMember + "] LIKE '" + word + "*'";
            return dv.Count > 0 ? true : false;
        }

        void HidePopupHint()
        {
            this.OwnerEdit.ClosePopup();
            lb.SelectedIndex = -1;
            this.OwnerEdit.SelectionStart = editValue.Length;
        }

        void UpdateDataSource(string value)
        {
            if (value.Length == 0 || this.DataSource == null) return;

            string word;
            foreach (string line in splitEditValue)
            {
                word = line.TrimStart();
                if (word.Length == 0) continue;

                //暫時不考慮往list 增加
                //if (!ValueExistsInDataSource(word))
                //    AddValueToDataSource(word);
            }
        }

        bool ValueExistsInDataSource(string word)
        {
            foreach (DataRow dr in (this.DataSource as DataTable).Rows)
            {
                string str = dr[DisplayMember].ToString();
                if (String.Compare(dr[DisplayMember].ToString(), word, true) == 0)
                    return true;
            }
            return false;
        }

        void AddValueToDataSource(string value)
        {
            DataRow row = (this.DataSource as DataTable).NewRow();
            row[DisplayMember] = value;
            (this.DataSource as DataTable).Rows.Add(row);
        }

        void AppendToEditValue(string word)
        {
            string value = "";
            for (int i = 0; i < splitEditValue.Length - 1; i++)
                value += splitEditValue[i].TrimStart() + ", ";

            value += word;
            value = value.Trim();
            if (!value.EndsWith(","))
                value += ", ";

            this.OwnerEdit.Text = value;
        }

        public virtual object DataSource
        {
            get { return _dataSource; }
            set
            {
                if (value == DataSource) return;
                if (value != null && DataSource != null && DataSource.Equals(value)) return;
                _dataSource = value;
                OnDataSourceChanged();
            }
        }

        void OnDataSourceChanged()
        {
            if (this.DataSource == null) return;
            dv = new DataView(this.DataSource as DataTable);
            lb.DataSource = dv;
        }

        public string DisplayMember
        {
            get { return _displayMember; }
            set
            {
                if (value == null || value == DisplayMember) return;
                _displayMember = value;
                OnDisplayMemberChanged();
            }
        }

        void OnDisplayMemberChanged()
        { lb.DisplayMember = _displayMember; }
    }
}
