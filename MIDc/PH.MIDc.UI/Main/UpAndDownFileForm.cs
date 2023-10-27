using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using System.IO;
/**
 * Xsj101210:MIDc 上傳文檔管理
 * */
namespace PH.MIDc.UI.Main
{
    public partial class UpAndDownFileForm : UserControl
    {
        private MIDcUpFile NewMIDcUpFile;
        public Detail CurrDetail { get; set; }
        public PH.MIDc.BO.MIDcDataContext CurrDataContext { get; set; }
        public bool IsEnable
        {
            set
            {
                EnableCtrl(this, value);
            }
        }

        public UpAndDownFileForm()
        {
            InitializeComponent();
            //Xsj101210:綁定"下載","刪除"文檔事件
            foreach (DevExpress.XtraGrid.Columns.GridColumn item in this.gridView1.Columns)
            {
                if (item.Tag == null) continue;
                if (item.Tag.ToString() == "DownLoad")
                {
                    item.ColumnEdit.Click += new EventHandler(repositoryItemButtonEdit_Download_ButtonClick);
                }
                else if (item.Tag.ToString() == "Delete")
                {
                    item.ColumnEdit.Click += new EventHandler(DeleteColumnEdit_Click);
                }
            }
        }

        public void DataBind()
        {
            this.bindingSource1.DataSource = null;
            this.bindingSource1.DataSource = CurrDetail.MIDcUpFiles.ToList();
        }

        #region 上傳文檔管理
        //獲取上傳文件 
        private void sBtnGetUpFile_Click(object sender, EventArgs e)
        {
            NewMIDcUpFile = null;
            this.openFileDialog1.FileName = "";
            if (this.openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                NewMIDcUpFile = new MIDcUpFile();
                //SuppRef
                NewMIDcUpFile.SuppRef = CurrDetail.SuppRef;
                //FileName
                string FileName = this.openFileDialog1.FileName;
                FileName = FileName.Substring(FileName.LastIndexOf("\\") + 1);
                NewMIDcUpFile.FileName = FileName;
                //FS
                Stream fs = this.openFileDialog1.OpenFile();
                NewMIDcUpFile.Fs = fs;

                this.textEditFileName.EditValue = this.openFileDialog1.FileName;
            }
        }
        //上傳文檔
        private void sBtnSave_Click(object sender, EventArgs e)
        {
            if (NewMIDcUpFile == null)
            {
                if (this.textEditFileName.EditValue != null && File.Exists(this.textEditFileName.EditValue.ToString()))
                {
                    NewMIDcUpFile = new MIDcUpFile();
                    //SuppRef
                    NewMIDcUpFile.SuppRef = CurrDetail.SuppRef;
                    //Fs
                    Stream fs = new FileStream(this.textEditFileName.EditValue.ToString(), FileMode.OpenOrCreate);
                    NewMIDcUpFile.Fs = fs as Stream;
                    //FileName
                    string FileName = this.openFileDialog1.FileName;
                    FileName = FileName.Substring(FileName.LastIndexOf("\\") + 1);
                    NewMIDcUpFile.FileName = FileName;
                }
                else
                {
                    MessageBox.Show("你所輸入的文檔不存在,請確認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }
            //禁止上傳同名文件
            if (CurrDetail.MIDcUpFiles.Where(P => P.FileName.Trim() == NewMIDcUpFile.FileName.Trim()).Count() > 0)
            {
                MessageBox.Show("已存在與當前文檔[" + NewMIDcUpFile.FileName + "]相同名稱的文件,請確認!", "上傳提示");
                return;
            }
            if (MessageBox.Show("你確認要上傳當前文檔[" + NewMIDcUpFile.FileName + "]嗎？", "上傳確認", MessageBoxButtons.YesNoCancel) == DialogResult.Yes)
            {
                Stream fs = NewMIDcUpFile.Fs;
                byte[] bytes = new byte[fs.Length];
                fs.Read(bytes, 0, Convert.ToInt32(fs.Length));
                fs.Close();
                NewMIDcUpFile.FileContent = bytes;

                CurrDetail.MIDcUpFiles.Add(NewMIDcUpFile);
                CurrDataContext.SubmitChanges();
                this.textEditFileName.EditValue = "";
                NewMIDcUpFile = null;
                DataBind();
            }
            else
            {
                NewMIDcUpFile = null;
            }
        }
        //下載文檔
        //void DownColumnEdit_Click(object sender, EventArgs e)
        private string DownloadFile()
        {
            MIDcUpFile NewFile = this.bindingSource1.Current as MIDcUpFile;
            string ExtraName = NewFile.FileName.Substring(NewFile.FileName.LastIndexOf(".") + 1);
            this.saveFileDialog1.FileName = NewFile.FileName;
            this.saveFileDialog1.Filter = ExtraName + "|*." + ExtraName;
            if (this.saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                Stream fs = this.saveFileDialog1.OpenFile();
                byte[] bytes = NewFile.FileContent;
                fs.Read(bytes, 0, Convert.ToInt32(bytes.Length));
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                return saveFileDialog1.FileName;
            }
            else
                return "";

        }
        private string DownloadFile(string fileName)
        {
            MIDcUpFile NewFile = this.bindingSource1.Current as MIDcUpFile;
            string extension = System.IO.Path.GetExtension(NewFile.FileName);
            fileName += extension;
            FileStream fs = File.Create(fileName);
            //Stream fs = this.saveFileDialog1.OpenFile();
            byte[] bytes = NewFile.FileContent;
            fs.Read(bytes, 0, Convert.ToInt32(bytes.Length));
            fs.Write(bytes, 0, bytes.Length);
            fs.Close();
            return fileName;
        }
        //刪除文檔
        void DeleteColumnEdit_Click(object sender, EventArgs e)
        {
            //Xsj20120616:添加以下代碼，以用於具有Edite權限的人才可以刪除文檔
            if (!this._isEnable) return;

            MIDcUpFile NewFile = this.bindingSource1.Current as MIDcUpFile;
            if (MessageBox.Show("你確認要刪除當前文檔[" + NewFile.FileName + "]嗎？", "刪除確認", MessageBoxButtons.YesNoCancel) == DialogResult.Yes)
            {
                this.bindingSource1.Remove(NewFile);
                CurrDetail.MIDcUpFiles.Remove(NewFile);
                CurrDataContext.MIDcUpFiles.DeleteOnSubmit(NewFile);
                CurrDataContext.SubmitChanges();
                DataBind();
            }
        }
        #endregion


        private bool _isEnable = false;
        //啟用和禁用控件
        private void EnableCtrl(Control cl, bool IsEnable)
        {
            this._isEnable = IsEnable;
            if (cl.Controls.Count > 0)
            {
                for (int i = 0; i < cl.Controls.Count; i++)
                {
                    if (cl.Controls[i].GetType().FullName == "DevExpress.XtraEditors.SpinEdit")
                    {
                        DevExpress.XtraEditors.SpinEdit CurrCtrl = cl.Controls[i] as DevExpress.XtraEditors.SpinEdit;
                        CurrCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    if (cl.Controls[i].GetType().FullName == "DevExpress.XtraEditors.DateEdit")
                    {
                        DevExpress.XtraEditors.DateEdit CurrCtrl = cl.Controls[i] as DevExpress.XtraEditors.DateEdit;
                        CurrCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    if (cl.Controls[i].GetType().FullName == "DevExpress.XtraEditors.TextEdit")
                    {
                        DevExpress.XtraEditors.TextEdit CurrCtrl = cl.Controls[i] as DevExpress.XtraEditors.TextEdit;
                        CurrCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    if (cl.Controls[i].GetType().FullName == "DevExpress.XtraEditors.SimpleButton")
                    {
                        DevExpress.XtraEditors.SimpleButton CurrCtrl = cl.Controls[i] as DevExpress.XtraEditors.SimpleButton;
                        CurrCtrl.Enabled = IsEnable;
                    }
                    if (cl.Controls[i].GetType().FullName == "DevExpress.XtraGrid.GridControl")
                    {
                        //Xsj20120616:注釋掉以下代碼，以用於不具有Edite權限的人也可以下載文檔
                        //DevExpress.XtraGrid.GridControl Gview = cl.Controls[i] as DevExpress.XtraGrid.GridControl;
                        //for (int k = 0; k < Gview.Views.Count; k++)
                        //{
                        //    DevExpress.XtraGrid.Views.Grid.GridView TGview = Gview.Views[k] as DevExpress.XtraGrid.Views.Grid.GridView;
                        //    TGview.OptionsBehavior.Editable = IsEnable; 
                        //} 

                    }
                    EnableCtrl(cl.Controls[i], IsEnable);
                }
            }
        }

        private void repositoryItemButtonEdit_Download_ButtonClick(object sender, EventArgs e) //(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            string fileName = DownloadFile();
            if (fileName != "")
            {
                OpenFile(fileName);
            }
        }

        protected void OpenFile(string fileName)
        {
            if (DevExpress.XtraEditors.XtraMessageBox.Show("Do you want to open this file?", "download...", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
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
                    DevExpress.XtraEditors.XtraMessageBox.Show("Cannot find an application on your system suitable for openning the file with exported data.", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void ribeOpen_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            string temp = Path.GetTempPath() + string.Format("\\{0:yyyyMMddHHmmssfff}",DateTime.Now);
            string fileName = DownloadFile(temp);
            if (fileName != "")
            {
                OpenFile(fileName);
            }
        }
    }
}
