using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Collections;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
using System.Data.Linq;
using PH.Platform.UI.CS.PivotGrid;
using PH.Platform.BO.PivotTable;

namespace PH.POPC.UI.NewPO
{
    public partial class POColorSizeDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POColorSizeDetailListForm()
        {
            InitializeComponent();
        }
        public PH.POPC.UI.POInfo m_POInfo { get; set; }
        public POColorSizeDetailListForm(PH.POPC.UI.POInfo poinfo)
            : this()
        {
            this.m_POInfo = poinfo;

        }
        public override void DataBind()
        {
            base.DataBind();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.EditorTypeName = typeof(POColorSizeDetailDetailForm).FullName;
            
            if (this.m_POInfo != null)
            {
                string company = "";
                string pono = "";
                int version = 0;
                int amendmentNo = 0;
                int orderLine = 0;
                string sku = "";

                #region Get infor

                if (this.m_POInfo.Pur is PH.POPC.BO.View_POPC_PUR)
                {
                    PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)this.m_POInfo.Pur;
                    if (p != null)
                    {
                        company = p.Company;
                        pono = p.PONO;
                        version = p.Version;
                        amendmentNo = p.AmendmentNo;
                        orderLine = p.OrderLine;
                        sku = p.SKU;
                    }
                }
                else if (this.m_POInfo.Pur is PH.POPC.BO.POColorSizeDetail)
                {
                    PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)this.m_POInfo.Pur;
                    if (p != null)
                    {
                        company = p.Company;
                        pono = p.PONO;
                        version = p.Version;
                        amendmentNo = p.AmendmentNo;
                        orderLine = p.OrderLine;
                        sku = p.SKU;
                    }
                }
                #endregion

                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                var aa = from c in context.POColorSizeDetails
                         where c.Company == company
                         && c.PONO == pono
                         && c.Version == version
                         && c.AmendmentNo == amendmentNo
                         && c.OrderLine == orderLine
                         && c.SKU==sku
                         select c;
                this.DataContext = context;
                this.BindingSource.DataSource = aa;
                this.OnClickOpen();
            }
        
        }

    }
}
