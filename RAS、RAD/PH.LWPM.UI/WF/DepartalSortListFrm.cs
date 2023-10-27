using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Transactions;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.WF
{
    public partial class DepartalSortListFrm : PH.Platform.UI.CS.UI2.ListForm
    {


        private IRepository.IPublicLibrary publicLibary;
        public DepartalSortListFrm()
        {
            InitializeComponent();
            this.publicLibary = new Repository.PublicLibrary();
        }



        public override void DataBind()
        {

            RAPLQDataContext rqc = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = rqc;
            this.BindingSource.DataSource = rqc.DepartalSorts.ToList();
           

            string[] Whrere_1_Team = rqc.BaseCodes.Where(P => P.Type == "cobWhere_1_Team" || P.Type == "WFWhere_1_team").Select(S => S.Name).Distinct().ToArray();
            string[] Where_2_Team = publicLibary.getItems("WFWhere_2_class", rqc);
           
            rcbDepart.Properties.Items.AddRange(publicLibary.getItems("DPTUS", rqc));
            rcbSection.Properties.Items.AddRange(publicLibary.getItems("WorkShopNew", rqc));
            this.rcbTeam.Properties.Items.AddRange(Whrere_1_Team);
            this.rcbClass.Properties.Items.AddRange(Where_2_Team);
            base.DataBind();

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnSave.Visibility = BarItemVisibility.Never;
            this.barBtnCancel.Visibility = BarItemVisibility.Never;
        }

        public override void SaveData()
        {


            if (this.objListGridControl.FocusedView.PostEditor())
            {
                this.objListGridControl.FocusedView.UpdateCurrentRow();
                this.objListGridControl.FocusedView.CloseEditor();
                this.BindingSource.EndEdit();
            }
            else
            {
                MessageBox.Show("Sorry,can not post the changed data to bindingsource!");
                return;
            }


            //using (TransactionScope ts = new TransactionScope())
            //{
                RAPLQDataContext rqc = this.DataContext as RAPLQDataContext;


                foreach (var item in rqc.GetChangeSet().Updates)
                {
                    DepartalSort dep = item as DepartalSort;
                    IQueryable<PH.LWPM.BO.WorkForce> lst = rqc.WorkForces.Where(P => P.DeptName == dep.Deptmental_EN && P.WFWhere == dep.Section_EN
                        && P.WFWhere_1 == dep.Team_EN && P.WFWhere_2 == dep.Class_EN);
                    foreach (PH.LWPM.BO.WorkForce _item in lst)
                    {

                        if (string.IsNullOrEmpty(dep.SeqNo))
                            _item.SeqNo = null;
                        else
                          _item.SeqNo = dep.SeqNo;

                    }

                }

                rqc.SubmitChanges();

                //base.SaveData();
            //}

        }
    }
}
