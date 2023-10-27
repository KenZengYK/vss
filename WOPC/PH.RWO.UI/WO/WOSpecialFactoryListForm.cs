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
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI.WO
{
    public partial class WOSpecialFactoryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private bool _isLoadEnd;

        public WOSpecialFactoryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        { 
            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.DataContext = context;
            this.DataContext.CommandTimeout = 3000; 

            DataQueryParameter result = new DataQueryParameter();
            result.BoType = typeof(PH.RWO.BO.WorkOrder);
            result.View = this.objListGridView;

            result.FixedWherePart = @" WOStatus != -1 and WOStatus != 8";



//            result.FixedWherePart = @"  WOStatus!=-1 and WOStatus!=8
//                                        AND (
//                                             ISNULL(OAConfirm,'')='' 
//                                             or ISNULL(HeaderConfirm,'')=''  
//                                             or ISNULL(TopConfirm,'')=''  
//                                             or ISNULL(PPCConfirm,'')='' 
//                                           ) 
//                                        AND WorkOrderNo LIKE 'W%'
//                                     ";
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
