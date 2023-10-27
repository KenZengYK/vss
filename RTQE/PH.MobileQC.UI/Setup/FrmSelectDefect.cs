using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.FabricInspection.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class FrmSelectDefect : Form
    {

        QC_ProductTypeInfo CurrentType;
        MobileQCDataContext CurrentCtx;
        string UserId = "";
        public FrmSelectDefect()
        {
            InitializeComponent();
        }


        public FrmSelectDefect(QC_ProductTypeInfo current,MobileQCDataContext ctx,string userid)
        {
            InitializeComponent();
            CurrentType = current;
            CurrentCtx = ctx;
            UserId = userid;
            bsDefect.DataSource = GetNoAttachDefects();
        }

        public List<AttachDefect> GetNoAttachDefects()
        {

            List<AttachDefect> attachlist = new List<AttachDefect>();
            var defects = (from r in CurrentType.QC_ProductType_CommonDefects
                           select new
                           {
                               DefectCode = r.DefectCode
                           }.DefectCode).ToList();

            var lists = from a in DefectHelper.FbcCtx.PHQCDefects
                        where !(defects.Contains(a.PHDefectCode))
                        select a;

            foreach (PHQCDefect de in lists)
            {
                AttachDefect item = new AttachDefect();
                item.DefectCode = de.PHDefectCode;
                item.DefectName = de.DefectChineseName;
                attachlist.Add(item);
            }
            return attachlist;
        }



        List<AttachDefect> SelectList = new List<AttachDefect>();
        private void GetCheckItem()
        {
            SelectList.Clear();
            int j = 0;
            for (int i = 0; i < gvDefect.RowCount; i++)
            {
                AttachDefect obj = gvDefect.GetRow(i) as AttachDefect;
                if (obj != null && obj.CheckFlag)
                {
                    SelectList.Add(obj);
                    j++;
                }
            }

        }
        //全選
        private void SetCheckAll(bool statu)
        {

            for (int i = 0; i < gvDefect.RowCount; i++)
            {
                AttachDefect obj = gvDefect.GetRow(i) as AttachDefect;
                if (obj != null)
                    obj.CheckFlag = statu;
            }
            gvDefect.RefreshData();
        }

        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            SetCheckAll(chkAll.Checked);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            GetCheckItem();
            foreach (AttachDefect cah in SelectList)
            {
                QC_ProductType_CommonDefect cim = new QC_ProductType_CommonDefect();
                cim.DefectCode = cah.DefectCode;
                cim.ProductTypeCode = CurrentType.ProductTypeCode;
                cim.CreateUser = UserId;
                cim.CreateDate = DateTime.Now;
                cim.QC_ProductTypeInfo = CurrentType;
                CurrentCtx.QC_ProductType_CommonDefects.InsertOnSubmit(cim);

            }



            this.Close();
        }

    }
}
