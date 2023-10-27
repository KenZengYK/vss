using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
/*
 * Xsj101211:維護價格所對應的SubColor
 */
namespace PH.MIDc.UI
{
    public partial class SubColorManageForm : Form
    {
        private ColorDetail CurrColorDetail;
        private PH.MIDc.BO.MIDcDataContext CurrMIDcDataContext;// = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        //基礎資料的SubColorList
        List<ColorSizeCupRangeDetail> CurrColorSizeCupRangeDetail;
        //已選取的SubColor
        List<SubColorDetail> CurrChoseSubColorList;
        public SubColorManageForm(ColorDetail colorDetail)
        {
            InitializeComponent();
            CurrColorDetail = colorDetail;
            this.lblParentColor.Text = CurrColorDetail.Color;
            this.CurrMIDcDataContext = CurrColorDetail.CurrentDataContext as PH.MIDc.BO.MIDcDataContext;
        }

        private void SubColorManageForm_Load(object sender, EventArgs e)
        {
            BindData();
        }

        //生成初始界面
        private void BindData()
        {
            CurrColorSizeCupRangeDetail = CurrMIDcDataContext.ColorSizeCupRangeDetails.Where(P => P.DataCode == CurrColorDetail.Color).ToList();
            CurrChoseSubColorList = CurrMIDcDataContext.SubColorDetails.Where(P => P.SuppRef == CurrColorDetail.SuppRef && P.Color == CurrColorDetail.Color).ToList();

            //恢複已取取的狀態
            foreach (ColorSizeCupRangeDetail itemOut in CurrColorSizeCupRangeDetail)
            {
                foreach (SubColorDetail itemIn in CurrChoseSubColorList)
                {
                    if (itemIn.Color == CurrColorDetail.Color && itemIn.SubColor == itemOut.ChildDataCode)
                    {
                        itemOut.IsChosed = true;
                    }
                }
            }
            this.bindingSource1.DataSource = CurrColorSizeCupRangeDetail;
        }

        public List<ColorSizeCupRangeDetail> NewChosedColorSizeCupRangeDetail { get; set; }
        //保存選擇
        private void sBtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                NewChosedColorSizeCupRangeDetail = CurrColorSizeCupRangeDetail.Where(P => P.IsChosed).ToList();
                //添加
                foreach (ColorSizeCupRangeDetail item in NewChosedColorSizeCupRangeDetail)
                {
                    List<SubColorDetail> ChosedSubColorList = CurrChoseSubColorList.Where(P => P.SubColor == item.ChildDataCode).ToList();
                    if (ChosedSubColorList.Count == 0)
                    {
                        SubColorDetail NewSubColorDetail = new SubColorDetail();
                        NewSubColorDetail.SuppRef = CurrColorDetail.SuppRef;
                        NewSubColorDetail.Color = item.DataCode;
                        NewSubColorDetail.SubColor = item.ChildDataCode;
                        NewSubColorDetail.Description = item.Description;
                        //NewSubColorDetail.ColorDetail = CurrColorDetail;

                        CurrMIDcDataContext.SubColorDetails.InsertOnSubmit(NewSubColorDetail);

                        //(CurrColorDetail.CurrentDataContext as PH.MIDc.BO.MIDcDataContext).SubColorDetails.Attach(NewSubColorDetail);
                    }
                }
                //刪除
                foreach (SubColorDetail item in CurrChoseSubColorList)
                {
                    List<ColorSizeCupRangeDetail> ChosedSubColorList = NewChosedColorSizeCupRangeDetail.Where(P => P.ChildDataCode == item.SubColor).ToList();
                    if (ChosedSubColorList.Count == 0)
                    {
                        CurrMIDcDataContext.SubColorDetails.DeleteOnSubmit(item);
                    }
                }
                CurrMIDcDataContext.SubmitChanges();
                //MessageBox.Show("保存成功!", "成功提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失敗!\r\n" + ex.ToString(), "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

    }
}
