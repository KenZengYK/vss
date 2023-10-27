unit newcap_printbalancingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ppParameter, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, ppViewr, Menus;

type
  Tfrmnewcap_printbalancing = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    msp01: TSpinEdit;
    msp02: TSpinEdit;
    BitBtn9: TBitBtn;
    ysp01: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    ysp02: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    qry_rpt1: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    mn001: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
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
    ppLabel8: TppLabel;
    m01: TppLabel;
    c01: TppLabel;
    t01: TppLabel;
    v01: TppLabel;
    m02: TppLabel;
    c02: TppLabel;
    t02: TppLabel;
    v02: TppLabel;
    m03: TppLabel;
    m04: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    t03: TppLabel;
    t04: TppLabel;
    v03: TppLabel;
    v04: TppLabel;
    m05: TppLabel;
    m06: TppLabel;
    c05: TppLabel;
    c06: TppLabel;
    t05: TppLabel;
    t06: TppLabel;
    v05: TppLabel;
    v06: TppLabel;
    m07: TppLabel;
    m08: TppLabel;
    c07: TppLabel;
    c08: TppLabel;
    t07: TppLabel;
    t08: TppLabel;
    v07: TppLabel;
    v08: TppLabel;
    m09: TppLabel;
    c09: TppLabel;
    t09: TppLabel;
    v09: TppLabel;
    title001: TppLabel;
    head001: TppLabel;
    pdttl001: TppLabel;
    ppDetailBand1: TppDetailBand;
    shp01: TppShape;
    ppDBText4: TppDBText;
    d10: TppDBText;
    d01: TppDBText;
    d02: TppDBText;
    d03: TppDBText;
    d04: TppDBText;
    d05: TppDBText;
    d06: TppDBText;
    d07: TppDBText;
    d08: TppDBText;
    d09: TppDBText;
    ppDBText6: TppDBText;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    bk001: TppLabel;
    bk002: TppLabel;
    bk003: TppLabel;
    bk004: TppLabel;
    bk005: TppLabel;
    bk006: TppLabel;
    bk007: TppLabel;
    bk008: TppLabel;
    bk009: TppLabel;
    ppLabel14: TppLabel;
    ar001: TppLabel;
    ar002: TppLabel;
    ar003: TppLabel;
    ar004: TppLabel;
    ar005: TppLabel;
    ar006: TppLabel;
    ar007: TppLabel;
    ar008: TppLabel;
    ar009: TppLabel;
    ap001: TppLabel;
    ar010: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    sg01: TppShape;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine13: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    Query1: TClientDataSet;
    c10: TppLabel;
    m10: TppLabel;
    t10: TppLabel;
    v10: TppLabel;
    bk010: TppLabel;
    ppShape2: TppShape;
    qry_at3: TClientDataSet;
    qry_at3CUST: TWideStringField;
    qry_at3WK1: TIntegerField;
    qry_at3WK2: TIntegerField;
    qry_at3WK3: TIntegerField;
    qry_at3WK4: TIntegerField;
    qry_at3WK5: TIntegerField;
    qry_at3WK: TLargeintField;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    fty0001: TppLabel;
    ppLabel19: TppLabel;
    yr0001: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel32: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel33: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    p0001: TppLabel;
    ppLine27: TppLine;
    p0002: TppLabel;
    p0003: TppLabel;
    p0004: TppLabel;
    p0005: TppLabel;
    ppParameterList2: TppParameterList;
    Query4: TClientDataSet;
    PopupMenu1: TPopupMenu;
    PrintBalancing21: TMenuItem;
    Label6: TLabel;
    PrintBudget1: TMenuItem;
    PrintBalancing31: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ast01: TppLabel;
    as001: TppLabel;
    as002: TppLabel;
    as003: TppLabel;
    as004: TppLabel;
    as005: TppLabel;
    as006: TppLabel;
    as007: TppLabel;
    as008: TppLabel;
    as009: TppLabel;
    as010: TppLabel;
    ppLabel41: TppLabel;
    ppLabel4: TppLabel;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    ShowHideBitBtn41: TMenuItem;
    ComboBox2: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure PrintBalancing21Click(Sender: TObject);
    procedure PrintBudget1Click(Sender: TObject);
    procedure PrintBalancing31Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowHideBitBtn41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure print_balancingrpt(const xh: string);
    function wrkhrs(const tplant: string; const optc: integer):string;
    function sbcode(const sb1: string):string;
    function sbcode1(const sb1: string):string;
    procedure print_balancingrpt_supplement;
  end;

var
  frmnewcap_printbalancing: Tfrmnewcap_printbalancing;
  tm:tdatetime;
  yr1,mn1:array[1..10] of integer;

implementation

uses mainformu, newcap_reportsformu, newcap_cprpt_optionformu;

{$R *.dfm}

procedure Tfrmnewcap_printbalancing.BitBtn4Click(Sender: TObject);
begin
  if application.MessageBox('Confirm to refresh balancing data?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    screen.cursor:=crSQLWait;
    label9.caption:=formatdatetime('hhnnsszzz',now);
    try
      if msp01.value>=10 then begin
        if msp01.value=10 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_cap_updbalancing(:x1,:x2)';
            params[0].asinteger:=ysp01.value;
            params[1].asinteger:=10;
            execute;
          end;
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_cap_updbalancing(:x1,:x2)';
            params[0].asinteger:=ysp01.value;
            params[1].asinteger:=11;
            execute;
          end;
        end;
        if msp01.value=11 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_cap_updbalancing(:x1,:x2)';
            params[0].asinteger:=ysp01.value;
            params[1].asinteger:=11;
            execute;
          end;
        end;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_cap_updbalancing(:x1,:x2)';
          params[0].asinteger:=ysp01.value;
          params[1].asinteger:=12;
          execute;
        end;
      end else begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='execute procedure sp_cap_updbalancing_yr(:x1)';
          params[0].asinteger:=ysp01.value;
          execute;
        end;
      end;
      if ysp01.value<>ysp02.value then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='execute procedure sp_cap_updbalancing_yr(:x1)';
          params[0].asinteger:=ysp02.value;
          execute;
        end;
      end;
    finally
      screen.cursor:=crDefault;
      label10.caption:=formatdatetime('hhnnsszzz',now);
      showmessage('Data Refresh completed!');
    end;
  end;
end;

procedure Tfrmnewcap_printbalancing.BitBtn9Click(Sender: TObject);
var
  y1,m1,y2,m2:integer;
  ttlm,i:integer;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  ComboBox1.Text:=ComboBox2.Text;
  label6.caption:='Current Status';
  if combobox2.text='CHINA' then combobox1.text:='CHINA (SL+RX)';
  if (ysp01.value>=2014) then begin
    if ysp01.value=2014 then begin
      if combobox1.text='CHINA (SL+GG+RX)' then combobox1.text:='CHINA (SL+RX)';
      //if combobox1.text='CHINA' then combobox1.text:='CHINA (SL+RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (ysp01.value>=2015) and (ysp02.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG+RX)' then combobox1.text:='CHINA (SL+RX)';
      end;
      if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+RX)';
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  y1:=ysp01.value;
  m1:=msp01.value;
  y2:=ysp02.value;
  m2:=msp02.value;
  i:=1;
  for i := 1 to 10 do begin
    yr1[i]:=0; mn1[i]:=0;
  end;
  if (y1=y2) then ttlm:=m2-m1+1 else ttlm:=13-m1+m2;
  if ttlm>10 then showmessage('Can not be more than 10 months!')
  else begin
    if (y1=y2) then begin
      i:=1;
      while i<=ttlm do begin
        yr1[i]:=y1;
        mn1[i]:=m1+i-1;
        i:=i+1;
      end;
    end else begin
      i:=1;
      while i<=ttlm do begin
        while i<=13-m1 do begin
          yr1[i]:=y1;
          mn1[i]:=m1+i-1;
          i:=i+1;
        end;
        yr1[i]:=y2;
        mn1[i]:=m1+i-13;
        i:=i+1;
      end;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      params.CreateParam(ftinteger,'x8',ptinput);
      params.CreateParam(ftinteger,'x9',ptinput);
      params.CreateParam(ftinteger,'x10',ptinput);
      params.CreateParam(ftinteger,'x11',ptinput);
      params.CreateParam(ftinteger,'x12',ptinput);
      params.CreateParam(ftinteger,'x13',ptinput);
      params.CreateParam(ftinteger,'x14',ptinput);
      params.CreateParam(ftinteger,'x15',ptinput);
      params.CreateParam(ftinteger,'x16',ptinput);
      params.CreateParam(ftinteger,'x17',ptinput);
      params.CreateParam(ftinteger,'x18',ptinput);
      params.CreateParam(ftinteger,'x19',ptinput);
      params.CreateParam(ftinteger,'x20',ptinput);
      params.CreateParam(ftinteger,'x21',ptinput);
      params.CreateParam(ftinteger,'x22',ptinput);
      commandtext:='insert into tbl_cap_ftyelements_printmaster(tm,tplant,y1,m1,y2,m2,y3,m3,y4,m4,y5,m5,y6,m6,y7,m7,y8,m8,y9,m9,y10,m10) '
                  +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=yr1[1];
      params[3].AsInteger:=mn1[1];
      params[4].AsInteger:=yr1[2];
      params[5].AsInteger:=mn1[2];
      params[6].AsInteger:=yr1[3];
      params[7].AsInteger:=mn1[3];
      params[8].AsInteger:=yr1[4];
      params[9].AsInteger:=mn1[4];
      params[10].AsInteger:=yr1[5];
      params[11].AsInteger:=mn1[5];
      params[12].AsInteger:=yr1[6];
      params[13].AsInteger:=mn1[6];
      params[14].AsInteger:=yr1[7];
      params[15].AsInteger:=mn1[7];
      params[16].AsInteger:=yr1[8];
      params[17].AsInteger:=mn1[8];
      params[18].AsInteger:=yr1[9];
      params[19].AsInteger:=mn1[9];
      params[20].AsInteger:=yr1[10];
      params[21].AsInteger:=mn1[10];
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      {
      if combobox1.text='GUANGXI (GG+RX)' then
      commandtext:='execute procedure sp_cap_printbalancing_GX(:x1,:x2,:x3,:x4,:x5,:x6)'
      else if combobox1.text='GUANGDONG (SL+CS)' then
      commandtext:='execute procedure sp_cap_printbalancing_GD(:x1,:x2,:x3,:x4,:x5,:x6)'
      else
      }
      commandtext:='execute procedure sp_cap_printbalancing_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=y1;
      params[3].AsInteger:=m1;
      params[4].AsInteger:=y2;
      params[5].AsInteger:=m2;
      params[6].AsInteger:=999;
      execute;
    end;
    if frmnewcap_cprpt_option=nil then frmnewcap_cprpt_option:=tfrmnewcap_cprpt_option.create(nil);
    frmnewcap_cprpt_option.label8.caption:='ROLLING';
    frmnewcap_cprpt_option.show;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_printbalancing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_printbalancing:=nil;
end;

procedure Tfrmnewcap_printbalancing.FormShow(Sender: TObject);
begin
  bitbtn4.visible:=false;
end;

procedure Tfrmnewcap_printbalancing.ppDetailBand1BeforePrint(Sender: TObject);
var
  set1,set3,set4,set6,set7,set8,set9,set10,set11:set of 1..250;
  set2,set02,set5,setd1,setd2,setd3,setd:set of 10..250;
  seqi:integer;
begin
  shp01.Brush.Color:=clWhite;
  set1:=[4,7,9,17,26,27,28,29,30,31,60,61,65,101,102,103,104,105,106];
  //set2:=[18,100,170,163,84,85,179,180,181,228,229];
  set2:=[84,181,228,229];
  set02:=[163,85,179,180];
  set3:=[10,20,25,36,37];
  set4:=[84,85,18,100,170,84,228];
  set5:=[32,33,70,71,107,108];
  set6:=[95];
  set7:=[88,89,94,66,90,95,69,91];
  set11:=[91];
  set8:=[150];
  set9:=[35,181];
  set10:=[18,100,170,84,35,181,228,229];
  setd1:=[76,77];
  setd2:=[78,79];
  setd3:=[82,83];
  setd:=[76,77,78,79,82,83];
  seqi:=qry_rpt1.fieldbyname('seq1').value;
  if (seqi in set1) then
  shp01.Brush.Color:=$00CDFCFB
  else if (seqi in set2) then
  shp01.Brush.Color:=$00EFDBF2
  else if (seqi in set02) then
  shp01.Brush.Color:=$00F8ECFF
  //else if (seqi in set4) then
  //shp01.brush.color:=$00E2F1DC
  else if (seqi in set11) then
  shp01.brush.color:=$00C2E1BD
  else if (seqi in set5) then
  shp01.brush.color:=$00F5FCF1;
  d01.font.color:=clBlack;
  d02.font.color:=clBlack;
  d03.font.color:=clBlack;
  d04.font.color:=clBlack;
  d05.font.color:=clBlack;
  d06.font.color:=clBlack;
  d07.font.color:=clBlack;
  d08.font.color:=clBlack;
  d09.font.color:=clBlack;
  ppdbtext6.font.color:=clBlack;
  d10.font.color:=clBlack;
  if (seqi in set8) then begin
    if ppdbtext6.FieldValue<>0 then begin
      if pos('-',ppdbtext6.caption)>0 then ppdbtext6.font.color:=clGreen
      else ppdbtext6.font.color:=clRed;
    end;
    if d10.FieldValue<>0 then begin
      if pos('-',d10.caption)>0 then d10.font.color:=clGreen
      else d10.font.color:=clRed;
    end;
    if d01.FieldValue<>0 then begin
      if pos('-',d01.caption)>0 then d01.font.color:=clGreen
      else d01.font.color:=clRed;
    end;
    if d02.FieldValue<>0 then begin
      if pos('-',d02.caption)>0 then d02.font.color:=clGreen
      else d02.font.color:=clRed;
    end;
    if d03.FieldValue<>0 then begin
      if pos('-',d03.caption)>0 then d03.font.color:=clGreen
      else d03.font.color:=clRed;
    end;
    if d04.FieldValue<>0 then begin
      if pos('-',d04.caption)>0 then d04.font.color:=clGreen
      else d04.font.color:=clRed;
    end;
    if d05.FieldValue<>0 then begin
      if pos('-',d05.caption)>0 then d05.font.color:=clGreen
      else d05.font.color:=clRed;
    end;
    if d06.FieldValue<>0 then begin
      if pos('-',d06.caption)>0 then d06.font.color:=clGreen
      else d06.font.color:=clRed;
    end;
    if d07.FieldValue<>0 then begin
      if pos('-',d07.caption)>0 then d07.font.color:=clGreen
      else d07.font.color:=clRed;
    end;
    if d08.FieldValue<>0 then begin
      if pos('-',d08.caption)>0 then d08.font.color:=clGreen
      else d08.font.color:=clRed;
    end;
    if d09.FieldValue<>0 then begin
      if pos('-',d09.caption)>0 then d09.font.color:=clGreen
      else d09.font.color:=clRed;
    end;
    if d10.FieldValue<>0 then begin
      if pos('-',d10.caption)>0 then d10.font.color:=clGreen
      else d10.font.color:=clRed;
    end;
  end;
  ppdbtext4.font.style:=[];
  if (seqi in set10) then begin
    ppdbtext4.font.style:=[fsBold];
  end;
  if (seqi in set9) then begin
    //ppdbtext4.font.style:=[fsBold];
    if ppdbtext6.fieldvalue<0 then ppdbtext6.font.color:=clRed
    else if ppdbtext6.fieldvalue>5 then ppdbtext6.font.color:=clRed;
    if d01.fieldvalue<0 then d01.font.color:=clRed
    else if d01.fieldvalue>5 then d01.font.color:=clRed;
    if d02.fieldvalue<0 then d02.font.color:=clRed
    else if d02.fieldvalue>5 then d02.font.color:=clRed;
    if d03.fieldvalue<0 then d03.font.color:=clRed
    else if d03.fieldvalue>5 then d03.font.color:=clRed;
    if d04.fieldvalue<0 then d04.font.color:=clRed
    else if d04.fieldvalue>5 then d04.font.color:=clRed;
    if d05.fieldvalue<0 then d05.font.color:=clRed
    else if d05.fieldvalue>5 then d05.font.color:=clRed;
    if d06.fieldvalue<0 then d06.font.color:=clRed
    else if d06.fieldvalue>5 then d06.font.color:=clRed;
    if d07.fieldvalue<0 then d07.font.color:=clRed
    else if d07.fieldvalue>5 then d07.font.color:=clRed;
    if d08.fieldvalue<0 then d08.font.color:=clRed
    else if d08.fieldvalue>5 then d08.font.color:=clRed;
    if d09.fieldvalue<0 then d09.font.color:=clRed
    else if d09.fieldvalue>5 then d09.font.color:=clRed;
    if d10.fieldvalue<0 then d10.font.color:=clRed
    else if d10.fieldvalue>5 then d10.font.color:=clRed;
  end;
  if (seqi in set11) then begin
    if ppdbtext6.fieldvalue<0 then ppdbtext6.font.color:=clRed;
    if d01.fieldvalue<0 then d01.font.color:=clRed;
    if d02.fieldvalue<0 then d02.font.color:=clRed;
    if d03.fieldvalue<0 then d03.font.color:=clRed;
    if d04.fieldvalue<0 then d04.font.color:=clRed;
    if d05.fieldvalue<0 then d05.font.color:=clRed;
    if d06.fieldvalue<0 then d06.font.color:=clRed;
    if d07.fieldvalue<0 then d07.font.color:=clRed;
    if d08.fieldvalue<0 then d08.font.color:=clRed;
    if d09.fieldvalue<0 then d09.font.color:=clRed;
    if d10.fieldvalue<0 then d10.font.color:=clRed;
  end;
end;

procedure Tfrmnewcap_printbalancing.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
  sg01.visible:=false;
  {
  if pos('Key figure',title001.caption)>0 then begin
    if pos('Group C',qry_rpt1.fieldbyname('grp').Value)>0 then
    sg01.visible:=true;
  end;
  }
  //showmessage('1');
end;

procedure Tfrmnewcap_printbalancing.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
begin
  ppDBText2.Font.Style:=[fsUnderLine];
  if qry_rpt1.fieldbyname('grp1').Value>'' then ppGroupHeaderBand2.visible:=true
  else ppGroupHeaderBand2.visible:=false;
  //showmessage('2');
end;

procedure Tfrmnewcap_printbalancing.ppGroupHeaderBand3BeforePrint(
  Sender: TObject);
begin
  if qry_rpt1.fieldbyname('grp2').Value>'' then ppGroupHeaderBand3.visible:=true
  else ppGroupHeaderBand3.visible:=false;
  //showmessage('3');
end;

procedure Tfrmnewcap_printbalancing.ppHeaderBand1BeforePrint(Sender: TObject);
var
  sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,fty,cp_b:string;
  tb1,tb2,tb3,tb4,tb5,tb6,tb7,tb8,tb9,tb10:string;
  ts1,ts2,ts3,ts4,ts5,ts6,ts7,ts8,ts9,ts10:integer;
  tf1,tf2,tf3,tf4,tf5,tf6,tf7,tf8,tf9,tf10:integer;
  tg1,tg2,tg3,tg4,tg5,tg6,tg7,tg8,tg9,tg10:integer;
  tr1,tr2,tr3,tr4,tr5,tr6,tr7,tr8,tr9,tr10:integer;
  ttlm:integer;
  seqgg,seqcs:integer;
begin
  if (ysp01.value=ysp02.value) then ttlm:=msp02.value-msp01.value+1 else ttlm:=13-msp01.value+msp02.value;
  m01.Caption:=''; m02.caption:=''; m03.Caption:=''; m04.caption:=''; m05.Caption:='';
  m06.caption:=''; m07.caption:=''; m08.caption:=''; m09.Caption:=''; m10.Caption:='';
  c01.Caption:=''; c02.caption:=''; c03.Caption:=''; c04.caption:=''; c05.Caption:='';
  c06.caption:=''; c07.caption:=''; c08.caption:=''; c09.Caption:=''; c10.Caption:='';
  t01.Caption:=''; t02.caption:=''; t03.Caption:=''; t04.caption:=''; t05.Caption:='';
  t06.caption:=''; t07.caption:=''; t08.caption:=''; t09.Caption:=''; t10.Caption:='';
  v01.Caption:='(Ver: 0.00.00)'; v02.caption:='(Ver: 0.00.00)'; v03.Caption:='(Ver: 0.00.00)'; v04.caption:='(Ver: 0.00.00)'; v05.Caption:='(Ver: 0.00.00)';
  v06.caption:='(Ver: 0.00.00)'; v07.caption:='(Ver: 0.00.00)'; v08.caption:='(Ver: 0.00.00)'; v09.Caption:='(Ver: 0.00.00)'; v10.Caption:='(Ver: 0.00.00)';

  if label6.caption='Current Status' then cp_b:='Balancing 1' else cp_b:=label6.caption;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    m01.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m02.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m03.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m04.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m05.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m06.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m07.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m08.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m09.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.yr,a.m1,min(a.wkno) as x1,max(a.wkno) as x2 from tbl_cap_wkno_new a,tbl_cap_ftyelements_printmaster b '
                +'where a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 group by a.yr,a.m1';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('yr').isnull then
    m10.Caption:=fieldbyname('yr').asstring+'-'+fieldbyname('m1').asstring+' (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
  end;
  ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0;
  tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0;
  tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0;
  tr1:=0; tr2:=0; tr3:=0; tr4:=0; tr5:=0; tr6:=0; tr7:=0; tr8:=0; tr9:=0; tr10:=0;
  seqgg:=0; seqcs:=0;
  if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)') then begin
    if combobox1.text='GUANGXI (GG+RX)' then seqgg:=qry_rpt1.fieldbyname('seq').value;
    if combobox1.text='GUANGDONG (SL+CS)' then seqcs:=qry_rpt1.fieldbyname('seq').value;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 ';
      //and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
      ts1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value))
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''SL'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''CS'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tf10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqcs=0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''GG'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then
        tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tg10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant=''RX'' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        tr10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    end;
    if seqgg=0 then begin
      if label6.caption='Balancing 2' then begin
        if mn1[1]>0 then sb1:='B2';
        if mn1[2]>0 then sb2:='B2';
        if mn1[3]>0 then sb3:='B2';
        if mn1[4]>0 then sb4:='B2';
        if mn1[5]>0 then sb5:='B2';
        if mn1[6]>0 then sb6:='B2';
        if mn1[7]>0 then sb7:='B2';
        if mn1[8]>0 then sb8:='B2';
        if mn1[9]>0 then sb9:='B2';
        if mn1[10]>0 then sb10:='B2';
      end else if label6.caption='Balancing 3' then begin
        if mn1[1]>0 then sb1:='B1';
        if mn1[2]>0 then sb2:='B1';
        if mn1[3]>0 then sb3:='B1';
        if mn1[4]>0 then sb4:='B1';
        if mn1[5]>0 then sb5:='B1';
        if mn1[6]>0 then sb6:='B1';
        if mn1[7]>0 then sb7:='B1';
        if mn1[8]>0 then sb8:='B1';
        if mn1[9]>0 then sb9:='B1';
        if mn1[10]>0 then sb10:='B1';
      end else begin
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_sb where tplant=''SL'' and yr>='+inttostr(ysp01.value)+' and yr<='+inttostr(ysp02.value)+' order by yr';
          open;
          first;
          while not eof do begin
            if fieldbyname('yr').value=yr1[1] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[1])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
              else sb1:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[2] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[2])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
              else sb2:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[3] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[3])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
              else sb3:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[4] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[4])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
              else sb4:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[5] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[5])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
              else sb5:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[6] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[6])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
              else sb6:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[7] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[7])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
              else sb7:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[8] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[8])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
              else sb8:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[9] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[9])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
              else sb9:='SET B1';
            end;
            if fieldbyname('yr').value=yr1[10] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[10])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
              else sb10:='SET B1';
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_sb where tplant=''CS'' and yr>='+inttostr(ysp01.value)+' and yr<='+inttostr(ysp02.value)+' order by yr';
          open;
          first;
          while not eof do begin
            if fieldbyname('yr').value=yr1[1] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
              else sb1:=sb1+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[2] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
              else sb2:=sb2+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[3] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
              else sb3:=sb3+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[4] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
              else sb4:=sb4+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[5] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
              else sb5:=sb5+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[6] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
              else sb6:=sb6+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[7] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
              else sb7:=sb7+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[8] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
              else sb8:=sb8+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[9] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
              else sb9:=sb9+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[10] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
              else sb10:=sb10+'+'+'B1';
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end;
    if seqcs=0 then begin
      if label6.caption='Balancing 2' then begin
        if seqgg=0 then begin
          if mn1[1]>0 then sb1:=sb1+'+B2';
          if mn1[2]>0 then sb2:=sb2+'+B2';
          if mn1[3]>0 then sb3:=sb3+'+B2';
          if mn1[4]>0 then sb4:=sb4+'+B2';
          if mn1[5]>0 then sb5:=sb5+'+B2';
          if mn1[6]>0 then sb6:=sb6+'+B2';
          if mn1[7]>0 then sb7:=sb7+'+B2';
          if mn1[8]>0 then sb8:=sb8+'+B2';
          if mn1[9]>0 then sb9:=sb9+'+B2';
          if mn1[10]>0 then sb10:=sb10+'+B2';
        end else begin
          if mn1[1]>0 then sb1:='B2';
          if mn1[2]>0 then sb2:='B2';
          if mn1[3]>0 then sb3:='B2';
          if mn1[4]>0 then sb4:='B2';
          if mn1[5]>0 then sb5:='B2';
          if mn1[6]>0 then sb6:='B2';
          if mn1[7]>0 then sb7:='B2';
          if mn1[8]>0 then sb8:='B2';
          if mn1[9]>0 then sb9:='B2';
          if mn1[10]>0 then sb10:='B2';
        end;
      end else if label6.caption='Balancing 3' then begin
        if seqgg=0 then begin
          if mn1[1]>0 then sb1:=sb1+'+B1';
          if mn1[2]>0 then sb2:=sb2+'+B1';
          if mn1[3]>0 then sb3:=sb3+'+B1';
          if mn1[4]>0 then sb4:=sb4+'+B1';
          if mn1[5]>0 then sb5:=sb5+'+B1';
          if mn1[6]>0 then sb6:=sb6+'+B1';
          if mn1[7]>0 then sb7:=sb7+'+B1';
          if mn1[8]>0 then sb8:=sb8+'+B1';
          if mn1[9]>0 then sb9:=sb9+'+B1';
          if mn1[10]>0 then sb10:=sb10+'+B1';
        end else begin
          if mn1[1]>0 then sb1:='B1';
          if mn1[2]>0 then sb2:='B1';
          if mn1[3]>0 then sb3:='B1';
          if mn1[4]>0 then sb4:='B1';
          if mn1[5]>0 then sb5:='B1';
          if mn1[6]>0 then sb6:='B1';
          if mn1[7]>0 then sb7:='B1';
          if mn1[8]>0 then sb8:='B1';
          if mn1[9]>0 then sb9:='B1';
          if mn1[10]>0 then sb10:='B1';
        end;
      end else begin
        {
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_sb where tplant=''GG'' and yr>='+inttostr(ysp01.value)+' and yr<='+inttostr(ysp02.value)+' order by yr';
          open;
          first;
          while not eof do begin
            if seqgg<>0 then begin
              if fieldbyname('yr').value=yr1[1] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[1])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
                else sb1:='SET';
              end;
              if fieldbyname('yr').value=yr1[2] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[2])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
                else sb2:='SET';
              end;
              if fieldbyname('yr').value=yr1[3] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[3])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
                else sb3:='SET';
              end;
              if fieldbyname('yr').value=yr1[4] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[4])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
                else sb4:='SET';
              end;
              if fieldbyname('yr').value=yr1[5] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[5])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
                else sb5:='SET';
              end;
              if fieldbyname('yr').value=yr1[6] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[6])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
                else sb6:='SET';
              end;
              if fieldbyname('yr').value=yr1[7] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[7])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
                else sb7:='SET';
              end;
              if fieldbyname('yr').value=yr1[8] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[8])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
                else sb8:='SET';
              end;
              if fieldbyname('yr').value=yr1[9] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[9])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
                else sb9:='SET';
              end;
              if fieldbyname('yr').value=yr1[10] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[10])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
                else sb10:='SET';
              end;
            end else begin
              if fieldbyname('yr').value=yr1[1] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
                else sb1:=sb1+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[2] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
                else sb2:=sb2+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[3] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
                else sb3:=sb3+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[4] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
                else sb4:=sb4+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[5] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
                else sb5:=sb5+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[6] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
                else sb6:=sb6+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[7] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
                else sb7:=sb7+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[8] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
                else sb8:=sb8+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[9] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
                else sb9:=sb9+'+'+'SET';
              end;
              if fieldbyname('yr').value=yr1[10] then begin
                if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
                else sb10:=sb10+'+'+'SET';
              end;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        }
        with query2 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_sb where tplant=''RX'' and yr>='+inttostr(ysp01.value)+' and yr<='+inttostr(ysp02.value)+' order by yr';
          open;
          first;
          while not eof do begin
            if fieldbyname('yr').value=yr1[1] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
              else sb1:=sb1+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[2] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
              else sb2:=sb2+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[3] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
              else sb3:=sb3+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[4] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
              else sb4:=sb4+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[5] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
              else sb5:=sb5+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[6] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
              else sb6:=sb6+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[7] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
              else sb7:=sb7+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[8] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
              else sb8:=sb8+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[9] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
              else sb9:=sb9+'+'+'B1';
            end;
            if fieldbyname('yr').value=yr1[10] then begin
              if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
              else sb10:=sb10+'+'+'B1';
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end;
  end else begin
    if combobox1.text='THAI (KB)' then fty:='KB'
    else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y1 and a.m1=b.m1 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y2 and a.m1=b.m2 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y3 and a.m1=b.m3 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y4 and a.m1=b.m4 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y5 and a.m1=b.m5 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y6 and a.m1=b.m6 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y7 and a.m1=b.m7 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y8 and a.m1=b.m8 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y9 and a.m1=b.m9 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select a.tplant,a.opt_c from tbl_cap_optc a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1';
      commandtext:='select a.tplant,a.opt_c from tbl_cap_optc_new a,tbl_cap_ftyelements_printmaster b where a.tplant='''+fty+''' and a.yr=b.y10 and a.m1=b.m10 and b.tm=:x1 ';//and a.sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and a.current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and a.bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and a.bal3=1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        ts10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
      end;
    end;
    if (label6.caption='Balancing 2') then begin
      if mn1[1]>0 then sb1:='B2';
      if mn1[2]>0 then sb2:='B2';
      if mn1[3]>0 then sb3:='B2';
      if mn1[4]>0 then sb4:='B2';
      if mn1[5]>0 then sb5:='B2';
      if mn1[6]>0 then sb6:='B2';
      if mn1[7]>0 then sb7:='B2';
      if mn1[8]>0 then sb8:='B2';
      if mn1[9]>0 then sb9:='B2';
      if mn1[10]>0 then sb10:='B2';
    end else if (label6.caption='Balancing 3') then begin
      if mn1[1]>0 then sb1:='B1';
      if mn1[2]>0 then sb2:='B1';
      if mn1[3]>0 then sb3:='B1';
      if mn1[4]>0 then sb4:='B1';
      if mn1[5]>0 then sb5:='B1';
      if mn1[6]>0 then sb6:='B1';
      if mn1[7]>0 then sb7:='B1';
      if mn1[8]>0 then sb8:='B1';
      if mn1[9]>0 then sb9:='B1';
      if mn1[10]>0 then sb10:='B1';
    end else begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_sb where tplant='''+fty+''' and yr>='+inttostr(ysp01.value)+' and yr<='+inttostr(ysp02.value)+' order by yr';
        open;
        first;
        while not eof do begin
          if fieldbyname('yr').value=yr1[1] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[1])).value)>0 then sb1:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[1])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[1])).value,5,3)
            else sb1:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[2] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[2])).value)>0 then sb2:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[2])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[2])).value,5,3)
            else sb2:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[3] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[3])).value)>0 then sb3:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[3])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[3])).value,5,3)
            else sb3:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[4] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[4])).value)>0 then sb4:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[4])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[4])).value,5,3)
            else sb4:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[5] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[5])).value)>0 then sb5:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[5])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[5])).value,5,3)
            else sb5:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[6] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[6])).value)>0 then sb6:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[6])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[6])).value,5,3)
            else sb6:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[7] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[7])).value)>0 then sb7:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[7])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[7])).value,5,3)
            else sb7:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[8] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[8])).value)>0 then sb8:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[8])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[8])).value,5,3)
            else sb8:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[9] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[9])).value)>0 then sb9:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[9])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[9])).value,5,3)
            else sb9:='SET B1';
          end;
          if fieldbyname('yr').value=yr1[10] then begin
            if pos('-',fieldbyname('sb'+inttostr(mn1[10])).value)>0 then sb10:=sbcode1(copy(fieldbyname('sb'+inttostr(mn1[10])).value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb'+inttostr(mn1[10])).value,5,3)
            else sb10:='SET B1';
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
  end;
  t01.Caption:=tb1; t02.Caption:=tb2; t03.Caption:=tb3; t04.Caption:=tb4; t05.Caption:=tb5;
  t06.Caption:=tb6; t07.Caption:=tb7; t08.Caption:=tb8; t09.Caption:=tb9; t10.Caption:=tb10;
  c01.Caption:=sb1; c02.Caption:=sb2; c03.Caption:=sb3; c04.Caption:=sb4; c05.Caption:=sb5;
  c06.Caption:=sb6; c07.Caption:=sb7; c08.Caption:=sb8; c09.Caption:=sb9; c10.Caption:=sb10;
  if seqgg=0 then begin
    pdttl001.Caption:='T '+formatfloat('#0',(ts1+ts2+ts3+ts4+ts5+ts6+ts7+ts8+ts9+ts10)/ttlm);
    if (tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10)>0 then
    pdttl001.Caption:=pdttl001.Caption+'+'+formatfloat('#0',(tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10)/ttlm);
  end;
  if seqgg<>0 then begin
    if (tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10)>0 then
    pdttl001.Caption:='T '+formatfloat('#0',(tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10)/ttlm);
  end else begin
    if (tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10)>0 then
    pdttl001.Caption:=pdttl001.Caption+'+'+formatfloat('#0',(tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10)/ttlm);
  end;
  if (tr1+tr2+tr3+tr4+tr5+tr6+tr7+tr8+tr9+tr10)>0 then
  pdttl001.Caption:=pdttl001.Caption+'+'+formatfloat('#0',(tr1+tr2+tr3+tr4+tr5+tr6+tr7+tr8+tr9+tr10)/ttlm);
  v02.visible:=true; d02.visible:=true; v03.visible:=true; d03.visible:=true;
  v04.visible:=true; d04.visible:=true; v05.visible:=true; d05.visible:=true;
  v06.visible:=true; d06.visible:=true; v07.visible:=true; d07.visible:=true;
  v08.visible:=true; d08.visible:=true; v09.visible:=true; d09.visible:=true;
  v10.visible:=true; d10.visible:=true;
  if m02.Caption='' then begin
    v02.visible:=false; d02.visible:=false;
  end;
  if m03.Caption='' then begin
    v03.visible:=false; d03.visible:=false;
  end;
  if m04.Caption='' then begin
    v04.visible:=false; d04.visible:=false;
  end;
  if m05.Caption='' then begin
    v05.visible:=false; d05.visible:=false;
  end;
  if m06.Caption='' then begin
    v06.visible:=false; d06.visible:=false;
  end;
  if m07.Caption='' then begin
    v07.visible:=false; d07.visible:=false;
  end;
  if m08.Caption='' then begin
    v08.visible:=false; d08.visible:=false;
  end;
  if m09.Caption='' then begin
    v09.visible:=false; d09.visible:=false;
  end;
  if m10.Caption='' then begin
    v10.visible:=false; d10.visible:=false;
  end;
end;

procedure Tfrmnewcap_printbalancing.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_printbalancing.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_printbalancing.ppSummaryBand1BeforePrint(Sender: TObject);
var
  yr,mn:integer;
  fty:string;
begin
  bk001.Caption:=''; bk002.Caption:=''; bk003.Caption:=''; bk004.Caption:='';
  bk005.Caption:=''; bk006.Caption:=''; bk007.Caption:=''; bk008.Caption:='';
  bk009.Caption:=''; bk010.Caption:='';
  if combobox1.text='CL' then fty:='CL' else fty:='SL';
  if m01.Caption>'' then begin
    yr:=strtoint(copy(m01.Caption,1,4));
    mn:=strtoint(trim(copy(m01.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk001.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk001.font.Color:=clRed
          else bk001.font.Color:=clGreen;
        end else bk001.font.Color:=clBlack;
      end;
    end;
  end;
  if m02.Caption>'' then begin
    yr:=strtoint(copy(m02.Caption,1,4));
    mn:=strtoint(trim(copy(m02.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk002.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk002.font.Color:=clRed
          else bk002.font.Color:=clGreen;
        end else bk002.font.Color:=clBlack;
      end;
    end;
  end;
  if m03.Caption>'' then begin
    yr:=strtoint(copy(m03.Caption,1,4));
    mn:=strtoint(trim(copy(m03.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk003.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk003.font.Color:=clRed
          else bk003.font.Color:=clGreen;
        end else bk003.font.Color:=clBlack;
      end;
    end;
  end;
  if m04.Caption>'' then begin
    yr:=strtoint(copy(m04.Caption,1,4));
    mn:=strtoint(trim(copy(m04.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk004.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk004.font.Color:=clRed
          else bk004.font.Color:=clGreen;
        end else bk004.font.Color:=clBlack;
      end;
    end;
  end;
  if m05.Caption>'' then begin
    yr:=strtoint(copy(m05.Caption,1,4));
    mn:=strtoint(trim(copy(m05.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk005.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk005.font.Color:=clRed
          else bk005.font.Color:=clGreen;
        end else bk005.font.Color:=clBlack;
      end;
    end;
  end;
  if m06.Caption>'' then begin
    yr:=strtoint(copy(m06.Caption,1,4));
    mn:=strtoint(trim(copy(m06.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk006.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk006.font.Color:=clRed
          else bk006.font.Color:=clGreen;
        end else bk006.font.Color:=clBlack;
      end;
    end;
  end;
  if m07.Caption>'' then begin
    yr:=strtoint(copy(m07.Caption,1,4));
    mn:=strtoint(trim(copy(m07.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk007.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk007.font.Color:=clRed
          else bk007.font.Color:=clGreen;
        end else bk007.font.Color:=clBlack;
      end;
    end;
  end;
  if m08.Caption>'' then begin
    yr:=strtoint(copy(m08.Caption,1,4));
    mn:=strtoint(trim(copy(m08.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk008.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk008.font.Color:=clRed
          else bk008.font.Color:=clGreen;
        end else bk008.font.Color:=clBlack;
      end;
    end;
  end;
  if m09.Caption>'' then begin
    yr:=strtoint(copy(m09.Caption,1,4));
    mn:=strtoint(trim(copy(m09.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk009.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk009.font.Color:=clRed
          else bk009.font.Color:=clGreen;
        end else bk009.font.Color:=clBlack;
      end;
    end;
  end;
  if m10.Caption>'' then begin
    yr:=strtoint(copy(m10.Caption,1,4));
    mn:=strtoint(trim(copy(m10.Caption,6,2)));
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=yr;
      params[2].asinteger:=mn;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk010.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk010.font.Color:=clRed
          else bk010.font.Color:=clGreen;
        end else bk010.font.Color:=clBlack;
      end;
    end;
  end;
  ar001.Caption:=''; ar002.Caption:=''; ar003.Caption:=''; ar004.Caption:='';
  ar005.Caption:=''; ar006.Caption:=''; ar007.Caption:=''; ar008.Caption:='';
  ar009.Caption:=''; ar010.Caption:=''; ap001.Caption:='';
  as001.Caption:=''; as002.Caption:=''; as003.Caption:=''; as004.Caption:='';
  as005.Caption:=''; as006.Caption:=''; as007.Caption:=''; as008.Caption:='';
  as009.Caption:=''; as010.Caption:=''; ast01.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_printdetail where tm=:x1 and seq1=71';
    params[0].AsDateTime:=tm;
    open;
  end;
  with query3 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_printdetail where tm=:x1 and seq1=85';
    params[0].AsDateTime:=tm;
    open;
  end;
  if query3.fieldbyname('ttl').value>0 then
  ap001.Caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('ttl').value*100.00/query3.fieldbyname('ttl').value)
  else ap001.caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+' | 0.00%';
  if m01.Caption>'' then
    if query3.fieldbyname('m1').value>0 then
    ar001.Caption:=formatfloat('#,0',query2.fieldbyname('m1').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m1').value*100.00/query3.fieldbyname('m1').value);
  if m02.Caption>'' then
    if query3.fieldbyname('m2').value>0 then
    ar002.Caption:=formatfloat('#,0',query2.fieldbyname('m2').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m2').value*100.00/query3.fieldbyname('m2').value);
  if m03.Caption>'' then
    if query3.fieldbyname('m3').value>0 then
    ar003.Caption:=formatfloat('#,0',query2.fieldbyname('m3').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m3').value*100.00/query3.fieldbyname('m3').value);
  if m04.Caption>'' then
    if query3.fieldbyname('m4').value>0 then
    ar004.Caption:=formatfloat('#,0',query2.fieldbyname('m4').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m4').value*100.00/query3.fieldbyname('m4').value);
  if m05.Caption>'' then
    if query3.fieldbyname('m5').value>0 then
    ar005.Caption:=formatfloat('#,0',query2.fieldbyname('m5').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m5').value*100.00/query3.fieldbyname('m5').value);
  if m06.Caption>'' then
    if query3.fieldbyname('m6').value>0 then
    ar006.Caption:=formatfloat('#,0',query2.fieldbyname('m6').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m6').value*100.00/query3.fieldbyname('m6').value);
  if m07.Caption>'' then
    if query3.fieldbyname('m7').value>0 then
    ar007.Caption:=formatfloat('#,0',query2.fieldbyname('m7').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m7').value*100.00/query3.fieldbyname('m7').value);
  if m08.Caption>'' then
    if query3.fieldbyname('m8').value>0 then
    ar008.Caption:=formatfloat('#,0',query2.fieldbyname('m8').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m8').value*100.00/query3.fieldbyname('m8').value);
  if m09.Caption>'' then
    if query3.fieldbyname('m9').value>0 then
    ar009.Caption:=formatfloat('#,0',query2.fieldbyname('m9').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m9').value*100.00/query3.fieldbyname('m9').value);
  if m10.Caption>'' then
    if query3.fieldbyname('m10').value>0 then
    ar010.Caption:=formatfloat('#,0',query2.fieldbyname('m10').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m10').value*100.00/query3.fieldbyname('m10').value);

  with query2 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_printdetail where tm=:x1 and seq1=70';
    params[0].AsDateTime:=tm;
    open;
  end;
  with query3 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_printdetail where tm=:x1 and seq1=84';
    params[0].AsDateTime:=tm;
    open;
  end;
  if query3.fieldbyname('ttl').value>0 then
  ast01.Caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('ttl').value*100.00/query3.fieldbyname('ttl').value)
  else ast01.caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+' | 0.00%';
  if m01.Caption>'' then
    if query3.fieldbyname('m1').value>0 then
    as001.Caption:=formatfloat('#,0',query2.fieldbyname('m1').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m1').value*100.00/query3.fieldbyname('m1').value);
  if m02.Caption>'' then
    if query3.fieldbyname('m2').value>0 then
    as002.Caption:=formatfloat('#,0',query2.fieldbyname('m2').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m2').value*100.00/query3.fieldbyname('m2').value);
  if m03.Caption>'' then
    if query3.fieldbyname('m3').value>0 then
    as003.Caption:=formatfloat('#,0',query2.fieldbyname('m3').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m3').value*100.00/query3.fieldbyname('m3').value);
  if m04.Caption>'' then
    if query3.fieldbyname('m4').value>0 then
    as004.Caption:=formatfloat('#,0',query2.fieldbyname('m4').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m4').value*100.00/query3.fieldbyname('m4').value);
  if m05.Caption>'' then
    if query3.fieldbyname('m5').value>0 then
    as005.Caption:=formatfloat('#,0',query2.fieldbyname('m5').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m5').value*100.00/query3.fieldbyname('m5').value);
  if m06.Caption>'' then
    if query3.fieldbyname('m6').value>0 then
    as006.Caption:=formatfloat('#,0',query2.fieldbyname('m6').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m6').value*100.00/query3.fieldbyname('m6').value);
  if m07.Caption>'' then
    if query3.fieldbyname('m7').value>0 then
    as007.Caption:=formatfloat('#,0',query2.fieldbyname('m7').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m7').value*100.00/query3.fieldbyname('m7').value);
  if m08.Caption>'' then
    if query3.fieldbyname('m8').value>0 then
    as008.Caption:=formatfloat('#,0',query2.fieldbyname('m8').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m8').value*100.00/query3.fieldbyname('m8').value);
  if m09.Caption>'' then
    if query3.fieldbyname('m9').value>0 then
    as009.Caption:=formatfloat('#,0',query2.fieldbyname('m9').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m9').value*100.00/query3.fieldbyname('m9').value);
  if m10.Caption>'' then
    if query3.fieldbyname('m10').value>0 then
    as010.Caption:=formatfloat('#,0',query2.fieldbyname('m10').value)+' | '+formatfloat('#,0.00%',query2.fieldbyname('m10').value*100.00/query3.fieldbyname('m10').value);
end;

procedure Tfrmnewcap_printbalancing.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc6.value>0 then begin
    p0001.caption:='('+formatfloat('0.00%',ppdbcalc1.value*100.00/ppdbcalc6.value)+')';
    p0002.caption:='('+formatfloat('0.00%',ppdbcalc2.value*100.00/ppdbcalc6.value)+')';
    p0003.caption:='('+formatfloat('0.00%',ppdbcalc3.value*100.00/ppdbcalc6.value)+')';
    p0004.caption:='('+formatfloat('0.00%',ppdbcalc4.value*100.00/ppdbcalc6.value)+')';
    p0005.caption:='('+formatfloat('0.00%',ppdbcalc5.value*100.00/ppdbcalc6.value)+')';
  end else begin
    p0001.caption:='(0.00%)';
    p0002.caption:='(0.00%)';
    p0003.caption:='(0.00%)';
    p0004.caption:='(0.00%)';
    p0005.caption:='(0.00%)';
  end;
end;

procedure Tfrmnewcap_printbalancing.PrintBalancing21Click(Sender: TObject);
var
  y1,m1,y2,m2:integer;
  ttlm,i:integer;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  ComboBox1.Text:=ComboBox2.Text;
  label6.caption:='Balancing 2';
  if combobox1.text='CHINA' then combobox1.text:='CHINA (SL+RX)';
  if (ysp01.value>=2014) then begin
    if ysp01.value=2014 then begin
      if combobox1.text='CHINA (SL+GG+RX)' then combobox1.text:='CHINA (SL+RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (ysp01.value>=2015) and (ysp02.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end;
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  y1:=ysp01.value;
  m1:=msp01.value;
  y2:=ysp02.value;
  m2:=msp02.value;
  i:=1;
  for i := 1 to 10 do begin
    yr1[i]:=0; mn1[i]:=0;
  end;
  if (y1=y2) then ttlm:=m2-m1+1 else ttlm:=13-m1+m2;
  if ttlm>10 then showmessage('Can not be more than 10 months!')
  else begin
    if (y1=y2) then begin
      i:=1;
      while i<=ttlm do begin
        yr1[i]:=y1;
        mn1[i]:=m1+i-1;
        i:=i+1;
      end;
    end else begin
      i:=1;
      while i<=ttlm do begin
        while i<=13-m1 do begin
          yr1[i]:=y1;
          mn1[i]:=m1+i-1;
          i:=i+1;
        end;
        yr1[i]:=y2;
        mn1[i]:=m1+i-13;
        i:=i+1;
      end;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      params.CreateParam(ftinteger,'x8',ptinput);
      params.CreateParam(ftinteger,'x9',ptinput);
      params.CreateParam(ftinteger,'x10',ptinput);
      params.CreateParam(ftinteger,'x11',ptinput);
      params.CreateParam(ftinteger,'x12',ptinput);
      params.CreateParam(ftinteger,'x13',ptinput);
      params.CreateParam(ftinteger,'x14',ptinput);
      params.CreateParam(ftinteger,'x15',ptinput);
      params.CreateParam(ftinteger,'x16',ptinput);
      params.CreateParam(ftinteger,'x17',ptinput);
      params.CreateParam(ftinteger,'x18',ptinput);
      params.CreateParam(ftinteger,'x19',ptinput);
      params.CreateParam(ftinteger,'x20',ptinput);
      params.CreateParam(ftinteger,'x21',ptinput);
      params.CreateParam(ftinteger,'x22',ptinput);
      commandtext:='insert into tbl_cap_ftyelements_printmaster(tm,tplant,y1,m1,y2,m2,y3,m3,y4,m4,y5,m5,y6,m6,y7,m7,y8,m8,y9,m9,y10,m10) '
                  +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=yr1[1];
      params[3].AsInteger:=mn1[1];
      params[4].AsInteger:=yr1[2];
      params[5].AsInteger:=mn1[2];
      params[6].AsInteger:=yr1[3];
      params[7].AsInteger:=mn1[3];
      params[8].AsInteger:=yr1[4];
      params[9].AsInteger:=mn1[4];
      params[10].AsInteger:=yr1[5];
      params[11].AsInteger:=mn1[5];
      params[12].AsInteger:=yr1[6];
      params[13].AsInteger:=mn1[6];
      params[14].AsInteger:=yr1[7];
      params[15].AsInteger:=mn1[7];
      params[16].AsInteger:=yr1[8];
      params[17].AsInteger:=mn1[8];
      params[18].AsInteger:=yr1[9];
      params[19].AsInteger:=mn1[9];
      params[20].AsInteger:=yr1[10];
      params[21].AsInteger:=mn1[10];
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      {
      if combobox1.text='GUANGXI (GG+RX)' then
      commandtext:='execute procedure sp_cap_printbalancing_GX8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else if combobox1.text='GUANGDONG (SL+CS)' then
      commandtext:='execute procedure sp_cap_printbalancing_GD8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else commandtext:='execute procedure sp_cap_printbalancing8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      }
      commandtext:='execute procedure sp_cap_printbalancing_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=y1;
      params[3].AsInteger:=m1;
      params[4].AsInteger:=y2;
      params[5].AsInteger:=m2;
      params[6].asinteger:=-888;
      execute;
    end;
    if frmnewcap_cprpt_option=nil then frmnewcap_cprpt_option:=tfrmnewcap_cprpt_option.create(nil);
    frmnewcap_cprpt_option.label8.caption:='ROLLING';
    frmnewcap_cprpt_option.show;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_printbalancing.PrintBalancing31Click(Sender: TObject);
var
  y1,m1,y2,m2:integer;
  ttlm,i:integer;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  label6.caption:='Balancing 3';
  ComboBox1.Text:=ComboBox2.Text;
  if combobox1.text='CHINA' then combobox1.text:='CHINA (SL+RX)';
  if (ysp01.value>=2014) then begin
    if ysp01.value=2014 then begin
      if combobox1.text='CHINA (SL+GG+RX)' then combobox1.text:='CHINA (SL+RX)';
      //if combobox1.text='CHINA' then combobox1.text:='CHINA (SL+RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (ysp01.value>=2015) and (ysp02.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+RX)';
      end;
      if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+RX)';
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  y1:=ysp01.value;
  m1:=msp01.value;
  y2:=ysp02.value;
  m2:=msp02.value;
  i:=1;
  for i := 1 to 10 do begin
    yr1[i]:=0; mn1[i]:=0;
  end;
  if (y1=y2) then ttlm:=m2-m1+1 else ttlm:=13-m1+m2;
  if ttlm>10 then showmessage('Can not be more than 10 months!')
  else begin
    if (y1=y2) then begin
      i:=1;
      while i<=ttlm do begin
        yr1[i]:=y1;
        mn1[i]:=m1+i-1;
        i:=i+1;
      end;
    end else begin
      i:=1;
      while i<=ttlm do begin
        while i<=13-m1 do begin
          yr1[i]:=y1;
          mn1[i]:=m1+i-1;
          i:=i+1;
        end;
        yr1[i]:=y2;
        mn1[i]:=m1+i-13;
        i:=i+1;
      end;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      params.CreateParam(ftinteger,'x8',ptinput);
      params.CreateParam(ftinteger,'x9',ptinput);
      params.CreateParam(ftinteger,'x10',ptinput);
      params.CreateParam(ftinteger,'x11',ptinput);
      params.CreateParam(ftinteger,'x12',ptinput);
      params.CreateParam(ftinteger,'x13',ptinput);
      params.CreateParam(ftinteger,'x14',ptinput);
      params.CreateParam(ftinteger,'x15',ptinput);
      params.CreateParam(ftinteger,'x16',ptinput);
      params.CreateParam(ftinteger,'x17',ptinput);
      params.CreateParam(ftinteger,'x18',ptinput);
      params.CreateParam(ftinteger,'x19',ptinput);
      params.CreateParam(ftinteger,'x20',ptinput);
      params.CreateParam(ftinteger,'x21',ptinput);
      params.CreateParam(ftinteger,'x22',ptinput);
      commandtext:='insert into tbl_cap_ftyelements_printmaster(tm,tplant,y1,m1,y2,m2,y3,m3,y4,m4,y5,m5,y6,m6,y7,m7,y8,m8,y9,m9,y10,m10) '
                  +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=yr1[1];
      params[3].AsInteger:=mn1[1];
      params[4].AsInteger:=yr1[2];
      params[5].AsInteger:=mn1[2];
      params[6].AsInteger:=yr1[3];
      params[7].AsInteger:=mn1[3];
      params[8].AsInteger:=yr1[4];
      params[9].AsInteger:=mn1[4];
      params[10].AsInteger:=yr1[5];
      params[11].AsInteger:=mn1[5];
      params[12].AsInteger:=yr1[6];
      params[13].AsInteger:=mn1[6];
      params[14].AsInteger:=yr1[7];
      params[15].AsInteger:=mn1[7];
      params[16].AsInteger:=yr1[8];
      params[17].AsInteger:=mn1[8];
      params[18].AsInteger:=yr1[9];
      params[19].AsInteger:=mn1[9];
      params[20].AsInteger:=yr1[10];
      params[21].AsInteger:=mn1[10];
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      {
      if combobox1.text='GUANGXI (GG+RX)' then
      commandtext:='execute procedure sp_cap_printbalancing_GX8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else if combobox1.text='GUANGDONG (SL+CS)' then
      commandtext:='execute procedure sp_cap_printbalancing_GD8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else commandtext:='execute procedure sp_cap_printbalancing8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      }
      commandtext:='execute procedure sp_cap_printbalancing_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=y1;
      params[3].AsInteger:=m1;
      params[4].AsInteger:=y2;
      params[5].AsInteger:=m2;
      params[6].asinteger:=-333;
      execute;
    end;
    if frmnewcap_cprpt_option=nil then frmnewcap_cprpt_option:=tfrmnewcap_cprpt_option.create(nil);
    frmnewcap_cprpt_option.label8.caption:='ROLLING';
    frmnewcap_cprpt_option.show;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_printbalancing.PrintBudget1Click(Sender: TObject);
var
  y1,m1,y2,m2:integer;
  ttlm,i:integer;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  if (ysp01.value>=2014) then begin
    if ysp01.value=2014 then begin
      if combobox1.text='CHINA (SL+CS+GG+RX)' then combobox1.text:='CHINA (SL+RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+RX)';
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  y1:=ysp01.value;
  m1:=msp01.value;
  y2:=ysp02.value;
  m2:=msp02.value;
  i:=1;
  for i := 1 to 10 do begin
    yr1[i]:=0; mn1[i]:=0;
  end;
  if (y1=y2) then ttlm:=m2-m1+1 else ttlm:=13-m1+m2;
  if ttlm>10 then showmessage('Can not be more than 10 months!')
  else begin
    if (y1=y2) then begin
      i:=1;
      while i<=ttlm do begin
        yr1[i]:=y1;
        mn1[i]:=m1+i-1;
        i:=i+1;
      end;
    end else begin
      i:=1;
      while i<=ttlm do begin
        while i<=13-m1 do begin
          yr1[i]:=y1;
          mn1[i]:=m1+i-1;
          i:=i+1;
        end;
        yr1[i]:=y2;
        mn1[i]:=m1+i-13;
        i:=i+1;
      end;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      params.CreateParam(ftinteger,'x8',ptinput);
      params.CreateParam(ftinteger,'x9',ptinput);
      params.CreateParam(ftinteger,'x10',ptinput);
      params.CreateParam(ftinteger,'x11',ptinput);
      params.CreateParam(ftinteger,'x12',ptinput);
      params.CreateParam(ftinteger,'x13',ptinput);
      params.CreateParam(ftinteger,'x14',ptinput);
      params.CreateParam(ftinteger,'x15',ptinput);
      params.CreateParam(ftinteger,'x16',ptinput);
      params.CreateParam(ftinteger,'x17',ptinput);
      params.CreateParam(ftinteger,'x18',ptinput);
      params.CreateParam(ftinteger,'x19',ptinput);
      params.CreateParam(ftinteger,'x20',ptinput);
      params.CreateParam(ftinteger,'x21',ptinput);
      params.CreateParam(ftinteger,'x22',ptinput);
      commandtext:='insert into tbl_cap_ftyelements_printmaster(tm,tplant,y1,m1,y2,m2,y3,m3,y4,m4,y5,m5,y6,m6,y7,m7,y8,m8,y9,m9,y10,m10) '
                  +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=yr1[1];
      params[3].AsInteger:=mn1[1];
      params[4].AsInteger:=yr1[2];
      params[5].AsInteger:=mn1[2];
      params[6].AsInteger:=yr1[3];
      params[7].AsInteger:=mn1[3];
      params[8].AsInteger:=yr1[4];
      params[9].AsInteger:=mn1[4];
      params[10].AsInteger:=yr1[5];
      params[11].AsInteger:=mn1[5];
      params[12].AsInteger:=yr1[6];
      params[13].AsInteger:=mn1[6];
      params[14].AsInteger:=yr1[7];
      params[15].AsInteger:=mn1[7];
      params[16].AsInteger:=yr1[8];
      params[17].AsInteger:=mn1[8];
      params[18].AsInteger:=yr1[9];
      params[19].AsInteger:=mn1[9];
      params[20].AsInteger:=yr1[10];
      params[21].AsInteger:=mn1[10];
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      if combobox1.text='GUANGXI (GG+RX)' then
      commandtext:='execute procedure sp_cap_printbalancing_GX8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else if combobox1.text='GUANGDONG (SL+CS)' then
      commandtext:='execute procedure sp_cap_printbalancing_GD8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else commandtext:='execute procedure sp_cap_printbalancing8_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].AsDateTime:=tm;
      params[1].AsString:=combobox1.Text;
      params[2].AsInteger:=y1;
      params[3].AsInteger:=m1;
      params[4].AsInteger:=y2;
      params[5].AsInteger:=m2;
      params[6].asinteger:=-666;
      execute;
    end;
    label6.caption:='CP - Budget';
    if frmnewcap_cprpt_option=nil then frmnewcap_cprpt_option:=tfrmnewcap_cprpt_option.create(nil);
    frmnewcap_cprpt_option.label8.caption:='ROLLING';
    frmnewcap_cprpt_option.show;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_printbalancing.print_balancingrpt(const xh: string);
var
  y1,m1,y2,m2:integer;
  ttlm:integer;
  bal_cap:string;
begin
  y1:=ysp01.value;
  m1:=msp01.value;
  y2:=ysp02.value;
  m2:=msp02.value;
  if (y1=y2) then ttlm:=m2-m1+1 else ttlm:=13-m1+m2;
  //{
  with query2 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    if xh='7' then commandtext:='update tbl_cap_ftyelements_printdetail set pg=0 where tm=:x1' //and seq1 in (4,8,9,80,7,88,89,90,115,118,120,125)'
    else begin
      if combobox1.text<>'CHINA (GG+RX)' then
      commandtext:='update tbl_cap_ftyelements_printdetail set pg=0 where tm=:x1 and pg=''2'''
      else begin
        commandtext:='update tbl_cap_ftyelements_printdetail set pg=2 where tm=:x1 and seq2>=30 and seq2<97';
      end;
    end;
    params[0].AsDateTime:=tm;
    execute;
  end;
  //}
  with qry_rpt1 do begin
    close;
    params.clear;
    params.CreateParam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_printdetail where tm=:x1 and seq1 not in (3,19,10,20,25,36,37,23,64,67,68,65)';
    {
    if xh='1' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'')'
    else if xh='2' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'')'
    else if xh='3' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'')'
    else if xh='4' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group C'',''Group D'')'
    else if xh='6' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'',''Group C'')'
    else if xh='5' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'',''Group C'',''Group D'')'
    }
    if xh='1' then commandtext:=commandtext+' and grp like ''Group A%'''
    else if xh='2' then commandtext:=commandtext+' and grp like ''Group B%'''
    else if xh='3' then commandtext:=commandtext+' and ((grp like ''Group A%'') or (grp like ''Group B%''))'
    else if xh='4' then commandtext:=commandtext+' and ((grp like ''Group C%'') or (grp like ''Group D%''))'
    else if xh='6' then commandtext:=commandtext+' and ((grp like ''Group A%'') or (grp like ''Group B%'') or (grp like ''Group C%''))'
    else if xh='5' then commandtext:=commandtext+' and ((grp like ''Group B%'') or (grp like ''Group C%'') or (grp like ''Group D%''))'
    else if xh='7' then commandtext:=commandtext+' and seq1 in (4,8,9,80,7,18,100,21,22,160,161,163,84,85,99,170,179,180,181,87,91,115,118,120,125,150,151,228,229,1,2,90,69,230)';  //76,77,78,79,82,83,
    commandtext:=commandtext+' order by seq2,seq1,grp2';
    params[0].AsDateTime:=tm;
    open;
  end;
  //

  if label6.caption='Balancing 3' then bal_cap:='Balancing 1' else bal_cap:=label6.caption;

  if (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+RX)') or (combobox1.text='THAI (KB)') or (combobox1.text='OFF-SHORE (CG)') or (combobox1.text='CHINA (SL+GG/RX)') then
  ppLabel2.Caption:='Country origin: '
  else if combobox1.text='GUANGXI (GG+RX)' then ppLabel2.caption:='Guangxi origin: '
  else if combobox1.text='GUANGDONG (SL+CS)' then ppLabel2.caption:='Guangdong origin: '
  else ppLabel2.Caption:='Factory origin: ';
  fty001.Caption:=combobox2.text;//combobox1.text;
  mn001.Caption:='from '+inttostr(y1)+'-'+inttostr(m1)+' to '+inttostr(y2)+'-'+inttostr(m2);
  //generatereportheader;
  if xh='7' then title001.Caption:='(Key figure)     -  '+bal_cap+'  '//label6.caption+'  '
  else title001.Caption:='(Full figure)     -  '+bal_cap+'  ';//label6.caption+'  ';
  head001.Caption:='('+inttostr(ttlm)+' months)';
  if xh='7' then begin
    pplabel11.visible:=true;
    pplabel12.visible:=true;
    pplabel14.visible:=true;
    pplabel41.visible:=true;
    ap001.visible:=true; ar001.visible:=true; ar002.visible:=true;
    ar003.visible:=true; ar004.visible:=true; ar005.visible:=true; ar006.visible:=true;
    ar007.visible:=true; ar008.visible:=true; ar009.visible:=true; ar010.visible:=true;
    ast01.visible:=true; as001.visible:=true; as002.visible:=true;
    as003.visible:=true; as004.visible:=true; as005.visible:=true; as006.visible:=true;
    as007.visible:=true; as008.visible:=true; as009.visible:=true; as010.visible:=true;
  end else begin
    pplabel11.visible:=false;
    pplabel12.visible:=false;
    pplabel14.visible:=false;
    pplabel41.visible:=false;
    ap001.visible:=false; ar001.visible:=false; ar002.visible:=false;
    ar003.visible:=false; ar004.visible:=false; ar005.visible:=false; ar006.visible:=false;
    ar007.visible:=false; ar008.visible:=false; ar009.visible:=false; ar010.visible:=false;
    ast01.visible:=false; as001.visible:=false; as002.visible:=false;
    as003.visible:=false; as004.visible:=false; as005.visible:=false; as006.visible:=false;
    as007.visible:=false; as008.visible:=false; as009.visible:=false; as010.visible:=false;
  end;
  ppreport1.Print;
end;

procedure Tfrmnewcap_printbalancing.print_balancingrpt_supplement;
var
  dt1,dt2:tdate;
  fty:string;
  yr,mn:word;
begin
  if pos('SL',combobox1.text)>0 then fty:='SL';
  dt1:=encodedate(ysp01.value,msp01.value,1);
  if msp02.value<12 then begin
    yr:=ysp02.value;
    mn:=msp02.value+1;
  end else begin
    yr:=ysp02.value+1;
    mn:=1;
  end;
  dt2:=encodedate(yr,mn,1)-1;
  with qry_at3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select cust,wk1,wk2,wk3,wk4,wk5,wk1+wk2+wk3+wk4+wk5 as wk from sp_cap_splitat3_customer(:x1,:x2,:x3)';
    params[0].asstring:=fty;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    open;
    if not fieldbyname('cust').isnull then begin
      fty0001.caption:=combobox1.text;
      yr0001.caption:='from '+inttostr(ysp01.value)+'-'+inttostr(msp01.value)+'  to '+inttostr(ysp02.value)+'-'+inttostr(msp02.value);
      //mth0001.caption:='from '+inttostr(spinedit2.value)+'  to '+inttostr(spinedit3.value);
      ppReport2.print;
    end;
  end;
end;

function Tfrmnewcap_printbalancing.sbcode(const sb1: string): string;
begin
  {
  if sb1='Setup' then result:='SET'
  else if sb1='Chn' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if ysp01.value>=2012 then
      result:='CHO+CHO+CHO'
      else result:='CHO+CHO';
    end else result:='CHO';
  end else if sb1='Cfm' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if ysp01.value>=2012 then
      result:='CFM+CFM+CFM'
      else result:='CFM+CFM';
    end else result:='CFM';
  end else if sb1='lck' then result:='LCK';
  }
  if sb1='' then result:=''
  else if sb1='Setup' then result:='SET'
  else if sb1='Chn' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if YSP01.value>=2012 then
      result:='CHO+CHO+CHO'
      else result:='CHO+CHO';
    end else if combobox1.text='CHINA (SL+GG+RX)' then begin
      if YSP01.value<=2017 then
      result:='CHO+CHO+CHO+CHO'
      else result:='CHO+CHO+CHO';
    end else if combobox1.text='CHINA (SL+GG/RX)' then begin
      if ysp01.value>=2015 then
      result:='CHO+CHO+CHO'
      else if YSP01.value>=2012 then
      result:='CHO+CHO'
      else result:='CHO';
    end else if combobox1.text='GUANGXI (GG+RX)' then begin
      if ysp01.value>=2015 then
      result:='CHO+CHO'
      else result:='CHO';
    end else if combobox1.text='GUANGDONG (SL+CS)' then begin
      if ysp01.value>=2015 then
      result:='CHO+CHO'
      else result:='CHO';
    end else result:='CHO';
  end else if sb1='Cfm' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if YSP01.value>=2012 then
      result:='CFM+CFM+CFM'
      else result:='CFM+CFM';
    end else if combobox1.text='CHINA (SL+GG+RX)' then begin
      if YSP01.value<=2017 then
      result:='CFM+CFM+CFM+CFM'
      else result:='CFM+CFM+CFM';
    end else if combobox1.text='CHINA (SL+GG/RX)' then begin
      if ysp01.value>=2015 then
      result:='CFM+CFM+CFM'
      else if YSP01.value>=2012 then
      result:='CFM+CFM'
      else result:='CFM';
    end else if combobox1.text='GUANGXI (GG+RX)' then begin
      if ysp01.value>=2015 then
      result:='CFM+CFM'
      else result:='CFM';
    end else if combobox1.text='GUANGDONG (SL+CS)' then begin
      if ysp01.value>=2015 then
      result:='CFM+CFM'
      else result:='CFM';
    end else result:='CFM';
  end else if sb1='lck' then result:='LCK';
end;

function Tfrmnewcap_printbalancing.sbcode1(const sb1: string): string;
begin
  if sb1='' then result:=''
  else if sb1='Setup' then result:='SET'
  else if sb1='Chn' then begin
    result:='CHO';
  end else if sb1='Cfm' then result:='CFM'
  else if sb1='lck' then result:='LCK';
end;

procedure Tfrmnewcap_printbalancing.ShowHideBitBtn41Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select r_cprefresh from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if fieldbyname('r_cprefresh').value=true then begin
      bitbtn4.visible:=not bitbtn4.visible;
      //bitbtn4.visible:=true;
    end;
  end;

end;

function Tfrmnewcap_printbalancing.wrkhrs(const tplant: string;
  const optc: integer): string;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select des from tplant_wk52_des where tplant='''+tplant+''' and optc='+inttostr(optc);
    open;
    if not fieldbyname('des').isnull then
    result:=copy(fieldbyname('des').value,1,2) else result:='0';
  end;
  {
  if tplant='SL' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='79'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='FJ' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='60'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='GG' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='59'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='RX' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='59'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='KB' then begin
    if optc=1 then result:='53'
    else if optc=2 then result:='60'
    else if optc=3 then result:='65'
    else if optc=4 then result:='50';
  end else if tplant='KBC' then begin
    if optc=1 then result:='53'
    else if optc=2 then result:='60'
    else if optc=3 then result:='65'
    else if optc=4 then result:='50';
  end;
  }
end;

end.
