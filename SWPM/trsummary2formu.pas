unit trsummary2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, myChkBox, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, DB, DBClient, ppViewr, ppParameter;

type
  Tfrmtrsummary2 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title001: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine17: TppLine;
    ppLine21: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel43: TppLabel;
    ttlwo: TppLabel;
    ppLabel11: TppLabel;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppLabel94: TppLabel;
    ppLabel103: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine22: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText7: TppDBText;
    ppDBText27: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel41: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppShape4: TppShape;
    ppMemo1: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel53: TppLabel;
    title002: TppLabel;
    ppLabel86: TppLabel;
    ppDBText45: TppDBText;
    ppLabel87: TppLabel;
    ppDBText46: TppDBText;
    ppLabel90: TppLabel;
    ppDBText51: TppDBText;
    ppLabel91: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel92: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape5: TppShape;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine93: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine94: TppLine;
    ppLine97: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel158: TppLabel;
    ppLabel177: TppLabel;
    ppLabel181: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel89: TppLabel;
    ppDBText50: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText26: TppDBText;
    ppDBText103: TppDBText;
    ppLabel50: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine148: TppLine;
    ppLine155: TppLine;
    ppLine182: TppLine;
    ppLine189: TppLine;
    ppLine215: TppLine;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText25: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel210: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel44: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    cmpr01: TmyCheckBox;
    cmpr02: TmyCheckBox;
    cmpr03: TmyCheckBox;
    cmpr04: TmyCheckBox;
    cmpr05: TmyCheckBox;
    cmpr06: TmyCheckBox;
    cmpr07: TmyCheckBox;
    cmpr08: TmyCheckBox;
    myCheckBox10: TmyCheckBox;
    myCheckBox11: TmyCheckBox;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
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
    ppDBText84: TppDBText;
    ppLine169: TppLine;
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
    ppLabel125: TppLabel;
    ppLabel9: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine168: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine85: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    cmp001: TmyCheckBox;
    cmp002: TmyCheckBox;
    cmp201: TmyCheckBox;
    cmp302: TmyCheckBox;
    cmp400: TmyCheckBox;
    cmp401: TmyCheckBox;
    cmp402: TmyCheckBox;
    cmps01: TmyCheckBox;
    cmps02: TmyCheckBox;
    cmps03: TmyCheckBox;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText6: TppDBText;
    ppDBText28: TppDBText;
    ppDBText83: TppDBText;
    ppLine111: TppLine;
    ppLine127: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppLine167: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine24: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
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
    ppLabel104: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLine77: TppLine;
    ppLine126: TppLine;
    ppLine128: TppLine;
    ppLine130: TppLine;
    ppLine134: TppLine;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLine166: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine86: TppLine;
    ppLine90: TppLine;
    ppLine100: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBText44: TppDBText;
    ppLabel51: TppLabel;
    ppDBText52: TppDBText;
    ppLabel52: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtrsummary2: Tfrmtrsummary2;

implementation

uses mainformu, trsummaryformu;

{$R *.dfm}

procedure Tfrmtrsummary2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary2.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary2.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp from tbl_tmp_transit where tm=:x1 and cmp=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp').isnull then cmp001.Checked:=false else cmp001.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp1 from tbl_tmp_transit where tm=:x1 and cmp1=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp1').isnull then cmp002.Checked:=false else cmp002.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmps from tbl_tmp_transit where tm=:x1 and cmps=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmps').isnull then cmps03.Checked:=false else cmps03.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp2 from tbl_tmp_transit where tm=:x1 and cmp2=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp2').isnull then cmp201.Checked:=false else cmp201.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp3 from tbl_tmp_transit where tm=:x1 and cmp3=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp3').isnull then begin
      //cmp301.Checked:=false;
      cmp302.Checked:=false;
    end else begin
      //cmp301.Checked:=true;
      cmp302.Checked:=true;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp4 from tbl_tmp_transit where tm=:x1 and cmp4=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp4').isnull then cmp400.Checked:=false else cmp400.Checked:=true;
    if not fieldbyname('cmp4').isnull then cmp401.Checked:=false else cmp401.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmpi from tbl_tmp_transit where tm=:x1 and cmpi=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmpi').isnull then cmp402.Checked:=false else cmp402.Checked:=true;
  end;
end;

procedure Tfrmtrsummary2.ppDetailBand3BeforePrint(Sender: TObject);
begin
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp from tbl_tmp_transit where tm=:x1 and cmp=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp').isnull then cmpr01.Checked:=false else cmpr01.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp1 from tbl_tmp_transit where tm=:x1 and cmp1=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp1').isnull then cmpr02.Checked:=false else cmpr02.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmps from tbl_tmp_transit where tm=:x1 and cmps=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmps').isnull then cmpr03.Checked:=false else cmpr03.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp2 from tbl_tmp_transit where tm=:x1 and cmp2=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp2').isnull then cmpr04.Checked:=false else cmpr04.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp3 from tbl_tmp_transit where tm=:x1 and cmp3=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp3').isnull then begin
      cmpr05.Checked:=false;
      //cmp30b.Checked:=false;
    end else begin
      cmpr05.Checked:=true;
      //cmp30b.Checked:=true;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmp4 from tbl_tmp_transit where tm=:x1 and cmp4=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmp4').isnull then cmpr06.Checked:=false else cmpr06.Checked:=true;
    if not fieldbyname('cmp4').isnull then cmpr07.Checked:=false else cmpr07.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct cmpi from tbl_tmp_transit where tm=:x1 and cmpi=0 and psiz=:x2 and rwo='''+query3.fieldbyname('rwo').value+'''';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    params[1].asstring:=query3.fieldbyname('psiz').value;
    open;
    if not fieldbyname('cmpi').isnull then cmpr08.Checked:=false else cmpr08.Checked:=true;
  end;
  //}
  {
  cmpr01.checked:=query3.fieldbyname('cmp').value;
  cmpr02.checked:=query3.fieldbyname('cmp1').value;
  cmpr03.checked:=query3.fieldbyname('cmps').value;
  cmpr04.checked:=query3.fieldbyname('cmp2').value;
  cmpr05.checked:=query3.fieldbyname('cmp3').value;
  cmpr06.checked:=query3.fieldbyname('cmp4').value;
  cmpr07.checked:=query3.fieldbyname('cmp4').value;
  cmpr08.checked:=query3.fieldbyname('cmpi').value;
  }
end;

end.
