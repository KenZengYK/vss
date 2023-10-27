using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using System.Data.Linq;


namespace PH.MIDc.UI
{
    public partial class RatioPriceListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private RepositoryItemPHSpinEdit _riseRWM;
        private RatioPrice thisRatioPrice
        {
            get { return this.BindingSource.Current as RatioPrice; }
       
        }

        public RatioPriceListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            this.Load += new EventHandler(RatioPriceListForm_Load);

            CreateSpinEdit();

            Controller.SetColumnPHSpinEdit(objListGridView, "Price", _riseRWM);
            Controller.SetColumnPHSpinEdit(objListGridView, "Ratio", _riseRWM);
            Controller.DisableSpinEditScrollings(this);
            
        }      

        protected override void AddNewObject()
        {
            base.AddNewObject();
            PH.MIDc.BO.Detail d = (this.ParentForm as DetailDetailForm).BindingSource.Current as PH.MIDc.BO.Detail;
            if (d == null) return;
            PH.MIDc.BO.RatioPrice p = this.BindingSource.Current as PH.MIDc.BO.RatioPrice;
            if (p != null)
                p.Detail = d;

        }

        private void RatioPriceListForm_Load(object sender, EventArgs e)
        {
            this.AllowGridEdit = false;// true;        

        }
        
        public void BandData(Detail _midcDetail, MIDcDataContext context)
        {
            this.DataContext = context;
            var ratioPrices = from c in context.RatioPrices
                              where c.SuppRef == _midcDetail.SuppRef 
                              select c ;

            this.BindingSource.DataSource = ratioPrices;
        }
        
        private void CreateSpinEdit()
        {
            _riseRWM = new RepositoryItemPHSpinEdit();
            _riseRWM.AutoHeight = false;
            _riseRWM.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            _riseRWM.Increment = new decimal(new int[] {
              0,
              0,
              0,
              0});
            _riseRWM.Buttons.Clear();
            _riseRWM.IsFloatValue = true;
            _riseRWM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            _riseRWM.DisplayFormat.FormatString = "#,##0.######";
        }

        private void Copy()
        {
            object obj = "";
            switch (this.objListGridView.FocusedColumn.FieldName)
            {
                case "Price":
                    obj =string.Format("{0:0.######}", thisRatioPrice.Price);
                    break;
                case "Ratio":
                    obj = string.Format("{0:0.######}", thisRatioPrice.Ratio);
                    
                    break;
                case "ColorCategory":
                    obj = thisRatioPrice.ColorCategory;
                    break;
                default:
                    break;

            }
            Clipboard.SetData(DataFormats.Text, obj);
        }

        private void objListGridControl_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.ToString() == "")
            {

                System.Threading.Thread t = new System.Threading.Thread(new System.Threading.ThreadStart(Copy));
                t.ApartmentState = System.Threading.ApartmentState.STA;
                t.Start();
            }
        }      
      

    }
}
