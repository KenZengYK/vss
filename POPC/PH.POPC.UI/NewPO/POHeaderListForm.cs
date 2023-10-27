using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;

namespace PH.POPC.UI.NewPO
{
    public partial class POHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        private string m_where = string.Empty;
        public POHeaderListForm()
        {
            InitializeComponent();
        }
        public POHeaderListForm(string where)
            : this()
        {
            this.m_where = where;
        }
        public PH.POPC.UI.POInfo m_POInfo { get; set; }

        public POHeaderListForm(PH.POPC.UI.POInfo poinfo)
            : this()
        {
            this.m_POInfo = poinfo;
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(POHeaderDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.DataContext = context;
            this.DataContext.CommandTimeout = 3000;

            if (this.m_POInfo == null)
            {
                DataQueryParameter result = new DataQueryParameter();
                result.BoType = typeof(PH.POPC.BO.POHeader);
                result.View = this.objListGridView;
                result.FixedWherePart = this.m_where;
                result.WarnRecord = -1;
                this.StartEnquiry(result);
            }
            else
            {
                string company = "";
                string pono = "";
                int version = 0;
                int amendmentNo = 0;

                #region Get infor

                if (this.m_POInfo.Pur is PH.POPC.BO.View_POPC_PUR)
                {
                    PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)this.m_POInfo.Pur;
                    if (p != null)
                    {
                         company = p.Company;
                         pono = p.PONO;
                         version = p.Version;
                         amendmentNo =p.AmendmentNo;
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
                    }
                }
                #endregion

                var aa = from c in context.POHeaders
                         where c.Company == company
                         && c.PONO == pono
                         && c.Version == version
                         && c.AmendmentNo == amendmentNo
                         select c;
                this.BindingSource.DataSource = aa;
                this.OnClickOpen();
            }
        }

        private void btnCheckMatrix_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (h == null) return;
            if (h.MatrixIsOK)
                MessageBox.Show("Matrix 數據正確.", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            else
                MessageBox.Show("Matrix 數據不正確,請檢查.", "警告", MessageBoxButtons.OK, MessageBoxIcon.Warning);

        }
    }
}
