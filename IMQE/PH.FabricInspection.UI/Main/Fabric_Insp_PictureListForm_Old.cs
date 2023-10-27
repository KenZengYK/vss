/* 代码说明
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.PictureListForm.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/2 下午 04:32:51 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using DevExpress.XtraGrid.Views.Card;
using DevExpress.XtraGrid.Views.Card.ViewInfo;

namespace PH.FabricInspection.UI
{
    public partial class PictureListForm_Old : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code



        private DevExpress.XtraGrid.Views.Card.CardView cardView1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_System_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Board_NO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Photo;
        private DevExpress.XtraEditors.Repository.RepositoryItemPictureEdit repositoryItemPictureEdit1;
        private DevExpress.XtraBars.BarButtonItem barBtnExpendAll;
        private DevExpress.XtraBars.BarButtonItem barBtnCollapseAll;
        
        //private System.ComponentModel.IContainer components = null;
        #endregion

        public PictureListForm_Old()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.cardView1 = new DevExpress.XtraGrid.Views.Card.CardView();
            this.Columns_System_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Board_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Photo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemPictureEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemPictureEdit();
            this.barBtnExpendAll = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnCollapseAll = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemPictureEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnExpendAll,
            this.barBtnCollapseAll});
            this.objbarManager.MaxItemId = 12;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnExpendAll),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnCollapseAll)});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.MainView = this.cardView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemPictureEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(653, 280);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.cardView1});
            // 
            // cardView1
            // 
            this.cardView1.CardCaptionFormat = "BoardNo: {1}";
            this.cardView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_System_NO,
            this.Columns_Board_NO,
            this.Columns_Photo});
            this.cardView1.DetailHeight = 200;
            this.cardView1.FocusedCardTopFieldIndex = 0;
            this.cardView1.GridControl = this.objListGridControl;
            this.cardView1.Name = "cardView1";
            this.cardView1.OptionsBehavior.Editable = false;
            this.cardView1.OptionsBehavior.FieldAutoHeight = true;
            this.cardView1.OptionsView.ShowQuickCustomizeButton = false;
            this.cardView1.VertScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Auto;
            this.cardView1.CustomDrawCardFieldValue += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.cardView1_CustomDrawCardFieldValue);
            this.cardView1.Click += new System.EventHandler(this.cardView1_Click);
            // 
            // Columns_System_NO
            // 
            this.Columns_System_NO.Caption = "System_NO";
            this.Columns_System_NO.FieldName = "System_Install_No";
            this.Columns_System_NO.Name = "Columns_System_NO";
            // 
            // Columns_Board_NO
            // 
            this.Columns_Board_NO.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Board_NO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.Columns_Board_NO.Caption = "Broad No";
            this.Columns_Board_NO.FieldName = "BroadNo";
            this.Columns_Board_NO.Name = "Columns_Board_NO";
            this.Columns_Board_NO.OptionsColumn.FixedWidth = true;
            this.Columns_Board_NO.OptionsColumn.ReadOnly = true;
            this.Columns_Board_NO.Visible = true;
            this.Columns_Board_NO.VisibleIndex = 0;
            // 
            // Columns_Photo
            // 
            this.Columns_Photo.Caption = "Picture";
            this.Columns_Photo.ColumnEdit = this.repositoryItemPictureEdit1;
            this.Columns_Photo.FieldName = "Picture";
            this.Columns_Photo.Name = "Columns_Photo";
            this.Columns_Photo.OptionsColumn.ReadOnly = true;
            this.Columns_Photo.Visible = true;
            this.Columns_Photo.VisibleIndex = 1;
            this.Columns_Photo.Width = 112;
            // 
            // repositoryItemPictureEdit1
            // 
            this.repositoryItemPictureEdit1.CustomHeight = 200;
            this.repositoryItemPictureEdit1.Name = "repositoryItemPictureEdit1";
            // 
            // barBtnExpendAll
            // 
            this.barBtnExpendAll.Caption = "Expend All";
            this.barBtnExpendAll.Id = 10;
            this.barBtnExpendAll.Name = "barBtnExpendAll";
            this.barBtnExpendAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnExpendAll_ItemClick);
            // 
            // barBtnCollapseAll
            // 
            this.barBtnCollapseAll.Caption = "Collapse All";
            this.barBtnCollapseAll.Id = 11;
            this.barBtnCollapseAll.Name = "barBtnCollapseAll";
            this.barBtnCollapseAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnCollapseAll_ItemClick);
            // 
            // PictureListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PictureListForm";
            this.Size = new System.Drawing.Size(653, 305);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemPictureEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        private void cardView1_CustomDrawCardFieldValue(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column == null)
            {
                return;
            }
            try
            {
                if (e.Column.FieldName == "Picture")
                {
                    //MemoryStream stream = new MemoryStream((byte[])e.CellValue);
                    Fabric_Insp_Picture tempPhoto = (Fabric_Insp_Picture)cardView1.GetRow(e.RowHandle);
                    //Image img = new Bitmap(stream);
                    Image img = (Bitmap)e.CellValue;


                    int iLeftMargin = (int)(3 * this.Font.Size);

                    Rectangle r = e.Bounds;
                    Pen pen = new System.Drawing.Pen(Color.Black);
                    float step = (float)(e.Bounds.Bottom - e.Bounds.Top) / 10;
                    Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(e.Bounds, Color.Black, Color.Black, 0.0);
                    Brush whiteBrush = new System.Drawing.Drawing2D.LinearGradientBrush(e.Bounds, Color.White, Color.White, 0.0);

                    e.Graphics.FillRectangle(whiteBrush, new Rectangle(e.Bounds.Left, e.Bounds.Top, iLeftMargin, e.Bounds.Height));
                    //画number
                    int topBroadValue = tempPhoto.BroadNo - 1;
                    if (topBroadValue < 0)
                    {
                        topBroadValue = 0;
                    }
                    int bottomBroadValue = topBroadValue + 1;
                    e.Graphics.DrawString("" + topBroadValue, this.Font, brush, e.Bounds);
                    e.Graphics.DrawString("" + bottomBroadValue, this.Font, brush, r.Left, r.Bottom - this.Font.Height);

                    //画纵向直线
                    e.Graphics.DrawLine(pen, new Point((int)(e.Bounds.Left + 2 * this.Font.Size), e.Bounds.Top), new Point((int)(e.Bounds.Left + 2 * this.Font.Size), e.Bounds.Bottom));

                    //画横向刻度线
                    int iLineMargin = 3;
                    //画横向刻度线 第一根
                    e.Graphics.DrawLine(pen, new Point((int)(e.Bounds.Left + this.Font.Size), (int)(e.Bounds.Top)), new Point((int)(e.Bounds.Left + 2 * this.Font.Size), (int)(e.Bounds.Top)));

                    for (int i = 1; i < 10; i++)
                    {
                        e.Graphics.DrawLine(pen, new Point((int)(e.Bounds.Left + this.Font.Size + iLineMargin), (int)(e.Bounds.Top + (i * step))), new Point((int)(e.Bounds.Left + 2 * this.Font.Size), (int)(e.Bounds.Top + (i * step))));
                    }
                    //画横向刻度线 最后一根
                    e.Graphics.DrawLine(pen, new Point((int)(e.Bounds.Left + this.Font.Size), (int)(e.Bounds.Bottom)), new Point((int)(e.Bounds.Left + 2 * this.Font.Size), (int)(e.Bounds.Bottom)));


                    //画图片
                    e.Graphics.DrawImage(img, new Rectangle(e.Bounds.Left + iLeftMargin, e.Bounds.Top, e.Bounds.Width - iLeftMargin, e.Bounds.Height), new Rectangle(0, 0, img.Width, img.Height), GraphicsUnit.Pixel);

                    e.Handled = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //MessageBox.Show(ex.Message);  
            }

        }

        private void cardView1_Click(object sender, EventArgs e)
        {
            try
            {
                CardView view = sender as CardView;
                CardHitInfo info = view.CalcHitInfo(view.GridControl.PointToClient(MousePosition));
                if (info == null)
                {
                    return;
                }
                if (info.Column == null)
                {
                    return;
                }
                int[] selectedRows = cardView1.GetSelectedRows();
                if (selectedRows.Length > 0)
                {
                    if (info.Column.FieldName == "Picture")
                    {
                        Fabric_Insp_Picture Fabric_Insp_Picture = (Fabric_Insp_Picture)cardView1.GetRow(selectedRows[0]);
                        FrmImageViewer_Old imageViewer = FrmImageViewer_Old.getInstance();
                        imageViewer.ViewImage(Fabric_Insp_Picture.Picture, Fabric_Insp_Picture.BroadNo);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Happened\n" + ex.Message);
            }

        }

        private void barBtnCollapseAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                if (cardView1.RowCount > 0)
                {
                    cardView1.CollapseAll();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when collapsing all card \n" + ex.Message);
            }

        }

        private void barBtnExpendAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                if (cardView1.RowCount > 0)
                {
                    cardView1.ExpandAll();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when collapsing all card \n" + ex.Message);
            }
        }

    }
}
