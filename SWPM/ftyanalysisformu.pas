unit ftyanalysisformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
  ppCtrls, ppPrnabl, ppStrtch, ppSubRpt, ppViewr, ppVar, ppParameter;

type
  Tfrmftyanalysis = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBText1: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText2: TppDBText;
    c001: TppDBText;
    ppLine1: TppLine;
    c002: TppDBText;
    c003: TppDBText;
    c004: TppDBText;
    s001: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    c005: TppDBText;
    c006: TppDBText;
    c007: TppDBText;
    c008: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    c009: TppDBText;
    c010: TppDBText;
    c011: TppDBText;
    c012: TppDBText;
    c013: TppDBText;
    c014: TppDBText;
    c015: TppDBText;
    c016: TppDBText;
    c017: TppDBText;
    c018: TppDBText;
    c019: TppDBText;
    c020: TppDBText;
    c021: TppDBText;
    c022: TppDBText;
    c023: TppDBText;
    c024: TppDBText;
    c025: TppDBText;
    c026: TppDBText;
    c027: TppDBText;
    c028: TppDBText;
    c029: TppDBText;
    c030: TppDBText;
    c031: TppDBText;
    c032: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
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
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText35: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    s002: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel43: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine6: TppLine;
    ppLabel1: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppTitleBand2: TppTitleBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel58: TppLabel;
    ppLine14: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLine5: TppLine;
    ppShape6: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmftyanalysis: Tfrmftyanalysis;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmftyanalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmftyanalysis:=nil;
end;

procedure Tfrmftyanalysis.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  tm:=now;
  dt1:=dateedit1.date;
  dt2:=dateedit2.date;
  screen.Cursor:=crSQLWait;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='execute procedure sp_effcupe(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      params[3].asstring:=edit1.text;
      params[4].asstring:=combobox1.text;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='execute procedure SP_FACTORY_PERFORMANCE(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      params[3].asstring:=edit1.text;
      params[4].asstring:=combobox1.text;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tmp_factory_performance where tm=:x1';
      params[0].asdatetime:=tm;
      open;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tmp_effcupe where tm=:x1';
      params[0].asdatetime:=tm;
      open;
    end;
    s001.Caption:=dateedit1.text+'  -  '+dateedit2.text;
    s002.Caption:=dateedit1.text+'  -  '+dateedit2.text;
    ppReport1.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmftyanalysis.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmftyanalysis.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop>'''' and pline>''''';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  DateEdit1.date:=date;
  DateEdit2.date:=date;
end;

procedure Tfrmftyanalysis.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if (query2.fieldbyname('seq').value>=5) and (query2.fieldbyname('seq').value<=13) then begin
    c001.DisplayFormat:='#0';c002.DisplayFormat:='#0';c003.DisplayFormat:='#0';c004.DisplayFormat:='#0';
    c005.DisplayFormat:='#0';c006.DisplayFormat:='#0';c007.DisplayFormat:='#0';c008.DisplayFormat:='#0';
    c009.DisplayFormat:='#0';c010.DisplayFormat:='#0';c011.DisplayFormat:='#0';c012.DisplayFormat:='#0';
    c013.DisplayFormat:='#0';c014.DisplayFormat:='#0';c015.DisplayFormat:='#0';c016.DisplayFormat:='#0';
    c017.DisplayFormat:='#0';c018.DisplayFormat:='#0';c019.DisplayFormat:='#0';c020.DisplayFormat:='#0';
    c021.DisplayFormat:='#0';c022.DisplayFormat:='#0';c023.DisplayFormat:='#0';c024.DisplayFormat:='#0';
    c025.DisplayFormat:='#0';c026.DisplayFormat:='#0';c027.DisplayFormat:='#0';c028.DisplayFormat:='#0';
    c029.DisplayFormat:='#0';c030.DisplayFormat:='#0';c031.DisplayFormat:='#0';c032.DisplayFormat:='#0';
  end else begin
    c001.DisplayFormat:='#0.00';c002.DisplayFormat:='#0.00';c003.DisplayFormat:='#0.00';c004.DisplayFormat:='#0.00';
    c005.DisplayFormat:='#0.00';c006.DisplayFormat:='#0.00';c007.DisplayFormat:='#0.00';c008.DisplayFormat:='#0.00';
    c009.DisplayFormat:='#0.00';c010.DisplayFormat:='#0.00';c011.DisplayFormat:='#0.00';c012.DisplayFormat:='#0.00';
    c013.DisplayFormat:='#0.00';c014.DisplayFormat:='#0.00';c015.DisplayFormat:='#0.00';c016.DisplayFormat:='#0.00';
    c017.DisplayFormat:='#0.00';c018.DisplayFormat:='#0.00';c019.DisplayFormat:='#0.00';c020.DisplayFormat:='#0.00';
    c021.DisplayFormat:='#0.00';c022.DisplayFormat:='#0.00';c023.DisplayFormat:='#0.00';c024.DisplayFormat:='#0.00';
    c025.DisplayFormat:='#0.00';c026.DisplayFormat:='#0.00';c027.DisplayFormat:='#0.00';c028.DisplayFormat:='#0.00';
    c029.DisplayFormat:='#0.00';c030.DisplayFormat:='#0.00';c031.DisplayFormat:='#0.00';c032.DisplayFormat:='#0.00';
  end;
end;

end.
