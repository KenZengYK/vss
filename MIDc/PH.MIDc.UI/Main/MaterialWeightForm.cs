using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.UI.CS.PivotGrid;

namespace PH.MIDc.UI.Main
{
    public partial class MaterialWeightForm : PH.Platform.UI.CS.UI2.ListForm
    {
        Detail _Detail;
        MIDcDataContext _db;

        public MaterialWeightForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            //this.DataContext = _db;
            this.IsShowPivotTable = true;
        }

        public bool AllowEditMaterialWeight
        {
            get { return this.objListGridView.OptionsBehavior.Editable; }
            set { this.objListGridView.OptionsBehavior.Editable = value; }
        }

        public override void SaveData()
        {
            this.BindingSource.EndEdit();

            base.SaveData();
        }

        public override PH.Platform.UI.CS.PivotGrid.PivotTableForm.PivotParamClass CreatePivotTableParameters()
        {
            //this.DataContext = _db;

            this.OnBeforeShowPivotGrid += new BeforeShowPivotGridHanlder(MaterialWeightForm_OnBeforeShowPivotGrid);

            PivotTableForm.PivotParamClass p = new PivotTableForm.PivotParamClass();
            p.BOType = typeof(MaterialWeight);
            //p.CurrencyManager = this.BindingSource.CurrencyManager;   //(this.objListGridView.DataSource as BindingSource).CurrencyManager;
            p.Header1_Label = "Size";
            p.Header2_Label = "Total";
            p.LFields = new string[] { "SuppRef", "Cup" };
            p.LLabels = new string[] { "SuppRef", "Cup" };
            p.RFields = new string[] { "Size" };
            p.RSubTotalLabels = new string[] { "Weight" };
            p.RValueField = "Weight";
            p.SourceList = this.BindingSource.List;
            return p;
        }

        void MaterialWeightForm_OnBeforeShowPivotGrid(PivotTableForm aPivotForm, PivotTableGrid aPovitGrid)
        {
            aPovitGrid.SetColumnVisible("SubTotal", false); //隐藏纵向 SubTotal
            aPovitGrid.gridControl2.Visible = false;        //隐藏横向 SubTotal

            //在這裏進行R列排序
            var sortQuery = (this.BindingSource.DataSource as IEnumerable<MaterialWeight>).ToList().OrderBy(p => p.Size);
            List<MaterialWeight> sortList = sortQuery.ToList();
            aPovitGrid.SortRField<MaterialWeight>(sortList, "Size", "Size", "Size", true);

            //在這裏進行L列排序            
            var sortCupQuery = (this.BindingSource.DataSource as IEnumerable<MaterialWeight>).ToList().OrderBy(p => p.Cup);
            List<MaterialWeight> cupList = sortCupQuery.ToList();
            aPovitGrid.Sort<MaterialWeight>(cupList, "Cup", "Cup", new string[] { "Cup" }, "Cup", new bool[] { true, true });

            //控制新增PivotItem
            //aPovitGrid.AfterNewPivotItem += new PivotTableGrid.AfterNewPivotItemHanlder(aPovitGrid_AfterNewPivotItem);

        }

        public void PrepareData(MIDcDataContext ADB, Detail ADetail)
        {
            _Detail = ADetail;
            _db = ADB;
            this.DataContext = _db;

            if (_Detail == null) return;

            //根据SuppRef，从NewSizeDetail表和NewCupDetail表中取出对应的Size和Cup，生成 By Size + Cup + Weight的记录表(MaterialWeight)，用于设置重量
            MaterialPriceHeader MatlPriceHeader = _Detail.MaterialPriceHeaders.OrderByDescending(p => p.EffectFromDate).FirstOrDefault();
            if (MatlPriceHeader == null) return;

            foreach (var newSizeDetail in MatlPriceHeader.NewSizeDetails.OrderBy(p => p.Size))
            {

                if (MatlPriceHeader.NewCupDetails.Count() == 0)
                {
                    var SizeObj = _db.MaterialWeights.Where(p => p.SuppRef == _Detail.SuppRef && p.Size == newSizeDetail.Size).FirstOrDefault();
                    if (SizeObj == null) //如果没有这个Size就增加
                    {
                        MaterialWeight obj = new MaterialWeight();
                        obj.SuppRef = _Detail.SuppRef;
                        obj.Size = newSizeDetail.Size;
                        _Detail.MaterialWeights.Add(obj);
                    }
                }
                else
                {
                    foreach (var newCupDetail in MatlPriceHeader.NewCupDetails.OrderBy(p => p.Cup))
                    {
                        var CupObj = _db.MaterialWeights.Where(p => p.SuppRef == _Detail.SuppRef && p.Size == newSizeDetail.Size && p.Cup == newCupDetail.Cup).FirstOrDefault();

                        if (CupObj == null) //如果没有这个Cup就增加
                        {
                            MaterialWeight obj = new MaterialWeight();
                            obj.SuppRef = _Detail.SuppRef;
                            obj.Size = newSizeDetail.Size;
                            obj.Cup = newCupDetail.Cup;
                            _Detail.MaterialWeights.Add(obj);
                        }
                    }
                }
            }
            this.DataContext.SubmitChanges();
            this.BindingSource.DataSource = _db.MaterialWeights.Where(p => p.SuppRef == _Detail.SuppRef).OrderBy(p => p.Size).ThenBy(p => p.Cup);
        }
    }
}
