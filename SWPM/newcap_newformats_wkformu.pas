unit newcap_newformats_wkformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB, DBClient, ppViewr,
  ppParameter;

type
  Tfrmnewcap_newformat_wk = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline1ppField28: TppField;
    ppDBPipeline1ppField29: TppField;
    ppDBPipeline1ppField30: TppField;
    ppDBPipeline1ppField31: TppField;
    ppDBPipeline1ppField32: TppField;
    ppDBPipeline1ppField33: TppField;
    ppDBPipeline1ppField34: TppField;
    ppDBPipeline1ppField35: TppField;
    ppDBPipeline1ppField36: TppField;
    ppDBPipeline1ppField37: TppField;
    ppDBPipeline1ppField38: TppField;
    ppDBPipeline1ppField39: TppField;
    ppDBPipeline1ppField40: TppField;
    ppDBPipeline1ppField41: TppField;
    ppDBPipeline1ppField42: TppField;
    ppDBPipeline1ppField43: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
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
    ppLabel64: TppLabel;
    fty001: TppLabel;
    ppLabel65: TppLabel;
    yr001: TppLabel;
    ppLabel66: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel67: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    title002: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    a037: TppDBText;
    a038: TppDBText;
    a039: TppDBText;
    a040: TppDBText;
    a041: TppDBText;
    a042: TppDBText;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine83: TppLine;
    ppLine82: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    m0013: TppLabel;
    m0014: TppLabel;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel33: TppLabel;
    ppLabel38: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
    TIntSet = Set of 1..100;

var
  frmnewcap_newformat_wk: Tfrmnewcap_newformat_wk;

implementation

uses mainformu, newcap_newformatsformu;

{$R *.dfm}

procedure Tfrmnewcap_newformat_wk.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmnewcap_newformat_wk.ppDetailBand1BeforePrint(
  Sender: TObject);
var
  set1,set2: TIntSet;
begin
  set1:=[3,7,11,15,19,23,27,31,35,39,43,47,51,55,59,63,67,71,75,79,83,87];
  set2:=[5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73,77,81,85,89];
  if (query1.fieldbyname('seq').value<=2) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
    a037.displayformat:='#0'; a040.displayformat:='#0';
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
    a037.DisplayFormat:='#0.00';a038.DisplayFormat:='#0.00';a039.DisplayFormat:='#0.00';
    a040.DisplayFormat:='#0.00';a041.DisplayFormat:='#0.00';a042.DisplayFormat:='#0.00';
  end else if (query1.fieldbyname('seq').value=4) and (query1.fieldbyname('seq2').value<=4) then begin
    a001.DisplayFormat:='#0.00%'; a004.DisplayFormat:='#0.00%'; a007.DisplayFormat:='#0.00%';
    a010.DisplayFormat:='#0.00%'; a013.DisplayFormat:='#0.00%'; a016.DisplayFormat:='#0.00%';
    a019.DisplayFormat:='#0.00%'; a022.DisplayFormat:='#0.00%'; a025.DisplayFormat:='#0.00%';
    a028.DisplayFormat:='#0.00%'; a031.DisplayFormat:='#0.00%'; a034.DisplayFormat:='#0.00%';
    a037.displayformat:='#0.00%'; a040.displayformat:='#0.00%';
  end else if (query1.fieldbyname('seq').value=4) and (query1.fieldbyname('seq2').value>4) then begin
    a001.DisplayFormat:='#0.0000'; a004.DisplayFormat:='#0.0000'; a007.DisplayFormat:='#0.0000';
    a010.DisplayFormat:='#0.0000'; a013.DisplayFormat:='#0.0000'; a016.DisplayFormat:='#0.0000';
    a019.DisplayFormat:='#0.0000'; a022.DisplayFormat:='#0.0000'; a025.DisplayFormat:='#0.0000';
    a028.DisplayFormat:='#0.0000'; a031.DisplayFormat:='#0.0000'; a034.DisplayFormat:='#0.0000';
    a037.displayformat:='#0.0000'; a040.displayformat:='#0.0000';
  end else if (query1.fieldbyname('seq').value=5) then begin //and ((query1.fieldbyname('seq2').value=1) or (query1.fieldbyname('seq2').value=3) or (query1.fieldbyname('seq2').value=5) or (query1.fieldbyname('seq2').value=7)) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
    a037.displayformat:='#0'; a040.displayformat:='#0';
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
      a037.displayformat:='#0.0000'; a040.displayformat:='#0.0000';
    end else begin
      a001.DisplayFormat:='#0.00'; a004.DisplayFormat:='#0.00'; a007.DisplayFormat:='#0.00';
      a010.DisplayFormat:='#0.00'; a013.DisplayFormat:='#0.00'; a016.DisplayFormat:='#0.00';
      a019.DisplayFormat:='#0.00'; a022.DisplayFormat:='#0.00'; a025.DisplayFormat:='#0.00';
      a028.DisplayFormat:='#0.00'; a031.DisplayFormat:='#0.00'; a034.DisplayFormat:='#0.00';
      a037.displayformat:='#0.00'; a040.displayformat:='#0.00';
    end;
  end else if ((query1.fieldbyname('seq').value=6) or (query1.fieldbyname('seq').value=7)) and (query1.fieldbyname('seq2').value>=5) then begin
    a001.DisplayFormat:='#0'; a004.DisplayFormat:='#0'; a007.DisplayFormat:='#0';
    a010.DisplayFormat:='#0'; a013.DisplayFormat:='#0'; a016.DisplayFormat:='#0';
    a019.DisplayFormat:='#0'; a022.DisplayFormat:='#0'; a025.DisplayFormat:='#0';
    a028.DisplayFormat:='#0'; a031.DisplayFormat:='#0'; a034.DisplayFormat:='#0';
    a037.displayformat:='#0'; a040.displayformat:='#0';
  end else if query1.fieldbyname('seq').value=8 then begin
    a001.displayformat:='#0'; a004.displayformat:='#0'; a007.displayformat:='#0';
    a010.displayformat:='#0'; a013.displayformat:='#0'; a016.displayformat:='#0';
    a019.displayformat:='#0'; a022.displayformat:='#0'; a025.displayformat:='#0';
    a028.displayformat:='#0'; a031.displayformat:='#0'; a034.displayformat:='#0';
    a037.displayformat:='#0'; a040.displayformat:='#0';
  end else if (query1.fieldbyname('seq').value=9) and (query1.fieldbyname('seq2').value<9) then begin
    a001.displayformat:='#0'; a004.displayformat:='#0'; a007.displayformat:='#0';
    a010.displayformat:='#0'; a013.displayformat:='#0'; a016.displayformat:='#0';
    a019.displayformat:='#0'; a022.displayformat:='#0'; a025.displayformat:='#0';
    a028.displayformat:='#0'; a031.displayformat:='#0'; a034.displayformat:='#0';
    a037.displayformat:='#0'; a040.displayformat:='#0';
  end else if (query1.fieldbyname('seq').value=9) and (query1.fieldbyname('seq2').value=9) then begin
    a001.DisplayFormat:='#0.00%'; a004.DisplayFormat:='#0.00%'; a007.DisplayFormat:='#0.00%';
    a010.DisplayFormat:='#0.00%'; a013.DisplayFormat:='#0.00%'; a016.DisplayFormat:='#0.00%';
    a019.DisplayFormat:='#0.00%'; a022.DisplayFormat:='#0.00%'; a025.DisplayFormat:='#0.00%';
    a028.DisplayFormat:='#0.00%'; a031.DisplayFormat:='#0.00%'; a034.DisplayFormat:='#0.00%';
    a037.displayformat:='#0.00%'; a040.displayformat:='#0.00%';
  end else begin
  end;
end;

procedure Tfrmnewcap_newformat_wk.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
  if (query1.fieldbyname('seq').value=6) or (query1.fieldbyname('seq').value=7) or (query1.fieldbyname('seq').value=8) or (query1.fieldbyname('seq').value=9) then ppGroupHeaderBand1.Visible:=true
  else ppGroupHeaderBand1.Visible:=false;
end;

end.
 