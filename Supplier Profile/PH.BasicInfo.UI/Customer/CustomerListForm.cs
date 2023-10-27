﻿/*    
*  
* Copyright (c) 2009 PeiHeng   
*  
* CreateDate: 2009/12/23 09:08:47
* $Archive: /PH/PH.BasicInfo/PH.BasicInfo.UI/CustomerListForm.cs $   
* $Author: Admin $  
* $Date: 2009/12/23 09:08:47 $   
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
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI 
{
     public partial class CustomerListForm : PH.Platform.UI.CS.UI2.ListForm
     {
          public CustomerListForm()
          {
               InitializeComponent();
          }

          public override void DataBind()  
          {
              CustomerList bussinessObj =new CustomerList();
              this.DataContext = bussinessObj.CurrentDataContext;  
              this.BindingSource.DataSource = bussinessObj.GetAllData();

              this.EditorTypeName = typeof(CustomerDetailForm).FullName;
          }

     }
}

