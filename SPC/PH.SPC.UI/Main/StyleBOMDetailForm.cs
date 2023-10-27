using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleBOMDetailForm : PH.Platform.UI.CS.UI2.DetailForm //PH.UI.UI2.ChildDetailForm
    {
        public StyleBOMDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        private void StyleBOMDetailForm_Load(object sender, EventArgs e)
        {
            this.PrepareData();
        }

        #region 準備數據
        private void PrepareData()
        {
            this.edtMaterielGroup1.Properties.DataSource = from a in DBController.SPCDB.MaterielClasses
                                                           select a;
            this.edtMaterielGroup1.Properties.DisplayMember = "MaterielBigClass";
            this.edtMaterielGroup1.Properties.ValueMember = "MaterielBigClass";

            this.PrepareDataForMaterielGroup2();
            this.PrepareDataForMaterielGroup3();

        }

        private void PrepareDataForMaterielGroup2()
        {
            this.edtMaterielGroup2.Properties.DataSource = from b in DBController.SPCDB.MaterielClasses
                                                           where b.MaterielBigClass == this.edtMaterielGroup1.Text
                                                           select b;
            this.edtMaterielGroup2.Properties.DisplayMember = "MaterielSmallClass";
            this.edtMaterielGroup2.Properties.ValueMember = "MaterielSmallClass";
        }

        private void PrepareDataForMaterielGroup3()
        {
            this.edtMaterielGroup3.Properties.DataSource = from c in DBController.SPCDB.MaterielClasses
                                                           where c.MaterielBigClass == this.edtMaterielGroup1.Text && c.MaterielSmallClass == this.edtMaterielGroup2.Text
                                                           select c;
            this.edtMaterielGroup3.Properties.DisplayMember = "MaterielUsePlace";
            this.edtMaterielGroup3.Properties.ValueMember = "MaterielUsePlace";
        }
        #endregion

        private void edtMaterielGroup1_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                edtMaterielGroup2.EditValue = "";
                this.PrepareDataForMaterielGroup2();
                edtMaterielGroup3.EditValue = "";
            }
        }

        private void edtMaterielGroup2_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                edtMaterielGroup3.EditValue = "";
                this.PrepareDataForMaterielGroup3();
            }
        }

  

        //void SynchronousShow()
        //{
        //    edtMaterielGroup1.Text = edtMaterielGroup1.EditValue == null ? "" : edtMaterielGroup1.EditValue.ToString();
        //    edtMaterielGroup2.Text = edtMaterielGroup2.EditValue == null ? "" : edtMaterielGroup2.EditValue.ToString();
        //    edtMaterielGroup3.Text = edtMaterielGroup3.EditValue == null ? "" : edtMaterielGroup3.EditValue.ToString();
        //}

        //protected override void OnBindingDataSource()
        //{
        //    base.OnBindingDataSource();
        //    SynchronousShow();
        //}

    }
}
