unit newcap_wfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, GridsEh, DBGridEh, Buttons, DB,
  DBClient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppPrnabl, ppCtrls, ppBands, ppCache, ppVar, ppStrtch, ppMemo, myChkBox,
  ppViewr, ExtCtrls, ppParameter;

type
  Tfrmnewcap_wf = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    fty001: TppLabel;
    period001: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppShape2: TppShape;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    wf001: TppLabel;
    Panel1: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    ROQuery1: TClientDataSet;
    BitBtn11: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QueryOndutyWFChange(Sender: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_wf: Tfrmnewcap_wf;

implementation

uses mainformu, newcap_simftyformu, newcap_wfdetailformu,
  newcap_notepadformu, newcap_extractwfformu, newcap_dhlnotepadformu,
  newcap_recruitformu, newcap_wf_detailformu, newcap_hdlrulesformu;

{$R *.dfm}

procedure Tfrmnewcap_wf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_wf:=nil;
end;

procedure Tfrmnewcap_wf.FormShow(Sender: TObject);
begin
  dateedit1.date:=date-6;
  dateedit2.date:=date;
  if combobox1.text='' then
  combobox1.text:='SL';
  //combobox1change(self);
  {
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_wf where tplant='''+combobox1.text+'''';
    open;
  end;
  }
end;

procedure Tfrmnewcap_wf.Query1NewRecord(DataSet: TDataSet);
begin
  if combobox1.text<>'KBT' then
  query1.fieldbyname('tplant').value:=combobox1.text
  else query1.fieldbyname('tplant').value:='KB';
  query1.fieldbyname('typ').value:=label4.caption;
  query1.fieldbyname('dt').value:=dateedit1.date;
  query1.fieldbyname('w1').value:=0;
  query1.fieldbyname('onlinewf').value:=0;
  query1.fieldbyname('ondutywf').value:=0;
  query1.fieldbyname('inhandwf').value:=0;
  query1.fieldbyname('p1').value:=0;
  query1.fieldbyname('p2').value:=0;
  query1.fieldbyname('p3wf').value:=0;
  query1.fieldbyname('p3').value:=0;
  query1.fieldbyname('onhand1').value:=0;
  query1.fieldbyname('brw').value:=0;
  query1.fieldbyname('absence').value:=0;
  query1.fieldbyname('cfm').value:=false;
  query1.fieldbyname('cfm1').value:=false;
  query1.fieldbyname('wf3').value:=0;
  query1.fieldbyname('wf6').value:=0;
end;

procedure Tfrmnewcap_wf.BitBtn11Click(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  screen.cursor:=crSQLWait;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2011,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  //with query2 do begin
  with ROQuery1 do begin
    close;
    params.clear;
    params.Createparam(ftstring,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_cap_upddhl_dt_new(:x0,:x1,:x2)';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    execute;
  end;
  //if dateedit1.date>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_cap_wf where dt>=:x1 and dt<=:x2 and typ='''+label4.caption+'''';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wf.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  query1.append;
end;

procedure Tfrmnewcap_wf.BitBtn2Click(Sender: TObject);
begin
  {
  if not query1.fieldbyname('tplant').isnull then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='delete from tbl_cap_wf where tplant=:x1 and dt=:x2';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asdate:=query1.fieldbyname('dt').value;
        execute;
      end;
      query1.delete;
    end;
  end;
  }
  screen.cursor:=crSQLWait;
  try
  if frmnewcap_wf_detail=nil then frmnewcap_wf_detail:=tfrmnewcap_wf_detail.create(nil);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_cap_createwfdetail (:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asdate:=query1.fieldbyname('dt').value;
    params[2].asstring:=query1.fieldbyname('typ').value;
    execute;
  end;
  with frmnewcap_wf_detail.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select * from tbl_cap_wf1 where tplant=:x1 and dt=:x2 and typ=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asdate:=query1.fieldbyname('dt').value;
    params[2].asstring:=query1.fieldbyname('typ').value;
    open;
  end;
  frmnewcap_wf_detail.Caption:=frmnewcap_wf.Caption+'(Detail)';
  //frmnewcap_wf_detail.ComboBox1.ItemIndex:=0;
  if query1.fieldbyname('tplant').value='SL' then begin
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[0].value:='Sub-ttl (3A): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[1].value:='Sub-ttl (3B): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[2].value:='Sub-ttl (3D): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[3].value:='Sub-ttl (4A): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[4].value:='Sub-ttl (4B): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[5].value:='Sub-ttl (4C): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[6].value:='Sub-ttl (4D): - ';
    frmnewcap_wf_detail.combobox1.items.clear;
    frmnewcap_wf_detail.combobox1.items.add('3A');
    frmnewcap_wf_detail.combobox1.items.add('3B');
    frmnewcap_wf_detail.combobox1.items.add('3D');
    frmnewcap_wf_detail.combobox1.items.add('4A');
    frmnewcap_wf_detail.combobox1.items.add('4B');
    frmnewcap_wf_detail.combobox1.items.add('4C');
    frmnewcap_wf_detail.combobox1.items.add('4D');
  end else if query1.fieldbyname('tplant').value='GG' then begin
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[0].value:='Sub-ttl (1H): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[1].value:='Sub-ttl (RX): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[2].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[3].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[4].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[5].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[6].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.combobox1.items.clear;
    frmnewcap_wf_detail.combobox1.items.add('1H');
    frmnewcap_wf_detail.combobox1.items.add('RX');
  end else if query1.fieldbyname('tplant').value='RX' then begin
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[0].value:='Sub-ttl (RX1): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[1].value:='Sub-ttl (RX2): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[2].value:='Sub-ttl (RX3): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[3].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[4].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[5].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[6].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.combobox1.items.clear;
    frmnewcap_wf_detail.combobox1.items.add('RX1');
    frmnewcap_wf_detail.combobox1.items.add('RX2');
    frmnewcap_wf_detail.combobox1.items.add('RX3');
  end else if query1.fieldbyname('tplant').value='CS' then begin
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[0].value:='Sub-ttl (NS): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[1].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[2].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[3].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[4].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[5].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.dbgrideh1.columns[0].footers[6].value:='Sub-ttl (--): - ';
    frmnewcap_wf_detail.combobox1.items.clear;
    frmnewcap_wf_detail.combobox1.items.add('NS');
  end;
  frmnewcap_wf_detail.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wf.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmnewcap_wf.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select dt from tbl_cap_wf where tplant=:x1 and dt=:x2 and typ='''+label4.caption+'''';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asdate:=query1.fieldbyname('dt').value;
      open;
      if not fieldbyname('dt').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftfloat,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftfloat,'x27',ptinput);
          params.createparam(ftfloat,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftfloat,'x31',ptinput);
          params.createparam(ftfloat,'x32',ptinput);
          params.createparam(ftfloat,'x33',ptinput);
          params.createparam(ftfloat,'x34',ptinput);
          params.createparam(ftfloat,'x35',ptinput);
          params.createparam(ftfloat,'x36',ptinput);
          params.createparam(ftfloat,'x37',ptinput);
          params.createparam(ftfloat,'x38',ptinput);
          params.createparam(ftfloat,'x39',ptinput);
          params.createparam(ftfloat,'x40',ptinput);
          params.createparam(ftboolean,'x41',ptinput);
          params.createparam(ftboolean,'x42',ptinput);
          params.createparam(ftfloat,'x43',ptinput);
          params.createparam(ftfloat,'x44',ptinput);
          params.createparam(ftfloat,'x45',ptinput);
          params.createparam(ftstring,'x46',ptinput);
          params.createparam(ftfloat,'x47',ptinput);
          params.createparam(ftfloat,'x48',ptinput);
          params.createparam(ftfloat,'x49',ptinput);
          params.createparam(ftfloat,'x50',ptinput);
          params.createparam(ftfloat,'x51',ptinput);
          params.createparam(ftfloat,'x52',ptinput);
          params.createparam(ftfloat,'x53',ptinput);
          params.createparam(ftfloat,'x54',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          commandtext:='update tbl_cap_wf set ondutywf=:x1,inhandwf=:x2,d01=:x5,d02=:x6,d03=:x7,d11=:x8,d12=:x9,d13=:x10,d14=:x11,d15=:x12,d16=:x13,'
                      +'h01=:x14,h02=:x15,h03=:x16,h11=:x17,h12=:x18,h13=:x19,h14=:x20,h15=:x21,h16=:x22,dt01=:x23,ht01=:x24,dc01=:x25,dc02=:x26,dc03=:x27,'
                      +'dc04=:x28,dc05=:x29,dc06=:x30,dc07=:x31,td01=:x32,hc01=:x33,hc02=:x34,hc03=:x35,hc04=:x36,hc05=:x37,hc06=:x38,hc07=:x39,th01=:x40,'
                      +'cfm=:x41,cfm1=:x42,p1=:x43,p2=:x44,onhand1=:x45,remarks=:x46,brw=:x47,absence=:x48,p3wf=:x49,p3=:x50,onlinewf=:x51,bwf=:x52,'
                      +'wf3=:x53,wf6=:x54 where tplant=:x3 and dt=:x4 and typ='''+label4.caption+'''';

          if not query1.fieldbyname('ondutywf').isnull then
          params[0].asfloat:=query1.fieldbyname('ondutywf').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('inhandwf').isnull then
          params[1].asfloat:=query1.fieldbyname('inhandwf').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('d01').isnull then
          params[2].asfloat:=query1.fieldbyname('d01').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('d02').isnull then
          params[3].asfloat:=query1.fieldbyname('d02').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('d03').isnull then
          params[4].asfloat:=query1.fieldbyname('d03').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('d11').isnull then
          params[5].asfloat:=query1.fieldbyname('d11').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('d12').isnull then
          params[6].asfloat:=query1.fieldbyname('d12').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('d13').isnull then
          params[7].asfloat:=query1.fieldbyname('d13').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('d14').isnull then
          params[8].asfloat:=query1.fieldbyname('d14').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('d15').isnull then
          params[9].asfloat:=query1.fieldbyname('d15').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('d16').isnull then
          params[10].asfloat:=query1.fieldbyname('d16').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('h01').isnull then
          params[11].asfloat:=query1.fieldbyname('h01').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('h02').isnull then
          params[12].asfloat:=query1.fieldbyname('h02').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('h03').isnull then
          params[13].asfloat:=query1.fieldbyname('h03').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('h11').isnull then
          params[14].asfloat:=query1.fieldbyname('h11').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('h12').isnull then
          params[15].asfloat:=query1.fieldbyname('h12').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('h13').isnull then
          params[16].asfloat:=query1.fieldbyname('h13').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('h14').isnull then
          params[17].asfloat:=query1.fieldbyname('h14').value
          else params[17].asfloat:=0;
          if not query1.fieldbyname('h15').isnull then
          params[18].asfloat:=query1.fieldbyname('h15').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('h16').isnull then
          params[19].asfloat:=query1.fieldbyname('h16').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('dt01').isnull then
          params[20].asfloat:=query1.fieldbyname('dt01').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('ht01').isnull then
          params[21].asfloat:=query1.fieldbyname('ht01').value
          else params[21].asfloat:=0;
          if not query1.fieldbyname('dc01').isnull then
          params[22].asfloat:=query1.fieldbyname('dc01').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('dc02').isnull then
          params[23].asfloat:=query1.fieldbyname('dc02').value
          else params[23].asfloat:=0;
          if not query1.fieldbyname('dc03').isnull then
          params[24].asfloat:=query1.fieldbyname('dc03').value
          else params[24].asfloat:=0;
          if not query1.fieldbyname('dc04').isnull then
          params[25].asfloat:=query1.fieldbyname('dc04').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('dc05').isnull then
          params[26].asfloat:=query1.fieldbyname('dc05').value
          else params[26].asfloat:=0;
          if not query1.fieldbyname('dc06').isnull then
          params[27].asfloat:=query1.fieldbyname('dc06').value
          else params[27].asfloat:=0;
          if not query1.fieldbyname('dc07').isnull then
          params[28].asfloat:=query1.fieldbyname('dc07').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('td01').isnull then
          params[29].asfloat:=query1.fieldbyname('td01').value
          else params[29].asfloat:=0;
          if not query1.fieldbyname('hc01').isnull then
          params[30].asfloat:=query1.fieldbyname('hc01').value
          else params[30].asfloat:=0;
          if not query1.fieldbyname('hc02').isnull then
          params[31].asfloat:=query1.fieldbyname('hc02').value
          else params[31].asfloat:=0;
          if not query1.fieldbyname('hc03').isnull then
          params[32].asfloat:=query1.fieldbyname('hc03').value
          else params[32].asfloat:=0;
          if not query1.fieldbyname('hc04').isnull then
          params[33].asfloat:=query1.fieldbyname('hc04').value
          else params[33].asfloat:=0;
          if not query1.fieldbyname('hc05').isnull then
          params[34].asfloat:=query1.fieldbyname('hc05').value
          else params[34].asfloat:=0;
          if not query1.fieldbyname('hc06').isnull then
          params[35].asfloat:=query1.fieldbyname('hc06').value
          else params[35].asfloat:=0;
          if not query1.fieldbyname('hc07').isnull then
          params[36].asfloat:=query1.fieldbyname('hc07').value
          else params[36].asfloat:=0;
          if not query1.fieldbyname('th01').isnull then
          params[37].asfloat:=query1.fieldbyname('th01').value
          else params[37].asfloat:=0;
          if not query1.fieldbyname('cfm').isnull then
          params[38].asboolean:=query1.fieldbyname('cfm').value
          else params[38].asboolean:=false;
          if not query1.fieldbyname('cfm1').isnull then
          params[39].asboolean:=query1.fieldbyname('cfm1').value
          else params[39].asboolean:=false;
          if not query1.fieldbyname('p1').isnull then
          params[40].asfloat:=query1.fieldbyname('p1').value
          else params[40].asfloat:=0;
          if not query1.fieldbyname('p2').isnull then
          params[41].asfloat:=query1.fieldbyname('p2').value
          else params[41].asfloat:=0;
          if not query1.fieldbyname('onhand1').isnull then
          params[42].asfloat:=query1.fieldbyname('onhand1').value
          else params[42].asfloat:=0;
          if not query1.fieldbyname('remarks').isnull then
          params[43].asstring:=query1.fieldbyname('remarks').value
          else params[43].asstring:='';
          if not query1.fieldbyname('brw').isnull then
          params[44].asfloat:=query1.fieldbyname('brw').value
          else params[44].asfloat:=0;
          params[45].asfloat:=query1.fieldbyname('absence').value;
          params[46].asfloat:=query1.fieldbyname('p3wf').value;
          params[47].asfloat:=query1.fieldbyname('p3').value;
          if not query1.fieldbyname('onlinewf').isnull then
          params[48].asfloat:=query1.fieldbyname('onlinewf').value
          else params[48].asfloat:=0;
          if not query1.fieldbyname('bwf').isnull then
          params[49].asfloat:=query1.fieldbyname('bwf').value
          else params[49].asfloat:=0;
          if not query1.fieldbyname('wf3').isnull then
          params[50].asfloat:=query1.fieldbyname('wf3').value
          else params[50].asfloat:=0;
          if not query1.fieldbyname('wf6').isnull then
          params[51].asfloat:=query1.fieldbyname('wf6').value
          else params[51].asfloat:=0;
          params[52].asstring:=query1.fieldbyname('tplant').value;
          params[53].asdate:=query1.fieldbyname('dt').value;
          execute;
        end;
        }
          str1:='update tbl_cap_wf set ';
          if not query1.fieldbyname('ondutywf').isnull then
          str1:=str1+'ondutywf='+query1.fieldbyname('ondutywf').asstring+','
          else str1:=str1+'ondutywf=0,';
          if not query1.fieldbyname('inhandwf').isnull then
          str1:=str1+'inhandwf='+query1.fieldbyname('inhandwf').asstring+','
          else str1:=str1+'inhandwf=0,';
          if not query1.fieldbyname('d01').isnull then
          str1:=str1+'d01='+query1.fieldbyname('d01').asstring+','
          else str1:=str1+'d01=0,';
          if not query1.fieldbyname('d02').isnull then
          str1:=str1+'d02='+query1.fieldbyname('d02').asstring+','
          else str1:=str1+'d02=0,';
          if not query1.fieldbyname('d03').isnull then
          str1:=str1+'d03='+query1.fieldbyname('d03').asstring+','
          else str1:=str1+'d03=0,';
          if not query1.fieldbyname('d11').isnull then
          str1:=str1+'d11='+query1.fieldbyname('d11').asstring+','
          else str1:=str1+'d11=0,';
          if not query1.fieldbyname('d12').isnull then
          str1:=str1+'d12='+query1.fieldbyname('d12').asstring+','
          else str1:=str1+'d12=0,';
          if not query1.fieldbyname('d13').isnull then
          str1:=str1+'d13='+query1.fieldbyname('d13').asstring+','
          else str1:=str1+'d13=0,';
          if not query1.fieldbyname('d14').isnull then
          str1:=str1+'d14='+query1.fieldbyname('d14').asstring+','
          else str1:=str1+'d14=0,';
          if not query1.fieldbyname('d15').isnull then
          str1:=str1+'d15='+query1.fieldbyname('d15').asstring+','
          else str1:=str1+'d15=0,';
          if not query1.fieldbyname('d16').isnull then
          str1:=str1+'d16='+query1.fieldbyname('d16').asstring+','
          else str1:=str1+'d16=0,';
          if not query1.fieldbyname('h01').isnull then
          str1:=str1+'h01='+query1.fieldbyname('h01').asstring+','
          else str1:=str1+'h01=0,';
          if not query1.fieldbyname('h02').isnull then
          str1:=str1+'h02='+query1.fieldbyname('h02').asstring+','
          else str1:=str1+'h02=0,';
          if not query1.fieldbyname('h03').isnull then
          str1:=str1+'h03='+query1.fieldbyname('h03').asstring+','
          else str1:=str1+'h03=0,';
          if not query1.fieldbyname('h11').isnull then
          str1:=str1+'h11='+query1.fieldbyname('h11').asstring+','
          else str1:=str1+'h11=0,';
          if not query1.fieldbyname('h12').isnull then
          str1:=str1+'h12='+query1.fieldbyname('h12').asstring+','
          else str1:=str1+'h12=0,';
          if not query1.fieldbyname('h13').isnull then
          str1:=str1+'h13='+query1.fieldbyname('h13').asstring+','
          else str1:=str1+'h13=0,';
          if not query1.fieldbyname('h14').isnull then
          str1:=str1+'h14='+query1.fieldbyname('h14').asstring+','
          else str1:=str1+'h14=0,';
          if not query1.fieldbyname('h15').isnull then
          str1:=str1+'h15='+query1.fieldbyname('h15').asstring+','
          else str1:=str1+'h15=0,';
          if not query1.fieldbyname('h16').isnull then
          str1:=str1+'h16='+query1.fieldbyname('h16').asstring+','
          else str1:=str1+'h16=0,';
          if not query1.fieldbyname('dt01').isnull then
          str1:=str1+'dt01='+query1.fieldbyname('dt01').asstring+','
          else str1:=str1+'dt01=0,';
          if not query1.fieldbyname('ht01').isnull then
          str1:=str1+'ht01='+query1.fieldbyname('ht01').asstring+','
          else str1:=str1+'ht01=0,';
          if not query1.fieldbyname('td01').isnull then
          str1:=str1+'td01='+query1.fieldbyname('td01').asstring+','
          else str1:=str1+'td01=0,';
          if not query1.fieldbyname('th01').isnull then
          str1:=str1+'th01='+query1.fieldbyname('th01').asstring+','
          else str1:=str1+'th01=0,';
          if not query1.fieldbyname('dc01').isnull then
          str1:=str1+'dc01='+query1.fieldbyname('dc01').asstring+','
          else str1:=str1+'dc01=0,';
          if not query1.fieldbyname('dc02').isnull then
          str1:=str1+'dc02='+query1.fieldbyname('dc02').asstring+','
          else str1:=str1+'dc02=0,';
          if not query1.fieldbyname('dc03').isnull then
          str1:=str1+'dc03='+query1.fieldbyname('dc03').asstring+','
          else str1:=str1+'dc03=0,';
          if not query1.fieldbyname('dc04').isnull then
          str1:=str1+'dc04='+query1.fieldbyname('dc04').asstring+','
          else str1:=str1+'dc04=0,';
          if not query1.fieldbyname('dc05').isnull then
          str1:=str1+'dc05='+query1.fieldbyname('dc05').asstring+','
          else str1:=str1+'dc05=0,';
          if not query1.fieldbyname('dc06').isnull then
          str1:=str1+'dc06='+query1.fieldbyname('dc06').asstring+','
          else str1:=str1+'dc06=0,';
          if not query1.fieldbyname('dc07').isnull then
          str1:=str1+'dc07='+query1.fieldbyname('dc07').asstring+','
          else str1:=str1+'dc07=0,';
          if not query1.fieldbyname('hc01').isnull then
          str1:=str1+'hc01='+query1.fieldbyname('hc01').asstring+','
          else str1:=str1+'hc01=0,';
          if not query1.fieldbyname('hc02').isnull then
          str1:=str1+'hc02='+query1.fieldbyname('hc02').asstring+','
          else str1:=str1+'hc02=0,';
          if not query1.fieldbyname('hc03').isnull then
          str1:=str1+'hc03='+query1.fieldbyname('hc03').asstring+','
          else str1:=str1+'hc03=0,';
          if not query1.fieldbyname('hc04').isnull then
          str1:=str1+'hc04='+query1.fieldbyname('hc04').asstring+','
          else str1:=str1+'hc04=0,';
          if not query1.fieldbyname('hc05').isnull then
          str1:=str1+'hc05='+query1.fieldbyname('hc05').asstring+','
          else str1:=str1+'hc05=0,';
          if not query1.fieldbyname('hc06').isnull then
          str1:=str1+'hc06='+query1.fieldbyname('hc06').asstring+','
          else str1:=str1+'hc06=0,';
          if not query1.fieldbyname('hc07').isnull then
          str1:=str1+'hc07='+query1.fieldbyname('hc07').asstring+','
          else str1:=str1+'hc07=0,';
          if not query1.fieldbyname('cfm').isnull then
          str1:=str1+'cfm='+query1.fieldbyname('cfm').asstring+','
          else str1:=str1+'cfm=0,';
          if not query1.fieldbyname('cfm1').isnull then
          str1:=str1+'cfm1='+query1.fieldbyname('cfm1').asstring+','
          else str1:=str1+'cfm1=0,';
          if not query1.fieldbyname('p1').isnull then
          str1:=str1+'p1='+query1.fieldbyname('p1').asstring+','
          else str1:=str1+'p1=0,';
          if not query1.fieldbyname('p2').isnull then
          str1:=str1+'p2='+query1.fieldbyname('p2').asstring+','
          else str1:=str1+'p2=0,';
          if not query1.fieldbyname('onhand1').isnull then
          str1:=str1+'onhand1='+query1.fieldbyname('onhand1').asstring+','
          else str1:=str1+'onhand1=0,';
          if not query1.fieldbyname('remarks').isnull then
          str1:=str1+'remarks='''+query1.fieldbyname('remarks').value+''','
          else str1:=str1+'remarks='''',';
          if not query1.fieldbyname('brw').isnull then
          str1:=str1+'brw='+query1.fieldbyname('brw').asstring+','
          else str1:=str1+'brw=0,';
          str1:=str1+'absence='+query1.fieldbyname('absence').asstring+',';
          str1:=str1+'p3wf='+query1.fieldbyname('p3wf').asstring+',';
          str1:=str1+'p3='+query1.fieldbyname('p3').asstring+',';
          if not query1.fieldbyname('onlinewf').isnull then
          str1:=str1+'onlinewf='+query1.fieldbyname('onlinewf').asstring+','
          else str1:=str1+'onlinewf=0,';
          if not query1.fieldbyname('bwf').isnull then
          str1:=str1+'bwf='+query1.fieldbyname('bwf').asstring+','
          else str1:=str1+'bwf=0,';
          if not query1.fieldbyname('wf3').isnull then
          str1:=str1+'wf3='+query1.fieldbyname('wf3').asstring+','
          else str1:=str1+'wf3=0,';
          if not query1.fieldbyname('wf6').isnull then
          str1:=str1+'wf6='+query1.fieldbyname('wf6').asstring+' '
          else str1:=str1+'wf6=0 ';
          str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
          str1:=str1+'and dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt').value)+'''';
          //showmessage(str1);
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftfloat,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftfloat,'x27',ptinput);
          params.createparam(ftfloat,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftfloat,'x31',ptinput);
          params.createparam(ftfloat,'x32',ptinput);
          params.createparam(ftfloat,'x33',ptinput);
          params.createparam(ftfloat,'x34',ptinput);
          params.createparam(ftfloat,'x35',ptinput);
          params.createparam(ftfloat,'x36',ptinput);
          params.createparam(ftfloat,'x37',ptinput);
          params.createparam(ftfloat,'x38',ptinput);
          params.createparam(ftfloat,'x39',ptinput);
          params.createparam(ftfloat,'x40',ptinput);
          params.createparam(ftboolean,'x41',ptinput);
          params.createparam(ftboolean,'x42',ptinput);
          params.createparam(ftfloat,'x43',ptinput);
          params.createparam(ftfloat,'x44',ptinput);
          params.createparam(ftfloat,'x45',ptinput);
          params.createparam(ftstring,'x46',ptinput);
          params.createparam(ftfloat,'x47',ptinput);
          params.createparam(ftfloat,'x48',ptinput);
          params.createparam(ftfloat,'x49',ptinput);
          params.createparam(ftfloat,'x50',ptinput);
          params.createparam(ftstring,'x51',ptinput);
          params.createparam(ftfloat,'x52',ptinput);
          params.createparam(ftfloat,'x53',ptinput);
          params.createparam(ftfloat,'x54',ptinput);
          params.createparam(ftfloat,'x55',ptinput);
          commandtext:='insert into tbl_cap_wf(ondutywf,inhandwf,tplant,dt,d01,d02,d03,d11,d12,d13,d14,d15,d16,h01,h02,h03,h11,h12,h13,h14,h15,h16,dt01,ht01,dc01,dc02,dc03,dc04,dc05,dc06,dc07,td01,'
                      +'hc01,hc02,hc03,hc04,hc05,hc06,hc07,th01,cfm,cfm1,p1,p2,onhand1,remarks,brw,absence,p3wf,p3,typ,onlinewf,bwf,wf3,wf6) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33,:x34,:x35,'
                      +':x36,:x37,:x38,:x39,:x40,:x41,:x42,:x43,:x44,:x45,:x46,:x47,:x48,:x49,:x50,:x51,:x52,:x53,:x54,:x55)';
          if not query1.fieldbyname('ondutywf').isnull then
          params[0].asfloat:=query1.fieldbyname('ondutywf').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('inhandwf').isnull then
          params[1].asfloat:=query1.fieldbyname('inhandwf').value
          else params[1].asfloat:=0;
          params[2].asstring:=query1.fieldbyname('tplant').value;
          params[3].asdate:=query1.fieldbyname('dt').value;
          if not query1.fieldbyname('d01').isnull then
          params[4].asfloat:=query1.fieldbyname('h01').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('d02').isnull then
          params[5].asfloat:=query1.fieldbyname('h02').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('d03').isnull then
          params[6].asfloat:=query1.fieldbyname('h03').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('d11').isnull then
          params[7].asfloat:=query1.fieldbyname('d11').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('d12').isnull then
          params[8].asfloat:=query1.fieldbyname('d12').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('d13').isnull then
          params[9].asfloat:=query1.fieldbyname('d13').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('d14').isnull then
          params[10].asfloat:=query1.fieldbyname('d14').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('d15').isnull then
          params[11].asfloat:=query1.fieldbyname('d15').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('d16').isnull then
          params[12].asfloat:=query1.fieldbyname('d16').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('h01').isnull then
          params[13].asfloat:=query1.fieldbyname('h01').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('h02').isnull then
          params[14].asfloat:=query1.fieldbyname('h02').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('h03').isnull then
          params[15].asfloat:=query1.fieldbyname('h03').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('h11').isnull then
          params[16].asfloat:=query1.fieldbyname('h11').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('h12').isnull then
          params[17].asfloat:=query1.fieldbyname('h12').value
          else params[17].asfloat:=0;
          if not query1.fieldbyname('h13').isnull then
          params[18].asfloat:=query1.fieldbyname('h13').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('h14').isnull then
          params[19].asfloat:=query1.fieldbyname('h14').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('h15').isnull then
          params[20].asfloat:=query1.fieldbyname('h15').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('h16').isnull then
          params[21].asfloat:=query1.fieldbyname('h16').value
          else params[21].asfloat:=0;
          if not query1.fieldbyname('dt01').isnull then
          params[22].asfloat:=query1.fieldbyname('dt01').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('ht01').isnull then
          params[23].asfloat:=query1.fieldbyname('ht01').value
          else params[23].asfloat:=0;
          if not query1.fieldbyname('dc01').isnull then
          params[24].asfloat:=query1.fieldbyname('dc01').value
          else params[24].asfloat:=0;
          if not query1.fieldbyname('dc02').isnull then
          params[25].asfloat:=query1.fieldbyname('dc02').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('dc03').isnull then
          params[26].asfloat:=query1.fieldbyname('dc03').value
          else params[26].asfloat:=0;
          if not query1.fieldbyname('dc04').isnull then
          params[27].asfloat:=query1.fieldbyname('dc04').value
          else params[27].asfloat:=0;
          if not query1.fieldbyname('dc05').isnull then
          params[28].asfloat:=query1.fieldbyname('dc05').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('dc06').isnull then
          params[29].asfloat:=query1.fieldbyname('dc06').value
          else params[29].asfloat:=0;
          if not query1.fieldbyname('dc07').isnull then
          params[30].asfloat:=query1.fieldbyname('dc07').value
          else params[30].asfloat:=0;
          if not query1.fieldbyname('td01').isnull then
          params[31].asfloat:=query1.fieldbyname('td01').value
          else params[31].asfloat:=0;
          if not query1.fieldbyname('hc01').isnull then
          params[32].asfloat:=query1.fieldbyname('hc01').value
          else params[32].asfloat:=0;
          if not query1.fieldbyname('hc02').isnull then
          params[33].asfloat:=query1.fieldbyname('hc02').value
          else params[33].asfloat:=0;
          if not query1.fieldbyname('hc03').isnull then
          params[34].asfloat:=query1.fieldbyname('hc03').value
          else params[34].asfloat:=0;
          if not query1.fieldbyname('hc04').isnull then
          params[35].asfloat:=query1.fieldbyname('hc04').value
          else params[35].asfloat:=0;
          if not query1.fieldbyname('hc05').isnull then
          params[36].asfloat:=query1.fieldbyname('hc05').value
          else params[36].asfloat:=0;
          if not query1.fieldbyname('hc06').isnull then
          params[37].asfloat:=query1.fieldbyname('hc06').value
          else params[37].asfloat:=0;
          if not query1.fieldbyname('hc07').isnull then
          params[38].asfloat:=query1.fieldbyname('hc07').value
          else params[38].asfloat:=0;
          if not query1.fieldbyname('th01').isnull then
          params[39].asfloat:=query1.fieldbyname('th01').value
          else params[39].asfloat:=0;
          if not query1.fieldbyname('cfm').isnull then
          params[40].asboolean:=query1.fieldbyname('cfm').value
          else params[40].asboolean:=false;
          if not query1.fieldbyname('cfm1').isnull then
          params[41].asboolean:=query1.fieldbyname('cfm1').value
          else params[41].asboolean:=false;
          if not query1.fieldbyname('p1').isnull then
          params[42].asfloat:=query1.fieldbyname('p1').value
          else params[42].asfloat:=0;
          if not query1.fieldbyname('p2').isnull then
          params[43].asfloat:=query1.fieldbyname('p2').value
          else params[43].asfloat:=0;
          if not query1.fieldbyname('onhand1').isnull then
          params[44].asfloat:=query1.fieldbyname('onhand1').value
          else params[44].asfloat:=0;
          if not query1.fieldbyname('remarks').isnull then
          params[45].asstring:=query1.fieldbyname('remarks').value
          else params[45].asstring:='';
          if not query1.fieldbyname('brw').isnull then
          params[46].asfloat:=query1.fieldbyname('brw').value
          else params[46].asfloat:=0;
          params[47].asfloat:=query1.fieldbyname('absence').value;
          params[48].asfloat:=query1.fieldbyname('p3wf').value;
          params[49].asfloat:=query1.fieldbyname('p3').value;
          params[50].asstring:=label4.caption;
          if not query1.fieldbyname('onlinewf').isnull then
          params[51].asfloat:=query1.fieldbyname('onlinewf').value
          else params[51].asfloat:=0;
          if not query1.fieldbyname('bwf').isnull then
          params[52].asfloat:=query1.fieldbyname('bwf').value
          else params[52].asfloat:=0;
          if not query1.fieldbyname('wf3').isnull then
          params[53].asfloat:=query1.fieldbyname('wf3').value
          else params[53].asfloat:=0;
          if not query1.fieldbyname('wf6').isnull then
          params[54].asfloat:=query1.fieldbyname('wf6').value
          else params[54].asfloat:=0;
          execute;
        end;
      end;
    end;
  //end;
  if frmnewcap_wf_detail<>nil then begin
    frmnewcap_wf_detail.Label14.Caption:=' = '+formatfloat('#,0',query1.fieldbyname('d11').value+query1.fieldbyname('d12').value+query1.fieldbyname('d13').value+query1.fieldbyname('d14').value+query1.fieldbyname('d16').value+query1.fieldbyname('dc01').value);
  end;
end;

procedure Tfrmnewcap_wf.ComboBox1Change(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  screen.cursor:=crSQLWait;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2011,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  //with query2 do begin
  with ROQuery1 do begin
    close;
    params.clear;
    params.Createparam(ftstring,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_cap_upddhl_dt_new(:x0,:x1,:x2)';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    execute;
  end;
  //if dateedit1.date>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_cap_wf where dt>=:x1 and dt<=:x2 and typ='''+label4.caption+'''';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
    end;
  {
  end else begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_wf';
      if combobox1.text>'' then commandtext:=commandtext+' where tplant='''+combobox1.text+'''';
      open;
    end;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wf.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmnewcap_wfdetail=nil then frmnewcap_wfdetail:=tfrmnewcap_wfdetail.create(nil);
  frmnewcap_wfdetail.show;
end;

procedure Tfrmnewcap_wf.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmnewcap_wfdetail=nil then frmnewcap_wfdetail:=tfrmnewcap_wfdetail.create(nil);
  frmnewcap_wfdetail.show;
end;

procedure Tfrmnewcap_wf.BitBtn4Click(Sender: TObject);
begin
  //if frmnewcap_notepad=nil then frmnewcap_notepad:=tfrmnewcap_notepad.create(nil);
  //frmnewcap_notepad.show;
  if frmnewcap_dhlnotepad=nil then frmnewcap_dhlnotepad:=tfrmnewcap_dhlnotepad.create(nil);
  frmnewcap_dhlnotepad.DBText1.DataSource:=datasource1;
  frmnewcap_dhlnotepad.DBText1.DataField:='TPLANT';
  frmnewcap_dhlnotepad.Label1.Caption:='Factory ';
  frmnewcap_dhlnotepad.DBText2.DataSource:=datasource1;
  frmnewcap_dhlnotepad.DBMemo1.DataSource:=datasource1;
  frmnewcap_dhlnotepad.show;
end;

procedure Tfrmnewcap_wf.BitBtn6Click(Sender: TObject);
var
  rwf,rwf1:boolean;
begin
  //determine the authority
  rwf:=false; rwf1:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select rwf,rwf1 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('rwf').isnull then rwf:=fieldbyname('rwf').value;
    if not fieldbyname('rwf1').isnull then rwf1:=fieldbyname('rwf1').value;
  end;
  if rwf then begin
    if query1.fieldbyname('cfm').value=false then begin
      if application.MessageBox('Confirm the data for that date?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query1 do begin
          edit;
          fieldbyname('cfm').value:=true;
          post;
        end;
      end;
    end else showmessage('Already confirmed!');
  end else if rwf1 then begin
    if query1.fieldbyname('cfm1').value=false then begin
      if application.MessageBox('Confirm the data for that date?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query1 do begin
          edit;
          fieldbyname('cfm1').value:=true;
          post;
        end;
      end;
    end else showmessage('Already confirmed!');
  end else showmessage('No authority!');
end;

procedure Tfrmnewcap_wf.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('onlinewf') as TFloatField).DisplayFormat:='#,0';
  query1.fieldbyname('ondutywf').onchange:=QueryOndutyWFChange;
  query1.fieldbyname('inhandwf').onchange:=QueryOndutyWFChange;
  //
end;

procedure Tfrmnewcap_wf.QueryOndutyWFChange(Sender: TField);
begin
  if query1.fieldbyname('w1').value>0 then begin
    query1.fieldbyname('p1').value:=(query1.fieldbyname('onlinewf').value-query1.fieldbyname('w1').value)*100.00/query1.fieldbyname('w1').value;
    query1.fieldbyname('p3wf').value:=query1.fieldbyname('inhandwf').value-query1.fieldbyname('w1').value;
    query1.fieldbyname('p3').value:=(query1.fieldbyname('inhandwf').value-query1.fieldbyname('w1').value)*100.00/query1.fieldbyname('w1').value;
  end;
  if query1.fieldbyname('onlinewf').value>0 then begin
    query1.fieldbyname('p2').value:=(query1.fieldbyname('ondutywf').value-query1.fieldbyname('onlinewf').value)*100.00/query1.fieldbyname('onlinewf').value;
  end;
end;

procedure Tfrmnewcap_wf.BitBtn8Click(Sender: TObject);
begin
  if frmnewcap_extractwf=nil then frmnewcap_extractwf:=tfrmnewcap_extractwf.create(nil);
  frmnewcap_extractwf.wf001.caption:=formatfloat('#0',query1.fieldbyname('ondutywf').value-query1.fieldbyname('w1').value);
  with frmnewcap_extractwf.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_cap_wf_detail where tplant=:x1 and dt=:x2 and typ1='''+label4.caption+'''';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asdate:=query1.fieldbyname('dt').value;
    open;
  end;
  frmnewcap_extractwf.show;
end;

procedure Tfrmnewcap_wf.BitBtn5Click(Sender: TObject);
begin
  if frmnewcap_recruit=nil then frmnewcap_recruit:=tfrmnewcap_recruit.create(nil);
  frmnewcap_recruit.pagecontrol1.activepageindex:=0;
  frmnewcap_recruit.show;
end;

procedure Tfrmnewcap_wf.BitBtn7Click(Sender: TObject);
begin
  if frmnewcap_hdlrules=nil then frmnewcap_hdlrules:=tfrmnewcap_hdlrules.create(nil);
  with frmnewcap_hdlrules.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_wf_rules';
    open;
  end;
  frmnewcap_hdlrules.Show;
end;

procedure Tfrmnewcap_wf.BitBtn9Click(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2011,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_cap_wf where dt>=:x1 and dt<=:x2 and typ='''+label4.caption+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    commandtext:=commandtext+' order by tplant,dt';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('dt').isnull then begin
      fty001.Caption:='Factory: '+combobox1.text;
      period001.Caption:='Period from: '+dateedit1.Text+' to: '+dateedit2.Text;
      ppReport1.Print;
    end;
  end;
end;

procedure Tfrmnewcap_wf.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmnewcap_wf.ppDetailBand1BeforePrint(Sender: TObject);
begin
  wf001.Caption:=formatfloat('#,0',query4.fieldbyname('inhandwf').value-query4.fieldbyname('absence').value);
end;

procedure Tfrmnewcap_wf.DBGridEh1CellClick(Column: TColumnEh);
begin
  if dbgrideh1.SelectedIndex=18 then begin
    bitbtn4click(self);
  end;
end;

end.
