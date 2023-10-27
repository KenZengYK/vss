namespace PH.FabricInspection.UI
{
    partial class FrmImageViewer
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panelTool = new System.Windows.Forms.Panel();
            this.btnColor = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnZoonIn = new System.Windows.Forms.Button();
            this.btnZoonOut = new System.Windows.Forms.Button();
            this.btnShapHandler = new System.Windows.Forms.Button();
            this.btnMove = new System.Windows.Forms.Button();
            this.btnFit = new System.Windows.Forms.Button();
            this.btnNormal = new System.Windows.Forms.Button();
            this.btnCut = new System.Windows.Forms.Button();
            this.panel_GuidTool = new System.Windows.Forms.Panel();
            this.btn_First = new System.Windows.Forms.Button();
            this.btn_Last = new System.Windows.Forms.Button();
            this.btn_Previous = new System.Windows.Forms.Button();
            this.btn_Next = new System.Windows.Forms.Button();
            this.lble = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.lblImage = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.vScrollBar = new System.Windows.Forms.VScrollBar();
            this.hScrollBar = new System.Windows.Forms.HScrollBar();
            this.picEdit_Show = new DevExpress.XtraEditors.PictureEdit();
            this.panelShow = new System.Windows.Forms.Panel();
            this.panelSmall = new System.Windows.Forms.Panel();
            this.xtraScrollableCtrl_CutPhoto = new DevExpress.XtraEditors.XtraScrollableControl();
            this.colorDialog1 = new System.Windows.Forms.ColorDialog();
            this.panelTool.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel_GuidTool.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picEdit_Show.Properties)).BeginInit();
            this.panelShow.SuspendLayout();
            this.panelSmall.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelTool
            // 
            this.panelTool.Controls.Add(this.btnColor);
            this.panelTool.Controls.Add(this.panel2);
            this.panelTool.Controls.Add(this.panel_GuidTool);
            this.panelTool.Controls.Add(this.lble);
            this.panelTool.Controls.Add(this.labelControl2);
            this.panelTool.Controls.Add(this.lblImage);
            this.panelTool.Controls.Add(this.labelControl3);
            this.panelTool.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelTool.Location = new System.Drawing.Point(0, 577);
            this.panelTool.Name = "panelTool";
            this.panelTool.Size = new System.Drawing.Size(994, 36);
            this.panelTool.TabIndex = 0;
            // 
            // btnColor
            // 
            this.btnColor.BackColor = System.Drawing.Color.Black;
            this.btnColor.Location = new System.Drawing.Point(963, 8);
            this.btnColor.Name = "btnColor";
            this.btnColor.Size = new System.Drawing.Size(20, 20);
            this.btnColor.TabIndex = 6;
            this.btnColor.Text = " ";
            this.btnColor.UseVisualStyleBackColor = false;
            this.btnColor.Click += new System.EventHandler(this.btnColor_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnZoonIn);
            this.panel2.Controls.Add(this.btnZoonOut);
            this.panel2.Controls.Add(this.btnShapHandler);
            this.panel2.Controls.Add(this.btnMove);
            this.panel2.Controls.Add(this.btnFit);
            this.panel2.Controls.Add(this.btnNormal);
            this.panel2.Controls.Add(this.btnCut);
            this.panel2.Location = new System.Drawing.Point(8, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 30);
            this.panel2.TabIndex = 4;
            // 
            // btnZoonIn
            // 
            this.btnZoonIn.Image = global::PH.FabricInspection.UI.Properties.Resources.zoom_in;
            this.btnZoonIn.Location = new System.Drawing.Point(3, 2);
            this.btnZoonIn.Name = "btnZoonIn";
            this.btnZoonIn.Size = new System.Drawing.Size(27, 25);
            this.btnZoonIn.TabIndex = 0;
            this.btnZoonIn.UseVisualStyleBackColor = true;
            this.btnZoonIn.Click += new System.EventHandler(this.btnZoonIn_Click);
            // 
            // btnZoonOut
            // 
            this.btnZoonOut.Image = global::PH.FabricInspection.UI.Properties.Resources.zoom_out;
            this.btnZoonOut.Location = new System.Drawing.Point(29, 3);
            this.btnZoonOut.Name = "btnZoonOut";
            this.btnZoonOut.Size = new System.Drawing.Size(26, 25);
            this.btnZoonOut.TabIndex = 0;
            this.btnZoonOut.UseVisualStyleBackColor = true;
            this.btnZoonOut.Click += new System.EventHandler(this.btnZoonOut_Click);
            // 
            // btnShapHandler
            // 
            this.btnShapHandler.Image = global::PH.FabricInspection.UI.Properties.Resources.shape_handles;
            this.btnShapHandler.Location = new System.Drawing.Point(168, 3);
            this.btnShapHandler.Name = "btnShapHandler";
            this.btnShapHandler.Size = new System.Drawing.Size(26, 25);
            this.btnShapHandler.TabIndex = 3;
            this.btnShapHandler.UseVisualStyleBackColor = true;
            this.btnShapHandler.Click += new System.EventHandler(this.btnShapHandler_Click);
            // 
            // btnMove
            // 
            this.btnMove.Image = global::PH.FabricInspection.UI.Properties.Resources.move;
            this.btnMove.Location = new System.Drawing.Point(54, 3);
            this.btnMove.Name = "btnMove";
            this.btnMove.Size = new System.Drawing.Size(26, 25);
            this.btnMove.TabIndex = 0;
            this.btnMove.Tag = "true";
            this.btnMove.UseVisualStyleBackColor = true;
            this.btnMove.Click += new System.EventHandler(this.btnMove_Click);
            // 
            // btnFit
            // 
            this.btnFit.Image = global::PH.FabricInspection.UI.Properties.Resources.arrow_in;
            this.btnFit.Location = new System.Drawing.Point(85, 3);
            this.btnFit.Name = "btnFit";
            this.btnFit.Size = new System.Drawing.Size(26, 25);
            this.btnFit.TabIndex = 1;
            this.btnFit.UseVisualStyleBackColor = true;
            this.btnFit.Click += new System.EventHandler(this.btnFit_Click);
            // 
            // btnNormal
            // 
            this.btnNormal.Image = global::PH.FabricInspection.UI.Properties.Resources.arrow_out;
            this.btnNormal.Location = new System.Drawing.Point(110, 3);
            this.btnNormal.Name = "btnNormal";
            this.btnNormal.Size = new System.Drawing.Size(26, 25);
            this.btnNormal.TabIndex = 1;
            this.btnNormal.UseVisualStyleBackColor = true;
            this.btnNormal.Click += new System.EventHandler(this.btnNormal_Click);
            // 
            // btnCut
            // 
            this.btnCut.Image = global::PH.FabricInspection.UI.Properties.Resources.measurement;
            this.btnCut.Location = new System.Drawing.Point(136, 3);
            this.btnCut.Name = "btnCut";
            this.btnCut.Size = new System.Drawing.Size(26, 25);
            this.btnCut.TabIndex = 1;
            this.btnCut.Tag = "true";
            this.btnCut.UseVisualStyleBackColor = true;
            this.btnCut.Click += new System.EventHandler(this.btnCut_Click);
            // 
            // panel_GuidTool
            // 
            this.panel_GuidTool.Controls.Add(this.btn_First);
            this.panel_GuidTool.Controls.Add(this.btn_Last);
            this.panel_GuidTool.Controls.Add(this.btn_Previous);
            this.panel_GuidTool.Controls.Add(this.btn_Next);
            this.panel_GuidTool.Location = new System.Drawing.Point(214, 4);
            this.panel_GuidTool.Name = "panel_GuidTool";
            this.panel_GuidTool.Size = new System.Drawing.Size(112, 27);
            this.panel_GuidTool.TabIndex = 5;
            // 
            // btn_First
            // 
            this.btn_First.BackgroundImage = global::PH.FabricInspection.UI.Properties.Resources.First;
            this.btn_First.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btn_First.Location = new System.Drawing.Point(3, 1);
            this.btn_First.Name = "btn_First";
            this.btn_First.Size = new System.Drawing.Size(26, 25);
            this.btn_First.TabIndex = 4;
            this.btn_First.UseVisualStyleBackColor = true;
            this.btn_First.Click += new System.EventHandler(this.btn_First_Click);
            // 
            // btn_Last
            // 
            this.btn_Last.BackgroundImage = global::PH.FabricInspection.UI.Properties.Resources.Last;
            this.btn_Last.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btn_Last.Location = new System.Drawing.Point(78, 1);
            this.btn_Last.Name = "btn_Last";
            this.btn_Last.Size = new System.Drawing.Size(26, 25);
            this.btn_Last.TabIndex = 4;
            this.btn_Last.UseVisualStyleBackColor = true;
            this.btn_Last.Click += new System.EventHandler(this.btn_Last_Click);
            // 
            // btn_Previous
            // 
            this.btn_Previous.BackgroundImage = global::PH.FabricInspection.UI.Properties.Resources.Previous;
            this.btn_Previous.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btn_Previous.Location = new System.Drawing.Point(28, 1);
            this.btn_Previous.Name = "btn_Previous";
            this.btn_Previous.Size = new System.Drawing.Size(26, 25);
            this.btn_Previous.TabIndex = 4;
            this.btn_Previous.UseVisualStyleBackColor = true;
            this.btn_Previous.Click += new System.EventHandler(this.btn_Previous_Click);
            // 
            // btn_Next
            // 
            this.btn_Next.BackgroundImage = global::PH.FabricInspection.UI.Properties.Resources.Next;
            this.btn_Next.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btn_Next.Location = new System.Drawing.Point(53, 1);
            this.btn_Next.Name = "btn_Next";
            this.btn_Next.Size = new System.Drawing.Size(26, 25);
            this.btn_Next.TabIndex = 4;
            this.btn_Next.UseVisualStyleBackColor = true;
            this.btn_Next.Click += new System.EventHandler(this.btn_Next_Click);
            // 
            // lble
            // 
            this.lble.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lble.Location = new System.Drawing.Point(439, 10);
            this.lble.Name = "lble";
            this.lble.Size = new System.Drawing.Size(7, 14);
            this.lble.TabIndex = 2;
            this.lble.Text = "E";
            // 
            // labelControl2
            // 
            this.labelControl2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.labelControl2.Location = new System.Drawing.Point(529, 10);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(38, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "Image:";
            // 
            // lblImage
            // 
            this.lblImage.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblImage.Location = new System.Drawing.Point(573, 10);
            this.lblImage.Name = "lblImage";
            this.lblImage.Size = new System.Drawing.Size(34, 14);
            this.lblImage.TabIndex = 2;
            this.lblImage.Text = "Image";
            // 
            // labelControl3
            // 
            this.labelControl3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.labelControl3.Location = new System.Drawing.Point(422, 10);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(11, 14);
            this.labelControl3.TabIndex = 2;
            this.labelControl3.Text = "e:";
            // 
            // vScrollBar
            // 
            this.vScrollBar.Dock = System.Windows.Forms.DockStyle.Right;
            this.vScrollBar.Location = new System.Drawing.Point(789, 0);
            this.vScrollBar.Name = "vScrollBar";
            this.vScrollBar.Size = new System.Drawing.Size(17, 560);
            this.vScrollBar.TabIndex = 1;
            this.vScrollBar.Visible = false;
            this.vScrollBar.Scroll += new System.Windows.Forms.ScrollEventHandler(this.vScrollBar_Scroll);
            // 
            // hScrollBar
            // 
            this.hScrollBar.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.hScrollBar.Location = new System.Drawing.Point(0, 560);
            this.hScrollBar.Name = "hScrollBar";
            this.hScrollBar.Size = new System.Drawing.Size(806, 17);
            this.hScrollBar.TabIndex = 2;
            this.hScrollBar.Visible = false;
            this.hScrollBar.Scroll += new System.Windows.Forms.ScrollEventHandler(this.hScrollBar_Scroll);
            // 
            // picEdit_Show
            // 
            this.picEdit_Show.Location = new System.Drawing.Point(31, 65);
            this.picEdit_Show.Name = "picEdit_Show";
            this.picEdit_Show.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.picEdit_Show.Properties.Appearance.Options.UseBackColor = true;
            this.picEdit_Show.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.picEdit_Show.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Zoom;
            this.picEdit_Show.Size = new System.Drawing.Size(246, 151);
            this.picEdit_Show.TabIndex = 3;
            this.picEdit_Show.MouseUp += new System.Windows.Forms.MouseEventHandler(this.picEdit_Show_MouseUp);
            this.picEdit_Show.MouseMove += new System.Windows.Forms.MouseEventHandler(this.picEdit_Show_MouseMove);
            this.picEdit_Show.MouseDown += new System.Windows.Forms.MouseEventHandler(this.picEdit_Show_MouseDown);
            // 
            // panelShow
            // 
            this.panelShow.Controls.Add(this.vScrollBar);
            this.panelShow.Controls.Add(this.hScrollBar);
            this.panelShow.Controls.Add(this.picEdit_Show);
            this.panelShow.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelShow.Location = new System.Drawing.Point(0, 0);
            this.panelShow.Name = "panelShow";
            this.panelShow.Size = new System.Drawing.Size(806, 577);
            this.panelShow.TabIndex = 5;
            // 
            // panelSmall
            // 
            this.panelSmall.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.panelSmall.Controls.Add(this.xtraScrollableCtrl_CutPhoto);
            this.panelSmall.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelSmall.Location = new System.Drawing.Point(806, 0);
            this.panelSmall.Name = "panelSmall";
            this.panelSmall.Size = new System.Drawing.Size(188, 577);
            this.panelSmall.TabIndex = 5;
            // 
            // xtraScrollableCtrl_CutPhoto
            // 
            this.xtraScrollableCtrl_CutPhoto.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraScrollableCtrl_CutPhoto.Location = new System.Drawing.Point(0, 0);
            this.xtraScrollableCtrl_CutPhoto.Name = "xtraScrollableCtrl_CutPhoto";
            this.xtraScrollableCtrl_CutPhoto.Size = new System.Drawing.Size(188, 577);
            this.xtraScrollableCtrl_CutPhoto.TabIndex = 0;
            // 
            // FrmImageViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(994, 613);
            this.Controls.Add(this.panelShow);
            this.Controls.Add(this.panelSmall);
            this.Controls.Add(this.panelTool);
            this.Name = "FrmImageViewer";
            this.Text = "ImageViewer";
            this.Load += new System.EventHandler(this.ImageViewer_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FrmImageViewer_FormClosed);
            this.Resize += new System.EventHandler(this.ImageViewer_Resize);
            this.panelTool.ResumeLayout(false);
            this.panelTool.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel_GuidTool.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picEdit_Show.Properties)).EndInit();
            this.panelShow.ResumeLayout(false);
            this.panelSmall.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelTool;
        private System.Windows.Forms.VScrollBar vScrollBar;
        private System.Windows.Forms.HScrollBar hScrollBar;
        private System.Windows.Forms.Button btnZoonIn;
        private System.Windows.Forms.Button btnZoonOut;
        private DevExpress.XtraEditors.PictureEdit picEdit_Show;
        private System.Windows.Forms.Button btnMove;
        private System.Windows.Forms.Button btnCut;
        private System.Windows.Forms.Button btnNormal;
        private System.Windows.Forms.Button btnFit;
        private DevExpress.XtraEditors.LabelControl lble;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl lblImage;
        private System.Windows.Forms.Button btnShapHandler;
        private System.Windows.Forms.Panel panelShow;
        private System.Windows.Forms.Panel panelSmall;
        private DevExpress.XtraEditors.XtraScrollableControl xtraScrollableCtrl_CutPhoto;
        private System.Windows.Forms.Button btn_Last;
        private System.Windows.Forms.Button btn_Next;
        private System.Windows.Forms.Button btn_Previous;
        private System.Windows.Forms.Button btn_First;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel_GuidTool;
        private System.Windows.Forms.Button btnColor;
        private System.Windows.Forms.ColorDialog colorDialog1;
    }
}