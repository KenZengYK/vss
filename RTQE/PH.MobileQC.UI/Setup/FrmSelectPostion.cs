using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class FrmSelectPostion : Form
    {


        QC_ProductTypeInfo CurrentType;
        MobileQCDataContext CurrentCtx;
        string UserId = "";

        public FrmSelectPostion()
        {
            InitializeComponent();
        }


        public FrmSelectPostion(QC_ProductTypeInfo current, MobileQCDataContext ctx, string userid)
        {
            InitializeComponent();
            CurrentType = current;
            CurrentCtx = ctx;
            UserId = userid;
            gcPostion.DataSource = GetNoAttachPostion();
        }

        public List<AttachPosition> GetNoAttachPostion()
        {

            List<AttachPosition> attachlist = new List<AttachPosition>();
            var positions = (from r in CurrentType.QC_ProductType_CommonPositions
                           select new
                           {
                               PositionCode = r.PositionCode
                           }.PositionCode).ToList();

            var lists = from a in CurrentCtx.QC_Defects
                        where a.Defect_Type==2 && !(positions.Contains(a.Defect_Code))
                        select a;

            foreach (QC_Defect de in lists)
            {
                //QC_ProductType_CommonPosition item = new QC_ProductType_CommonPosition();
                AttachPosition item = new AttachPosition();
                item.PositionCode = de.Defect_Code;
                item.PositionName = de.Defect_Spec;
                attachlist.Add(item);
            }
            return attachlist;
        }

        List<AttachPosition> SelectList = new List<AttachPosition>();
        private void GetCheckItem()
        {
            SelectList.Clear();
            int j = 0;
            for (int i = 0; i < gvPosition.RowCount; i++)
            {
                AttachPosition obj = gvPosition.GetRow(i) as AttachPosition;
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

            for (int i = 0; i < gvPosition.RowCount; i++)
            {
                AttachDefect obj = gvPosition.GetRow(i) as AttachDefect;
                if (obj != null)
                    obj.CheckFlag = statu;
            }
            gvPosition.RefreshData();
        }

        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            SetCheckAll(chkAll.Checked);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            GetCheckItem();
            foreach (AttachPosition cah in SelectList)
            {
                QC_ProductType_CommonPosition cim = new QC_ProductType_CommonPosition();
                cim.PositionCode = cah.PositionCode;
                cim.ProductTypeCode = CurrentType.ProductTypeCode;
                cim.CreateUser = UserId;
                cim.CreateDate = DateTime.Now;
                cim.QC_ProductTypeInfo = CurrentType;
                CurrentCtx.QC_ProductType_CommonPositions.InsertOnSubmit(cim);

            }



            this.Close();
        }

    }
}
