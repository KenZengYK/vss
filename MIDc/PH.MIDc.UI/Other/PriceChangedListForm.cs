using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.MIDc.UI
{
    public partial class PriceChangedListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PriceChangedListForm()
        {
            InitializeComponent();
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            context.CommandTimeout = 2000;
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MaterialPrice);

            //Xsj110809:获取已更改的单价：MaterialPriceHeader的EffectFromDate不等于Detail的CreateDate的资料B.IsMultiPrice
            //            string sqlStr = @"Select cast(B.IsMultiPrice as bit) as IsMultiPrice,C.SuppRef,C.PriceType,C.Category,C.EffectFromDate,
            //                                C.EffectEndDate,C.ColorRange,C.Size,C.Cup,C.Price,C.Ratio 
            //                                from MaterialPriceHeader B Inner Join MaterialPrice C
            //                                On B.SuppRef=C.SuppRef and B.PriceType=C.PriceType
            //                                and B.Category=C.Category and Convert(nvarchar(10),B.EffectFromDate,120)=Convert(nvarchar(10),C.EffectFromDate,120)
            //                                and  B.SuppRef in
            //                                (
            //                                Select A.SuppRef
            //                                from Detail A 
            //                                Inner Join MaterialPriceHeader B On A.SuppRef=B.SuppRef 
            //                                and Convert(nvarchar(10),A.CreateDate,120)<>Convert(nvarchar(10),B.EffectFromDate,120)
            //                                )";

            #region Xsj20110817:为完善历史多单价而注释掉
            //            string sqlStr = @"Select cast(B.IsMultiPrice as bit) as IsMultiPrice,C.SuppRef,C.PriceType,C.Category,C.EffectFromDate,
            //                            C.EffectEndDate,C.ColorRange,C.Size,C.Cup,C.Price,C.Ratio 
            //                            from MaterialPriceHeader B Inner Join MaterialPrice C
            //                            On B.SuppRef=C.SuppRef and B.PriceType=C.PriceType
            //                            and B.Category=C.Category and Convert(nvarchar(10),B.EffectFromDate,120)=Convert(nvarchar(10),C.EffectFromDate,120)
            //                            and  B.SuppRef in
            //                            (
            //                            Select A.SuppRef
            //                            from Detail A 
            //                            Inner Join MaterialPriceHeader B On A.SuppRef=B.SuppRef 
            //                            and Convert(nvarchar(10),A.CreateDate,120)<>Convert(nvarchar(10),B.EffectFromDate,120)
            //                            )
            //                            and B.SuppRef in (
            //                            select SuppRef from MaterialPriceHeader 
            //                            group by SuppRef,PriceType,Category
            //                            having count(*) >1)
            //                            ";
            #endregion
            #region Xsj20110817:为完善历史多单价而添加
            string sqlStr = @"Select cast(B.IsMultiPrice as bit) as IsMultiPrice,C.SuppRef,C.PriceType,C.Category,C.EffectFromDate,
                                        C.EffectEndDate,C.ColorRange,C.Size,C.Cup,C.Price,C.Ratio,B.Version
                                        from MaterialPriceHeader B Inner Join MaterialPrice C
                                        On B.Version=C.Version
                                        and  B.SuppRef in
                                        (
                                        Select A.SuppRef
                                        from Detail A 
                                        Inner Join MaterialPriceHeader B On A.SuppRef=B.SuppRef 
                                        and Convert(nvarchar(10),A.CreateDate,120)<>Convert(nvarchar(10),B.EffectFromDate,120)
                                        )
                                        and B.SuppRef in (
                                        select SuppRef from MaterialPriceHeader 
                                        group by SuppRef,PriceType,Category
                                        having count(*) >1)
                                        ";
            #endregion

            PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            result.IsCustQuery = true;
            result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
            result.CustQuerySQL = sqlStr;
            result.BoType = typeof(PH.MIDc.BO.MaterialPrice);
            result.View = this.objListGridView;
            result.WarnRecord = 2000;
            this.StartEnquiry(result);

            base.DataBind();
        }
    }
}
