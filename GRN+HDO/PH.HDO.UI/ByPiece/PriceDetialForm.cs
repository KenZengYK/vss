using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using PH.PHGDB2.BO;



namespace PH.HDO.UI
{
    public partial class PriceDetialForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public int AFlag;

        public PriceDetialForm()
        {
            InitializeComponent();

            //if ((this.ListForm as PriceListForm).Flag == 1) 
            //{ 
            //    this.label5.Visible = this.txtEWSAH.Visible = true; 
            //}
            
            

        }

        public override void EditCurrent()
        {
            if (this.IsNew)
            {
                
                ByPiece_Price obj = this.BindingSource.Current as ByPiece_Price;
            
            }
            base.EditCurrent();

            this.txtID.Properties.ReadOnly = true;
        }

        public override void DataBind()
        {
            AFlag = (this.ListForm as PriceListForm).Flag;
            if (AFlag == 1) this.label5.Visible = this.txtEWSAH.Visible = this.label6.Visible=this.txtEWPrice.Visible = true; 
            base.DataBind();
        }

        protected override void SaveCurrent()
        {

            ByPiece_Price obj = this.BindingSource.Current as ByPiece_Price;
            if (CheackTxt())
            {
                obj.Flag=(this.ListForm as PriceListForm).Flag;
                base.SaveCurrent();    
            }
        }
        bool CheackTxt() 
        {
            if (string.IsNullOrEmpty(this.txtStartDate.Text)) 
            {
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtDuedate.Text))
            {
                MessageBox.Show("請選擇結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtPrice.Text))
            {
                MessageBox.Show("請輸入價格!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.txtStartDate.DateTime > this.txtDuedate.DateTime)
            {
                MessageBox.Show("開始日期需小於結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;

        }
    }
}
