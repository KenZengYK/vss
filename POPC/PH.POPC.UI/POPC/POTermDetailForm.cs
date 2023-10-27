/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POTermDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/19 下午 12:21:04 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;

namespace PH.POPC.UI
{
    public partial class POTermDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        private Label termCodeLable;
        private ButtonEdit buttonEdit1;
        private BindingSource termBindingSource;
        private IContainer components;
        private LookUpEdit look_Term;
        #region//auto code

        #endregion


        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label remarkLabel;
            this.look_Term = new DevExpress.XtraEditors.LookUpEdit();
            this.termCodeLable = new System.Windows.Forms.Label();
            this.buttonEdit1 = new DevExpress.XtraEditors.ButtonEdit();
            this.termBindingSource = new System.Windows.Forms.BindingSource(this.components);
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.look_Term.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.termBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // look_Term
            // 
            this.look_Term.EditValue = "";
            this.look_Term.Location = new System.Drawing.Point(88, 77);
            this.look_Term.Name = "look_Term";
            this.look_Term.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.False;
            this.look_Term.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.look_Term.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("TermCode", "TermCode", 5),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Remark", "Remark", 25)});
            this.look_Term.Properties.NullText = "";
            this.look_Term.Properties.ShowHeader = false;
            this.look_Term.Size = new System.Drawing.Size(657, 21);
            this.look_Term.TabIndex = 18;
            this.look_Term.Tag = "TermCode";
            // 
            // termCodeLable
            // 
            this.termCodeLable.AutoSize = true;
            this.termCodeLable.Location = new System.Drawing.Point(37, 47);
            this.termCodeLable.Name = "termCodeLable";
            this.termCodeLable.Size = new System.Drawing.Size(33, 12);
            this.termCodeLable.TabIndex = 22;
            this.termCodeLable.Text = "Code:";
            this.termCodeLable.Visible = false;
            // 
            // buttonEdit1
            // 
            this.buttonEdit1.Location = new System.Drawing.Point(88, 44);
            this.buttonEdit1.Name = "buttonEdit1";
            this.buttonEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.buttonEdit1.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.buttonEdit1.Size = new System.Drawing.Size(106, 21);
            this.buttonEdit1.TabIndex = 23;
            this.buttonEdit1.Tag = "TermCode";
            this.buttonEdit1.Visible = false;
            // 
            // termBindingSource
            // 
            this.termBindingSource.DataSource = typeof(PH.POPC.BO.Term);
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(37, 82);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(45, 12);
            remarkLabel.TabIndex = 23;
            remarkLabel.Text = "Remark:";
            // 
            // POTermDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.buttonEdit1);
            this.Controls.Add(this.termCodeLable);
            this.Controls.Add(this.look_Term);
            this.Name = "POTermDetailForm";
            this.Size = new System.Drawing.Size(1055, 392);
            this.Controls.SetChildIndex(this.look_Term, 0);
            this.Controls.SetChildIndex(this.termCodeLable, 0);
            this.Controls.SetChildIndex(this.buttonEdit1, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.look_Term.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.termBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        public POTermDetailForm()
        {
            InitializeComponent();

            //  this.BindingSource.CurrentChanged+=new EventHandler(CurBindingSource_CurrentChanged);

        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            TermDataInit();
        }
        private IQueryable<PH.POPC.BO.Term> items;
       // public POType _potype = POType.PO;
        private void TermDataInit()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms 
                    where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID
                   // && cc.TermCode.IndexOf("A") < 0
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        private void TermDataInitPO()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms
                    where cc.LanguageCode == "zh-TW"
                     && cc.TermCode.Contains("A") 
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        private void TermDataInitErpPO()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms
                    where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID
                     && cc.TermCode.IndexOf("A") < 0
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            
            (this.BindingSource.Current as PH.POPC.BO.POTerm).LanguageCode=PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            if (((PH.POPC.BO.POTerm)this.BindingSource.Current).POHeader.POType == (int)POType.PO)
            {
                this.look_Term.Properties.ReadOnly = true;
            }
            else
            {
                TermDataInitPO();
            }
        }

       



    }
}
