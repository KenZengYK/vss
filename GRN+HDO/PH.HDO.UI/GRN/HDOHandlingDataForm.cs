using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.Platform.BO;
using System.Linq;
using PH.Platform.UI.CS.DataQuery;

namespace PH.HDO.UI.GRN
{
    public partial class HDOHandlingDataForm : ListForm
    {
        HDODataContext Context = ContextBuilder.CreateContext<HDODataContext>();
        public HDOHandlingDataForm()
        {
            InitializeComponent();
            this.DataContext = Context;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.HDO.BO.HDOHandling);
            param.WarnRecord = 1000;
            this.StartEnquiry(param);
        }


        protected override void OnClickFind()
        {
          
           List<string> CustDeclaList = new List<string>();
           List<string> AHDONoList = new List<string>();

             HDOHandlingQueryForm frm = new HDOHandlingQueryForm();
            
                if (frm.ShowDialog() == DialogResult.OK)
                {

                    CustDeclaList = frm.CustDeclaList;
                    AHDONoList = frm.AHDONoList;
             
                    List<HDOHandling> DataList = new List<HDOHandling>();
                    List<HDOHandling> AllData = new List<HDOHandling>();
                    foreach (string ACustDeclarationNo  in CustDeclaList) 
                    {
                        DataList = Context.HDOHandlings.Where(dr => (CustDeclaList.Count == 0 || dr.CustDeclarationNo.Contains(ACustDeclarationNo))).ToList<HDOHandling>();
                        AllData.AddRange(DataList);
                    }

                    foreach (string AHDONo in AHDONoList)
                    {
                        DataList = Context.HDOHandlings.Where(dr => (AHDONoList.Count == 0 || dr.HDONo.Contains(AHDONo))).ToList<HDOHandling>();
                        AllData.AddRange(DataList);
                    }



                    this.BindingSource.DataSource = AllData.Distinct();
                }
            
        }
        
    }
}