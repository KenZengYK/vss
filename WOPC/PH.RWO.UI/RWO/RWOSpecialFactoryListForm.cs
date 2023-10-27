using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;
using DevExpress.XtraGrid.Columns;

namespace PH.RWO.UI.RWO
{
    public partial class RWOSpecialFactoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private bool _isLoadEnd;

        public RWOSpecialFactoryListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            this.DataContext = context;
            this.DataContext.CommandTimeout = 3000;

            DataQueryParameter result = new DataQueryParameter();
            result.BoType = typeof(PH.RWO.BO.RoundWorkOrder);
            result.View = this.objListGridView;
            result.FixedWherePart = @" Not EXISTS( Select 1 from WorkOrder A 
                                                  Where A.WorkOrderNo=RoundWorkOrder.WorkOrderNo 
                                                      And  WOStatus in (8,-1)  
                                                ) 
                                       AND WorkOrderNo LIKE 'W%'
                                    ";
            result.WarnRecord = -1;
            this.StartEnquiry(result);

            if (!this._isLoadEnd)
            {
                this._isLoadEnd = true;
            }
            else
            {
                SetColEnable();
            }
        }

        private void SetColEnable()
        {
            foreach (GridColumn item in this.objListGridView.Columns)
            {
                if (item.FieldName != "SpecialFactory")
                {
                    item.OptionsColumn.AllowEdit = false;
                    item.AppearanceCell.BackColor = Color.FromArgb(210, 253, 253);
                }
                else
                {
                    objListGridView.OptionsBehavior.Editable = true;
                    item.OptionsColumn.AllowEdit = true;
                }
            }
        }


    }
}
