using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.IO;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;
using System.Net.Mail;

namespace PH.POPC.UI.Notify
{
    public partial class NotifyForm : DevExpress.XtraEditors.XtraForm
    {
        //public NotifyForm(List<PH.POPC.BO.POChangesMonitor> purList)
        //{
        //    InitializeComponent();
        //    _purList = purList;
        //    //this.m_pText.Text = body;
        //    InitValue();
        //}
        public NotifyForm(PH.POPC.BO.PONotify notify)
        {
            InitializeComponent();
            _notify = notify;
            //this.m_pText.Text = body;
            InitValue();
        }

        PH.POPC.BO.PONotify _notify;
        //List<PH.POPC.BO.POChangesMonitor> _purList;
        //ToolStrip m_pAttachToobar;
        List<PH.POPC.BO.EmailAddress> _eas;
        string _body;
        private void InitValue()
        {
            #region UI

            ImageList m_pAttachments_ImgList = new ImageList();
            m_pAttachments_ImgList.Images.Add(PH.POPC.UI.Resources.ResManager.GetIcon("attachment.ico"));
            m_pAttachments.SmallImageList = m_pAttachments_ImgList;


            //m_pAttachToobar = new ToolStrip();
            //m_pAttachToobar.Size = new Size(60, 25);
            //m_pAttachToobar.Location = new Point(480, 108);
            //m_pAttachToobar.Dock = DockStyle.None;
            //m_pAttachToobar.AutoSize = false;
            //m_pAttachToobar.GripStyle = ToolStripGripStyle.Hidden;
            //m_pAttachToobar.BackColor = this.BackColor;
            //m_pAttachToobar.Renderer = new PH.POPC.UI.Notify.ToolBarRendererEx();
            //m_pAttachToobar.ItemClicked += new ToolStripItemClickedEventHandler(m_pAttachToobar_ItemClicked);

            ////
            //// Add button
            //ToolStripButton button_Add = new ToolStripButton();
            //button_Add.Image = PH.POPC.UI.Resources.ResManager.GetIcon("add.ico").ToBitmap();
            //button_Add.Tag = "add";
            //button_Add.ToolTipText = "Add";
            //m_pAttachToobar.Items.Add(button_Add);
            //// Delete button
            //ToolStripButton button_Delete = new ToolStripButton();
            //button_Delete.Enabled = false;
            //button_Delete.Image = PH.POPC.UI.Resources.ResManager.GetIcon("delete.ico").ToBitmap();
            //button_Delete.Tag = "delete";
            //button_Delete.ToolTipText = "Delete";
            //m_pAttachToobar.Items.Add(button_Delete);

            //this.Controls.Add(m_pAttachToobar);
            #endregion

            #region Auto fill up email

            PH.POPC.BO.POEmailList emaillist = new PH.POPC.BO.POEmailList();
            string tos = "";
            string ccs = "";

            if (!string.IsNullOrEmpty(_notify.ToEmail))
                tos = _notify.ToEmail;
            else
            {
                if (_notify.IsInternal ?? false)
                {
                    #region Internal

                    switch (_notify.POClassification)
                    {
                        case PH.POPC.BO.POClassification.Help:
                            break;
                        case PH.POPC.BO.POClassification.Broadcast:
                            var bb = emaillist.GetPHUsers("", "", "", "");
                            foreach (var a in bb)
                            {
                                tos += string.Format("{0}, ", a.Email);
                            }
                            break;
                        case PH.POPC.BO.POClassification.Division:
                            var dd = emaillist.GetPHUsers(_notify.Division, "", "", "");
                            foreach (var a in dd)
                            {
                                tos += string.Format("{0}, ", a.Email);
                            }
                            break;
                        default:
                            break;
                    }
                    #endregion
                }
            }


            if (!string.IsNullOrEmpty(_notify.CcEmail))
                ccs = _notify.CcEmail;
            else
            {
                if (!(_notify.IsInternal ?? false))
                {
                    #region External
                    //division
                    var dd = emaillist.GetPHUsers(_notify.Division, "", "", "");
                    foreach (var a in dd)
                    {
                        ccs += string.Format("{0}, ", a.Email);
                    }

                    if (!string.IsNullOrEmpty(_notify.Supplier)) //supplier
                    {
                        var d = emaillist.GetEmailByName(_notify.Supplier);
                        ccs += string.Format("{0}, ", d.Email);
                    }
                    else if (!string.IsNullOrEmpty(_notify.SubContractor)) //SubContractor
                    {
                        var d = emaillist.GetEmailByName(_notify.SubContractor);
                        ccs += string.Format("{0}, ", d.Email);
                    }

                    #endregion

                }
            }

            #region No use

            //if (_notify.IsInternal ?? false)
            //{
            //    #region Internal

            //    switch (_notify.POClassification)
            //    {
            //        case PH.POPC.BO.POClassification.Help:
            //            break;
            //        case PH.POPC.BO.POClassification.Broadcast:
            //            var bb = emaillist.GetPHUsers("", "", "", "");
            //            foreach (var a in bb)
            //            {
            //                tos += string.Format("{0}, ", a.Email);
            //            }
            //            break;
            //        case PH.POPC.BO.POClassification.Division:
            //            var dd = emaillist.GetPHUsers(_notify.Division, "", "", "");
            //            foreach (var a in dd)
            //            {
            //                tos += string.Format("{0}, ", a.Email);
            //            }
            //            break;
            //        default:
            //            break;
            //    }
            //    #endregion
            //}
            //else
            //{
            //    #region External
            //    //division
            //    var dd = emaillist.GetPHUsers(_notify.Division, "", "", "");
            //    foreach (var a in dd)
            //    {
            //        ccs += string.Format("{0}, ", a.Email);
            //    }

            //    if (!string.IsNullOrEmpty(_notify.Supplier)) //supplier
            //    {
            //        var d = emaillist.GetEmail(_notify.Supplier);
            //        ccs += string.Format("{0}, ", d.Email);
            //    }
            //    else if (!string.IsNullOrEmpty(_notify.SubContractor)) //SubContractor
            //    {
            //        var d = emaillist.GetEmail(_notify.SubContractor);
            //        ccs += string.Format("{0}, ", d.Email);
            //    }

            //    #endregion
            //}
            #endregion

            this.ToEditor.Text = tos;
            this.CcEditor.Text = ccs;

            #endregion

            #region Mail Address

            #region Table

            DataTable _dataTable = new DataTable();
            DataColumn col;
            DataRow row;

            col = new DataColumn();
            col.ColumnName = "EMail";
            col.DataType = System.Type.GetType("System.String");
            _dataTable.Columns.Add(col);
            #endregion

            #region Get Emails from POEmail Table
            if (_notify.IsInternal ?? false)
            {
                var es = emaillist.GetUsersByCategory(PH.POPC.BO.UserCategory.PH);
                foreach (var a in es)
                {
                    row = _dataTable.NewRow();
                    row["EMail"] = a.Email;
                    _dataTable.Rows.Add(row);
                }
            }
            else
            {
                var es = emaillist.GetAllData();
                foreach (var a in es)
                {
                    row = _dataTable.NewRow();
                    row["EMail"] = a.Email;
                    _dataTable.Rows.Add(row);
                }
            }
            #endregion

            #region no use

            //PH.Platform.AuthMgr.BO.AuthMgrDataContext m_Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
            //var aa = from a in m_Context.Auth_User
            //         where (a.Email != null && a.Email != "") && (a.UserName != null && a.UserName != "")
            //         && a.Email.ToLower().EndsWith("@phgmt.com.hk") && !(a.Expired ?? false)
            //         orderby a.UserName
            //         select a;

            ////_eas = new List<PH.POPC.BO.EmailAddress>();
            //foreach (var a in aa)
            //{
            //    row = _dataTable.NewRow();
            //    row["EMail"] = a.Email;
            //    _dataTable.Rows.Add(row);

            //    //    PH.POPC.BO.EmailAddress ea = new PH.POPC.BO.EmailAddress();
            //    //    ea.UserID = a.UserID;
            //    //    ea.UserName = a.UserName;
            //    //    ea.EMail = a.Email;
            //    //    _eas.Add(ea);

            //    //    ToPHEmailEditor.Properties.Items.Add(ea, CheckState.Unchecked, true);
            //    //    CCEmailEditor.Properties.Items.Add(ea, CheckState.Unchecked, true);
            //}

            ////supplier
            ////PH.BasicInfo.BO.SupplierProfileList suppList = new PH.BasicInfo.BO.SupplierProfileList();
            ////var dd = from a in suppList.CurrentDataContext.SupplierProfiles
            ////         where (a.EMail != null && a.EMail != "") //&& (a.AttnPerson != null && a.AttnPerson != "")
            ////         orderby a.ERPSupplier
            ////         select a;
            ////foreach (var d in dd)
            ////{
            ////    //if (string.IsNullOrEmpty(d.DataName) || string.IsNullOrEmpty(d.Description)) continue;

            ////    PH.POPC.BO.EmailAddress ea = new PH.POPC.BO.EmailAddress();
            ////    ea.UserID = d.AttnPerson;
            ////    ea.UserName = d.ERPSupplier;
            ////    ea.EMail = d.EMail;
            ////    _eas.Add(ea);

            ////    ToSuppEmailEditor.Properties.Items.Add(ea, CheckState.Unchecked, true);
            ////}

            //PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            //var dd = list.GetDataDictionary("PH.Supplier.Email");
            //foreach (var d in dd)
            //{
            //    if (string.IsNullOrEmpty(d.DataName) || string.IsNullOrEmpty(d.Description)) continue;

            //    row = _dataTable.NewRow();
            //    row["EMail"] = d.Description;
            //    _dataTable.Rows.Add(row);

            //    //PH.POPC.BO.EmailAddress ea = new PH.POPC.BO.EmailAddress();
            //    //ea.UserID = d.DataCode;
            //    //ea.UserName = d.DataName;
            //    //ea.EMail = d.Description;
            //    //_eas.Add(ea);

            //    //ToSuppEmailEditor.Properties.Items.Add(ea, CheckState.Unchecked, true);
            //}
            #endregion

            this.ToEditor.DataSource = _dataTable;
            this.ToEditor.DisplayMember = "EMail";

            this.CcEditor.DataSource = _dataTable;
            this.CcEditor.DisplayMember = "EMail";

            #endregion

            #region Body/Subject

            this.editSubject.Properties.ReadOnly = true;
            this.editSubject.Text = _notify.Subject;

            this._body = CreateBody();
            this.BodyEditor.DocumentText = _body;

            #endregion
        }

        private string CreateBody()
        {
            //string note = "";
            //foreach (var p in this._purList)
            //{
            //    note += p.Notepad + "\r\n";
            //}

            //if (!string.IsNullOrEmpty(note))
            //    note = note.Replace("\r\n", "<br />");
            //else note = "<br />";

            //string sender = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
            string emailContent = "<html>";

            #region Style

            emailContent += "<style>";
            emailContent += "html{word-wrap:break-word;}";
            emailContent += "body{font-size:14px;font-family:arial,verdana,sans-serif;line-height:1.666;padding:8px 10px;margin:0;}";
            emailContent += "pre {";
            emailContent += "white-space: pre-wrap; ";
            emailContent += "white-space: -moz-pre-wrap; ";
            emailContent += "white-space: -pre-wrap;";
            emailContent += "white-space: -o-pre-wrap;";
            emailContent += "word-wrap: break-word;";
            emailContent += "}";
            emailContent += "</style>";

            #endregion

            emailContent += "<body>";
            emailContent += "<div style=\"FONT-FAMILY: 'Verdana','sans-serif';FONT-SIZE: 8pt;\">";


            //this.editSubject.Text = p.Subject;

            //string sender = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
            emailContent += "<br />Sender:&nbsp;&nbsp;" + _notify.Sender;
            emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Date:&nbsp;&nbsp;" + string.Format("{0:yyyy/MM/dd}", _notify.DT);
            emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Amendment#:&nbsp;&nbsp;" + string.Format("{0}", _notify.Amendment);//+ "<br /><br />";

            emailContent += "<br />Classification:&nbsp;&nbsp;" + _notify.ClassificationDesc;
            if (_notify.IsInternal ?? false)
            {
                if (!string.IsNullOrEmpty(_notify.Customer))
                    emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Customer:&nbsp;&nbsp;" + _notify.Customer;
                else if (!string.IsNullOrEmpty(_notify.Supplier))
                    emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Supplier:&nbsp;&nbsp;" + _notify.Supplier;
                else if (!string.IsNullOrEmpty(_notify.SubContractor))
                    emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Sub-Contractor:&nbsp;&nbsp;" + _notify.SubContractor;
            }
            else
            {
                if (!string.IsNullOrEmpty(_notify.Supplier))
                    emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Supplier:&nbsp;&nbsp;" + _notify.Supplier;
                else if (!string.IsNullOrEmpty(_notify.SubContractor))
                    emailContent += "&nbsp;&nbsp;&nbsp;&nbsp; Sub-Contractor:&nbsp;&nbsp;" + _notify.SubContractor;
            }

            emailContent += "<br />Happening event on:&nbsp;&nbsp;" + _notify.HappeningEvent;
            emailContent += "<br /><br />"; ;

            //Classification: Broadcast  Customer: ETAA
            //Related Style#:       Range: 
            //Happening event on: Aug  

            string note = _notify.Notepad + "\r\n";

            if (!string.IsNullOrEmpty(note))
                note = note.Replace("\r\n", "<br />");
            else note = "<br />";

            //notepad
            emailContent += "<b>Notepad: &nbsp;-</b><br /><br />";
            emailContent += note + "<br />";
            emailContent += "<br /><b>POPC Information:&nbsp;-</b><br /><br />";

            emailContent += CreateHtmlTable();

            #region Table - 1 no use

            //emailContent += "<table border=\"\">";

            //#region Row 1

            //emailContent += "<tr valign=\"top\">";

            //bool isBlue = true;
            //emailContent += AddTableCell("Supp;Code", isBlue, 48);
            //emailContent += AddTableCell("PO No.", isBlue, 64);
            //emailContent += AddTableCell("PH;Project Nr.", isBlue, 90);
            //emailContent += AddTableCell("Supp;Item Ref.", isBlue, 118);
            //emailContent += AddTableCell("Size", isBlue, 48);
            //emailContent += AddTableCell("Cup", isBlue, 48);
            //emailContent += AddTableCell("PH;Item;Color;Code", isBlue, 48);
            //emailContent += AddTableCell("Supp;Item;Color;Shade", isBlue, 78);
            //emailContent += AddTableCell("PO Qty", isBlue, 59);
            //emailContent += AddTableCell("PO Bal;Qty", isBlue, 59);
            //emailContent += AddTableCell("PO;Unit", isBlue, 32);
            //emailContent += AddTableCell("Initial Req;Del. Date;(for ref)", isBlue, 87);
            //emailContent += AddTableCell("PO;Delivery;Date", isBlue, 87);

            //emailContent += "</tr>";
            //#endregion

            //#region Row 2

            //emailContent += "<tr valign=\"top\">";

            //isBlue = false;

            //emailContent += AddTableCell(_pur.Supplier, isBlue);
            //emailContent += AddTableCell(_pur.PONO, isBlue);
            //emailContent += AddTableCell(_pur.ProjectNo, isBlue);
            //emailContent += AddTableCell(_pur.SupplierReference, isBlue);
            //emailContent += AddTableCell(_pur.SizeDesc, isBlue);
            //emailContent += AddTableCell(_pur.FitDesc, isBlue);
            //emailContent += AddTableCell(_pur.ColorCode, isBlue);
            //emailContent += AddTableCell(_pur.ColorShade, isBlue);
            //emailContent += AddTableCell(string.Format("{0:#,0.##}", _pur.SupplierPOQty), isBlue);
            //emailContent += AddTableCell(string.Format("{0:#,0.##}", _pur.SupplierOutstandingQty), isBlue);
            //emailContent += AddTableCell(_pur.SupplierUOM, isBlue);
            //emailContent += AddTableCell(string.Format("{0:yyyy/MM/dd}", _pur.POReqDeliveryDate), isBlue);
            //emailContent += AddTableCell(string.Format("{0:yyyy/MM/dd}", _pur.PODeliveryDate), isBlue);

            //emailContent += "</tr>";
            //#endregion

            //emailContent += " </table>";

            #endregion

            #region table - 2 no use

            //emailContent += "<TABLE style=\"BORDER-COLLAPSE: collapse; MARGIN-LEFT: 0.4pt; mso-yfti-tbllook: 191; mso-padding-alt: 0cm 0cm 0cm 0cm\" class=MsoNormalTable border=0 cellSpacing=0 cellPadding=0>";
            //emailContent += "<TBODY>";
            //emailContent += "<TR style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\">";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt\" vAlign=top width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN class=SpellE><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Supp</SPAN></SPAN><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Code<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 47.8pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=64>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PO No.<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 67.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=90>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PH<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Project Nr.<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 88.15pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=118>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN class=SpellE><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Supp</SPAN></SPAN><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Item Ref.<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Size<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Cup<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PH<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Item<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Color<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Code<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 58.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=78>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN class=SpellE><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Supp</SPAN></SPAN><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Item<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Color<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Shade<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 44.45pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=59>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PO <SPAN class=SpellE>Qty</SPAN><o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 44.45pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=59>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PO <SPAN class=SpellE>Bal</SPAN><o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN class=SpellE><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Qty</SPAN></SPAN><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 23.85pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=32>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PO<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Unit<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 64.95pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=87>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Initial <SPAN class=SpellE>Req</SPAN><o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Del. Date<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>(for ref)<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 65.15pt; PADDING-RIGHT: 0cm; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt\" vAlign=top width=87>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PO<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Delivery<o:p></o:p></SPAN></P>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: blue; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>Date<o:p></o:p></SPAN></P></TD></TR>";
            //emailContent += "<TR style=\"mso-yfti-irow: 1; mso-yfti-lastrow: yes\">";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PHRB<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 47.8pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=64>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>P097819<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 67.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=90>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>ESSE-798<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 88.15pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=118>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>M0176P<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><SPAN style=\"mso-spacerun: yes\">&nbsp;</SPAN><o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><SPAN style=\"mso-spacerun: yes\">&nbsp;</SPAN><o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 35.75pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=48>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>R12<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 58.65pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=78>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US><SPAN style=\"mso-spacerun: yes\">&nbsp;</SPAN><o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 44.45pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=59>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>531<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 44.45pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=59>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>531<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 23.85pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=32>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>PC<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 64.95pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=87>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>2012/03/10<o:p></o:p></SPAN></P></TD>";
            //emailContent += "<TD style=\"BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; WIDTH: 65.15pt; PADDING-RIGHT: 0cm; BORDER-TOP: medium none; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .75pt; mso-border-left-alt: solid black .75pt; mso-border-top-alt: solid black .75pt\" width=87>";
            //emailContent += "<P style=\"PAGE-BREAK-AFTER: avoid; TEXT-ALIGN: center; MARGIN: 0cm 0.75pt 0pt; mso-layout-grid-align: none; mso-pagination: lines-together\" class=MsoNormal align=center><SPAN style=\"FONT-FAMILY: 'Verdana','sans-serif'; COLOR: black; FONT-SIZE: 8pt; mso-bidi-font-family: Verdana; mso-font-kerning: 0pt\" lang=EN-US>2012/03/10<o:p></o:p></SPAN></P></TD></TR></TBODY></TABLE>";

            #endregion


            emailContent += "<br><font size=\"1\" face=\"Verdana\">&nbsp;</font>";
            //emailContent += "<br><font size=\"1\" face=\"Verdana\">---------------------------- POPC Notify (Develop by "
            //    + "<a href=\"mailto:PeterZhou@phgmt.com.hk\">Peter Zhou</a>"
            // + ")----------------------------</font>";

            emailContent += "<br />";
            emailContent += "</div>";
            emailContent += "</body></html>";

            return emailContent;
        }
        private string AddTableCell(string value, bool isBlue)
        {
            return AddTableCell(value, isBlue, 0);
        }
        private string AddTableCell(string value, bool isBlue, int width)
        {
            if (string.IsNullOrEmpty(value)) value = "&nbsp";
            string[] ss = value.Split(new string[] { ";" }, StringSplitOptions.RemoveEmptyEntries);

            string s = "";
            if (width == 0)
                s += string.Format("<td>");
            else
                s += string.Format("<td  style='width:{0}'>", width);

            s += "<div align=\"center\">";

            for (int i = 0; i < ss.Length; i++)
            {
                if (i > 0)
                    s += "<br>";
                s += string.Format("<font size=\"1\" {1} face=\"Verdana\">{0}</font>", ss[i], isBlue ? "color=\"blue\"" : "");
            }

            s += "</div></td>";
            return s;
        }

        public string CreateHtmlTable()
        {
            int[] ii = new int[] { 48, 64, 90, 118, 48, 48, 48, 78, 59, 59, 32, 87, 87, 87 };//14

            int ttl = 1;
            foreach (int item in ii)
            {
                ttl += item + 1;
            }

            string resultStr = @"<table style=' border-style:none ;  border-color:Black; border-width:1px; border-collapse :collapse ; font-size:10px; text-align:center; word-wrap: break-word; ' width={0}>
            <tr style='color:blue'>
                <td style=' border:solid  Black 1px;' width={1}>
                     Supp<br>Code</td>
                <td  style=' border:solid  Black 1px;' width={2}>
                    	PO No.	</td>
                <td  style=' border:solid  Black 1px;' width={3}>
                   PH<br>Project No.	</td>
                <td  style=' border:solid  Black 1px;' width={4}>
                   Supp<br>Item Ref.	</td>
                <td  style=' border:solid  Black 1px;' width={5}>
                   Size	</td>
                <td  style=' border:solid  Black 1px;' width={6}>
                   Cup </td>
                <td  style=' border:solid  Black 1px;' width={7}>
                   	PH<br>Item<br>Color<br>Code</td>
                <td  style=' border:solid  Black 1px;' width={8}>
                    Supp<br>Item<br>Color<br>Shade</td>
                <td  style=' border:solid  Black 1px;' width={9}>
                   	PO Qty	</td>
                <td  style=' border:solid  Black 1px;' width={10}>
                  PO Bal<br>Qty	</td>
                <td  style=' border:solid  Black 1px;' width={11}>
                   PO<br>Unit</td>
                <td  style=' border:solid  Black 1px;' width={12}>                    
                    PO<br>Delivery<br>Date</td>

                <td  style=' border:solid  Black 1px;' width={13}>
                   	Incoterms</td>
                <td  style=' border:solid  Black 1px;' width={14}>
                   	Transit<br>Mode<br></td>  

            </tr>";

            resultStr = string.Format(resultStr, ttl, ii[0], ii[1], ii[2], ii[3], ii[4], ii[5], ii[6], ii[7], ii[8], ii[9], ii[10], ii[11], ii[12], ii[13]);

            string newRow = "";
            foreach (var pn in this._notify.PONotifyPOs)
            {
                //PH.POPC.BO.POChangesMonitor p = pn.Monitor;
                PH.POPC.BO.POColorSizeDetail p = pn.Monitor;
                if (p == null) continue;

                string s = @"<tr style='background-color:white';>" +
                                   @"<td style=' border:solid  Black 1px;'>
                                       {0}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {1}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {2}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {3}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {4}	</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {5} </td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {6}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {7}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {8}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {9}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {10}</td>
                                    <td  style=' border:solid  Black 1px;'>
                                       {11}</td>
                                    <td  style=' border:solid  Black 1px;'>                    
                                       {12}</td>
                                    <td  style=' border:solid  Black 1px;'>                    
                                       {13}</td>
                                </tr>";

                newRow += string.Format(s,
                    p.Supplier,
                    p.PONO,
                    p.ProjectNO,
                    p.SupplierReference,
                    p.SizeDesc,
                    p.FitDesc,
                    p.ColorCode,
                    p.ColorShade,
                    string.Format("{0:#,0.##}", p.SupplierPOQty),
                    string.Format("{0:#,0.##}", p.SupplierOutstandingQty),
                    p.SupplierUOM,
                    //string.Format("{0:yyyy/MM/dd}", p.POReqDeliveryDate),
                    string.Format("{0:yyyy/MM/dd}", p.PODeliveryDate),
                    p.Incoterms,// string.Format("{0:yyyy/MM/dd}", ),// p.RevisedDeliveryDate
                    p.TransitModePO
                    //p.TransitModeChangedDesc
                    );

            }
            resultStr += newRow;
            resultStr += @"</table>";

            return resultStr;
        }

        private void m_pAttachments_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.btnRemove.Enabled = m_pAttachments.SelectedItems.Count > 0;
        }

        private string GetEmailAddreess(DevExpress.XtraEditors.CheckedComboBoxEdit editor)
        {
            string mails = "";
            string names = (string)editor.EditValue;
            string[] ss = names.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string s in ss)
            {
                PH.POPC.BO.EmailAddress ea = _eas.Find(delegate(PH.POPC.BO.EmailAddress ea1)
                {
                    return ea1.UserName == s.TrimEnd();
                });
                if (ea != null)
                    mails += string.Format("{0};{1},", ea.EMail, ea.UserName);
            }
            return mails;
        }
        private void btnSend_Click(object sender, EventArgs e)
        {
            string to = this.ToEditor.Text.Trim();// GetEmailAddreess(ToPHEmailEditor);// this.editTo.Text;
            //to += "," + GetEmailAddreess(ToSuppEmailEditor);// this.editTo.Text;
            string cc = this.CcEditor.Text.Trim();// GetEmailAddreess(CCEmailEditor); //this.editCC.Text;
            string subject = this.editSubject.Text;
            string body = _body;// this.BodyEditor.DocumentText;
            if (string.IsNullOrEmpty(to))
            {
                MessageBox.Show("please select receiver(To)!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.ToEditor.Focus();
                return;
            }
            if (string.IsNullOrEmpty(subject))
            {
                MessageBox.Show("please enter subject!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.editSubject.Focus();
                return;
            }
            if (string.IsNullOrEmpty(body))
            {
                MessageBox.Show("please input body content!", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //this.editSubject.Focus();
                return;
            }

            string[] fs = null;
            if (m_pAttachments.Items.Count > 0)
            {
                fs = new string[m_pAttachments.Items.Count];
                int i = 0;
                foreach (ListViewItem item in m_pAttachments.Items)
                {
                    fs[i] = item.Tag.ToString();
                    ++i;
                }
            }

            EmailHelper helper = new EmailHelper();

            helper.EmailFrom = "PH_POPC@phgmt.com.hk";
            helper.EmailFromNe = "PH_POPC";
            helper.UserName = "PH_POPC";
            ////helper.EmailFrom = "RWOAdministrator@phgmt.com.hk";
            ////helper.EmailFromNe = "RWO";
            ////helper.UserName = "RWOAdministrator";

            helper.Password = "654321";
            helper.Host = "svphhk01.phgmt.com.hk";



            //helper.EmailFrom = "iqcresponseweb@phgmt.com.hk";
            //helper.EmailFromNe = "iqcresponseweb";
            //helper.UserName = "iqcresponseweb";
            //////helper.EmailFrom = "RWOAdministrator@phgmt.com.hk";
            //////helper.EmailFromNe = "RWO";
            //////helper.UserName = "RWOAdministrator";

            //helper.Password = "iqcresponseweb1";
            //helper.Host = "svphhk01.phgmt.com.hk";


            helper.EmailTo = to;
            helper.EmailCC = cc;
            helper.Subject = subject;
            helper.Body = body;
            helper.Files = fs;
            //helper.SendEmail();

            this.Visible = false;
            try
            {
                SendingEmailForm frm = new SendingEmailForm(helper);
                DialogResult dr = frm.ShowDialog();
                if (dr == DialogResult.Cancel)
                {
                    helper.CancelSendEmail();
                    this.Visible = true;
                }
                else if (dr == DialogResult.OK)
                {
                    SaveToCc(to, cc);
                    MessageBox.Show("Send success!", "Notify", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.DialogResult = DialogResult.OK;
                }
            }
            catch (Exception)
            {
                this.Visible = true;
            }
            //SendEmail(to, cc, subject, body, fs);
        }
        private void SaveToCc(string to, string cc)
        {
            if (_notify.CurrentDataContext == null) return;
            _notify.ToEmail = to;
            _notify.CcEmail = cc;

            try
            {
                _notify.CurrentDataContext.SubmitChanges();
            }
            catch
            {
            }

        }
        private void btnAdd_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                ListViewItem it = new ListViewItem(
                    Path.GetFileName(dlg.FileName) + " (" + ((double)(new FileInfo(dlg.FileName).Length / 1000)).ToString("f2") + " kb)"
                );
                it.ImageIndex = 0;
                it.Tag = dlg.FileName;
                m_pAttachments.Items.Add(it);
                SetFilesCaption();
            }
        }
        private void btnRemove_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            int j = m_pAttachments.SelectedItems.Count;
            if (j == 0) return;
            for (int i = j - 1; i >= 0; i--)
            {
                m_pAttachments.SelectedItems[i].Remove();
            }
            SetFilesCaption();
        }
        private void SetFilesCaption()
        {
            int i = m_pAttachments.Items.Count;
            gcFile.Text = string.Format("Attachment: - {0} file(s)", i);
        }

        private void label4_DoubleClick(object sender, EventArgs e)
        {
            if (MessageBox.Show("Save?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            string to = this.ToEditor.Text.Trim();
            string cc = this.CcEditor.Text.Trim();

            _notify.NotepadNo = _notify.GetCurrentNotepadNo();
            SaveToCc(to, cc); ;
        }


    }
}