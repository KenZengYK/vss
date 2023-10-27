using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

using System.Collections;
using DevExpress.Data;

namespace PH.POPC.UI.PDF
{
    public partial class POPDFForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPDFForm()
        {
            InitializeComponent();

            //this.fileCollection = new FileCollection(System.IO.Directory.GetDirectoryRoot(System.Environment.SystemDirectory));
            this.fileCollection = new FileCollection(@"\\10.2.1.124\POPC Files");
            this.gridControl1.DataSource = this.fileCollection;
            //string[] drives = System.Environment.GetLogicalDrives();
            //for (int i = 0; i < drives.Length; i++)
            //    this.comboBoxDrives.Properties.Items.Add(drives[i]);
            //this.comboBoxDrives.SelectedIndex = this.comboBoxDrives.Properties.Items.IndexOf(this.fileCollection.FilePath);
            this.labelCurrentPath.Text = this.fileCollection.FilePath;
            this.gridColumnImage.Caption = " ";
            //this.comboBoxDrives.SelectedIndexChanged += new System.EventHandler(this.comboBoxDrives_SelectedIndexChanged);
        }
        FileCollection fileCollection;
        //public override DevExpress.XtraGrid.Views.Base.BaseView ExportView { get { return gridView1; } }


        private void gridView1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
        {
            if (e.Clicks > 1)
            {
                DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hitInfo = this.gridView1.CalcHitInfo(new Point(e.X, e.Y));
                if (hitInfo.InRow)
                    ChangedFolderPath();
            }
        }
        private void gridView1_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                ChangedFolderPath();
        }
        void ChangedFolderPath()
        {
            int rowIndex = gridView1.ViewRowHandleToDataSourceIndex(this.gridView1.FocusedRowHandle);
            if (rowIndex < 0)
                return;

            if (this.fileCollection[rowIndex].ItemType == FileCollectionItemType.File)
            {
                ViewPDF();
                return;
            }

            string newPath = this.fileCollection[rowIndex].ItemType == FileCollectionItemType.Up ?
                this.fileCollection[rowIndex].DirectoryName : string.Empty;
            ChangeFolderPath(this.fileCollection[rowIndex].FullName);
        }
        void ChangeFolderPath(string newPath)
        {
            this.gridView1.BeginUpdate();
            try
            {
                this.fileCollection.FilePath = newPath;
                ((CurrencyManager)this.gridControl1.BindingContext[this.fileCollection]).Refresh();
                int focusedIndex = newPath != string.Empty ? this.fileCollection.IndexOf(newPath) : 0;
                if (focusedIndex < 0)
                    focusedIndex = 0;
                this.gridView1.FocusedRowHandle = focusedIndex;
                this.labelCurrentPath.Text = this.fileCollection.FilePath;
            }
            finally
            {
                this.gridView1.EndUpdate();
            }
        }

        private void gridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            int rowIndex = gridView1.ViewRowHandleToDataSourceIndex(e.RowHandle);
            if (e.Column == this.gridColumnSize)
            {
                if (this.fileCollection[rowIndex].ItemType == FileCollectionItemType.File)
                {
                    long size = this.fileCollection[rowIndex].Size;
                    if (size >= 1024)
                        e.DisplayText = string.Format("{0:### ### ###} KB", size / 1024);
                    else e.DisplayText = string.Format("{0} Bytes", size);
                }
                else e.DisplayText = string.Empty;
            }
            if (e.Column == this.gridColumnModified)
            {
                if (this.fileCollection[rowIndex].ItemType == FileCollectionItemType.Up)
                    e.DisplayText = string.Empty;
            }
        }

        //private void comboBoxDrives_SelectedIndexChanged(object sender, System.EventArgs e)
        //{
        //    ChangeFolderPath(comboBoxDrives.Text.ToString());
        //}

        private void gridView1_CalcPreviewText(object sender, DevExpress.XtraGrid.Views.Grid.CalcPreviewTextEventArgs e)
        {
            e.PreviewText = ((FileCollectionItem)gridView1.GetRow(e.RowHandle)).FullName;
        }

        int FolderComparer(FileCollectionItem item1, FileCollectionItem item2)
        {
            if (item1.ItemType != item2.ItemType)
            {
                if (item1.ItemType == FileCollectionItemType.Up) return -1;
                if (item2.ItemType == FileCollectionItemType.Up) return 1;
                if (item1.ItemType == FileCollectionItemType.Directory) return -1;
                if (item2.ItemType == FileCollectionItemType.Directory) return 1;
            }
            return 0;
        }

        bool IsFolder(FileCollectionItem item1)
        {
            if (item1.ItemType == FileCollectionItemType.Up) return true;
            if (item1.ItemType == FileCollectionItemType.Directory) return true;
            return false;
        }

        private void gridView1_CustomColumnSort(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnSortEventArgs e)
        {
            FileCollectionItem item1 = gridView1.GetRow(e.ListSourceRowIndex1) as FileCollectionItem, item2 = gridView1.GetRow(e.ListSourceRowIndex2) as FileCollectionItem;
            int res = FolderComparer(item1, item2);
            if (res == 0)
            {
                res = Comparer.Default.Compare(e.Value1, e.Value2);
                if (e.Column != gridColumnName && e.Column != gridColumnModified)
                {
                    if (IsFolder(item1))
                    {
                        res = Comparer.Default.Compare(item1.Name, item2.Name);
                        if (res != 0 && e.SortOrder == ColumnSortOrder.Descending)
                            res = res > 0 ? -1 : 1;

                        e.Result = res;
                        e.Handled = true;
                        return;
                    }
                }
            }
            else
            {
                if (res != 0 && e.SortOrder == ColumnSortOrder.Descending) res = res > 0 ? -1 : 1;
            }
            e.Result = res;
            e.Handled = true;
        }


        private void GridFolder_Load(object sender, System.EventArgs e)
        {
            gridView1.FocusedRowHandle = 0;
        }

        private void btnViewPDF_Click(object sender, EventArgs e)
        {
            ViewPDF();
        }
        private void ViewPDF()
        {
            FileCollectionItem item = (FileCollectionItem)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (item == null) return;

            if (item.ItemType == FileCollectionItemType.File)
                OpenFile(item.FullName);
        }
        protected void OpenFile(string fileName)
        {
            //if (DevExpress.XtraEditors.XtraMessageBox.Show("Do you want to open this file?", "Export To...", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            //{
            try
            {
                System.Diagnostics.Process process = new System.Diagnostics.Process();
                process.StartInfo.FileName = fileName;
                process.StartInfo.Verb = "Open";
                process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Normal;
                process.Start();
            }
            catch
            {
                DevExpress.XtraEditors.XtraMessageBox.Show("Cannot find an application on your system suitable for openning the file with pdf data.", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            //}
        }
    }
}
