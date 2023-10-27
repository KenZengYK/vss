using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class ELWFilteringMachineDetailListForm : ListForm
    {
        public int Flag;
        public ELWFilteringMachineDetailListForm()
        {
            InitializeComponent();
            
        }
        public override void DataBind()
        {
            base.DataBind();
            this.AllowGridEdit = true;
         
        }

        public override void SaveData()
        {
            this.BindingSource.EndEdit();
            ByPiece_ELWFilteringMachineDetail obj = this.BindingSource.Current as ByPiece_ELWFilteringMachineDetail;
            obj.Flag = obj.ByPiece_ELWFilteringMachineHeader.Flag ?? this.Flag;
            base.SaveData();
            this.objListGridView.RefreshData();
        }

        //protected override void AddNewObject()
        //{

        //    base.AddNewObject();
        //}

        //public override void SaveData()
        //{
        //    //ByPiece_ELWFilteringMachineDetail obj = this.BindingSource.Current as ByPiece_ELWFilteringMachineDetail;
        //    //if (obj.Qty == 0) 
        //    //{
        //    //    throw new Exception("Qty²»ÄÜ ‘0");
        //    //}
        //    base.SaveData();
        //}

        //private void BindingSource_AddingNew(object sender, AddingNewEventArgs e)
        //{

        //}

        //private void objListGridView_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        //{
        //    ByPiece_ELWFilteringMachineDetail obj = this.BindingSource.Current as ByPiece_ELWFilteringMachineDetail;
        //    if (obj.Qty == null || obj.Qty <= 0)
        //    {
        //        obj.Qty = 0;
        //    }
        //}
    }
}