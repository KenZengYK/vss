using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.Utils;
using PH.RWO.BO;
using System.Linq;

namespace PH.RWO.UI.RWO
{
    public partial class RWOTransitEntranceKey : DevExpress.XtraEditors.XtraForm
    {
        public RWOTransitEntranceKey()
        {
            InitializeComponent();
            InitValue();
            this.tcMain.ShowTabHeader =  DefaultBoolean.False;
        }

        #region Fields

        private RWOSOPCDataContext _context;
        public RWOSOPCDataContext Context
        {
            get
            {
                if (_context == null) _context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                return _context;
            }
        }
        public string CurrCust
        {
            get { return custOption.EditValue.ToString(); }
        }
        public WorkOrder CurrWO
        {
            get { return this.bsWO.Current as WorkOrder; }
        }
        

        private string[] _bendCusts;
        private string[] _supdCusts;

        #endregion

        private void btnBack_Click(object sender, EventArgs e)
        {
            BackAction();
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            NextAction();
        }
        private void BackAction()
        {
            if (this.tcMain.SelectedTabPage == this.pageWO)
                this.tcMain.SelectedTabPage = this.pageCust;
        }

        private void NextAction()
        {
            if (this.tcMain.SelectedTabPage == this.pageCust)
            {
                BindingWOs(this.CurrCust);
                this.tcMain.SelectedTabPage = this.pageWO;
            }
            else if (this.tcMain.SelectedTabPage == this.pageWO)
            {
                this.DialogResult = DialogResult.OK;
            }
        }

        private void tcMain_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            this.btnBack.Enabled = e.Page != this.pageCust;
            this.btnNext.Text = e.Page == pageWO ? "&Finish" : "&Next >";
        }

        private void InitValue()
        {
             _bendCusts = (from a in Context.CustomerCodes
                        where a.Customer == "BEND"
                        select a.CustomerCode1).ToArray<string>();

             _supdCusts = (from a in Context.CustomerCodes
                           where a.Customer == "SUPD"
                           select a.CustomerCode1).ToArray<string>();

        }

        private void BindingWOs(string customer)
        {
            string[] custs = customer == "BEND" ? this._bendCusts : this._supdCusts;
            this.bsWO.DataSource = null;

            var wos = from a in Context.WorkOrders
                      where custs.Contains(a.Project.Customer)
                      && a.Project.Status != "C" && a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1" && a.WOStatus != "8"
                      select a;


            this.bsWO.DataSource = wos;
        }


    }
}