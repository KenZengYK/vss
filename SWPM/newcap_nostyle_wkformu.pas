unit newcap_nostyle_wkformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, Buttons, GridsEh, DBGridEh,
  ExtCtrls, ComCtrls, Spin, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppViewr, Mask, rxToolEdit,
  ppParameter;

type
  Tfrmnewcap_nostyle_wk = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label4: TLabel;
    xh1: TRadioGroup;
    BitBtn2: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    yr01: TppLabel;
    ppLabel4: TppLabel;
    mn01: TppLabel;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel3: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w005: TppLabel;
    ppLabel18: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    s005: TppLabel;
    ppLabel24: TppLabel;
    s006: TppLabel;
    s007: TppLabel;
    s008: TppLabel;
    s009: TppLabel;
    s010: TppLabel;
    ppLabel30: TppLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure queryw1change(Sender: TField);
    procedure queryupxchange(Sender: TField);
    procedure DataSource1StateChange(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_nostyle_wk: Tfrmnewcap_nostyle_wk;
  mn:integer;
  strupd:string;

implementation

uses mainformu, newcap_nostyleformu, newcap_refformu, newcap_styleformu,
  newcap_style_adjformu, newcap_salesbalformu, newcap_nostyle_detailformu;

{$R *.dfm}

procedure Tfrmnewcap_nostyle_wk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_nostyle_wk:=nil;
end;

procedure Tfrmnewcap_nostyle_wk.FormShow(Sender: TObject);
var
  tn1,tn2,tn3:TTreeNode;
  i:integer;
  fty:string;
begin
  //showmessage('0');
  mn:=query1.fieldbyname('m1').value;
  //showmessage('1');
  if combobox1.text>'' then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
    treeview1.Items.Clear;
    tn1:=treeview1.Items.add(nil,'ALL');
    tn1.ImageIndex:=0;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select distinct grp as cust from cust_exfty where tplant='''+fty+''' and act=1 and grp>''''';
      open;
      first;
      while not eof do begin
        tn3:=treeview1.Items.AddChild(tn1,fieldbyname('cust').value);
        tn3.ImageIndex:=1;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct pgrp as cust from cust_exfty where tplant='''+fty+''' and act=1 and pgrp<>''PVH'' and grp='''+tn3.Text+''' and pgrp>''''';
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
    treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Selected:=treeview1.Items.GetFirstNode;
  end;
  //showmessage('2');

  i:=0;
  with query2 do begin
    close;
    params.clear;
    //commandtext:='select wkno from tbl_cap_wkno where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    //commandtext:='select distinct a.wkno,min(b.date1) as x1,max(b.date1) as x2 from tbl_cap_wkno a,week52 b '
    //            +'where a.yr=f_year(b.date1) and a.wkno=b.wkno and a.yr='+inttostr(spinedit1.value)+' and a.m1='+query1.fieldbyname('m1').asstring+' group by a.wkno order by a.wkno';
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0 order by wkno';//+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' and wkno>0 order by wkno';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=query1.fieldbyname('m1').value;
    open;
    //showmessage('2.1');
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        dbgrideh1.Columns[4].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.Columns[5].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[6].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end else if i=2 then begin
        dbgrideh1.columns[7].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.columns[8].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[9].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end else if i=3 then begin
        dbgrideh1.columns[10].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.columns[11].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[12].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end else if i=4 then begin
        dbgrideh1.columns[13].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.columns[14].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[15].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end else if i=5 then begin
        dbgrideh1.columns[16].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.columns[17].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[18].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end else if i=6 then begin
        dbgrideh1.columns[19].title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Booking #';
        dbgrideh1.columns[20].title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Qty';
        dbgrideh1.Columns[21].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Ratio';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then begin
    dbgrideh1.columns[19].visible:=true;
    dbgrideh1.columns[20].visible:=true;
    dbgrideh1.columns[21].visible:=true;
  end else if i=5 then begin
    dbgrideh1.columns[19].visible:=false;
    dbgrideh1.columns[20].visible:=false;
    dbgrideh1.columns[21].visible:=false;
    dbgrideh1.Columns[16].Visible:=true;
    dbgrideh1.Columns[17].Visible:=true;
    dbgrideh1.Columns[18].Visible:=true;
  end else begin
    dbgrideh1.columns[19].visible:=false;
    dbgrideh1.columns[20].visible:=false;
    dbgrideh1.Columns[21].Visible:=false;
    dbgrideh1.Columns[16].Visible:=false;
    dbgrideh1.Columns[17].Visible:=false;
    dbgrideh1.Columns[18].Visible:=false;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=query1.fieldbyname('m1').value;
    open;
    //showmessage('2.2');
    label4.Caption:='(wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')';
  end;
  //showmessage('3');

  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_date where sel=1 and tplant='''+fty+'''';
    open;
    if not fieldbyname('stdt').isnull then begin
      dateedit1.date:=fieldbyname('stdt').value;
      edit1.text:=fieldbyname('m1').asstring;
    end else begin
      dateedit1.date:=date-1;
      edit1.text:='';
    end;
  end;
  label8.Visible:=false;
  dbedit1.Visible:=false;
  //showmessage('4');

  for i:=0 to treeview1.Items.Count-1 do begin
    if label9.caption='PROGRESS' then begin
      if treeview1.Items[i].Text=frmnewcap_style.TreeView1.Selected.text then begin
        treeview1.selected:=treeview1.Items[i];
        treeview1.Items[i].Focused:=true;
      end;
    end else if label9.Caption='BALANCING' then begin
      if treeview1.Items[i].Text=frmnewcap_salesbal.TreeView1.Selected.text then begin
        treeview1.selected:=treeview1.Items[i];
        treeview1.Items[i].Focused:=true;
      end;
    end;
  end;

end;

procedure Tfrmnewcap_nostyle_wk.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=2 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
      dbgrideh1.FooterRowCount:=2;
    end else if treeview1.selected.Level=1 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
      dbgrideh1.FooterRowCount:=5;
    end else if treeview1.Selected.Level=0 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
      dbgrideh1.FooterRowCount:=8;
    end;
  end;
  //datasource1statechange(self);
end;

procedure Tfrmnewcap_nostyle_wk.Query1AfterPost(DataSet: TDataSet);
var
  qty:integer;
  sah:double;
begin
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftinteger,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftfloat,'x17',ptinput);
      params.createparam(ftfloat,'x18',ptinput);
      params.createparam(ftfloat,'x19',ptinput);
      params.createparam(ftfloat,'x20',ptinput);
      params.createparam(ftboolean,'x21',ptinput);
      params.createparam(ftinteger,'x22',ptinput);
      params.createparam(ftinteger,'x23',ptinput);
      params.createparam(ftinteger,'x24',ptinput);
      params.createparam(ftinteger,'x25',ptinput);
      params.createparam(ftinteger,'x26',ptinput);
      params.createparam(ftinteger,'x27',ptinput);
      params.createparam(ftfloat,'x28',ptinput);
      params.createparam(ftfloat,'x29',ptinput);
      params.createparam(ftfloat,'x30',ptinput);
      params.createparam(ftfloat,'x31',ptinput);
      params.createparam(ftfloat,'x32',ptinput);
      params.createparam(ftfloat,'x33',ptinput);
      params.createparam(ftinteger,'x34',ptinput);
      params.createparam(ftinteger,'x35',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftstring,'x11',ptinput);
      params.createparam(ftstring,'x12',ptinput);
      commandtext:='update tbl_cap_oa_proj set w1=:x1,w2=:x2,w3=:x3,w4=:x4,w5=:x5,sah=:x6,eff=:x7,w6=:x13,wr1=:x14,wr2=:x15,wr3=:x16,'
                  +'wr4=:x17,wr5=:x18,wr6=:x19,wttl=:x20,sel=:x21,wf1=:x22,wf2=:x23,wf3=:x24,wf4=:x25,wf5=:x26,wf6=:x27,'
                  +'sah0=:x28,sahp=:x29,eff0=:x30,effp=:x31,cu1=:x32,cu2=:x33,mttl=:x34,bal=:x35 '
                  +'where tplant=:x8 and yr=:x9 and m1=:x10 and cust=:x11 and flag6=:x12';

      if not query1.fieldbyname('w1').isnull then
      params[0].asinteger:=query1.fieldbyname('w1').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('w2').isnull then
      params[1].asinteger:=query1.fieldbyname('w2').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('w3').isnull then
      params[2].asinteger:=query1.fieldbyname('w3').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('w4').isnull then
      params[3].asinteger:=query1.fieldbyname('w4').value
      else params[3].asinteger:=0;
      if not query1.fieldbyname('w5').isnull then
      params[4].asinteger:=query1.fieldbyname('w5').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('sah').isnull then
      params[5].asfloat:=query1.fieldbyname('sah').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('eff').isnull then
      params[6].asfloat:=query1.fieldbyname('eff').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('w6').isnull then
      params[7].asinteger:=query1.fieldbyname('w6').value
      else params[7].asinteger:=0;
      params[8].asfloat:=query1.fieldbyname('wr1').value;
      params[9].asfloat:=query1.fieldbyname('wr2').value;
      params[10].asfloat:=query1.fieldbyname('wr3').value;
      params[11].asfloat:=query1.fieldbyname('wr4').value;
      params[12].asfloat:=query1.fieldbyname('wr5').value;
      params[13].asfloat:=query1.fieldbyname('wr6').value;
      params[14].asfloat:=query1.fieldbyname('wttl').value;
      params[15].asboolean:=query1.fieldbyname('sel').value;
      if not query1.fieldbyname('wf1').isnull then
      params[16].asinteger:=query1.fieldbyname('wf1').value
      else params[16].asinteger:=0;
      if not query1.fieldbyname('wf2').isnull then
      params[17].asinteger:=query1.fieldbyname('wf2').value
      else params[17].asinteger:=0;
      if not query1.fieldbyname('wf3').isnull then
      params[18].asinteger:=query1.fieldbyname('wf3').value
      else params[18].asinteger:=0;
      if not query1.fieldbyname('wf4').isnull then
      params[19].asinteger:=query1.fieldbyname('wf4').value
      else params[19].asinteger:=0;
      if not query1.fieldbyname('wf5').isnull then
      params[20].asinteger:=query1.fieldbyname('wf5').value
      else params[20].asinteger:=0;
      if not query1.fieldbyname('wf6').isnull then
      params[21].asinteger:=query1.fieldbyname('wf6').value
      else params[21].asinteger:=0;
      if not query1.fieldbyname('sah0').isnull then
      params[22].asfloat:=query1.fieldbyname('sah0').value
      else params[22].asfloat:=0;
      if not query1.fieldbyname('sahp').isnull then
      params[23].asfloat:=query1.fieldbyname('sahp').value
      else params[23].asfloat:=0;
      if not query1.fieldbyname('eff0').isnull then
      params[24].asfloat:=query1.fieldbyname('eff0').value
      else params[24].asfloat:=0;
      if not query1.fieldbyname('effp').isnull then
      params[25].asfloat:=query1.fieldbyname('effp').value
      else params[25].asfloat:=0;
      if not query1.fieldbyname('cu1').isnull then
      params[26].asfloat:=query1.fieldbyname('cu1').value
      else params[26].asfloat:=0;
      if not query1.fieldbyname('cu2').isnull then
      params[27].asfloat:=query1.fieldbyname('cu2').value
      else params[27].asfloat:=0;
      if not query1.fieldbyname('mttl').isnull then
      params[28].asinteger:=query1.fieldbyname('mttl').value
      else params[28].asinteger:=0;
      if not query1.fieldbyname('bal').isnull then
      params[29].asinteger:=query1.fieldbyname('bal').value
      else params[29].asinteger:=0;
      params[30].asstring:=query1.fieldbyname('tplant').value;
      params[31].asinteger:=query1.fieldbyname('yr').value;
      params[32].asinteger:=query1.fieldbyname('m1').value;
      params[33].asstring:=query1.fieldbyname('cust').value;
      params[34].asstring:=query1.fieldbyname('flag6').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_cap_oa_proj set ';
      if not query1.fieldbyname('w1').isnull then
      strupd:=strupd+'w1='+query1.fieldbyname('w1').asstring+','
      else strupd:=strupd+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      strupd:=strupd+'w2='+query1.fieldbyname('w2').asstring+','
      else strupd:=strupd+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      strupd:=strupd+'w3='+query1.fieldbyname('w3').asstring+','
      else strupd:=strupd+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      strupd:=strupd+'w4='+query1.fieldbyname('w4').asstring+','
      else strupd:=strupd+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      strupd:=strupd+'w5='+query1.fieldbyname('w5').asstring+','
      else strupd:=strupd+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      strupd:=strupd+'w6='+query1.fieldbyname('w6').asstring+','
      else strupd:=strupd+'w6=0,';
      if not query1.fieldbyname('sah').isnull then
      strupd:=strupd+'sah='+query1.fieldbyname('sah').asstring+','
      else strupd:=strupd+'sah=0,';
      if not query1.fieldbyname('eff').isnull then
      strupd:=strupd+'eff='+query1.fieldbyname('eff').asstring+','
      else strupd:=strupd+'eff=0,';
      if not query1.fieldbyname('wr1').isnull then
      strupd:=strupd+'wr1='+query1.fieldbyname('wr1').asstring+','
      else strupd:=strupd+'wr1=0,';
      if not query1.fieldbyname('wr2').isnull then
      strupd:=strupd+'wr2='+query1.fieldbyname('wr2').asstring+','
      else strupd:=strupd+'wr2=0,';
      if not query1.fieldbyname('wr3').isnull then
      strupd:=strupd+'wr3='+query1.fieldbyname('wr3').asstring+','
      else strupd:=strupd+'wr3=0,';
      if not query1.fieldbyname('wr4').isnull then
      strupd:=strupd+'wr4='+query1.fieldbyname('wr4').asstring+','
      else strupd:=strupd+'wr4=0,';
      if not query1.fieldbyname('wr5').isnull then
      strupd:=strupd+'wr5='+query1.fieldbyname('wr5').asstring+','
      else strupd:=strupd+'wr5=0,';
      if not query1.fieldbyname('wr6').isnull then
      strupd:=strupd+'wr6='+query1.fieldbyname('wr6').asstring+','
      else strupd:=strupd+'wr6=0,';
      if not query1.fieldbyname('wttl').isnull then
      strupd:=strupd+'wttl='+query1.fieldbyname('wttl').asstring+','
      else strupd:=strupd+'wttl=0,';
      if not query1.fieldbyname('wf1').isnull then
      strupd:=strupd+'wf1='+query1.fieldbyname('wf1').asstring+','
      else strupd:=strupd+'wf1=0,';
       if not query1.fieldbyname('wf2').isnull then
      strupd:=strupd+'wf2='+query1.fieldbyname('wf2').asstring+','
      else strupd:=strupd+'wf2=0,';
      if not query1.fieldbyname('wf3').isnull then
      strupd:=strupd+'wf3='+query1.fieldbyname('wf3').asstring+','
      else strupd:=strupd+'wf3=0,';
      if not query1.fieldbyname('wf4').isnull then
      strupd:=strupd+'wf4='+query1.fieldbyname('wf4').asstring+','
      else strupd:=strupd+'wf4=0,';
      if not query1.fieldbyname('wf5').isnull then
      strupd:=strupd+'wf5='+query1.fieldbyname('wf5').asstring+','
      else strupd:=strupd+'wf5=0,';
      if not query1.fieldbyname('wf6').isnull then
      strupd:=strupd+'wf6='+query1.fieldbyname('wf6').asstring+','
      else strupd:=strupd+'wf6=0,';
      if not query1.fieldbyname('sah').isnull then
      strupd:=strupd+'sah='+query1.fieldbyname('sah').asstring+','
      else strupd:=strupd+'sah=0,';
      if not query1.fieldbyname('sahp').isnull then
      strupd:=strupd+'sahp='+query1.fieldbyname('sahp').asstring+','
      else strupd:=strupd+'sahp=0,';
      if not query1.fieldbyname('upx').isnull then
      strupd:=strupd+'upx='+query1.fieldbyname('upx').asstring+','
      else strupd:=strupd+'upx=0,';
      if not query1.fieldbyname('upxp').isnull then
      strupd:=strupd+'upxp='+query1.fieldbyname('upxp').asstring+','
      else strupd:=strupd+'upxp=0,';
      if not query1.fieldbyname('upx_a').isnull then
      strupd:=strupd+'upx_a='+query1.fieldbyname('upx_a').asstring+','
      else strupd:=strupd+'upx_a=0,';
      if not query1.fieldbyname('eff0').isnull then
      strupd:=strupd+'eff0='+query1.fieldbyname('eff0').asstring+','
      else strupd:=strupd+'eff0=0,';
      if not query1.fieldbyname('effp').isnull then
      strupd:=strupd+'effp='+query1.fieldbyname('effp').asstring+','
      else strupd:=strupd+'effp=0,';
      if not query1.fieldbyname('cu1').isnull then
      strupd:=strupd+'cu1='+query1.fieldbyname('cu1').asstring+','
      else strupd:=strupd+'cu1=0,';
      if not query1.fieldbyname('cu2').isnull then
      strupd:=strupd+'cu2='+query1.fieldbyname('cu2').asstring+','
      else strupd:=strupd+'cu2=0,';
      strupd:=strupd+'sel='+query1.fieldbyname('sel').asstring+',';
      if not query1.fieldbyname('mttl').isnull then
      strupd:=strupd+'mttl='+query1.fieldbyname('mttl').asstring+','
      else strupd:=strupd+'mttl=0,';
      if not query1.fieldbyname('bal').isnull then
      strupd:=strupd+'bal='+query1.fieldbyname('bal').asstring+' '
      else strupd:=strupd+'bal=0 ';
      strupd:=strupd+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      strupd:=strupd+'and yr='+query1.fieldbyname('yr').asstring+' ';
      strupd:=strupd+'and m1='+query1.fieldbyname('m1').asstring+' ';
      strupd:=strupd+'and cust='''+query1.fieldbyname('cust').value+''' ';
      strupd:=strupd+'and flag6='''+query1.fieldbyname('flag6').value+'''';
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select sum(w1+w2+w3+w4+w5+w6) as x1,sum((w1+w2+w3+w4+w5+w6)*(sah0*(100.00+sahp)/100.00)) as x2 from tbl_cap_oa_proj '
                +'where tplant=:x1 and yr=:x2 and m1=:x3 and flag6=:x4';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('m1').value;
    params[3].asstring:=query1.fieldbyname('flag6').value;
    open;
    if not fieldbyname('x1').isnull then qty:=fieldbyname('x1').value else qty:=0;
    if not fieldbyname('x2').isnull then sah:=fieldbyname('x2').value else sah:=0;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftfloat,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    if query1.fieldbyname('m1').value=1 then
    commandtext:='update tbl_cap_oa_proj_all set m1=:x1,s1=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=2 then
    commandtext:='update tbl_cap_oa_proj_all set m2=:x1,s2=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=3 then
    commandtext:='update tbl_cap_oa_proj_all set m3=:x1,s3=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=4 then
    commandtext:='update tbl_cap_oa_proj_all set m4=:x1,s4=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=5 then
    commandtext:='update tbl_cap_oa_proj_all set m5=:x1,s5=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=6 then
    commandtext:='update tbl_cap_oa_proj_all set m6=:x1,s6=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=7 then
    commandtext:='update tbl_cap_oa_proj_all set m7=:x1,s7=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=8 then
    commandtext:='update tbl_cap_oa_proj_all set m8=:x1,s8=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=9 then
    commandtext:='update tbl_cap_oa_proj_all set m9=:x1,s9=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=10 then
    commandtext:='update tbl_cap_oa_proj_all set m10=:x1,s10=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=11 then
    commandtext:='update tbl_cap_oa_proj_all set m11=:x1,s11=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5'
    else if query1.fieldbyname('m1').value=12 then
    commandtext:='update tbl_cap_oa_proj_all set m12=:x1,s12=:x2 where tplant=:x3 and yr=:x4 and flag6=:x5';
    params[0].asinteger:=qty;
    params[1].asfloat:=sah;
    params[2].asstring:=query1.fieldbyname('tplant').value;
    params[3].asinteger:=query1.fieldbyname('yr').value;
    params[4].asstring:=query1.fieldbyname('flag6').value;
    execute;
  end;
  }
    if query1.fieldbyname('m1').value=1 then
    strupd:='update tbl_cap_oa_proj_all set m1='+inttostr(qty)+',s1='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=2 then
    strupd:='update tbl_cap_oa_proj_all set m2='+inttostr(qty)+',s2='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=3 then
    strupd:='update tbl_cap_oa_proj_all set m3='+inttostr(qty)+',s3='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=4 then
    strupd:='update tbl_cap_oa_proj_all set m4='+inttostr(qty)+',s4='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=5 then
    strupd:='update tbl_cap_oa_proj_all set m5='+inttostr(qty)+',s5='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=6 then
    strupd:='update tbl_cap_oa_proj_all set m6='+inttostr(qty)+',s6='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=7 then
    strupd:='update tbl_cap_oa_proj_all set m7='+inttostr(qty)+',s7='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=8 then
    strupd:='update tbl_cap_oa_proj_all set m8='+inttostr(qty)+',s8='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=9 then
    strupd:='update tbl_cap_oa_proj_all set m9='+inttostr(qty)+',s9='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=10 then
    strupd:='update tbl_cap_oa_proj_all set m10='+inttostr(qty)+',s10='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=11 then
    strupd:='update tbl_cap_oa_proj_all set m11='+inttostr(qty)+',s11='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+''''
    else if query1.fieldbyname('m1').value=12 then
    strupd:='update tbl_cap_oa_proj_all set m12='+inttostr(qty)+',s12='+floattostr(sah)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and flag6='''+query1.fieldbyname('flag6').value+'''';
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
    
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_nostyle_wk.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmnewcap_ref=nil then frmnewcap_ref:=tfrmnewcap_ref.create(nil);
  frmnewcap_ref.DBText1.DataSource:=datasource1;
  frmnewcap_ref.DBText2.DataSource:=nil;
  frmnewcap_ref.DBText3.DataSource:=nil;
  frmnewcap_ref.Label2.Visible:=false;
  frmnewcap_ref.DBText2.Visible:=false;
  frmnewcap_ref.DBText3.Visible:=false;
  frmnewcap_ref.DateEdit1.Date:=date-183;
  frmnewcap_ref.DateEdit2.Date:=date-1;
  frmnewcap_ref.show;
end;

procedure Tfrmnewcap_nostyle_wk.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('mttl').onchange:=queryw1change;
  query1.fieldbyname('w1').onchange:=queryw1change;
  query1.fieldbyname('w2').onchange:=queryw1change;
  query1.fieldbyname('w3').onchange:=queryw1change;
  query1.fieldbyname('w4').onchange:=queryw1change;
  query1.fieldbyname('w5').onchange:=queryw1change;
  query1.fieldbyname('w6').onchange:=queryw1change;
  query1.fieldbyname('upx_a').onchange:=queryupxchange;
end;

procedure Tfrmnewcap_nostyle_wk.queryupxchange(Sender: TField);
var
  upx,upx_a:double;
begin
  if not query1.fieldbyname('upx').isnull then upx:=query1.fieldbyname('upx').value
  else upx:=0;
  if not query1.fieldbyname('upx_a').isnull then upx_a:=query1.fieldbyname('upx_a').value
  else upx_a:=0;
  if upx>0 then query1.fieldbyname('upxp').value:=(upx_a/upx-1.00)*100.00;
end;

procedure Tfrmnewcap_nostyle_wk.queryw1change(Sender: TField);
var
  w1,w2,w3,w4,w5,w6,wttl,wr1,wr2,wr3,wr4,wr5,wr6:double;
  mttl:double;
begin
  w1:=0; w2:=0; w3:=0; w4:=0; w5:=0; w6:=0;
  wr2:=0; wr2:=0; wr3:=0; wr4:=0; wr5:=0; wr6:=0;
  if not query1.fieldbyname('w1').isnull then w1:=query1.fieldbyname('w1').value;
  if not query1.fieldbyname('w2').isnull then w2:=query1.fieldbyname('w2').value;
  if not query1.fieldbyname('w3').isnull then w3:=query1.fieldbyname('w3').value;
  if not query1.fieldbyname('w4').isnull then w4:=query1.fieldbyname('w4').value;
  if not query1.fieldbyname('w5').isnull then w5:=query1.fieldbyname('w5').value;
  if not query1.fieldbyname('w6').isnull then w6:=query1.fieldbyname('w6').value;
  wttl:=w1+w2+w3+w4+w5+w6;
  if wttl>0 then wr1:=w1*100.00/wttl;
  if wttl>0 then wr2:=w2*100.00/wttl;
  if wttl>0 then wr3:=w3*100.00/wttl;
  if wttl>0 then wr4:=w4*100.00/wttl;
  if wttl>0 then wr5:=w5*100.00/wttl;
  if wttl>0 then wr6:=w6*100.00/wttl;
  query1.fieldbyname('wr1').value:=wr1;
  query1.fieldbyname('wr2').value:=wr2;
  query1.fieldbyname('wr3').value:=wr3;
  query1.fieldbyname('wr4').value:=wr4;
  query1.fieldbyname('wr5').value:=wr5;
  query1.fieldbyname('wr6').value:=wr6;
  query1.fieldbyname('wttl').value:=wttl;

  if not query1.fieldbyname('mttl').isnull then mttl:=query1.fieldbyname('mttl').value else mttl:=0;
  query1.fieldbyname('bal').value:=mttl-wttl;
  //
  {
  if strtoint(dbgrideh1.Columns[16].Footer.value)>0 then begin
    dbgrideh1.columns[5].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[4].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
    dbgrideh1.columns[7].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[6].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
    dbgrideh1.columns[9].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[8].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
    dbgrideh1.columns[11].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[10].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
    dbgrideh1.columns[13].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[12].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
    dbgrideh1.columns[15].footer.value:=formatfloat('#0.00',strtoint(dbgrideh1.columns[14].Footer.value)*100.00/strtoint(dbgrideh1.columns[16].Footer.value));
  end else begin
    dbgrideh1.columns[5].footer.value:='0.00';
    dbgrideh1.columns[7].footer.value:='0.00';
    dbgrideh1.columns[9].footer.value:='0.00';
    dbgrideh1.columns[11].footer.value:='0.00';
    dbgrideh1.columns[13].footer.value:='0.00';
    dbgrideh1.columns[15].footer.value:='0.00';
  end;
  }
end;

procedure Tfrmnewcap_nostyle_wk.DataSource1StateChange(Sender: TObject);
begin
  if query1.State=dsbrowse then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7 from tbl_cap_oa_proj '
                  +'where tplant=:x1 and yr=:x2 and m1=:x3';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      open;
      if fieldbyname('x7').value>0 then begin
        dbgrideh1.columns[8].footer.value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
        dbgrideh1.columns[10].footer.value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
        dbgrideh1.columns[12].footer.value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
        dbgrideh1.columns[14].footer.value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
        dbgrideh1.columns[16].footer.value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
        dbgrideh1.columns[18].footer.value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
      end else begin
        dbgrideh1.columns[8].footer.value:='0.00';
        dbgrideh1.columns[10].footer.value:='0.00';
        dbgrideh1.columns[12].footer.value:='0.00';
        dbgrideh1.columns[14].footer.value:='0.00';
        dbgrideh1.columns[16].footer.value:='0.00';
        dbgrideh1.columns[18].footer.value:='0.00';
      end;
    end;
    }
    {
    dbgrideh1.columns[7].footers[0].value:='#0';
    dbgrideh1.columns[9].footers[0].value:='#0';
    dbgrideh1.columns[11].footers[0].value:='#0';
    dbgrideh1.columns[13].footers[0].value:='#0';
    dbgrideh1.columns[15].footers[0].value:='#0';
    dbgrideh1.columns[17].footers[0].value:='#0';
    dbgrideh1.columns[19].footers[0].value:='#0';
    dbgrideh1.columns[8].footers[0].value:='0.00';
    dbgrideh1.columns[10].footers[0].value:='0.00';
    dbgrideh1.columns[12].footers[0].value:='0.00';
    dbgrideh1.columns[14].footers[0].value:='0.00';
    dbgrideh1.columns[16].footers[0].value:='0.00';
    dbgrideh1.columns[18].footers[0].value:='0.00';
    dbgrideh1.columns[7].footers[1].value:='#0';
    dbgrideh1.columns[9].footers[1].value:='#0';
    dbgrideh1.columns[11].footers[1].value:='#0';
    dbgrideh1.columns[13].footers[1].value:='#0';
    dbgrideh1.columns[15].footers[1].value:='#0';
    dbgrideh1.columns[17].footers[1].value:='#0';
    dbgrideh1.columns[19].footers[1].value:='#0';
    dbgrideh1.columns[8].footers[1].value:='0.00';
    dbgrideh1.columns[10].footers[1].value:='0.00';
    dbgrideh1.columns[12].footers[1].value:='0.00';
    dbgrideh1.columns[14].footers[1].value:='0.00';
    dbgrideh1.columns[16].footers[1].value:='0.00';
    dbgrideh1.columns[18].footers[1].value:='0.00';
    dbgrideh1.columns[7].footers[2].value:='#0';
    dbgrideh1.columns[9].footers[2].value:='#0';
    dbgrideh1.columns[11].footers[2].value:='#0';
    dbgrideh1.columns[13].footers[2].value:='#0';
    dbgrideh1.columns[15].footers[2].value:='#0';
    dbgrideh1.columns[17].footers[2].value:='#0';
    dbgrideh1.columns[19].footers[2].value:='#0';
    dbgrideh1.columns[8].footers[2].value:='0.00';
    dbgrideh1.columns[10].footers[2].value:='0.00';
    dbgrideh1.columns[12].footers[2].value:='0.00';
    dbgrideh1.columns[14].footers[2].value:='0.00';
    dbgrideh1.columns[16].footers[2].value:='0.00';
    dbgrideh1.columns[18].footers[2].value:='0.00';
    dbgrideh1.columns[7].footers[3].value:='#0';
    dbgrideh1.columns[9].footers[3].value:='#0';
    dbgrideh1.columns[11].footers[3].value:='#0';
    dbgrideh1.columns[13].footers[3].value:='#0';
    dbgrideh1.columns[15].footers[3].value:='#0';
    dbgrideh1.columns[17].footers[3].value:='#0';
    dbgrideh1.columns[19].footers[3].value:='#0';
    dbgrideh1.columns[8].footers[3].value:='0.00';
    dbgrideh1.columns[10].footers[3].value:='0.00';
    dbgrideh1.columns[12].footers[3].value:='0.00';
    dbgrideh1.columns[14].footers[3].value:='0.00';
    dbgrideh1.columns[16].footers[3].value:='0.00';
    dbgrideh1.columns[18].footers[3].value:='0.00';
    dbgrideh1.columns[7].footers[4].value:='#0';
    dbgrideh1.columns[9].footers[4].value:='#0';
    dbgrideh1.columns[11].footers[4].value:='#0';
    dbgrideh1.columns[13].footers[4].value:='#0';
    dbgrideh1.columns[15].footers[4].value:='#0';
    dbgrideh1.columns[17].footers[4].value:='#0';
    dbgrideh1.columns[19].footers[4].value:='#0';
    dbgrideh1.columns[8].footers[4].value:='0.00';
    dbgrideh1.columns[10].footers[4].value:='0.00';
    dbgrideh1.columns[12].footers[4].value:='0.00';
    dbgrideh1.columns[14].footers[4].value:='0.00';
    dbgrideh1.columns[16].footers[4].value:='0.00';
    dbgrideh1.columns[18].footers[4].value:='0.00';
    }
    if treeview1.Selected<>nil then begin
      if treeview1.Selected.Level<2 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct flag6,sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 ';
          //if treeview1.selected<>nil then begin
            //if treeview1.selected.Level=2 then commandtext:=commandtext+'and cust='''+treeview1.selected.Text+''' '
            //else
            if treeview1.selected.Level=1 then commandtext:=commandtext+'and grp='''+treeview1.Selected.Text+''' ';
          //end;
          commandtext:=commandtext+'group by flag6';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          first;
          while not eof do begin
            if fieldbyname('flag6').value='B' then begin
              dbgrideh1.columns[5].Footers[0].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.columns[8].Footers[0].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.columns[11].Footers[0].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.columns[14].Footers[0].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.columns[17].Footers[0].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.columns[20].Footers[0].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.columns[3].Footers[0].Value:=formatfloat('#,0',fieldbyname('x8').value);
              if fieldbyname('x7').value>0 then begin
                dbgrideh1.columns[6].footers[0].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[9].footers[0].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[12].footers[0].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[15].footers[0].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[18].footers[0].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[21].footers[0].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
              end else begin
                dbgrideh1.columns[6].footers[0].value:='0.00';
                dbgrideh1.columns[9].footers[0].value:='0.00';
                dbgrideh1.columns[12].footers[0].value:='0.00';
                dbgrideh1.columns[15].footers[0].value:='0.00';
                dbgrideh1.columns[18].footers[0].value:='0.00';
                dbgrideh1.columns[21].footers[0].value:='0.00';
              end;
            end else if fieldbyname('flag6').value='K' then begin
              dbgrideh1.columns[5].Footers[1].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.columns[8].Footers[1].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.columns[11].Footers[1].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.columns[14].Footers[1].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.columns[17].Footers[1].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.columns[20].Footers[1].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.columns[3].Footers[1].Value:=formatfloat('#,0',fieldbyname('x8').value);
              if fieldbyname('x7').value>0 then begin
                dbgrideh1.columns[6].footers[1].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[9].footers[1].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[12].footers[1].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[15].footers[1].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[18].footers[1].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[21].footers[1].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
              end else begin
                dbgrideh1.columns[6].footers[1].value:='0.00';
                dbgrideh1.columns[9].footers[1].value:='0.00';
                dbgrideh1.columns[12].footers[1].value:='0.00';
                dbgrideh1.columns[15].footers[1].value:='0.00';
                dbgrideh1.columns[18].footers[1].value:='0.00';
                dbgrideh1.columns[21].footers[1].value:='0.00';
              end;
            end else if fieldbyname('flag6').value='U' then begin
              dbgrideh1.columns[5].Footers[2].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.columns[8].Footers[2].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.columns[11].Footers[2].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.columns[14].Footers[2].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.columns[17].Footers[2].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.columns[20].Footers[2].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.columns[3].Footers[2].Value:=formatfloat('#,0',fieldbyname('x8').value);
              if fieldbyname('x7').value>0 then begin
                dbgrideh1.columns[6].footers[2].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[9].footers[2].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[12].footers[2].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[15].footers[2].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[18].footers[2].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
                dbgrideh1.columns[21].footers[2].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
              end else begin
                dbgrideh1.columns[6].footers[2].value:='0.00';
                dbgrideh1.columns[9].footers[2].value:='0.00';
                dbgrideh1.columns[12].footers[2].value:='0.00';
                dbgrideh1.columns[15].footers[2].value:='0.00';
                dbgrideh1.columns[18].footers[2].value:='0.00';
                dbgrideh1.columns[21].footers[2].value:='0.00';
              end;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end;
    if treeview1.selected<>nil then begin
      if treeview1.selected.level=2 then begin
        dbgrideh1.Columns[2].Footers[0].Value:='Sub-ttl ('+query1.fieldbyname('cust').value+')';
        dbgrideh1.columns[2].Footers[1].Value:='Sub-ttl ('+query1.fieldbyname('grp').value+')';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and cust='''+query1.fieldbyname('cust').value+'''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          dbgrideh1.columns[5].Footers[0].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[0].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[0].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[0].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[0].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[0].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[0].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[0].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[0].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[0].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[0].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[0].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[0].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[0].value:='0.00';
            dbgrideh1.columns[9].footers[0].value:='0.00';
            dbgrideh1.columns[12].footers[0].value:='0.00';
            dbgrideh1.columns[15].footers[0].value:='0.00';
            dbgrideh1.columns[18].footers[0].value:='0.00';
            dbgrideh1.columns[21].footers[0].value:='0.00';
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp='''+query1.fieldbyname('grp').value+'''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          dbgrideh1.columns[5].Footers[1].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[1].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[1].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[1].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[1].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[1].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[1].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[1].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[1].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[1].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[1].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[1].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[1].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[1].value:='0.00';
            dbgrideh1.columns[9].footers[1].value:='0.00';
            dbgrideh1.columns[12].footers[1].value:='0.00';
            dbgrideh1.columns[15].footers[1].value:='0.00';
            dbgrideh1.columns[18].footers[1].value:='0.00';
            dbgrideh1.columns[21].footers[1].value:='0.00';
          end;
        end;
      end else if treeview1.selected.Level=1 then begin
        dbgrideh1.Columns[2].Footers[3].Value:='Sub-ttl ('+query1.fieldbyname('grp').value+')';
        dbgrideh1.columns[2].Footers[4].Value:='Grand-ttl';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp='''+query1.fieldbyname('grp').value+'''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          dbgrideh1.columns[5].Footers[3].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[3].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[3].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[3].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[3].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[3].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[3].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[3].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[3].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[3].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[3].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[3].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[3].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[3].value:='0.00';
            dbgrideh1.columns[9].footers[3].value:='0.00';
            dbgrideh1.columns[12].footers[3].value:='0.00';
            dbgrideh1.columns[15].footers[3].value:='0.00';
            dbgrideh1.columns[18].footers[3].value:='0.00';
            dbgrideh1.columns[21].footers[3].value:='0.00';
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          dbgrideh1.columns[5].Footers[4].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[4].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[4].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[4].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[4].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[4].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[4].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[4].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[4].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[4].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[4].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[4].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[4].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[4].value:='0.00';
            dbgrideh1.columns[9].footers[4].value:='0.00';
            dbgrideh1.columns[12].footers[4].value:='0.00';
            dbgrideh1.columns[15].footers[4].value:='0.00';
            dbgrideh1.columns[18].footers[4].value:='0.00';
            dbgrideh1.columns[21].footers[4].value:='0.00';
          end;
        end;
      end else if treeview1.selected.Level=0 then begin
        dbgrideh1.Columns[2].Footers[3].Value:='Sub-ttl (A)';
        dbgrideh1.Columns[2].Footers[4].Value:='Sub-ttl (B)';
        dbgrideh1.Columns[2].Footers[5].Value:='Sub-ttl (C)';
        dbgrideh1.Columns[2].Footers[6].Value:='Sub-ttl (D)';
        dbgrideh1.columns[2].Footers[7].Value:='Grand-ttl';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp=''A''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          if not fieldbyname('x1').isnull then begin
            dbgrideh1.columns[5].Footers[3].Value:=formatfloat('#,0',fieldbyname('x1').value);
            dbgrideh1.columns[8].Footers[3].Value:=formatfloat('#,0',fieldbyname('x2').value);
            dbgrideh1.columns[11].Footers[3].Value:=formatfloat('#,0',fieldbyname('x3').value);
            dbgrideh1.columns[14].Footers[3].Value:=formatfloat('#,0',fieldbyname('x4').value);
            dbgrideh1.columns[17].Footers[3].Value:=formatfloat('#,0',fieldbyname('x5').value);
            dbgrideh1.columns[20].Footers[3].Value:=formatfloat('#,0',fieldbyname('x6').value);
            dbgrideh1.columns[3].Footers[3].Value:=formatfloat('#,0',fieldbyname('x8').value);
            if fieldbyname('x7').value>0 then begin
              dbgrideh1.columns[6].footers[3].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[9].footers[3].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[12].footers[3].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[15].footers[3].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[18].footers[3].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[21].footers[3].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
            end else begin
              dbgrideh1.columns[6].footers[3].value:='0.00';
              dbgrideh1.columns[9].footers[3].value:='0.00';
              dbgrideh1.columns[12].footers[3].value:='0.00';
              dbgrideh1.columns[15].footers[3].value:='0.00';
              dbgrideh1.columns[18].footers[3].value:='0.00';
              dbgrideh1.columns[21].footers[3].value:='0.00';
            end;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp=''B''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          if not fieldbyname('x1').isnull then begin
          dbgrideh1.columns[5].Footers[4].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[4].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[4].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[4].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[4].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[4].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[4].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[4].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[4].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[4].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[4].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[4].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[4].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[4].value:='0.00';
            dbgrideh1.columns[9].footers[4].value:='0.00';
            dbgrideh1.columns[12].footers[4].value:='0.00';
            dbgrideh1.columns[15].footers[4].value:='0.00';
            dbgrideh1.columns[18].footers[4].value:='0.00';
            dbgrideh1.columns[21].footers[4].value:='0.00';
          end;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp=''C''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          if not fieldbyname('x1').isnull then begin
            dbgrideh1.columns[5].Footers[5].Value:=formatfloat('#,0',fieldbyname('x1').value);
            dbgrideh1.columns[8].Footers[5].Value:=formatfloat('#,0',fieldbyname('x2').value);
            dbgrideh1.columns[11].Footers[5].Value:=formatfloat('#,0',fieldbyname('x3').value);
            dbgrideh1.columns[14].Footers[5].Value:=formatfloat('#,0',fieldbyname('x4').value);
            dbgrideh1.columns[17].Footers[5].Value:=formatfloat('#,0',fieldbyname('x5').value);
            dbgrideh1.columns[20].Footers[5].Value:=formatfloat('#,0',fieldbyname('x6').value);
            dbgrideh1.columns[3].Footers[5].Value:=formatfloat('#,0',fieldbyname('x8').value);
            if fieldbyname('x7').value>0 then begin
              dbgrideh1.columns[6].footers[5].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[9].footers[5].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[12].footers[5].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[15].footers[5].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[18].footers[5].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[21].footers[5].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
            end else begin
              dbgrideh1.columns[6].footers[5].value:='0.00';
              dbgrideh1.columns[9].footers[5].value:='0.00';
              dbgrideh1.columns[12].footers[5].value:='0.00';
              dbgrideh1.columns[15].footers[5].value:='0.00';
              dbgrideh1.columns[18].footers[5].value:='0.00';
              dbgrideh1.columns[21].footers[5].value:='0.00';
            end;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3 and grp=''D''';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          if not fieldbyname('x1').isnull then begin
            dbgrideh1.columns[5].Footers[6].Value:=formatfloat('#,0',fieldbyname('x1').value);
            dbgrideh1.columns[8].Footers[6].Value:=formatfloat('#,0',fieldbyname('x2').value);
            dbgrideh1.columns[11].Footers[6].Value:=formatfloat('#,0',fieldbyname('x3').value);
            dbgrideh1.columns[14].Footers[6].Value:=formatfloat('#,0',fieldbyname('x4').value);
            dbgrideh1.columns[17].Footers[6].Value:=formatfloat('#,0',fieldbyname('x5').value);
            dbgrideh1.columns[20].Footers[6].Value:=formatfloat('#,0',fieldbyname('x6').value);
            dbgrideh1.columns[3].Footers[6].Value:=formatfloat('#,0',fieldbyname('x8').value);
            if fieldbyname('x7').value>0 then begin
              dbgrideh1.columns[6].footers[6].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[9].footers[6].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[12].footers[6].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[15].footers[6].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[18].footers[6].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
              dbgrideh1.columns[21].footers[6].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
            end else begin
              dbgrideh1.columns[6].footers[6].value:='0.00';
              dbgrideh1.columns[9].footers[6].value:='0.00';
              dbgrideh1.columns[12].footers[6].value:='0.00';
              dbgrideh1.columns[15].footers[6].value:='0.00';
              dbgrideh1.columns[18].footers[6].value:='0.00';
              dbgrideh1.columns[21].footers[6].value:='0.00';
            end;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select distinct sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6,sum(wttl) as x7,sum(mttl) as x8 from tbl_cap_oa_proj '
                      +'where tplant=:x1 and yr=:x2 and m1=:x3';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('m1').value;
          open;
          dbgrideh1.columns[5].Footers[7].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.columns[8].Footers[7].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.columns[11].Footers[7].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.columns[14].Footers[7].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.columns[17].Footers[7].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.columns[20].Footers[7].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.columns[3].Footers[7].Value:=formatfloat('#,0',fieldbyname('x8').value);
          if fieldbyname('x7').value>0 then begin
            dbgrideh1.columns[6].footers[7].value:=formatfloat('0.00',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[9].footers[7].value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[12].footers[7].value:=formatfloat('0.00',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[15].footers[7].value:=formatfloat('0.00',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[18].footers[7].value:=formatfloat('0.00',fieldbyname('x5').value*100.00/fieldbyname('x7').value);
            dbgrideh1.columns[21].footers[7].value:=formatfloat('0.00',fieldbyname('x6').value*100.00/fieldbyname('x7').value);
          end else begin
            dbgrideh1.columns[6].footers[7].value:='0.00';
            dbgrideh1.columns[9].footers[7].value:='0.00';
            dbgrideh1.columns[12].footers[7].value:='0.00';
            dbgrideh1.columns[15].footers[7].value:='0.00';
            dbgrideh1.columns[18].footers[7].value:='0.00';
            dbgrideh1.columns[21].footers[7].value:='0.00';
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.xh1Click(Sender: TObject);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=2 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
    end else if treeview1.selected.Level=1 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
    end else if treeview1.Selected.Level=0 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_proj where tplant='''+fty+''' and yr='+inttostr(spinedit1.Value)+' and m1='+inttostr(mn);
        if xh1.ItemIndex=0 then commandtext:=commandtext+' and sel=1';
        open;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.ppHeaderBand1BeforePrint(Sender: TObject);
var
  i:integer;
  f01,f02,f03,f04,f05,ff:double;
begin
  yr01.caption:=inttostr(spinedit1.value);
  mn01.caption:=query1.fieldbyname('m1').asstring;
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select wkno from tbl_cap_wkno where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then w001.caption:='Week '+fieldbyname('wkno').asstring
      else if i=2 then w002.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=3 then w003.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=4 then w004.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=5 then w005.Caption:='Week '+fieldbyname('wkno').asstring;
      application.ProcessMessages;
      next;
    end;
  end;

  i:=0;
  f01:=0; f02:=0; f03:=0; f04:=0; f05:=0; ff:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct a.wkno,sum(b.csect) as x1 from tbl_cap_wkno a,week52 b '
                +'where a.yr=f_year(b.date1) and a.wkno=b.wkno and b.tplant=''SL'' and a.yr='+inttostr(spinedit1.value)+' and a.m1='+query1.fieldbyname('m1').asstring+' group by a.wkno order by a.wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then f01:=fieldbyname('x1').value
      else if i=2 then f02:=fieldbyname('x1').value
      else if i=3 then f03:=fieldbyname('x1').value
      else if i=4 then f04:=fieldbyname('x1').value
      else if i=5 then f05:=fieldbyname('x1').value;
      application.ProcessMessages;
      next;
    end;
  end;
  ff:=f01+f02+f03+f04+f05;
  if ff>0 then begin
    s001.caption:=formatfloat('#0.00%',f01*100.00/ff);
    s002.caption:=formatfloat('#0.00%',f02*100.00/ff);
    s003.caption:=formatfloat('#0.00%',f03*100.00/ff);
    s004.caption:=formatfloat('#0.00%',f04*100.00/ff);
    if w005.Caption>'' then
    s005.caption:=formatfloat('#0.00%',f05*100.00/ff)
    else s005.caption:='';
  end else begin
    s001.caption:='0.00%';
    s002.caption:='0.00%';
    s003.caption:='0.00%';
    s004.caption:='0.00%';
    if w005.caption>'' then
    s005.caption:='0.00%'
    else s005.caption:='';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(wttl) as x7 from tbl_cap_oa_proj '
                +'where tplant=:x1 and yr=:x2 and m1=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('m1').value;
    open;
    if fieldbyname('x7').value>0 then begin
      s006.caption:=formatfloat('#0.00%',fieldbyname('x1').value*100.00/fieldbyname('x7').value);
      s007.caption:=formatfloat('#0.00%',fieldbyname('x2').value*100.00/fieldbyname('x7').value);
      s008.caption:=formatfloat('#0.00%',fieldbyname('x3').value*100.00/fieldbyname('x7').value);
      s009.caption:=formatfloat('#0.00%',fieldbyname('x4').value*100.00/fieldbyname('x7').value);
      if w005.caption>'' then
      s010.caption:=formatfloat('#0.00%',fieldbyname('x5').value*100.00/fieldbyname('x7').value)
      else s010.caption:='';
    end else begin
      s006.caption:='0.00%';
      s007.caption:='0.00%';
      s008.caption:='0.00%';
      s009.caption:='0.00%';
      if w005.caption>'' then
      s010.caption:='0.00%'
      else s010.caption:='';
    end;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn5Click(Sender: TObject);
begin
  ppReport1.Print;
end;

procedure Tfrmnewcap_nostyle_wk.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn2Click(Sender: TObject);
begin
  if combobox1.text='SL' then begin
    if dbgrideh1.SelectedIndex=4 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF1';
    end else if dbgrideh1.SelectedIndex=6 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF2';
    end else if dbgrideh1.SelectedIndex=8 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF3';
    end else if dbgrideh1.SelectedIndex=10 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF4';
    end else if dbgrideh1.SelectedIndex=12 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF5';
    end else if dbgrideh1.SelectedIndex=14 then begin
      label8.Visible:=true;
      dbedit1.Visible:=true;
      dbedit1.DataField:='WF6';
    end else begin
      label8.Visible:=false;
      dbedit1.Visible:=false;
    end;
    //if dbgrideh1.SelectedIndex=7 then begin
    //end else if dbgrideh1.SelectedIndex=9 then begin
    //end;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn3Click(Sender: TObject);
begin
  //
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn6Click(Sender: TObject);
begin
  if (dbgrideh1.SelectedIndex=5) or (dbgrideh1.SelectedIndex=8) or (dbgrideh1.SelectedIndex=11)
  or (dbgrideh1.SelectedIndex=14) or (dbgrideh1.SelectedIndex=17) or (dbgrideh1.SelectedIndex=20)
  then begin
    if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
    frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
    frmnewcap_style_adj.label4.caption:=query1.fieldbyname('m1').asstring;
    frmnewcap_style_adj.label5.Caption:=inttostr((dbgrideh1.SelectedIndex-2) div 3);
    frmnewcap_style_adj.cEdit1.Enabled:=true;
    frmnewcap_style_adj.spinEdit1.Enabled:=true;
    frmnewcap_style_adj.spinEdit2.Enabled:=true;
    frmnewcap_style_adj.cEdit2.Enabled:=false;
    frmnewcap_style_adj.show;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.Query1BeforePost(DataSet: TDataSet);
begin
  if query1.fieldbyname('bal').value<>0 then begin
    showmessage('Balance is not zero, data can not be saved!');
    abort;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn8Click(Sender: TObject);
var
  fty:string;
  mttl,w1,w2,w3,w4,w5,w6,bal:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  mttl:=query1.fieldbyname('mttl').value;
  w1:=query1.fieldbyname('w1').value;
  w2:=query1.fieldbyname('w2').value;
  w3:=query1.fieldbyname('w3').value;
  w4:=query1.fieldbyname('w4').value;
  w5:=query1.fieldbyname('w5').value;
  w6:=query1.fieldbyname('w6').value;
  bal:=query1.fieldbyname('bal').value;
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if (mttl=0) and (w1=0) and (w2=0) and (w3=0) and (w4=0) and (w5=0) and (w6=0) and (bal=0) then begin
    if frmnewcap_nostyle_detail=nil then frmnewcap_nostyle_detail:=tfrmnewcap_nostyle_detail.Create(nil);
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='delete from tbl_cap_oa_proj_detail where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5 and seq=1';
      params[0].asstring:=fty;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asstring:=query1.fieldbyname('cust').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      commandtext:='insert into tbl_cap_oa_proj_detail(tplant,yr,m1,cust,flag6,seq,dt,act) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asstring:=fty;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asstring:=query1.fieldbyname('cust').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      params[5].asinteger:=1;
      params[6].asdate:=date;
      params[7].asstring:='First Qty';
      execute;
    end;
    with frmnewcap_nostyle_detail.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_cap_oa_proj_detail where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
      params[0].asstring:=fty;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asstring:=query1.fieldbyname('cust').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      open;
    end;
    frmnewcap_nostyle_detail.BitBtn2.Visible:=true;
    frmnewcap_nostyle_detail.BitBtn3.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn4.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn5.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn6.Visible:=false;
    frmnewcap_nostyle_detail.Show;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn9Click(Sender: TObject);
var
  fty:string;
  mttl,w1,w2,w3,w4,w5,w6,bal:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  mttl:=query1.fieldbyname('mttl').value;
  w1:=query1.fieldbyname('w1').value;
  w2:=query1.fieldbyname('w2').value;
  w3:=query1.fieldbyname('w3').value;
  w4:=query1.fieldbyname('w4').value;
  w5:=query1.fieldbyname('w5').value;
  w6:=query1.fieldbyname('w6').value;
  bal:=query1.fieldbyname('bal').value;
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if ((mttl<>0) or ((mttl=0) and ((w1<>0) or (w2<>0) or (w3<>0) or (w4<>0) or (w5<>0) or (w6<>0)))) and (bal=0) then begin
    if frmnewcap_nostyle_detail=nil then frmnewcap_nostyle_detail:=tfrmnewcap_nostyle_detail.Create(nil);
    with frmnewcap_nostyle_detail.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_cap_oa_proj_detail where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
      params[0].asstring:=fty;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asstring:=query1.fieldbyname('cust').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      open;
    end;
    frmnewcap_nostyle_detail.BitBtn2.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn3.Visible:=true;
    frmnewcap_nostyle_detail.BitBtn4.Visible:=true;
    frmnewcap_nostyle_detail.BitBtn5.Visible:=true;
    frmnewcap_nostyle_detail.BitBtn6.Visible:=true;
    frmnewcap_nostyle_detail.Show;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_nostyle_wk.BitBtn10Click(Sender: TObject);
var
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if (query1.fieldbyname('bal').value=0) then begin
    if frmnewcap_nostyle_detail=nil then frmnewcap_nostyle_detail:=tfrmnewcap_nostyle_detail.Create(nil);
    with frmnewcap_nostyle_detail.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_cap_oa_proj_detail where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
      params[0].asstring:=fty;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asstring:=query1.fieldbyname('cust').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      open;
    end;
    frmnewcap_nostyle_detail.BitBtn2.Visible:=true;
    frmnewcap_nostyle_detail.BitBtn3.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn4.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn5.Visible:=false;
    frmnewcap_nostyle_detail.BitBtn6.Visible:=false;
    frmnewcap_nostyle_detail.Show;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
