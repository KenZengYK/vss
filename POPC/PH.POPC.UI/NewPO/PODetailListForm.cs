using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    public partial class PODetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public PODetailListForm()
        {
            InitializeComponent();

        }
        public PH.POPC.UI.POInfo m_POInfo { get; set; }
        public PODetailListForm(PH.POPC.UI.POInfo poinfo)
            : this()
        {
            this.m_POInfo = poinfo;

        }
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PODetailDetailForm).FullName;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            if (this.m_POInfo != null)
            {
                string company = "";
                string pono = "";
                int version = 0;
                int amendmentNo = 0;
                int orderLine = 0;

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
                    }
                }
                #endregion


                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                var aa = from c in context.PODetails
                         where c.Company == company
                         && c.PONO == pono
                         && c.Version == version
                         && c.AmendmentNo == amendmentNo
                         && c.OrderLine==orderLine
                         select c;
                this.DataContext = context;
                this.BindingSource.DataSource = aa;
                this.OnClickOpen();
            }

        }

        protected override void OnClickDelete()
        {
            PH.POPC.BO.PODetail cur = this.BindingSource.Current as PH.POPC.BO.PODetail;
            if (cur != null && cur.PODetailPhoto != null)
            {
                (this.DataContext as PH.POPC.BO.POPCDataContext).PODetailPhotos.DeleteOnSubmit(cur.PODetailPhoto);
            }
            base.OnClickDelete();
        }
    }
}
