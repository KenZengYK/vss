using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections;
using PH.FabricInspection.BO;
using System.Linq;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI
{
    public partial class FrmParameterTypeSelect : DevExpress.XtraEditors.XtraForm
    {
        PH.FabricInspection.BO.Fabric_Sys_Parameter[] tempIQC01s = null;
        private PH.FabricInspection.BO.FabricInspectionDataContext context;
        public string selectedValue = "";
        public FrmParameterTypeSelect(PH.FabricInspection.BO.FabricInspectionDataContext paramContext)
        {
            InitializeComponent();
            //‘⁄¥À‘O÷√DataSource∫Õcontext°£
            context = paramContext;
            //context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();

            LoadAllData();
        }

        private void LoadAllData()
        {
            try
            {
                //freddy -- 2009-03-31 for convert to PlatForm2
                //var tempData = from p in context.Fabric_Sys_Parameters
                //               where p.Parameter_Type.ToUpper().StartsWith("DEFE")
                //         select p;
                //tempIQC01s = tempData.ToArray();

                Fabric_Sys_ParameterList fabric_Sys_ParameterList = new Fabric_Sys_ParameterList();
                tempIQC01s = fabric_Sys_ParameterList.GetFabric_Sys_ParameterListWith("DEFE").ToArray();
                                  
                this.bsParameterType.DataSource = tempIQC01s;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load Parameter Type \n" + ex.Message);
            }

        }

        public static string ShowParameterTypeSelect(PH.FabricInspection.BO.FabricInspectionDataContext context)
        {
           
            try
            {
                FrmParameterTypeSelect frmParameterType = new FrmParameterTypeSelect(context);
                DialogResult result = frmParameterType.ShowDialog();
                return frmParameterType.selectedValue;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the ParameterTypeSelect form  \n" + ex.Message);
            }
            return "";
        }

        private void sbSelect_Click(object sender, EventArgs e)
        {
             if (this.bsParameterType.Count <= 0)
            {
                MessageBox.Show("No Company exists!");
                return;
            }
            
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            
            try
            {
                gridView2.ClearGrouping();
                if (tempIQC01s != null)
                {
                    if ((tempIQC01s.Length > 0) && (bsParameterType.Position >= 0) && (bsParameterType.Position < tempIQC01s.Length))
                    {
                        this.
                        selectedValue = tempIQC01s[bsParameterType.Position].Parameter_Key;
                        this.DialogResult = DialogResult.OK;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when select all ParameterType from db \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }
            
        }

        private void sbCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;

        }
    }


}