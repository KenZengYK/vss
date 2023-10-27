unit newcap_newformatsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DateUtils, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, ppVar, ppStrtch, ppSubRpt, ppParameter;

type
  Tfrmnewcap_newformats = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    GroupBox1: TGroupBox;
    xh1: TCheckBox;
    GroupBox2: TGroupBox;
    xh2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    SpinEdit2: TSpinEdit;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    Label5: TLabel;
    SpinEdit4: TSpinEdit;
    Label6: TLabel;
    SpinEdit5: TSpinEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    m0001: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    m0002: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    m0003: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    m0004: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    m0005: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    m0006: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    m0007: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    m0008: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    m0009: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    m0010: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    m0011: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    m0012: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel63: TppLabel;
    ppShape2: TppShape;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel64: TppLabel;
    fty001: TppLabel;
    ppLabel65: TppLabel;
    yr001: TppLabel;
    a001: TppDBText;
    a002: TppDBText;
    a003: TppDBText;
    a004: TppDBText;
    a005: TppDBText;
    a006: TppDBText;
    a007: TppDBText;
    a008: TppDBText;
    a009: TppDBText;
    a010: TppDBText;
    a011: TppDBText;
    a012: TppDBText;
    a013: TppDBText;
    a014: TppDBText;
    a015: TppDBText;
    a016: TppDBText;
    a017: TppDBText;
    a018: TppDBText;
    a019: TppDBText;
    a020: TppDBText;
    a021: TppDBText;
    a022: TppDBText;
    a023: TppDBText;
    a024: TppDBText;
    a025: TppDBText;
    a026: TppDBText;
    a027: TppDBText;
    a028: TppDBText;
    a029: TppDBText;
    a030: TppDBText;
    a031: TppDBText;
    a032: TppDBText;
    a033: TppDBText;
    a034: TppDBText;
    a035: TppDBText;
    a036: TppDBText;
    a037: TppDBText;
    ppLabel66: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel67: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    RadioButton1: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Label7: TLabel;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    Label8: TLabel;
    ppSummaryBand1: TppSummaryBand;
    title002: TppLabel;
    ppShape3: TppShape;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel3: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel33: TppLabel;
    ppLabel38: TppLabel;
    ppLabel43: TppLabel;
    ppLabel48: TppLabel;
    ppLabel53: TppLabel;
    ppLabel58: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    s005: TppLabel;
    s006: TppLabel;
    s007: TppLabel;
    s008: TppLabel;
    s009: TppLabel;
    s010: TppLabel;
    s011: TppLabel;
    s012: TppLabel;
    stitle0003: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel72: TppLabel;
    ppLabel71: TppLabel;
    ppShape5: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel73: TppLabel;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
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
    su1: TppDBText;
    su2: TppDBText;
    su3: TppDBText;
    su4: TppDBText;
    su5: TppDBText;
    su6: TppDBText;
    su12: TppDBText;
    su7: TppDBText;
    su8: TppDBText;
    su9: TppDBText;
    su10: TppDBText;
    su11: TppDBText;
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
    TIntSet = set of 1..100;

var
  frmnewcap_newformats: Tfrmnewcap_newformats;

implementation

uses mainformu, newcapformu, newcap_newformats_wkformu;

{$R *.dfm}

procedure Tfrmnewcap_newformats.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    xh2.Checked:=false;
    spinedit2.Enabled:=true;
    spinedit3.Enabled:=true;
    spinedit4.Enabled:=false;
    spinedit5.Enabled:=false;
  end else begin
    spinedit2.Enabled:=false;
    spinedit3.Enabled:=false;
  end;
end;

procedure Tfrmnewcap_newformats.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    xh1.Checked:=false;
    spinedit4.Enabled:=true;
    spinedit5.Enabled:=true;
    spinedit2.Enabled:=false;
    spinedit3.Enabled:=false;
  end else begin
    spinedit4.Enabled:=false;
    spinedit5.Enabled:=false;
  end;
end;

procedure Tfrmnewcap_newformats.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmnewcap_newformat_wk<>nil then frmnewcap_newformat_wk:=nil;
  action:=cafree;
  frmnewcap_newformats:=nil;
end;

procedure Tfrmnewcap_newformats.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  i,wk:integer;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_newformat_new(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=strtoint(label8.caption);
      execute;
    end;
    //month 1-12
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat_sum1 where tm=:x1 order by seq,seq1';
      params[0].asdatetime:=tm;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat where tm=:x1 order by seq,seq1,seq2';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        fty001.Caption:=combobox1.text;
        yr001.Caption:=inttostr(spinedit1.value);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          //commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from tbl_cap_wkno where yr=:x1 group by m1';
          commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1';
          params[0].asinteger:=spinedit1.value;
          open;
          first;
          while not eof do begin
            if fieldbyname('m1').value=1 then m0001.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Jan)'
            else if fieldbyname('m1').value=2 then  m0002.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Feb)'
            else if fieldbyname('m1').value=3 then  m0003.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Mar)'
            else if fieldbyname('m1').value=4 then  m0004.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Apr)'
            else if fieldbyname('m1').value=5 then  m0005.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (May)'
            else if fieldbyname('m1').value=6 then  m0006.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Jun)'
            else if fieldbyname('m1').value=7 then  m0007.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Jul)'
            else if fieldbyname('m1').value=8 then  m0008.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Aug)'
            else if fieldbyname('m1').value=9 then  m0009.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Sep)'
            else if fieldbyname('m1').value=10 then  m0010.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Oct)'
            else if fieldbyname('m1').value=11 then  m0011.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Nov)'
            else if fieldbyname('m1').value=12 then  m0012.Caption:='Wk '+fieldbyname('w1').asstring+' - '+fieldbyname('w2').asstring+' (Dec)';
            application.ProcessMessages;
            next;
          end;
        end;
        title002.Caption:='(Summary by month)';
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_date where sel=1';
          open;
          if not fieldbyname('stdt').isnull then begin
            stitle0003.caption:='(Calculation start on '+formatdatetime('yyyy/MM/dd',fieldbyname('stdt').value);
            stitle0003.caption:=stitle0003.caption+ '   for '+fieldbyname('m1').asstring+' months)';
          end else begin
            stitle0003.caption:='(Calculation start on '+formatdatetime('yyyy/MM/dd',date-1)+')';
          end;
        end;
        ppReport1.Print;
      end;
    end;
    //
    {
    tm:=now;
    if frmnewcap_newformat_wk=nil then frmnewcap_newformat_wk:=tfrmnewcap_newformat_wk.create(nil);
    //month 1-3
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_newformat_new_wk(:x1,:x2,:x3,:x4,1)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=strtoint(label8.caption);
      execute;
    end;
    frmnewcap_newformat_wk.m0007.caption:=''; frmnewcap_newformat_wk.m0008.caption:='';
    frmnewcap_newformat_wk.m0009.caption:=''; frmnewcap_newformat_wk.m0010.caption:='';
    frmnewcap_newformat_wk.m0011.caption:=''; frmnewcap_newformat_wk.m0012.caption:='';
    frmnewcap_newformat_wk.m0013.caption:=''; frmnewcap_newformat_wk.m0014.caption:='';
    i:=0;
    with frmnewcap_newformat_wk.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat where tm=:x1 order by seq,seq1,seq2';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmnewcap_newformat_wk.fty001.Caption:=combobox1.text;
        frmnewcap_newformat_wk.yr001.Caption:=inttostr(spinedit1.value);
        with frmnewcap_newformat_wk.query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          //commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from view_wknobymonth where yr=:x1 group by m1';
          commandtext:='select distinct wkno from tbl_cap_wkno where yr=:x1 and wkno<=14 and m1<=3 order by wkno';
          params[0].asinteger:=spinedit1.value;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i=1 then frmnewcap_newformat_wk.m0001.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=2 then frmnewcap_newformat_wk.m0002.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=3 then frmnewcap_newformat_wk.m0003.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=4 then frmnewcap_newformat_wk.m0004.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=5 then frmnewcap_newformat_wk.m0005.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=6 then frmnewcap_newformat_wk.m0006.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=7 then frmnewcap_newformat_wk.m0007.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=8 then frmnewcap_newformat_wk.m0008.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=9 then frmnewcap_newformat_wk.m0009.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=10 then frmnewcap_newformat_wk.m0010.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=11 then frmnewcap_newformat_wk.m0011.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=12 then frmnewcap_newformat_wk.m0012.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=13 then frmnewcap_newformat_wk.m0013.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=14 then frmnewcap_newformat_wk. m0014.Caption:='Week '+fieldbyname('wkno').asstring;
            application.ProcessMessages;
            next;
          end;
        end;
        frmnewcap_newformat_wk.title002.Caption:='(Detail by week)';
        frmnewcap_newformat_wk.ppReport1.Print;
      end;
    end;
    //month 4-6
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_newformat_new_wk(:x1,:x2,:x3,:x4,2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=strtoint(label8.caption);
      execute;
    end;
    frmnewcap_newformat_wk.m0007.caption:=''; frmnewcap_newformat_wk.m0008.caption:='';
    frmnewcap_newformat_wk.m0009.caption:=''; frmnewcap_newformat_wk.m0010.caption:='';
    frmnewcap_newformat_wk.m0011.caption:=''; frmnewcap_newformat_wk.m0012.caption:='';
    frmnewcap_newformat_wk.m0013.caption:=''; frmnewcap_newformat_wk.m0014.caption:='';
    i:=0;
    with frmnewcap_newformat_wk.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat where tm=:x1 order by seq,seq1,seq2';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmnewcap_newformat_wk.fty001.Caption:=combobox1.text;
        frmnewcap_newformat_wk.yr001.Caption:=inttostr(spinedit1.value);
        with frmnewcap_newformat_wk.query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          //commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from view_wknobymonth where yr=:x1 group by m1';
          commandtext:='select distinct wkno from tbl_cap_wkno where yr=:x1 and wkno<=28 and m1>3 and m1<=6 order by wkno';
          params[0].asinteger:=spinedit1.value;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i=1 then frmnewcap_newformat_wk.m0001.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=2 then frmnewcap_newformat_wk.m0002.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=3 then frmnewcap_newformat_wk.m0003.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=4 then frmnewcap_newformat_wk.m0004.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=5 then frmnewcap_newformat_wk.m0005.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=6 then frmnewcap_newformat_wk.m0006.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=7 then frmnewcap_newformat_wk.m0007.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=8 then frmnewcap_newformat_wk.m0008.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=9 then frmnewcap_newformat_wk.m0009.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=10 then frmnewcap_newformat_wk.m0010.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=11 then frmnewcap_newformat_wk.m0011.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=12 then frmnewcap_newformat_wk.m0012.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=13 then frmnewcap_newformat_wk.m0013.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=14 then frmnewcap_newformat_wk. m0014.Caption:='Week '+fieldbyname('wkno').asstring;
            application.ProcessMessages;
            next;
          end;
        end;
        frmnewcap_newformat_wk.title002.Caption:='(Detail by week)';
        frmnewcap_newformat_wk.ppReport1.Print;
      end;
    end;
    //month 7-9
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_newformat_new_wk(:x1,:x2,:x3,:x4,3)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=strtoint(label8.caption);
      execute;
    end;
    frmnewcap_newformat_wk.m0007.caption:=''; frmnewcap_newformat_wk.m0008.caption:='';
    frmnewcap_newformat_wk.m0009.caption:=''; frmnewcap_newformat_wk.m0010.caption:='';
    frmnewcap_newformat_wk.m0011.caption:=''; frmnewcap_newformat_wk.m0012.caption:='';
    frmnewcap_newformat_wk.m0013.caption:=''; frmnewcap_newformat_wk.m0014.caption:='';
    i:=0;
    with frmnewcap_newformat_wk.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat where tm=:x1 order by seq,seq1,seq2';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmnewcap_newformat_wk.fty001.Caption:=combobox1.text;
        frmnewcap_newformat_wk.yr001.Caption:=inttostr(spinedit1.value);
        with frmnewcap_newformat_wk.query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          //commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from view_wknobymonth where yr=:x1 group by m1';
          commandtext:='select distinct wkno from tbl_cap_wkno where yr=:x1 and wkno<=42 and m1>6 and m1<=9 order by wkno';
          params[0].asinteger:=spinedit1.value;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i=1 then frmnewcap_newformat_wk.m0001.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=2 then frmnewcap_newformat_wk.m0002.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=3 then frmnewcap_newformat_wk.m0003.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=4 then frmnewcap_newformat_wk.m0004.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=5 then frmnewcap_newformat_wk.m0005.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=6 then frmnewcap_newformat_wk.m0006.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=7 then frmnewcap_newformat_wk.m0007.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=8 then frmnewcap_newformat_wk.m0008.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=9 then frmnewcap_newformat_wk.m0009.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=10 then frmnewcap_newformat_wk.m0010.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=11 then frmnewcap_newformat_wk.m0011.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=12 then frmnewcap_newformat_wk.m0012.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=13 then frmnewcap_newformat_wk.m0013.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=14 then frmnewcap_newformat_wk. m0014.Caption:='Week '+fieldbyname('wkno').asstring;
            application.ProcessMessages;
            next;
          end;
        end;
        frmnewcap_newformat_wk.title002.Caption:='(Detail by week)';
        frmnewcap_newformat_wk.ppReport1.Print;
      end;
    end;
    //month 10-12
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_newformat_new_wk(:x1,:x2,:x3,:x4,4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=strtoint(label8.caption);
      execute;
    end;
    frmnewcap_newformat_wk.m0007.caption:=''; frmnewcap_newformat_wk.m0008.caption:='';
    frmnewcap_newformat_wk.m0009.caption:=''; frmnewcap_newformat_wk.m0010.caption:='';
    frmnewcap_newformat_wk.m0011.caption:=''; frmnewcap_newformat_wk.m0012.caption:='';
    frmnewcap_newformat_wk.m0013.caption:=''; frmnewcap_newformat_wk.m0014.caption:='';
    i:=0;
    with frmnewcap_newformat_wk.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_newformat where tm=:x1 order by seq,seq1,seq2';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmnewcap_newformat_wk.fty001.Caption:=combobox1.text;
        frmnewcap_newformat_wk.yr001.Caption:=inttostr(spinedit1.value);
        with frmnewcap_newformat_wk.query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          //commandtext:='select distinct m1,min(wkno) as w1,max(wkno) as w2 from view_wknobymonth where yr=:x1 group by m1';
          commandtext:='select distinct wkno from tbl_cap_wkno where yr=:x1 and wkno<=54 and m1>9 and m1<=12 order by wkno';
          params[0].asinteger:=spinedit1.value;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i=1 then frmnewcap_newformat_wk.m0001.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=2 then frmnewcap_newformat_wk.m0002.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=3 then frmnewcap_newformat_wk.m0003.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=4 then frmnewcap_newformat_wk.m0004.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=5 then frmnewcap_newformat_wk.m0005.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=6 then frmnewcap_newformat_wk.m0006.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=7 then frmnewcap_newformat_wk.m0007.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=8 then frmnewcap_newformat_wk.m0008.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=9 then frmnewcap_newformat_wk.m0009.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=10 then frmnewcap_newformat_wk.m0010.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=11 then frmnewcap_newformat_wk.m0011.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=12 then frmnewcap_newformat_wk.m0012.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=13 then frmnewcap_newformat_wk.m0013.Caption:='Week '+fieldbyname('wkno').asstring
            else if i=14 then frmnewcap_newformat_wk. m0014.Caption:='Week '+fieldbyname('wkno').asstring;
            application.ProcessMessages;
            next;
          end;
        end;
        frmnewcap_newformat_wk.title002.Caption:='(Detail by week)';
        frmnewcap_newformat_wk.ppReport1.Print;
      end;
    end;
    }
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_newformats.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmnewcap_newformats.ppDetailBand1BeforePrint(Sender: TObject);
var
  set1,set2:TIntSet;
begin
  set1:=[3,7,11,15,19,23,27,31,35,39,43,47,51,55,59,63,67,71,75,79,83,87];
  set2:=[5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73,77,81,85,89];
  if (query1.fieldbyname('seq').value<=2) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
  end else if query1.fieldbyname('seq').value=3 then begin
    a001.DisplayFormat:='#0.00';a002.DisplayFormat:='#0.00';a003.DisplayFormat:='#0.00';
    a004.DisplayFormat:='#0.00';a005.DisplayFormat:='#0.00';a006.DisplayFormat:='#0.00';
    a007.DisplayFormat:='#0.00';a008.DisplayFormat:='#0.00';a009.DisplayFormat:='#0.00';
    a010.DisplayFormat:='#0.00';a011.DisplayFormat:='#0.00';a012.DisplayFormat:='#0.00';
    a013.DisplayFormat:='#0.00';a014.DisplayFormat:='#0.00';a015.DisplayFormat:='#0.00';
    a016.DisplayFormat:='#0.00';a017.DisplayFormat:='#0.00';a018.DisplayFormat:='#0.00';
    a019.DisplayFormat:='#0.00';a020.DisplayFormat:='#0.00';a021.DisplayFormat:='#0.00';
    a022.DisplayFormat:='#0.00';a023.DisplayFormat:='#0.00';a024.DisplayFormat:='#0.00';
    a025.DisplayFormat:='#0.00';a026.DisplayFormat:='#0.00';a027.DisplayFormat:='#0.00';
    a028.DisplayFormat:='#0.00';a029.DisplayFormat:='#0.00';a030.DisplayFormat:='#0.00';
    a031.DisplayFormat:='#0.00';a032.DisplayFormat:='#0.00';a033.DisplayFormat:='#0.00';
    a034.DisplayFormat:='#0.00';a035.DisplayFormat:='#0.00';a036.DisplayFormat:='#0.00';
  end else if (query1.fieldbyname('seq').value=4) and (query1.fieldbyname('seq2').value<=4) then begin
    a001.DisplayFormat:='#0.00%'; a004.DisplayFormat:='#0.00%'; a007.DisplayFormat:='#0.00%';
    a010.DisplayFormat:='#0.00%'; a013.DisplayFormat:='#0.00%'; a016.DisplayFormat:='#0.00%';
    a019.DisplayFormat:='#0.00%'; a022.DisplayFormat:='#0.00%'; a025.DisplayFormat:='#0.00%';
    a028.DisplayFormat:='#0.00%'; a031.DisplayFormat:='#0.00%'; a034.DisplayFormat:='#0.00%';
  end else if (query1.fieldbyname('seq').value=4) and (query1.fieldbyname('seq2').value>4) then begin
    a001.DisplayFormat:='#0.0000'; a004.DisplayFormat:='#0.0000'; a007.DisplayFormat:='#0.0000';
    a010.DisplayFormat:='#0.0000'; a013.DisplayFormat:='#0.0000'; a016.DisplayFormat:='#0.0000';
    a019.DisplayFormat:='#0.0000'; a022.DisplayFormat:='#0.0000'; a025.DisplayFormat:='#0.0000';
    a028.DisplayFormat:='#0.0000'; a031.DisplayFormat:='#0.0000'; a034.DisplayFormat:='#0.0000';
  end else if (query1.fieldbyname('seq').value=5) then begin //and ((query1.fieldbyname('seq2').value=1) or (query1.fieldbyname('seq2').value=3) or (query1.fieldbyname('seq2').value=5) or (query1.fieldbyname('seq2').value=7)) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
  end else if ((query1.fieldbyname('seq').value=6) or (query1.fieldbyname('seq').value=7))
  and (query1.fieldbyname('seq2').value<999) and (query1.fieldbyname('seq2').value<>5)
  and (query1.fieldbyname('seq2').value<>9) and (query1.fieldbyname('seq2').value<>13)
  and (query1.fieldbyname('seq2').value<>17) and (query1.fieldbyname('seq2').value<>21)
  and (query1.fieldbyname('seq2').value<>25) and (query1.fieldbyname('seq2').value<>29)
  and (query1.fieldbyname('seq2').value<>33) and (query1.fieldbyname('seq2').value<>37)
  and (query1.fieldbyname('seq2').value<>41) and (query1.fieldbyname('seq2').value<>45)
  and (query1.fieldbyname('seq2').value<>49) and (query1.fieldbyname('seq2').value<>53)
  and (query1.fieldbyname('seq2').value<>57) and (query1.fieldbyname('seq2').value<>61)
  and (query1.fieldbyname('seq2').value<>65) and (query1.fieldbyname('seq2').value<>69) then begin
    if (query1.fieldbyname('seq2').asinteger in set1) then begin
      a001.DisplayFormat:='#0.0000'; a004.DisplayFormat:='#0.0000'; a007.DisplayFormat:='#0.0000';
      a010.DisplayFormat:='#0.0000'; a013.DisplayFormat:='#0.0000'; a016.DisplayFormat:='#0.0000';
      a019.DisplayFormat:='#0.0000'; a022.DisplayFormat:='#0.0000'; a025.DisplayFormat:='#0.0000';
      a028.DisplayFormat:='#0.0000'; a031.DisplayFormat:='#0.0000'; a034.DisplayFormat:='#0.0000';
    end else begin
      a001.DisplayFormat:='#0.00'; a004.DisplayFormat:='#0.00'; a007.DisplayFormat:='#0.00';
      a010.DisplayFormat:='#0.00'; a013.DisplayFormat:='#0.00'; a016.DisplayFormat:='#0.00';
      a019.DisplayFormat:='#0.00'; a022.DisplayFormat:='#0.00'; a025.DisplayFormat:='#0.00';
      a028.DisplayFormat:='#0.00'; a031.DisplayFormat:='#0.00'; a034.DisplayFormat:='#0.00';
    end;
  end else if ((query1.fieldbyname('seq').value=6) or (query1.fieldbyname('seq').value=7)) and (query1.fieldbyname('seq2').value>=5) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
  end else if query1.fieldbyname('seq').value=8 then begin
    a001.displayformat:='#0'; a004.displayformat:='#0'; a007.displayformat:='#0';
    a010.displayformat:='#0'; a013.displayformat:='#0'; a016.displayformat:='#0';
    a019.displayformat:='#0'; a022.displayformat:='#0'; a025.displayformat:='#0';
    a028.displayformat:='#0'; a031.displayformat:='#0'; a034.displayformat:='#0';
  end else if (query1.fieldbyname('seq').value=9) and (query1.fieldbyname('seq2').value<9) then begin
    a001.displayformat:='#0'; a004.displayformat:='#0'; a007.displayformat:='#0';
    a010.displayformat:='#0'; a013.displayformat:='#0'; a016.displayformat:='#0';
    a019.displayformat:='#0'; a022.displayformat:='#0'; a025.displayformat:='#0';
    a028.displayformat:='#0'; a031.displayformat:='#0'; a034.displayformat:='#0';
  end else if (query1.fieldbyname('seq').value=9) and (query1.fieldbyname('seq2').value=9) then begin
    a001.DisplayFormat:='#0.00%'; a004.DisplayFormat:='#0.00%'; a007.DisplayFormat:='#0.00%';
    a010.DisplayFormat:='#0.00%'; a013.DisplayFormat:='#0.00%'; a016.DisplayFormat:='#0.00%';
    a019.DisplayFormat:='#0.00%'; a022.DisplayFormat:='#0.00%'; a025.DisplayFormat:='#0.00%';
    a028.DisplayFormat:='#0.00%'; a031.DisplayFormat:='#0.00%'; a034.DisplayFormat:='#0.00%';
  end else begin
  end;
end;

procedure Tfrmnewcap_newformats.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
  if (query1.fieldbyname('seq').value=6) or (query1.fieldbyname('seq').value=7) or (query1.fieldbyname('seq').value=8) or (query1.fieldbyname('seq').value=9) then ppGroupHeaderBand1.Visible:=true
  else ppGroupHeaderBand1.Visible:=false;
end;

procedure Tfrmnewcap_newformats.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq2,m101+m201+m301+m401+m501+m601+m701+m801+m901+m1001+m1101+m1201 as x1 from tbl_cap_newformat where tm=:x1 and seq=5 and seq2 in (1,2,3,4)';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq2').value=1 then begin
        s001.Caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('seq2').value=2 then begin
        s003.caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('seq2').value=3 then begin
        s002.Caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('seq2').value=4 then begin
        s004.Caption:=formatfloat('#0',fieldbyname('x1').value);
      end;
      application.ProcessMessages;
      next;
    end;

    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq2,m101 as x1 from tbl_cap_newformat where tm=:x1 and seq=3 and seq2 in (6,7)';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq2').value=6 then begin
        s005.Caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('seq2').value=7 then begin
        s006.caption:=formatfloat('#0',fieldbyname('x1').value);
      end;
      application.ProcessMessages;
      next;
    end;

    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq,m101+m201+m301+m401+m501+m601+m701+m801+m901+m1001+m1101+m1201 as x1 from tbl_cap_newformat where tm=:x1 and seq2=999 and seq in (6,7)';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq').value=6 then begin
        s007.Caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('seq').value=7 then begin
        s008.caption:=formatfloat('#0',fieldbyname('x1').value);
      end;
      application.ProcessMessages;
      next;
    end;

    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq2,(m101+m201+m301+m401+m501+m601+m701)/7.00 as x1 from tbl_cap_newformat where tm=:x1 and seq=3 and seq2 in (1,2)';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq2').value=1 then begin
        s011.Caption:=formatfloat('#0.0',fieldbyname('x1').value);
      end else if fieldbyname('seq2').value=2 then begin
        s012.caption:=formatfloat('#0.0',fieldbyname('x1').value);
      end;
      application.ProcessMessages;
      next;
    end;

    close;
    params.clear;
    commandtext:='select distinct flag6,sum(sah*(w1+w2+w3+w4+w5+w6)) as x1 from tbl_cap_oa_proj where tplant=''SL'' and yr=2011 group by flag6';
    open;
    first;
    while not eof do begin
      if fieldbyname('flag6').value='B' then begin
        s009.caption:=formatfloat('#0',fieldbyname('x1').value);
      end else if fieldbyname('flag6').value='K' then begin
        s010.caption:=formatfloat('#0',fieldbyname('x1').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_newformats.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('seq').value<3 then begin
    su1.DisplayFormat:='#,0';
    su2.DisplayFormat:='#,0';
    su3.DisplayFormat:='#,0';
    su4.DisplayFormat:='#,0';
    su5.DisplayFormat:='#,0';
    su6.DisplayFormat:='#,0';
    su7.DisplayFormat:='#,0';
    su8.DisplayFormat:='#,0';
    su9.DisplayFormat:='#,0';
    su10.DisplayFormat:='#,0';
    su11.DisplayFormat:='#,0';
    su12.DisplayFormat:='#,0';
  end else begin
    if (query4.fieldbyname('seq1').value=2) or (query4.fieldbyname('seq1').value=4) then begin
      su1.DisplayFormat:='#,0.00%';
      su2.DisplayFormat:='#,0.00%';
      su3.DisplayFormat:='#,0.00%';
      su4.DisplayFormat:='#,0.00%';
      su5.DisplayFormat:='#,0.00%';
      su6.DisplayFormat:='#,0.00%';
      su7.DisplayFormat:='#,0.00%';
      su8.DisplayFormat:='#,0.00%';
      su9.DisplayFormat:='#,0.00%';
      su10.DisplayFormat:='#,0.00%';
      su11.DisplayFormat:='#,0.00%';
      su12.DisplayFormat:='#,0.00%';
    end else begin
      su1.DisplayFormat:='#,0';
      su2.DisplayFormat:='#,0';
      su3.DisplayFormat:='#,0';
      su4.DisplayFormat:='#,0';
      su5.DisplayFormat:='#,0';
      su6.DisplayFormat:='#,0';
      su7.DisplayFormat:='#,0';
      su8.DisplayFormat:='#,0';
      su9.DisplayFormat:='#,0';
      su10.DisplayFormat:='#,0';
      su11.DisplayFormat:='#,0';
      su12.DisplayFormat:='#,0';
    end;
  end;
end;

end.
