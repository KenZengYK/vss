unit newcap_salesbalformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ImgList, DB, DBClient,
  StdCtrls, Buttons, ComCtrls, Mask, rxToolEdit, Spin, ExtCtrls, GridsEh,
  DBGridEh, ppParameter;

type
  Tfrmnewcap_salesbal = class(TForm)
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    TreeView1: TTreeView;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    ClientDataSet2: TClientDataSet;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ROQuery1: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel30: TppLabel;
    ppLine4: TppLine;
    ppLabel40: TppLabel;
    ppLabel50: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel60: TppLabel;
    ppLabel70: TppLabel;
    ppLine7: TppLine;
    ppLabel71: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel72: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    cust001: TppLabel;
    ppLabel22: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText3: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine14: TppLine;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGridEh1Columns5EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns16EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure show_data;
    procedure updlock(const m1: integer);
    procedure Shownostyledetailform(const m1: integer);
    procedure Shownostyledetailform1(const m1: integer);
  end;

var
  frmnewcap_salesbal: Tfrmnewcap_salesbal;

implementation

uses newcap_style_adjformu, newcap_notepadformu, mainformu,
  newcap_nostyle_wkformu, CP_ActionlogFormu;

{$R *.dfm}

procedure Tfrmnewcap_salesbal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_salesbal:=nil;
end;

procedure Tfrmnewcap_salesbal.ComboBox1Change(Sender: TObject);
var
  tn1,tn2,tn3:TTreeNode;
  fty:string;
begin
  if combobox1.text>'' then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoastyleos(:x1,:x2)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;
    }
    treeview1.Items.Clear;
    tn1:=treeview1.Items.add(nil,'ALL');
    tn1.ImageIndex:=0;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select distinct grp as cust from cust_exfty where tplant='''+fty+''' and act=1';
      open;
      first;
      while not eof do begin
        tn3:=treeview1.Items.AddChild(tn1,fieldbyname('cust').value);
        tn3.ImageIndex:=1;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct pgrp as cust from cust_exfty where tplant='''+fty+''' and act=1  and grp='''+tn3.Text+''' and exfwk>''''';
          open;
          first;
          while not eof do begin
            tn2:=treeview1.Items.AddChild(tn3,fieldbyname('cust').value);
            tn2.ImageIndex:=1;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Selected:=treeview1.Items.GetFirstNode;
  end;
end;

procedure Tfrmnewcap_salesbal.BitBtn5Click(Sender: TObject);
begin
  {
    if query1.fieldbyname('cstyle').value='1) Hvn''t Style#' then begin
      //if application.MessageBox('Confirm to writeoff the balance?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
      //end;
      if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
      frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
      if dbgrideh1.SelectedIndex=5 then frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh1.selectedindex=6 then frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh1.selectedindex=7 then frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh1.selectedindex=8 then frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh1.selectedindex=9 then frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh1.selectedindex=10 then frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh1.selectedindex=11 then frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh1.selectedindex=12 then frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh1.selectedindex=13 then frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh1.selectedindex=14 then frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh1.selectedindex=15 then frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh1.selectedindex=16 then frmnewcap_style_adj.Label4.Caption:='12';
      frmnewcap_style_adj.Caption:='aT3 for Sales Projection on Volume';
      frmnewcap_style_adj.cEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit2.Enabled:=true;
      frmnewcap_style_adj.cEdit2.Enabled:=false;
      frmnewcap_style_adj.show;
    end;
  }
  if dbgrideh1.SelectedIndex=5 then shownostyledetailform1(1)
  else if dbgrideh1.selectedindex=6 then shownostyledetailform1(2)
  else if dbgrideh1.selectedindex=7 then shownostyledetailform1(3)
  else if dbgrideh1.selectedindex=8 then shownostyledetailform1(4)
  else if dbgrideh1.selectedindex=9 then shownostyledetailform1(5)
  else if dbgrideh1.selectedindex=10 then shownostyledetailform1(6)
  else if dbgrideh1.selectedindex=11 then shownostyledetailform1(7)
  else if dbgrideh1.selectedindex=12 then shownostyledetailform1(8)
  else if dbgrideh1.selectedindex=13 then shownostyledetailform1(9)
  else if dbgrideh1.selectedindex=14 then shownostyledetailform1(10)
  else if dbgrideh1.selectedindex=15 then shownostyledetailform1(11)
  else if dbgrideh1.selectedindex=16 then shownostyledetailform1(12);
end;

procedure Tfrmnewcap_salesbal.show_data;
var
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if treeview1.Selected<>nil then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoastyleos(:x1,:x2)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updstyle_sum(:x1,:x2)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.Value;
      execute;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoaproj_at3(:x1,:x2)';
      params[0].asstring:=fty;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;

      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_proj_at3 where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          commandtext:=commandtext+' order by grp,cust,flag6';
          open;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_proj_at3 where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          commandtext:=commandtext+' order by grp,cust,flag6';
          open;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_proj_at3 where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          commandtext:=commandtext+' order by grp,cust,flag6';
          open;
        end;
      end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_salesbal.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  //show_data;
end;

procedure Tfrmnewcap_salesbal.BitBtn12Click(Sender: TObject);
begin
  //if frmnewcap_notepad=nil then frmnewcap_notepad:=tfrmnewcap_notepad.create(nil);
  //frmnewcap_notepad.show;
  if frmcarte_requestaction=nil then frmcarte_requestaction:=tfrmcarte_requestaction.create(nil);
  frmcarte_requestaction.show;
end;

procedure Tfrmnewcap_salesbal.BitBtn13Click(Sender: TObject);
var
  slock:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select slock from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if pos(query1.fieldbyname('grp').value,fieldbyname('slock').value)>0 then slock:='1' else slock:='';
  end;
  if slock='1' then begin
    if application.MessageBox('Lock this month?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      if dbgrideh1.Visible=true then begin
        if dbgrideh1.SelectedIndex=5 then updlock(1)//frmnewcap_style_adj.Label4.caption:='1'
        else if dbgrideh1.selectedindex=6 then updlock(2)//frmnewcap_style_adj.Label4.Caption:='2'
        else if dbgrideh1.selectedindex=7 then updlock(3)//frmnewcap_style_adj.Label4.Caption:='3'
        else if dbgrideh1.selectedindex=8 then updlock(4)//frmnewcap_style_adj.Label4.Caption:='4'
        else if dbgrideh1.selectedindex=9 then updlock(5)//frmnewcap_style_adj.Label4.Caption:='5'
        else if dbgrideh1.selectedindex=10 then updlock(6)//frmnewcap_style_adj.Label4.Caption:='6'
        else if dbgrideh1.selectedindex=11 then updlock(7)//frmnewcap_style_adj.Label4.Caption:='7'
        else if dbgrideh1.selectedindex=12 then updlock(8)//frmnewcap_style_adj.Label4.Caption:='8'
        else if dbgrideh1.selectedindex=13 then updlock(9)//frmnewcap_style_adj.Label4.Caption:='9'
        else if dbgrideh1.selectedindex=14 then updlock(10)//frmnewcap_style_adj.Label4.Caption:='10'
        else if dbgrideh1.selectedindex=15 then updlock(11)//frmnewcap_style_adj.Label4.Caption:='11'
        else if dbgrideh1.selectedindex=16 then updlock(12);//frmnewcap_style_adj.Label4.Caption:='12';
      end;
    end;
  end else showmessage('You have not right!');
end;

procedure Tfrmnewcap_salesbal.updlock(const m1: integer);
var
  strupd:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    if m1=1 then commandtext:='select lck01 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=2 then commandtext:='select lck02 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=3 then commandtext:='select lck03 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=4 then commandtext:='select lck04 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=5 then commandtext:='select lck05 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=6 then commandtext:='select lck06 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=7 then commandtext:='select lck07 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=8 then commandtext:='select lck08 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=9 then commandtext:='select lck09 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=10 then commandtext:='select lck10 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=11 then commandtext:='select lck11 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=12 then commandtext:='select lck12 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asstring:=query1.fieldbyname('cust').value;
    open;
    if fieldbyname('lck').value=true then showmessage('This month already is locked!')
    else begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        if m1=1 then commandtext:='update tbl_cap_oa_lock set lck01=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=2 then commandtext:='update tbl_cap_oa_lock set lck02=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=3 then commandtext:='update tbl_cap_oa_lock set lck03=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=4 then commandtext:='update tbl_cap_oa_lock set lck04=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=5 then commandtext:='update tbl_cap_oa_lock set lck05=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=6 then commandtext:='update tbl_cap_oa_lock set lck06=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=7 then commandtext:='update tbl_cap_oa_lock set lck07=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=8 then commandtext:='update tbl_cap_oa_lock set lck08=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=9 then commandtext:='update tbl_cap_oa_lock set lck09=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=10 then commandtext:='update tbl_cap_oa_lock set lck10=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=11 then commandtext:='update tbl_cap_oa_lock set lck11=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=12 then commandtext:='update tbl_cap_oa_lock set lck12=1 where tplant=:x1 and yr=:x2 and cust=:x3';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asstring:=query1.fieldbyname('cust').value;
        execute;
      end;
      }
        if m1=1 then strupd:='update tbl_cap_oa_lock set lck01=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=2 then strupd:='update tbl_cap_oa_lock set lck02=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=3 then strupd:='update tbl_cap_oa_lock set lck03=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=4 then strupd:='update tbl_cap_oa_lock set lck04=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=5 then strupd:='update tbl_cap_oa_lock set lck05=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=6 then strupd:='update tbl_cap_oa_lock set lck06=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=7 then strupd:='update tbl_cap_oa_lock set lck07=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=8 then strupd:='update tbl_cap_oa_lock set lck08=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=9 then strupd:='update tbl_cap_oa_lock set lck09=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=10 then strupd:='update tbl_cap_oa_lock set lck10=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=11 then strupd:='update tbl_cap_oa_lock set lck11=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=12 then strupd:='update tbl_cap_oa_lock set lck12=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+'''';
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

      showmessage('Locked data for this month!');
    end;
  end;
end;

procedure Tfrmnewcap_salesbal.FormShow(Sender: TObject);
begin
  combobox1.text:='CHINA';
  combobox1.OnChange(self);
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_date where sel=1 and tplant=''SL''';
    open;
    if not fieldbyname('stdt').isnull then begin
      dateedit1.date:=fieldbyname('stdt').value;
      edit1.text:=fieldbyname('m1').asstring;
    end else begin
      dateedit1.date:=date-1;
      edit1.text:='';
    end;
  end;

  with query2 do begin
    Close;
    Params.Clear;
    commandtext:='select r_at3 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if FieldByName('r_at3').Value=true then BitBtn5.Visible:=true
    else BitBtn5.Visible:=false;
  end;

end;

procedure Tfrmnewcap_salesbal.Query1AfterOpen(DataSet: TDataSet);
var
  lck01,lck02,lck03,lck04,lck05,lck06,lck07,lck08,lck09,lck10,lck11,lck12,fty:string;
begin
  //query1.FieldByName('e101').onchange:=querysah1change;
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck01 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck01=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck01').isnull then lck01:='' else lck01:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck02 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck02=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck02').isnull then lck02:='' else lck02:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck03 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck03=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck03').isnull then lck03:='' else lck03:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck04 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck04=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck04').isnull then lck04:='' else lck04:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck05 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck05=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck05').isnull then lck05:='' else lck05:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck06 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck06=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck06').isnull then lck06:='' else lck06:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck07 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck07=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck07').isnull then lck07:='' else lck07:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck08 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck08=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck08').isnull then lck08:='' else lck08:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck09 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck09=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck09').isnull then lck09:='' else lck09:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck10 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck10=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck10').isnull then lck10:='' else lck10:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck11 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck11=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck11').isnull then lck11:='' else lck11:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck12 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck12=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck12').isnull then lck12:='' else lck12:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1 order by m1';
    params[0].asinteger:=spinedit1.value;
    open;
    first;
    while not eof do begin
      if fieldbyname('m1').value=1 then begin
        dbgrideh1.columns[5].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Del Qty';
      end else if fieldbyname('m1').value=2 then begin
        dbgrideh1.columns[6].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Del Qty';
      end else if fieldbyname('m1').value=3 then begin
        dbgrideh1.columns[7].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Del Qty';
      end else if fieldbyname('m1').value=4 then begin
        dbgrideh1.columns[8].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Del Qty';
      end else if fieldbyname('m1').value=5 then begin
        dbgrideh1.columns[9].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Del Qty';
      end else if fieldbyname('m1').value=6 then begin
        dbgrideh1.columns[10].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Del Qty';
      end else if fieldbyname('m1').value=7 then begin
        dbgrideh1.columns[11].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Del Qty';
      end else if fieldbyname('m1').value=8 then begin
        dbgrideh1.columns[12].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Del Qty';
      end else if fieldbyname('m1').value=9 then begin
        dbgrideh1.columns[13].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Del Qty';
      end else if fieldbyname('m1').value=10 then begin
        dbgrideh1.columns[14].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Del Qty';
      end else if fieldbyname('m1').value=11 then begin
        dbgrideh1.columns[15].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Del Qty';
      end else if fieldbyname('m1').value=12 then begin
        dbgrideh1.columns[16].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Del Qty';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_salesbal.BitBtn10Click(Sender: TObject);
begin
  //
  show_data;
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns5EditButtonDown(
  Sender: TObject; TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  shownostyledetailform(1);
end;

procedure Tfrmnewcap_salesbal.Shownostyledetailform(const m1: integer);
var
  tplant:string;
begin
  screen.cursor:=crSQLWait;
  try
    if combobox1.text='THAI' then tplant:='KB' else if combobox1.text='BD' then tplant:='CL' else tplant:='SL';
    if frmnewcap_nostyle_wk=nil then frmnewcap_nostyle_wk:=tfrmnewcap_nostyle_wk.Create(nil);
    frmnewcap_nostyle_wk.ComboBox1.text:=combobox1.text;
    frmnewcap_nostyle_wk.SpinEdit1.value:=spinedit1.value;
    with frmnewcap_nostyle_wk.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+inttostr(m1);
      open;
    end;
    frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=true;
    frmnewcap_nostyle_wk.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns6EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(2);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns7EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(3);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns8EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(4);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns9EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(5);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns10EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(6);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns11EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(7);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(8);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns13EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(9);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns14EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(10);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns15EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(11);
end;

procedure Tfrmnewcap_salesbal.DBGridEh1Columns16EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(12);
end;

procedure Tfrmnewcap_salesbal.Shownostyledetailform1(const m1: integer);
var
  tplant:string;
begin
  screen.cursor:=crSQLWait;
  try
    if combobox1.text='CL' then tplant:='CL' else if combobox1.text='BD' then tplant:='CL' else tplant:='SL';
    if frmnewcap_nostyle_wk=nil then frmnewcap_nostyle_wk:=tfrmnewcap_nostyle_wk.Create(nil);
    frmnewcap_nostyle_wk.ComboBox1.text:=combobox1.text;
    frmnewcap_nostyle_wk.SpinEdit1.value:=spinedit1.value;
    frmnewcap_nostyle_wk.Label9.Caption:='BALANCING';
    with frmnewcap_nostyle_wk.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+inttostr(m1);
      open;
    end;
    frmnewcap_nostyle_wk.BitBtn4.visible:=false;
    frmnewcap_nostyle_wk.BitBtn6.visible:=true;
    frmnewcap_nostyle_wk.BitBtn7.visible:=true;
    frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=true;
    frmnewcap_nostyle_wk.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_salesbal.BitBtn1Click(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmnewcap_salesbal.ComboBox2Change(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to treeview1.Items.Count-1 do begin
    if treeview1.Items[i].Text=combobox2.text then begin
      treeview1.selected:=treeview1.Items[i];
      //treeview1.Items[i].Focused:=true;
    end;
  end;
end;

procedure Tfrmnewcap_salesbal.ComboBox3Change(Sender: TObject);
var
  i:integer;
begin
  if combobox3.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct grp from cust_exfty where act=1 and pgrp='''+combobox3.text+'''';
      open;
      if not fieldbyname('grp').isnull then combobox2.text:=fieldbyname('grp').value;
    end;
    for i:=0 to treeview1.Items.Count-1 do begin
      if treeview1.Items[i].Text=combobox3.text then begin
        treeview1.selected:=treeview1.Items[i];
        //treeview1.Items[i].Focused:=true;
      end;
    end;
  end else combobox2change(self);
end;

procedure Tfrmnewcap_salesbal.ComboBox3Enter(Sender: TObject);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where tplant='''+fty+''' and act=1 and exfwk>''''';
    if combobox2.text<>'ALL' then commandtext:=commandtext+' and grp='''+combobox2.Text+'''';
    open;
    first;
    while not eof do begin
      combobox3.Items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
