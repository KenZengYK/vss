using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LineBalanceII.BO;
using System.Security;
using DevExpress.XtraEditors;
using System.IO;
using PH.LineBalanceII.UI.BondingSpect.Report;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class SpecDetailForm : ParentChildForm
    {


        string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;

        public SpecDetailForm()
        {
            InitializeComponent();
          //  IniTypes();
            IniDependTypes();
        }

        private void IniTypes()
        {
            List<BondingType> lst = new List<BondingType>();
            lst.Add(new BondingType { TypeId = 1, TypeName = "黏缝" });
            lst.Add(new BondingType { TypeId = 2, TypeName = "壓燙" });
            lst.Add(new BondingType { TypeId = 3, TypeName = "黏缝+壓燙" });
            //this.lueType.Properties.ValueMember = "TypeId";
            //this.lueType.Properties.DisplayMember = "TypeName";
            //lueType.Properties.DataSource = lst;
        }

        private void IniDependTypes()
        {
            List<DependType> lst = new List<DependType>();
            lst.Add(new DependType { TypeId = 1, TypeName = "1)色碼不依靠" });
            lst.Add(new DependType { TypeId = 2, TypeName = "2)色依靠" });
            lst.Add(new DependType { TypeId = 3, TypeName = "3)碼依靠" });
            lst.Add(new DependType { TypeId = 4, TypeName = "4)色碼依靠" });
            this.lueDepType.Properties.ValueMember = "TypeId";
            this.lueDepType.Properties.DisplayMember = "TypeName";
            lueDepType.Properties.DataSource = lst;
        }



        public override void DataBind()
        {
          
            BondingSpec bsc = this.BindingSource.Current as BondingSpec;
            if (bsc == null)
                return;

            bondingSpecItemList1.BindingSource.DataSource = bsc.BondingSpecItems;
            bondingSpecItemList1.EditorTypeName = typeof(BondingSpecItemDetail).FullName;
            base.DataBind();


            if (!string.IsNullOrEmpty(bsc.ImageFile))
                this.LoadImage(this.picBox1, bsc.ImageFile);

            if (!string.IsNullOrEmpty(bsc.ImageFile1))
                this.LoadImage(this.picBox2, bsc.ImageFile1);

            if (!string.IsNullOrEmpty(bsc.ImageFile2))
                this.LoadImage(this.picBox3, bsc.ImageFile2);

            chkPass.Checked = bsc.Result == 'P' ? true : false;

            picPath1.Enabled = false;
            picPath2.Enabled = false;
            picPath3.Enabled = false;
         //   this.rGup1.Enabled = false;
            this.chknf.Enabled = false;
            this.chkyt.Enabled = false;
            this.chkall.Enabled = false;

            switch (bsc.Mtype.GetValueOrDefault())
            {
                case 1: chknf.Checked = true; break;
                case 2: chkyt.Checked = true; break;
                case 3: chkall.Checked = true; break;
            }
              
        }


        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            picPath1.Enabled = false;
            picPath2.Enabled = false;
            picPath3.Enabled = false;
          //  this.rGup1.Enabled = false;
            this.chknf.Enabled = false;
            this.chkyt.Enabled = false;
            this.chkall.Enabled = false;
        }

        private void picPath1_Click(object sender, EventArgs e)
        { 
            SetImage(this.picPath1,picBox1);
        }



        private void picPath2_Click(object sender, EventArgs e)
        {
            SetImage(this.picPath2, picBox2);
        }

        private void picPath3_Click(object sender, EventArgs e)
        {
            SetImage(this.picPath3, picBox3);
        }

        private void SetImage(ButtonEdit butedit,PictureEdit pbox)
        {

            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.InitialDirectory = "d:\\";
            fileDialog.Filter = "bmp files (*.bmp)|jpg files (*.jpg)|All files (*.*)|*.*";
            fileDialog.FilterIndex = 1;
            fileDialog.RestoreDirectory = true;
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                butedit.Text = fileDialog.FileName;
                try
                {
                    //Image obj = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream());
                    Image obj = Image.FromFile(fileDialog.FileName, false);
                    pbox.Image = obj;
                }
                catch (NotSupportedException ne)
                {
                    MessageBox.Show("试图读取/查找或写入不支持调用功能的流!");
                    return;
                }
                catch (ArgumentNullException ae)
                {
                    MessageBox.Show("以下文件地址 :" + fileDialog.FileName + "錯誤或不存在!");
                    return;
                }
                catch (SecurityException se)
                {
                    MessageBox.Show("訪問權限不足!");
                    return;
                }
                catch (Exception ex)
                {
                    throw ex;
                }

            }
        
        }

        private void SetEnable()
        {
            this.edtCreateBy.Properties.ReadOnly = true;
            this.deCreateTime.Properties.ReadOnly = true;
            this.edtUpdateBy.Properties.ReadOnly = true;
            this.deUpdateTime.Properties.ReadOnly = true;
            this.edtAuditer.Properties.ReadOnly = true;
            this.deAuditTime.Properties.ReadOnly = true;

            picPath1.Enabled = true;
            picPath2.Enabled = true;
            picPath3.Enabled = true;

           // this.rGup1.Enabled = true;
            this.chknf.Enabled = true;
            this.chkyt.Enabled = true;
            this.chkall.Enabled = true;
        }

        

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetEnable();
            chkPass.Enabled = true;

            if (IsNew)
            {
                edtApplyUser.Text = _user;
                chknf.Checked = true;
            }
        }

        protected override void SaveCurrent()
        {
            //string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

            this.BindingSource.EndEdit();


            DateTime _dt = DateTime.Now;
            BondingSpec bms = this.BindingSource.Current as BondingSpec;

            if (string.IsNullOrEmpty(bms.PhStyle) || bms.PhStyle.Replace(" ", "").Length != 7) 
            {
                MessageBox.Show("PH款號需等於7位！");
                return;
            }

            if (bms == null)
                return;

            if (IsNew)
            {
                bms.CreateBy = _user;
                bms.CreateTime = _dt;
            }
            if (IsEditting)
            {
                bms.UpdateBy = _user;
                bms.UpdateTime = _dt;

            }
            if (chkPass.Checked)
              bms.Result = 'P';
            else
              bms.Result='F';

            if (chknf.Checked)
                bms.Mtype = 1;
            else if (chkyt.Checked)
                bms.Mtype = 2;
            else if (chkall.Checked)
                bms.Mtype = 3;


            base.SaveCurrent();
            
        }
        //Bitmap btp = null;
        //void ShowImage(string filepath)
        //{
        //    Bitmap srcBitmap = null;
        //    srcBitmap = (Bitmap)Bitmap.FromFile(filepath, false);

        //}

        private void LoadImage(PictureEdit pe, string filepath)
        {

            //if (btp != null) btp.Dispose();
            //Stopwatch Sw = new Stopwatch();
            //Sw.Start();
            //btp = (Bitmap)FreeImageToBitmap.LoadImageFormFreeImage(mpath);
            //Sw.Stop();
            //this.Text = Sw.ElapsedMilliseconds.ToString();

            //pictureEdit1.Image = null;
            //if (btp != null)
            //{

            //    // Bitmap bmPic = new Bitmap(sPicPaht);
            //    Point ptLoction = new Point(btp.Size);
            //    if (ptLoction.X > pictureEdit1.Size.Width || ptLoction.Y > pictureEdit1.Size.Height)
            //    {
            //        //图像框的停靠方式  
            //        //pcbPic.Dock = DockStyle.Fill;  
            //        //图像充滿图像框，並且图像維持比例  
            //        pictureEdit1.Properties.SizeMode = PictureSizeMode.Zoom;
            //    }
            //    else
            //    {
            //        //图像在图像框置中  
            //        pictureEdit1.Properties.SizeMode = PictureSizeMode.Clip;
            //    }

            //    //LoadAsync：非同步转入图像  
            //    //  pictureEdit1.LoadAsync(sPicPaht);

            //    pictureEdit1.Image = btp;

            //}

            try
            {
                //Image obj = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream());

                if (File.Exists(filepath) == false)
                    return;

                Image obj = Image.FromFile(filepath, false);
                if (obj!=null)
                  pe.Image = obj;
            }
            catch (NotSupportedException ne)
            {
                MessageBox.Show("试图读取/查找或写入不支持调用功能的流!");
                return;
            }
            catch (ArgumentNullException ae)
            {
                MessageBox.Show("以下文件地址 :" + filepath + "錯誤或不存在!");
                return;
            }
            catch (SecurityException se)
            {
                MessageBox.Show("訪問權限不足!");
                return;
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        private void barPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            BondingSpec bsc = BindingSource.Current as BondingSpec;
            if (bsc == null)
                return;

            RptBondingSpec rpt = new RptBondingSpec(bsc.BondingSpec_Id);
            rpt.ShowPreview();
        }

    }

    public class BondingType
    {
        public int TypeId { get; set; }
        public string TypeName { get; set; }
    }
    public class DependType
    {
        public int TypeId { get; set; }
        public string TypeName { get; set; }
    }
}
