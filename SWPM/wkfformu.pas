unit wkfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons,
  DB, DBClient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppViewr, ppCtrls, ppPrnabl, myChkBox, ppStrtch,
  ppMemo, ppVar, Spin, DateUtils, GridsEh, Menus, ppParameter;

type
  Tfrmwkf = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    shop001: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine22: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppLine37: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    lwf001: TppLabel;
    swf001: TppLabel;
    swf002: TppLabel;
    swf003: TppLabel;
    swf004: TppLabel;
    swf005: TppLabel;
    mwf001: TppLabel;
    mwf002: TppLabel;
    mwf003: TppLabel;
    mwf004: TppLabel;
    avg001: TppLabel;
    avg002: TppLabel;
    avg003: TppLabel;
    avg004: TppLabel;
    avg005: TppLabel;
    ppLine44: TppLine;
    ppLabel47: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel17: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine50: TppLine;
    ppLabel50: TppLabel;
    ppLine51: TppLine;
    ppLabel52: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine57: TppLine;
    ppDBText22: TppDBText;
    ppLine58: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText23: TppDBText;
    ppDBCalc15: TppDBCalc;
    mwf005: TppLabel;
    ppDBText24: TppDBText;
    ppLabel64: TppLabel;
    ppLine60: TppLine;
    ppLabel66: TppLabel;
    ppLine61: TppLine;
    ppDBText25: TppDBText;
    swf006: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel11: TppLabel;
    ppLabel68: TppLabel;
    ppDBText26: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppLine64: TppLine;
    ppLabel69: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBCalc21: TppDBCalc;
    cwf001: TppLabel;
    cwf002: TppLabel;
    avg006: TppLabel;
    mc001: TppLabel;
    mc002: TppLabel;
    mc003: TppLabel;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLabel70: TppLabel;
    ppDBText33: TppDBText;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel74: TppLabel;
    ppDBText34: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    dt001: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLine12: TppLine;
    ppLabel51: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine14: TppLine;
    ppDBText6: TppDBText;
    ppDBCalc4: TppDBCalc;
    swf007: TppLabel;
    ppLine36: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLabel84: TppLabel;
    ppDBText7: TppDBText;
    ppLabel85: TppLabel;
    avg007: TppLabel;
    ppDBText35: TppDBText;
    ppDBCalc5: TppDBCalc;
    mwf006: TppLabel;
    ppLabel55: TppLabel;
    ppLine9: TppLine;
    ppLine29: TppLine;
    ppLine73: TppLine;
    ppLabel57: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine74: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDBText36: TppDBText;
    mc004: TppLabel;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine13: TppLine;
    ppLabel14: TppLabel;
    ppLabel92: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel43: TppLabel;
    ppLabel93: TppLabel;
    tlwf001: TppLabel;
    tcwf001: TppLabel;
    tcwf002: TppLabel;
    tswf001: TppLabel;
    tswf002: TppLabel;
    tswf006: TppLabel;
    tswf003: TppLabel;
    tswf004: TppLabel;
    tmc001: TppLabel;
    tmc003: TppLabel;
    tmc004: TppLabel;
    ppShape2: TppShape;
    ttl001: TppLabel;
    ppMemo1: TppMemo;
    ppLabel94: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel95: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine26: TppLine;
    ppLabel8: TppLabel;
    ppLabel98: TppLabel;
    ppDBText37: TppDBText;
    ppDBCalc3: TppDBCalc;
    peff001: TppLabel;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ttl002: TppLabel;
    ppLabel7: TppLabel;
    ppDBText38: TppDBText;
    ppLine2: TppLine;
    ppLabel27: TppLabel;
    ppLine35: TppLine;
    ppLine38: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDBText39: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppLabel73: TppLabel;
    ppShape4: TppShape;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppShape14: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppMemo3: TppMemo;
    Label4: TLabel;
    Label5: TLabel;
    xh1: TRadioButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    xh2: TRadioButton;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    xh3: TRadioButton;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    mychk01: TmyCheckBox;
    ppLabel4: TppLabel;
    dt002: TppLabel;
    ppLabel106: TppLabel;
    wk001: TppLabel;
    mychk02: TmyCheckBox;
    ppLabel108: TppLabel;
    wk002: TppLabel;
    ppLabel105: TppLabel;
    mon001: TppLabel;
    mychk03: TmyCheckBox;
    ppLabel109: TppLabel;
    mon002: TppLabel;
    ppLabel107: TppLabel;
    ppLabel110: TppLabel;
    ppLabel53: TppLabel;
    tmwf004: TppLabel;
    tmwf001: TppLabel;
    ppLine1: TppLine;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppDBText40: TppDBText;
    tmwf007: TppLabel;
    mwf007: TppLabel;
    ppLine23: TppLine;
    ppLine32: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppDBText41: TppDBText;
    tcwf004: TppLabel;
    cwf004: TppLabel;
    tcwf003: TppLabel;
    cwf003: TppLabel;
    ppDBText42: TppDBText;
    ppLine33: TppLine;
    ppLabel121: TppLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    NewFormat1: TMenuItem;
    BitBtn7: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure queryfieldchange(Sender: TField);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure NewFormat1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwkf: Tfrmwkf;
  dt1,dt2:tdate;

implementation

uses mainformu, fwfformu, fwf1formu, fwf2formu, wkf1formu, wkf2formu, wkfsum1formu,
  wkfsum2formu, wkf01formu, wkf02formu;

{$R *.dfm}

procedure Tfrmwkf.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
  if dateedit1.Date>0 then begin
    //
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='execute procedure sp_gen_wkforce(:x1,:x2,:x3,:x4)';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=combobox2.text;
      params[2].asdate:=dt1;
      params[3].asdate:=dt2;
      execute;
    end;
    //
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      //if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
    end;
  end;
  finally
   screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmwkf.BitBtn4Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmwkf.BitBtn5Click(Sender: TObject);
var
  cfm:boolean;
begin
  screen.Cursor:=crSQLWait;
  if query1.state=dsedit then query1.post;
  bitbtn1click(self);
  if query1.Active then begin
   if combobox2.Text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
    end;
    if (xh1.Checked) and (dateedit1.date=dateedit2.date) then begin
      {
      if frmwkf1=nil then frmwkf1:=tfrmwkf1.create(nil);
      if combobox1.text>'' then frmwkf1.fty001.caption:=combobox1.text
      else frmwkf1.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf1.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf1.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf1.shop001.Caption:='';
      if combobox2.text>'' then frmwkf1.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf1.title001.Caption:='LWPM ---- Factory LB '; 
      if cfm=false then frmwkf1.title002.Caption:=frmwkf1.title002.Caption+'   * incomplete *'
      else frmwkf1.title002.Caption:=frmwkf1.title002.Caption+'   * Confirmed *';
      frmwkf1.dt001.Caption:=dateedit1.Text;
      frmwkf1.ppReport1.Print;

      if frmwkf2=nil then frmwkf2:=tfrmwkf2.create(nil);
      if combobox1.text>'' then frmwkf2.fty001.caption:=combobox1.text
      else frmwkf2.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf2.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf2.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf2.shop001.Caption:='';
      if combobox2.text>'' then frmwkf2.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf2.title001.Caption:='LWPM ---- Factory LB ';
      if cfm=false then frmwkf2.title002.Caption:=frmwkf2.title002.Caption+'   * incomplete *'
      else frmwkf2.title002.Caption:=frmwkf2.title002.Caption+'   * Confirmed *';
      frmwkf2.dt001.Caption:=dateedit1.Text;
      frmwkf2.ppReport1.Print;
      }
    end else begin
     if frmfwf1=nil then frmfwf1:=tfrmfwf1.Create(nil);
     frmfwf1.ComboBox1.text:=combobox1.text;
     frmfwf1.ComboBox2.text:=combobox2.text;
     frmfwf1.DateEdit1.Date:=dateedit1.date;
     frmfwf1.DateEdit2.date:=dateedit2.date;
     frmfwf1.xh1.Checked:=xh1.Checked;
     frmfwf1.xh2.Checked:=xh2.Checked;
     frmfwf1.xh3.Checked:=xh3.Checked;
     frmfwf1.Edit1.Value:=edit1.Value;
     frmfwf1.Edit2.Value:=edit2.Value;
     frmfwf1.Edit3.Value:=edit3.Value;
     frmfwf1.Edit4.Value:=edit4.Value;
     frmfwf1.Edit5.Value:=edit5.Value;
     frmfwf1.Edit6.Value:=edit6.Value;
     frmfwf1.Edit7.Value:=edit7.Value;
     frmfwf1.Edit8.Value:=edit8.Value;
     frmfwf1.BitBtn1click(self);
    end;
   end else if combobox1.text>'' then begin
     if frmwkfsum1=nil then frmwkfsum1:=tfrmwkfsum1.create(nil);
     frmwkfsum1.fty001.caption:=combobox1.text;
     frmwkfsum1.DateEdit1.date:=dt1;
     frmwkfsum1.DateEdit2.date:=dt2;
      if xh1.Checked then begin
        frmwkfsum1.mychk01.Checked:=true;
        frmwkfsum1.dt0001.Caption:=dateedit1.Text;
        frmwkfsum1.dt0002.Caption:=dateedit2.Text;
      end else begin
        frmwkfsum1.mychk01.Checked:=false;
        frmwkfsum1.dt0001.Caption:='';
        frmwkfsum1.dt0002.Caption:='';
      end;
      if xh2.Checked then begin
        frmwkfsum1.mychk02.Checked:=true;
        frmwkfsum1.wk001.Caption:=inttostr(edit1.value)+'-'+inttostr(edit2.value);
        frmwkfsum1.wk002.Caption:=inttostr(edit3.Value)+'-'+inttostr(edit4.value);
      end else begin
        frmwkfsum1.mychk02.Checked:=false;
        frmwkfsum1.wk001.Caption:='';
        frmwkfsum1.wk002.Caption:='';
      end;
      if xh3.Checked then begin
        frmwkfsum1.mychk03.Checked:=true;
        frmwkfsum1.mon001.Caption:=inttostr(edit5.value)+'-'+inttostr(edit6.value);
        frmwkfsum1.mon002.Caption:=inttostr(edit7.Value)+'-'+inttostr(edit8.value);
      end else begin
        frmwkfsum1.mychk03.Checked:=false;
        frmwkfsum1.mon001.Caption:='';
        frmwkfsum1.mon002.Caption:='';
      end;
     if combobox2.Text>'' then frmwkfsum1.title001.Caption:='LWPM ---- Workshop LB '
     else if combobox1.Text>'' then frmwkfsum1.title001.Caption:='LWPM ---- Factory LB ';
     frmwkfsum1.ppReport1.Print;
     if frmwkfsum2=nil then frmwkfsum2:=tfrmwkfsum2.create(nil);
     frmwkfsum2.fty001.caption:=combobox1.text;
     frmwkfsum2.DateEdit1.date:=dt1;
     frmwkfsum2.DateEdit2.date:=dt2;
      if xh1.Checked then begin
        frmwkfsum2.mychk01.Checked:=true;
        frmwkfsum2.dt0001.Caption:=dateedit1.Text;
        frmwkfsum2.dt0002.Caption:=dateedit2.Text;
      end else begin
        frmwkfsum2.mychk01.Checked:=false;
        frmwkfsum2.dt0001.Caption:='';
        frmwkfsum2.dt0002.Caption:='';
      end;
      if xh2.Checked then begin
        frmwkfsum2.mychk02.Checked:=true;
        frmwkfsum2.wk001.Caption:=inttostr(edit1.value)+'-'+inttostr(edit2.value);
        frmwkfsum2.wk002.Caption:=inttostr(edit3.Value)+'-'+inttostr(edit4.value);
      end else begin
        frmwkfsum2.mychk02.Checked:=false;
        frmwkfsum2.wk001.Caption:='';
        frmwkfsum2.wk002.Caption:='';
      end;
      if xh3.Checked then begin
        frmwkfsum2.mychk03.Checked:=true;
        frmwkfsum2.mon001.Caption:=inttostr(edit5.value)+'-'+inttostr(edit6.value);
        frmwkfsum2.mon002.Caption:=inttostr(edit7.Value)+'-'+inttostr(edit8.value);
      end else begin
        frmwkfsum2.mychk03.Checked:=false;
        frmwkfsum2.mon001.Caption:='';
        frmwkfsum2.mon002.Caption:='';
      end;
     if combobox2.Text>'' then frmwkfsum2.title001.Caption:='LWPM ---- Workshop LB '
     else if combobox1.Text>'' then frmwkfsum2.title001.Caption:='LWPM ---- Factory LB ';
     frmwkfsum2.ppReport1.Print;
     {
     if frmfwf=nil then frmfwf:=tfrmfwf.Create(nil);
     frmfwf.ComboBox1.text:=combobox1.text;
     frmfwf.DateEdit1.Date:=dateedit1.date;
     frmfwf.DateEdit2.date:=dateedit2.date;
     frmfwf.xh1.Checked:=xh1.Checked;
     frmfwf.xh2.Checked:=xh2.Checked;
     frmfwf.xh3.Checked:=xh3.Checked;
     frmfwf.Edit1.Value:=edit1.Value;
     frmfwf.Edit2.Value:=edit2.Value;
     frmfwf.Edit3.Value:=edit3.Value;
     frmfwf.Edit4.Value:=edit4.Value;
     frmfwf.Edit5.Value:=edit5.Value;
     frmfwf.Edit6.Value:=edit6.Value;
     frmfwf.Edit7.Value:=edit7.Value;
     frmfwf.Edit8.Value:=edit8.Value;
     frmfwf.BitBtn1click(self);
     }
   end else if combobox1.text='' then begin
     if frmfwf2=nil then frmfwf2:=tfrmfwf2.Create(nil);
     frmfwf2.ComboBox1.text:=combobox1.text;
     frmfwf2.DateEdit1.Date:=dateedit1.date;
     frmfwf2.DateEdit2.date:=dateedit2.date;
     frmfwf2.xh1.Checked:=xh1.Checked;
     frmfwf2.xh2.Checked:=xh2.Checked;
     frmfwf2.xh3.Checked:=xh3.Checked;
     frmfwf2.Edit1.Value:=edit1.Value;
     frmfwf2.Edit2.Value:=edit2.Value;
     frmfwf2.Edit3.Value:=edit3.Value;
     frmfwf2.Edit4.Value:=edit4.Value;
     frmfwf2.Edit5.Value:=edit5.Value;
     frmfwf2.Edit6.Value:=edit6.Value;
     frmfwf2.Edit7.Value:=edit7.Value;
     frmfwf2.Edit8.Value:=edit8.Value;
     frmfwf2.BitBtn1click(self);
   end;
  end;
  screen.Cursor:=crDefault;
  newformat1click(self);
end;

procedure Tfrmwkf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmfwf<>nil then frmfwf:=nil;
  if frmwkf1<>nil then frmwkf1:=nil;
  if frmwkf2<>nil then frmwkf2:=nil;
  if frmwkfsum1<>nil then frmwkfsum1:=nil;
  if frmwkfsum2<>nil then frmwkfsum2:=nil;
  action:=cafree;
  frmwkf:=nil;
end;

procedure Tfrmwkf.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.CreateParam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_qnwf where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').Value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
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
          params.createparam(ftfloat,'bwfac',ptinput);
          params.createparam(ftfloat,'mwfac',ptinput);
          params.createparam(ftfloat,'ulbac',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftinteger,'x23',ptinput);
          params.createparam(ftinteger,'x24',ptinput);
          commandtext:='update tbl_qnwf set sect=:x1,csect=:x2,gsdtrs=:x3,gsdbn=:x4,gsdttl=:x5,bwf=:x6,bwfs=:x7,bwfa=:x8,bwfttl=:x9,mwflb=:x10,'
                      +'mwfa=:x11,mwfbn=:x12,mwfttl=:x13,lbwf1=:x14,lbwf2=:x15,bwfa1=:x16,bwfn=:x17,mwfs=:x18,cwfttl=:x19,cwfdiff=:x20,ulb=:x21,'
                      +'bwfac=:bwfac,mwfac=:mwfac,ulbac=:ulbac where pline=:x22 and seq=:x23 and dseq=:x24';
          if not query1.fieldbyname('sect').isnull then
          params[0].asfloat:=query1.fieldbyname('sect').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('csect').isnull then
          params[1].asfloat:=query1.fieldbyname('csect').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('gsdtrs').isnull then
          params[2].asfloat:=query1.fieldbyname('gsdtrs').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('gsdbn').isnull then
          params[3].asfloat:=query1.fieldbyname('gsdbn').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('gsdttl').isnull then
          params[4].asfloat:=query1.fieldbyname('gsdttl').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('bwf').isnull then
          params[5].asfloat:=query1.fieldbyname('bwf').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('bwfs').isnull then
          params[6].asfloat:=query1.fieldbyname('bwfs').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('bwfa').isnull then
          params[7].asfloat:=query1.fieldbyname('bwfa').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('bwfttl').isnull then
          params[8].asfloat:=query1.fieldbyname('bwfttl').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('mwflb').isnull then
          params[9].asfloat:=query1.fieldbyname('mwflb').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('mwfa').isnull then
          params[10].asfloat:=query1.fieldbyname('mwfa').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('mwfbn').isnull then
          params[11].asfloat:=query1.fieldbyname('mwfbn').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('mwfttl').isnull then
          params[12].asfloat:=query1.fieldbyname('mwfttl').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('lbwf1').isnull then
          params[13].asfloat:=query1.fieldbyname('lbwf1').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('lbwf2').isnull then
          params[14].asfloat:=query1.fieldbyname('lbwf2').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('bwfa1').isnull then
          params[15].asfloat:=query1.fieldbyname('bwfa1').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('bwfn').isnull then
          params[16].asfloat:=query1.fieldbyname('bwfn').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('mwfs').isnull then
          params[17].asfloat:=query1.fieldbyname('mwfs').value
          else params[17].asfloat:=0;
          if not query1.fieldbyname('cwfttl').isnull then
          params[18].asfloat:=query1.fieldbyname('cwfttl').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('cwfdiff').isnull then
          params[19].asfloat:=query1.fieldbyname('cwfdiff').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('ulb').isnull then
          params[20].asfloat:=query1.fieldbyname('ulb').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('bwfac').isnull then
          params[21].asfloat:=query1.fieldbyname('bwfac').value
          else params[21].asfloat:=0;
          if not query1.fieldbyname('mwfac').isnull then
          params[22].asfloat:=query1.fieldbyname('mwfac').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('ulbac').isnull then
          params[23].asfloat:=query1.fieldbyname('ulbac').value
          else params[23].asfloat:=0;
          params[24].asstring:=query1.fieldbyname('pline').value;
          params[25].asinteger:=query1.fieldbyname('seq').value;
          params[26].asinteger:=query1.fieldbyname('dseq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
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
          params.createparam(ftinteger,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftboolean,'x18',ptinput);
          params.createparam(ftdate,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftfloat,'x25',ptinput);
          commandtext:='insert into tbl_qnwf(sect,csect,gsdtrs,gsdbn,gsdttl,bwf,bwfs,bwfa,bwfttl,mwflb,mwfa,mwfbn,mwfttl,lbwf1,lbwf2,seq,pline,lb,dt,eff1,eff2,tplant,tshop,bwfa1,dbxl)'
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25)';
          if not query1.fieldbyname('sect').isnull then
          params[0].asfloat:=query1.fieldbyname('sect').value
          else params[0].asfloat:=0;
          if not query1.fieldbyname('csect').isnull then
          params[1].asfloat:=query1.fieldbyname('csect').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('gsdtrs').isnull then
          params[2].asfloat:=query1.fieldbyname('gsdtrs').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('gsdbn').isnull then
          params[3].asfloat:=query1.fieldbyname('gsdbn').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('gsdttl').isnull then
          params[4].asfloat:=query1.fieldbyname('gsdttl').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('bwf').isnull then
          params[5].asfloat:=query1.fieldbyname('bwf').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('bwfs').isnull then
          params[6].asfloat:=query1.fieldbyname('bwfs').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('bwfa').isnull then
          params[7].asfloat:=query1.fieldbyname('bwfa').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('bwfttl').isnull then
          params[8].asfloat:=query1.fieldbyname('bwfttl').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('mwflb').isnull then
          params[9].asfloat:=query1.fieldbyname('mwflb').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('mwfa').isnull then
          params[10].asfloat:=query1.fieldbyname('mwfa').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('mwfbn').isnull then
          params[11].asfloat:=query1.fieldbyname('mwfbn').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('mwfttl').isnull then
          params[12].asfloat:=query1.fieldbyname('mwfttl').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('lbwf1').isnull then
          params[13].asfloat:=query1.fieldbyname('lbwf1').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('lbwf2').isnull then
          params[14].asfloat:=query1.fieldbyname('lbwf2').value
          else params[14].asfloat:=0;
          params[15].asinteger:=query1.fieldbyname('seq').value;
          params[16].asstring:=query1.fieldbyname('pline').value;
          params[17].asboolean:=query1.fieldbyname('lb').value;
          params[18].asdate:=query1.fieldbyname('dt').value;
          params[19].asfloat:=query1.fieldbyname('eff1').value;
          params[20].asfloat:=query1.fieldbyname('eff2').value;
          params[21].asstring:=query1.fieldbyname('tplant').value;
          params[22].asstring:=query1.fieldbyname('tshop').value;
          if not query1.fieldbyname('bwfa1').isnull then
          params[23].asfloat:=query1.fieldbyname('bwfa1').value
          else params[23].asfloat:=0;
          params[24].asfloat:=query1.fieldbyname('dbxl').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmwkf.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('gsdtrs').OnChange:=queryfieldchange;
  query1.FieldByName('gsdbn').OnChange:=queryfieldchange;
  query1.FieldByName('bwfs').OnChange:=queryfieldchange;
  query1.FieldByName('bwfa').OnChange:=queryfieldchange;
  query1.FieldByName('mwflb').OnChange:=queryfieldchange;
  query1.FieldByName('mwfs').OnChange:=queryfieldchange;
  query1.FieldByName('mwfa').OnChange:=queryfieldchange;
  query1.FieldByName('mwfbn').OnChange:=queryfieldchange;
end;

procedure Tfrmwkf.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmwkf.ppSummaryBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3,mf01,mf04,cf03,cf04,mf07:double;
  str1,str2:string;
  s1,s2,s3,s4:string;
  lt1,p4,p5:double;
begin
  s1:='';s2:='';s3:='';s4:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
  end;
  ttl001.Caption:=s1+s2+s3+s4;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;f11:=0;mf01:=0;mf04:=0;mf07:=0;cf03:=0;cf04:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl,mwflb,mwfttl,cwfttlc,cwfdiffc,mwfttlc from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      mf01:=mf01+fieldbyname('mwflb').value;
      mf04:=mf04+fieldbyname('mwfttl').value;
      mf07:=mf07+fieldbyname('mwfttlc').value;
      cf03:=cf03+fieldbyname('cwfttlc').value;
      cf04:=cf04+fieldbyname('cwfdiffc').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      //f11:=f11+fieldbyname('gsdmdiff').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0 and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      //f11:=f11+fieldbyname('gsdmdiff').value;
      application.ProcessMessages;
      next;
    end;
  end;

  tlwf001.Caption:=formatfloat('#0.0',f01);
  tcwf001.Caption:=formatfloat('#0.0',f02);
  tcwf002.Caption:=formatfloat('#0.0',f03);
  tswf001.Caption:=formatfloat('#0.0',f04);
  tswf002.Caption:=formatfloat('+#0.0;-#0.0',f05);
  tswf006.Caption:=formatfloat('#0.0',f06);
  tswf003.Caption:=formatfloat('#0.0',f07);
  tswf004.Caption:=formatfloat('#0.0',f08);
  tmc001.Caption:=formatfloat('#0.0',f09);
  tmc003.Caption:=formatfloat('#0.0',f10);
  tmc004.Caption:=formatfloat('+#0.0;-#0.0',f10-f09);
  tmwf001.Caption:=formatfloat('#0.0',mf01);
  tmwf004.Caption:=formatfloat('#0.0',mf04);
  tcwf003.Caption:=formatfloat('#0.0',cf03);
  tcwf004.Caption:=formatfloat('+#0.0;-#0.0',cf04);
  tmwf007.Caption:=formatfloat('#0.0',mf07);

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.add('Linkage Time(LT):');
  lt1:=0;
  p5:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select csect from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('csect').isnull then p5:=fieldbyname('csect').value else p5:=0;
  end;
  //try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='select distinct pline,seq from tblshedule where ltc_ksrq=:x0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' union select distinct pline,max(seq) as seq from tblshedule b where ((cfwcrq=:x1) or (ltc_ksrq=:x2)) and cfwcjs<:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' and (ltc_ksrq is not null) group by pline';
    params[0].asdate:=Query1.fieldbyname('dt1').value;
    params[1].asdate:=Query1.fieldbyname('dt1').value;
    params[2].asdate:=Query1.fieldbyname('dt1').value;
    params[3].asfloat:=p5;
    open;
    first;
    while not eof do begin
      with Query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select a.ltc_d,a.cfwcrq,a.cfwcjs,a.ltc_ksrq,a.ltc_ksjs,a.flag3,b.lst1 from tblshedule a,line_shjs b '
                    +'where a.pline=b.pline and a.seq=b.seq and a.pline=:x1 and seq=:x2 and b.flag=''0'' '
                    +'and b.dt1=:x3 and ((a.ltc_ksrq=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
        params[0].asstring:=query2.fieldbyname('pline').value;
        params[1].asinteger:=query2.fieldbyname('seq').value;
        params[2].asdate:=Query1.fieldbyname('dt1').value;
        open;
        if not fieldbyname('lst1').isnull then str2:=fieldbyname('lst1').value else str2:='c';
        if not fieldbyname('flag3').isnull then begin
          if pos('x',fieldbyname('flag3').value)>0 then str2:='x';
        end;
        if not fieldbyname('ltc_d').isnull then begin
          lt1:=lt1+fieldbyname('ltc_d').value;
          str1:=query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',fieldbyname('ltc_d').value)+' sect hr';
          str1:=str1+'  (from '+formatdatetime('yy/MM/dd',fieldbyname('cfwcrq').value)+'  '+formatfloat('0.0',fieldbyname('cfwcjs').value)+' sect hr';
          str1:=str1+'  to '+formatdatetime('yy/MM/dd',fieldbyname('ltc_ksrq').value)+'  '+formatfloat('0.0',fieldbyname('ltc_ksjs').value)+' sect hr)';
          ppmemo1.Lines.add(str1);
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ppMemo1.Lines.add('Total Linkage Time: '+formatfloat('0.0',lt1));
  //
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect))/sum(asect) as lwf1,sum(gsdbn*(asect))/sum(asect) as lwf2,'
                +'sum(gsdttl*(asect))/sum(asect) as lwf3,sum(bwf*(asect))/sum(asect) as swf1,sum(bwfs*(asect))/sum(asect) as swf2,'
                +'sum(bwfa*(asect))/sum(asect) as swf3,sum(bwfttl*(asect))/sum(asect) as swf4,sum(bwfa1*(asect))/sum(asect) as swf5,'
                +'sum(mwflb*(asect))/sum(asect) as mwf1,sum(mwfa*(asect))/sum(asect) as mwf2,sum(mwfbn*(asect))/sum(asect) as mwf3,'
                +'sum(mwfttl*(asect))/sum(asect) as mwf4,sum(lbwf1*(asect))/sum(asect) as avg1,sum(lbwf2*(asect))/sum(asect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(csect+asect))/sum(csect+asect) as avg5,'
                +'sum(bwfn*(asect))/sum(asect) as swf6,sum(mwfs*(asect))/sum(asect) as mwf5,sum(cwfttl*(asect))/sum(asect) as cwf1,'
                +'sum(cwfdiff*(asect))/sum(asect) as cwf2,sum(ulb*(asect))/sum(asect) as avg6,sum(gsdm*(asect))/sum(asect) as mc1,'
                +'sum(gsdmbn*(asect))/sum(asect) as mc2,sum(gsdmttl*(asect))/sum(asect) as mc3,sum(bwfac*(asect))/sum(asect) as swf7,'
                +'sum(mwfac*(asect))/sum(asect) as mwf6,sum(ulbac*(asect))/sum(asect) as avg7,sum(gsdmdiff*(asect))/sum(asect) as mc4,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cf3,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cf4,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mf7 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and (asect+csect)>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf001.Caption:='0.00';
    if not fieldbyname('swf1').isnull then swf001.Caption:=formatfloat('0.00',fieldbyname('swf1').value) else swf001.Caption:='0.00';
    if not fieldbyname('swf2').isnull then swf002.Caption:=formatfloat('0.00',fieldbyname('swf2').value) else swf002.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf003.Caption:='0.00';
    if not fieldbyname('swf4').isnull then swf004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf004.Caption:='0.00';
    if not fieldbyname('swf5').isnull then swf005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf005.Caption:='0.00';
    if not fieldbyname('swf6').isnull then swf006.Caption:=formatfloat('0.00',fieldbyname('swf6').value) else swf006.Caption:='0.00';
    if not fieldbyname('swf7').isnull then swf007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf007.Caption:='0.00';
    if not fieldbyname('mwf1').isnull then mwf001.Caption:=formatfloat('0.00',fieldbyname('mwf1').value) else mwf001.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf003.Caption:='0.00';
    if not fieldbyname('mwf4').isnull then mwf004.Caption:=formatfloat('0.00',fieldbyname('mwf4').value) else mwf004.Caption:='0.00';
    if not fieldbyname('mwf5').isnull then mwf005.Caption:=formatfloat('0.00',fieldbyname('mwf5').value) else mwf005.Caption:='0.00';
    if not fieldbyname('mwf6').isnull then mwf006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf002.Caption:='0.00';
    if not fieldbyname('avg1').isnull then avg001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg001.Caption:='0.00';
    if not fieldbyname('avg2').isnull then avg002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg004.Caption:='0.00';
    //if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg006.Caption:='0.00';
    if not fieldbyname('avg7').isnull then avg007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg007.Caption:='0.00';
    if not fieldbyname('mc1').isnull then mc001.Caption:=formatfloat('0.00',fieldbyname('mc1').value) else mc001.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc002.Caption:='0.00';
    if not fieldbyname('mc3').isnull then mc003.Caption:=formatfloat('0.00',fieldbyname('mc3').value) else mc003.Caption:='0.00';
    if not fieldbyname('mc4').isnull then mc004.Caption:=formatfloat('0.00',fieldbyname('mc4').value) else mc004.Caption:='0.00';
    if fieldbyname('avg4').value<fieldbyname('avg3').value then avg004.Font.Color:=clRed else avg004.Font.Color:=clGreen;
    if not fieldbyname('cf3').isnull then cwf003.Caption:=formatfloat('0.00',fieldbyname('cf3').value) else cwf003.Caption:='0.00';
    if not fieldbyname('cf4').isnull then cwf004.Caption:=formatfloat('+0.00;-0,00',fieldbyname('cf4').value) else cwf004.Caption:='0.00';
    if not fieldbyname('mf7').isnull then mwf007.Caption:=formatfloat('0.00',fieldbyname('mf7').value) else mwf007.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*csect)/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
    //if not fieldbyname('s3').isnull then p4:=fieldbyname('s3').value else p4:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(msect-asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,tsect from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('tsect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
end;

procedure Tfrmwkf.queryfieldchange(Sender: TField);
var
  gsdtrs,gsdbn:double;
  bwf,bwfs,bwfa,bwfac,bwfttl:double;
  mwflb,mwfs,mwfa,mwfac,mwfbn:double;
begin
  if not query1.fieldbyname('gsdtrs').isnull then
  gsdtrs:=query1.fieldbyname('gsdtrs').value else gsdtrs:=0;
  if not query1.fieldbyname('gsdbn').isnull then
  gsdbn:=query1.fieldbyname('gsdbn').value else gsdbn:=0;
  query1.fieldbyname('gsdttl').value:=gsdtrs+gsdbn;
  if not query1.fieldbyname('bwf').isnull then
  bwf:=query1.fieldbyname('bwf').value else bwf:=0;
  if not query1.fieldbyname('bwfs').isnull then
  bwfs:=query1.fieldbyname('bwfs').value else bwfs:=0;
  query1.fieldbyname('bwfn').value:=bwf+bwfs;
  if not query1.fieldbyname('bwfa').isnull then
  bwfa:=query1.fieldbyname('bwfa').value else bwfa:=0;
  if not query1.fieldbyname('bwfac').isnull then
  bwfac:=query1.fieldbyname('bwfac').value else bwfac:=0;
  if not query1.fieldbyname('bwfttl').isnull then
  bwfttl:=query1.fieldbyname('bwfttl').value else bwfttl:=0;
  //query1.fieldbyname('bwfttl').value:=bwf+bwfs+bwfa;
  //if query1.fieldbyname('csect').value>0 then
  //  query1.fieldbyname('bwfa1').value:=bwf+bwfs+bwfac
  //else query1.fieldbyname('bwfa1').value:=0;
  if not query1.fieldbyname('mwflb').isnull then
  mwflb:=query1.fieldbyname('mwflb').value else mwflb:=0;
  if not query1.fieldbyname('mwfs').isnull then
  mwfs:=query1.fieldbyname('mwfs').value else mwfs:=0;
  if not query1.fieldbyname('mwfa').isnull then
  mwfa:=query1.fieldbyname('mwfa').value else mwfa:=0;
  if not query1.fieldbyname('mwfac').isnull then
  mwfac:=query1.fieldbyname('mwfac').value else mwfac:=0;
  if not query1.fieldbyname('mwfbn').isnull then
  mwfbn:=query1.fieldbyname('mwfbn').value else mwfbn:=0;
  query1.fieldbyname('mwfttl').value:=mwflb+mwfs+mwfa+mwfac;

  query1.fieldbyname('cwfttl').value:=bwfttl+mwflb+mwfs+mwfa+mwfbn;
  query1.fieldbyname('cwfdiff').value:=bwfttl-(gsdtrs+gsdbn);//-(bwf+bwfs+bwfa+mwflb+mwfs+mwfa+mwfbn);
  query1.fieldbyname('ulb').value:=(1.0-(gsdtrs+gsdbn-bwfttl)/(gsdtrs+gsdbn))*query1.fieldbyname('eff1').value;
  if query1.fieldbyname('csect').value>0 then
    query1.fieldbyname('ulbac').value:=(1.0-(gsdtrs+gsdbn-(bwf+bwfs+bwfac+mwflb+mwfs+mwfac+mwfbn))/(gsdtrs+gsdbn))*query1.fieldbyname('eff1').value
  else query1.fieldbyname('ulbac').value:=0;

  query1.fieldbyname('lbwf1').value:=((bwf+bwfs+bwfa+mwflb+mwfs+mwfa+mwfbn-gsdtrs-gsdbn)/(gsdtrs+gsdbn))*100.0;
  //(1.0-(gsdtrs+gsdbn-(bwf+bwfs+bwfa+mwflb+mwfs+mwfa+mwfbn))/(gsdtrs+gsdbn))*100.0;
  query1.fieldbyname('lbwf2').value:=(gsdbn-mwfbn)/(gsdtrs+gsdbn)*100.0;
end;

procedure Tfrmwkf.DataSource1StateChange(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10:double;
  cf03,cf04,mf01,mf04,mf07:double;
begin
 if query1.state=dsbrowse then begin
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;
  cf03:=0;cf04:=0;mf01:=0;mf04:=0;mf07:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdtrs*(asect+csect))/sum(asect+csect) as gsdtrs,sum(cwfttl*(asect+csect))/sum(asect+csect) as cwfttl,'
                +'sum(cwfdiff*(asect+csect))/sum(asect+csect) as cwfdiff,sum(bwf*(asect+csect))/sum(asect+csect) as bwf,sum(bwfs*(asect+csect))/sum(asect+csect) as bwfs,'
                +'sum(bwfn*(asect+csect))/sum(asect+csect) as bwfn,sum(bwfa*(asect+csect))/sum(asect+csect) as bwfa,sum(bwfttl*(asect+csect))/sum(asect+csect) as bwfttl,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cwfttlc,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cwfdiffc,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mwfttlc,'
                +'sum(mwft*(asect+csect))/sum(asect+csect) as mwfttl from tbl_qnwf where dt1=:x2 and asect+csect>0 ';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    //if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      cf03:=cf03+fieldbyname('cwfttlc').value;
      cf04:=cf04+fieldbyname('cwfdiffc').value;
      mf04:=mf04+fieldbyname('mwfttl').value;
      mf07:=mf07+fieldbyname('mwfttlc').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0 and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;
  dbgrideh1.Columns[13].Footers[0].value:=formatfloat('#0.0',f01);
  dbgrideh1.Columns[16].Footers[0].value:=formatfloat('#0.0',f02);
  dbgrideh1.Columns[17].Footers[0].value:=formatfloat('#0.0',f03);
  dbgrideh1.Columns[20].Footers[0].value:=formatfloat('#0.0',f04);
  dbgrideh1.Columns[22].Footers[0].value:=formatfloat('+#0.0;-#0.0',f05);
  dbgrideh1.Columns[21].Footers[0].value:=formatfloat('#0.0',f06);
  dbgrideh1.Columns[23].Footers[0].value:=formatfloat('#0.0',f07);
  dbgrideh1.Columns[24].Footers[0].value:=formatfloat('#0.0',f08);
  dbgrideh1.Columns[37].Footers[0].value:=formatfloat('#0.0',f09);
  dbgrideh1.Columns[38].Footers[0].value:=formatfloat('#0.0',f10);
  dbgrideh1.Columns[39].Footers[0].value:=formatfloat('+#0.0;-#0.0',f10-f09);
  dbgrideh1.Columns[18].Footers[0].Value:=formatfloat('#0.0',cf03);
  dbgrideh1.Columns[19].Footers[0].Value:=formatfloat('+#0.0;-#0.0',cf04);
  dbgrideh1.Columns[27].Footers[0].Value:=formatfloat('#0.0',mf04);
  dbgrideh1.Columns[28].Footers[0].Value:=formatfloat('#0.0',mf07);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect+csect))/sum(asect+csect) as lwf1,sum(gsdbn*(asect+csect))/sum(asect+csect) as lwf2,'
                +'sum(gsdttl*(asect+csect))/sum(asect+csect) as lwf3,sum(bwf*(asect+csect))/sum(asect+csect) as swf1,sum(bwfs*(asect+csect))/sum(asect+csect) as swf2,'
                +'sum(bwfa*(asect+csect))/sum(asect+csect) as swf3,sum(bwfttl*(asect+csect))/sum(asect+csect) as swf4,sum(bwfa1*(asect+csect))/sum(asect+csect) as swf5,'
                +'sum(mwflb*(asect+csect))/sum(asect+csect) as mwf1,sum(mwfa*(asect+csect))/sum(asect+csect) as mwf2,sum(mwfbn*(asect+csect))/sum(asect+csect) as mwf3,'
                +'sum(mwft*(asect+csect))/sum(asect+csect) as mwf4,sum(lbwf1*(asect+csect))/sum(asect+csect) as avg1,sum(lbwf2*(asect+csect))/sum(asect+csect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(csect+asect))/sum(csect+asect) as avg5,'
                +'sum(bwfn*(asect+csect))/sum(asect+csect) as swf6,sum(mwfs*(asect+csect))/sum(asect+csect) as mwf5,sum(cwfttl*(asect+csect))/sum(asect+csect) as cwf1,'
                +'sum(cwfdiff*(asect+csect))/sum(asect+csect) as cwf2,sum(ulb*(asect+csect))/sum(asect+csect) as avg6,sum(gsdm*(asect+csect))/sum(asect+csect) as mc1,'
                +'sum(gsdmbn*(asect+csect))/sum(asect+csect) as mc2,sum(gsdmttl*(asect+csect))/sum(asect+csect) as mc3,sum(bwfac*(asect+csect))/sum(asect+csect) as swf7,'
                +'sum(mwfac*(asect+csect))/sum(asect+csect) as mwf6,sum(ulbac*(asect+csect))/sum(asect+csect) as avg7,sum(gsdmdiff*(asect+csect))/sum(asect+csect) as mc4,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cf3,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cf4,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mf7 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and (asect+csect)>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then dbgrideh1.Columns[13].Footers[1].value:=formatfloat('0.00',fieldbyname('lwf1').value)
    else dbgrideh1.Columns[13].Footers[1].value:='0.00';
    if not fieldbyname('lwf2').isnull then dbgrideh1.Columns[14].Footers[1].value:=formatfloat('0.00',fieldbyname('lwf2').value)
    else dbgrideh1.Columns[14].Footers[1].value:='0.00';
    if not fieldbyname('lwf3').isnull then dbgrideh1.Columns[15].Footers[1].value:=formatfloat('0.00',fieldbyname('lwf3').value)
    else dbgrideh1.Columns[15].Footers[1].value:='0.00';

    if not fieldbyname('cwf1').isnull then dbgrideh1.Columns[16].Footers[1].value:=formatfloat('0.00',fieldbyname('cwf1').value)
    else dbgrideh1.Columns[16].Footers[1].value:='0.00';
    if not fieldbyname('cwf2').isnull then dbgrideh1.Columns[17].Footers[1].value:=formatfloat('0.00',fieldbyname('cwf2').value)
    else dbgrideh1.Columns[17].Footers[1].value:='0.00';

    if not fieldbyname('swf1').isnull then dbgrideh1.Columns[20].Footers[1].value:=formatfloat('0.00',fieldbyname('swf1').value)
    else dbgrideh1.Columns[20].Footers[1].value:='0.00';
    if not fieldbyname('swf2').isnull then dbgrideh1.Columns[22].Footers[1].value:=formatfloat('0.00',fieldbyname('swf2').value)
    else dbgrideh1.Columns[22].Footers[1].value:='0.00';
    if not fieldbyname('swf6').isnull then dbgrideh1.Columns[21].Footers[1].value:=formatfloat('0.00',fieldbyname('swf6').value)
    else dbgrideh1.Columns[21].Footers[1].value:='0.00';
    if not fieldbyname('swf3').isnull then dbgrideh1.Columns[23].Footers[1].value:=formatfloat('0.00',fieldbyname('swf3').value)
    else dbgrideh1.Columns[23].Footers[1].value:='0.00';
    if not fieldbyname('swf7').isnull then dbgrideh1.Columns[25].Footers[1].value:=formatfloat('0.00',fieldbyname('swf7').value)
    else dbgrideh1.Columns[25].Footers[1].value:='0.00';
    if not fieldbyname('swf4').isnull then dbgrideh1.Columns[24].Footers[1].value:=formatfloat('0.00',fieldbyname('swf4').value)
    else dbgrideh1.Columns[24].Footers[1].value:='0.00';
    if not fieldbyname('swf5').isnull then dbgrideh1.Columns[26].Footers[1].value:=formatfloat('0.00',fieldbyname('swf5').value)
    else dbgrideh1.Columns[26].Footers[1].value:='0.00';
    
    if not fieldbyname('mwf4').isnull then dbgrideh1.Columns[27].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf4').value)
    else dbgrideh1.Columns[27].Footers[1].value:='0.00';
    if not fieldbyname('mwf1').isnull then dbgrideh1.Columns[29].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf1').value)
    else dbgrideh1.Columns[29].Footers[1].value:='0.00';
    if not fieldbyname('mwf5').isnull then dbgrideh1.Columns[30].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf5').value)
    else dbgrideh1.Columns[30].Footers[1].value:='0.00';
    if not fieldbyname('mwf2').isnull then dbgrideh1.Columns[31].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf2').value)
    else dbgrideh1.Columns[31].Footers[1].value:='0.00';
    if not fieldbyname('mwf6').isnull then dbgrideh1.Columns[32].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf6').value)
    else dbgrideh1.Columns[32].Footers[1].value:='0.00';
    if not fieldbyname('mwf3').isnull then dbgrideh1.Columns[33].Footers[1].value:=formatfloat('0.00',fieldbyname('mwf3').value)
    else dbgrideh1.Columns[33].Footers[1].value:='0.00';

    if not fieldbyname('avg1').isnull then dbgrideh1.Columns[35].Footers[1].value:=formatfloat('0.00',fieldbyname('avg1').value)
    else dbgrideh1.Columns[35].Footers[1].value:='0.00';
    if not fieldbyname('avg2').isnull then dbgrideh1.Columns[36].Footers[1].value:=formatfloat('0.00',fieldbyname('avg2').value)
    else dbgrideh1.Columns[36].Footers[1].value:='0.00';

    if not fieldbyname('mc1').isnull then dbgrideh1.Columns[37].Footers[1].value:=formatfloat('0.00',fieldbyname('mc1').value)
    else dbgrideh1.Columns[37].Footers[1].value:='0.00';
    if not fieldbyname('mc3').isnull then dbgrideh1.Columns[38].Footers[1].value:=formatfloat('0.00',fieldbyname('mc3').value)
    else dbgrideh1.Columns[38].Footers[1].value:='0.00';
    if not fieldbyname('mc4').isnull then dbgrideh1.Columns[39].Footers[1].value:=formatfloat('0.00',fieldbyname('mc4').value)
    else dbgrideh1.Columns[39].Footers[1].value:='0.00';
    if not fieldbyname('mc2').isnull then dbgrideh1.Columns[40].Footers[1].value:=formatfloat('0.00',fieldbyname('mc2').value)
    else dbgrideh1.Columns[40].Footers[1].value:='0.00';

    if not fieldbyname('avg6').isnull then dbgrideh1.Columns[41].Footers[1].value:=formatfloat('0.00',fieldbyname('avg6').value)
    else dbgrideh1.Columns[41].Footers[1].value:='0.00';
    if not fieldbyname('avg7').isnull then dbgrideh1.Columns[42].Footers[1].value:=formatfloat('0.00',fieldbyname('avg7').value)
    else dbgrideh1.Columns[42].Footers[1].value:='0.00';
    if not fieldbyname('avg3').isnull then dbgrideh1.Columns[43].Footers[1].value:=formatfloat('0.00',fieldbyname('avg3').value)
    else dbgrideh1.Columns[43].Footers[1].value:='0.00';
    if not fieldbyname('avg4').isnull then dbgrideh1.Columns[44].Footers[1].value:=formatfloat('0.00',fieldbyname('avg4').value)
    else dbgrideh1.Columns[44].Footers[1].value:='0.00';
    if not fieldbyname('cf3').isnull then dbgrideh1.Columns[18].Footers[1].value:=formatfloat('0.00',fieldbyname('cf3').value)
    else dbgrideh1.Columns[18].Footers[1].value:='0.00';
    if not fieldbyname('cf4').isnull then dbgrideh1.Columns[19].Footers[1].value:=formatfloat('0.00',fieldbyname('cf4').value)
    else dbgrideh1.Columns[19].Footers[1].value:='0.00';
    if not fieldbyname('mf7').isnull then dbgrideh1.Columns[28].Footers[1].value:=formatfloat('0.00',fieldbyname('mf7').value)
    else dbgrideh1.Columns[28].Footers[1].value:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(mwflb*(asect+csect))/sum(asect+csect) as mwf1,sum(mwft*(asect+csect))/sum(asect+csect) as mwf4 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and (asect+csect)>0 and mwfttl>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      if not fieldbyname('mwf1').isnull then mf01:=mf01+fieldbyname('mwf1').value;
      if not fieldbyname('mwf4').isnull then mf04:=mf04+fieldbyname('mwf4').value;
      application.ProcessMessages;
      next;
    end;
  end;
  dbgrideh1.Columns[27].Footers[0].Value:=formatfloat('0.00',mf04);
  dbgrideh1.Columns[29].Footers[0].Value:=formatfloat('0.00',mf01);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(dbxl*csect)/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then dbgrideh1.Columns[45].Footers[1].value:=formatfloat('0.00',fieldbyname('avg5').value)
    else dbgrideh1.Columns[45].Footers[1].value:='0.00';
  end;
 end;
end;

procedure Tfrmwkf.FormShow(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
  dateedit2.date:=date;
  edit1.Value:=yearof(date);
  edit2.Value:=weekof(date);
  edit3.Value:=yearof(date);
  edit4.Value:=weekof(date);
  edit5.value:=yearof(date);
  edit6.Value:=monthof(date);
  edit7.Value:=yearof(date);
  edit8.Value:=monthof(date);
  xh1.Checked:=true;
  dateedit1.Enabled:=true;
  dateedit2.Enabled:=true;
  edit1.Enabled:=false;
  edit2.Enabled:=false;
  edit3.Enabled:=false;
  edit4.Enabled:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  edit7.Enabled:=false;
  edit8.Enabled:=false;
end;

procedure Tfrmwkf.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('lb').value=false then ppDBText2.Font.Style:=[fsBold]
  else ppDBText2.Font.Style:=[];
  if query1.fieldbyname('eff2').value<query1.fieldbyname('eff1').value then
  ppDBText20.Font.Color:=clRed else ppDBText20.Font.Color:=clGreen;
end;

procedure Tfrmwkf.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmwkf.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmwkf.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=true;
    edit6.Enabled:=true;
    edit7.Enabled:=true;
    edit8.Enabled:=true;
  end;
end;

procedure Tfrmwkf.BitBtn2Click(Sender: TObject);
var
  cfm:boolean;
begin
  if query1.state=dsedit then query1.post;
  if query1.Active then begin
   //if combobox2.Text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
    end;
    if (xh1.Checked) and (dateedit1.date=dateedit2.date) then begin
      if frmwkf1=nil then frmwkf1:=tfrmwkf1.create(nil);
      if combobox1.text>'' then frmwkf1.fty001.caption:=combobox1.text
      else frmwkf1.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf1.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf1.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf1.shop001.Caption:='';
      frmwkf1.dt001.Caption:=dateedit1.Text;
      if combobox2.text>'' then frmwkf1.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf1.title001.Caption:='LWPM ---- Factory LB '; 
      //frmwkf1.ppLabel1.Caption:='LWPM ---- Workshop Line Balancing (WF/Mc) Dashboard  -  Off-standard';
      if cfm=false then frmwkf1.title002.Caption:=frmwkf1.title002.Caption+'   * Confirmation - incomplete *'
      else frmwkf1.title002.Caption:=frmwkf1.title002.Caption+'   * Confirmed *';
      frmwkf1.ppReport1.Print;

      if frmwkf01=nil then frmwkf01:=tfrmwkf01.create(nil);
      if combobox1.text>'' then frmwkf01.fty001.caption:=combobox1.text
      else frmwkf01.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf01.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf01.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf01.shop001.Caption:='';
      if combobox2.text>'' then frmwkf01.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf01.title001.Caption:='LWPM ---- Factory LB ';
      if cfm=false then frmwkf01.title002.Caption:=frmwkf01.title002.Caption+'   * Confirmation - incomplete *'
      else frmwkf01.title002.Caption:=frmwkf01.title002.Caption+'   * Confirmed *';
      frmwkf01.dt001.Caption:=dateedit1.Text;
      frmwkf01.ppReport1.Print;
    end;
   //end;
  end;
end;

procedure Tfrmwkf.BitBtn3Click(Sender: TObject);
var
  cfm:boolean;
begin
  if query1.state=dsedit then query1.post;
  if query1.Active then begin
   //if combobox2.Text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
    end;
    if (xh1.Checked) and (dateedit1.date=dateedit2.date) then begin
      if frmwkf2=nil then frmwkf2:=tfrmwkf2.create(nil);
      if combobox1.text>'' then frmwkf2.fty001.caption:=combobox1.text
      else frmwkf2.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf2.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf2.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf2.shop001.Caption:='';
      frmwkf2.dt001.Caption:=dateedit1.Text;
      if combobox2.text>'' then frmwkf2.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf2.title001.Caption:='LWPM ---- Factory LB ';
      //frmwkf2.ppLabel1.Caption:='LWPM ---- Workshop Line Balancing (WF/Mc) Dashboard  -  On-standard';
      if cfm=false then frmwkf2.title002.Caption:=frmwkf2.title002.Caption+'   * Confirmation - incomplete *'
      else frmwkf2.title002.Caption:=frmwkf2.title002.Caption+'   * Confirmed *';
      frmwkf2.ppReport1.Print;

      if frmwkf02=nil then frmwkf02:=tfrmwkf02.create(nil);
      if combobox1.text>'' then frmwkf02.fty001.caption:=combobox1.text
      else frmwkf02.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf02.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf02.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf02.shop001.Caption:='';
      if combobox2.text>'' then frmwkf02.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf02.title001.Caption:='LWPM ---- Factory LB ';
      if cfm=false then frmwkf02.title002.Caption:=frmwkf02.title002.Caption+'   * Confirmation - incomplete *'
      else frmwkf02.title002.Caption:=frmwkf02.title002.Caption+'   * Confirmed *';
      frmwkf02.dt001.Caption:=dateedit1.Text;
      frmwkf02.ppReport1.Print;
    end;
   //end;
  end;
end;

procedure Tfrmwkf.NewFormat1Click(Sender: TObject);
var
  cfm:boolean;
begin
  screen.Cursor:=crSQLWait;
  //if query1.state=dsedit then query1.post;
  //bitbtn1click(self);
  if query1.Active then begin
   if combobox2.Text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
    end;
    if (xh1.Checked) and (dateedit1.date=dateedit2.date) then begin
      if frmwkf01=nil then frmwkf01:=tfrmwkf01.create(nil);
      if combobox1.text>'' then frmwkf01.fty001.caption:=combobox1.text
      else frmwkf01.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf01.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf01.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf01.shop001.Caption:='';
      if combobox2.text>'' then frmwkf01.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf01.title001.Caption:='LWPM ---- Factory LB ';
      if cfm=false then frmwkf01.title002.Caption:='  -  Off-standard (test version)   * incomplete *'//frmwkf01.title002.Caption+'   * incomplete *'
      else frmwkf01.title002.Caption:='  -  Off-standard (test version)   * Confirmed *';//frmwkf01.title002.Caption+'   * Confirmed *';
      frmwkf01.dt001.Caption:=dateedit1.Text;
      frmwkf01.ppReport1.Print;

      if frmwkf02=nil then frmwkf02:=tfrmwkf02.create(nil);
      if combobox1.text>'' then frmwkf02.fty001.caption:=combobox1.text
      else frmwkf02.fty001.caption:=query1.fieldbyname('tplant').value;
      if combobox2.text>'' then frmwkf02.shop001.Caption:=combobox2.text
      else if edit1.text>'' then frmwkf02.shop001.Caption:=query1.fieldbyname('tshop').value
      else frmwkf02.shop001.Caption:='';
      if combobox2.text>'' then frmwkf02.title001.Caption:='LWPM ---- Workshop LB '
      else if combobox1.Text>'' then frmwkf02.title001.Caption:='LWPM ---- Factory LB ';
      if cfm=false then frmwkf02.title002.Caption:='  -  On-standard (test version)   * incomplete *'//frmwkf02.title002.Caption+'   * incomplete *'
      else frmwkf02.title002.Caption:='  -  On-standard (test version)   * Confirmed *';//frmwkf02.title002.Caption+'   * Confirmed *';
      frmwkf02.dt001.Caption:=dateedit1.Text;
      frmwkf02.ppReport1.Print;
    end;
   end;
  end;
   screen.Cursor:=crDefault;
end;

procedure Tfrmwkf.BitBtn6Click(Sender: TObject);
begin
  newformat1click(self);
end;

end.
