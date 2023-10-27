﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.RWO.UI.Setting
{
    public partial class PackingMethodListForm : ListForm 
    {
        public PackingMethodListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
        }
        public override void DataBind()
        {
            base.DataBind();
            //this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            this.AllowGridEdit = true;
            this.AllowAddRow = true;
            this.RowChangeAutoSave = false;
        }
    }
}