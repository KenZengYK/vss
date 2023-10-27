unit gainotepadanalysisformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache,
  ppCtrls, ppPrnabl, ppViewr, ppParameter;

type
  Tfrmgainotepadanalysis = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    dt001: TppLabel;
    fty001: TppLabel;
    wks001: TppLabel;
    pline001: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppShape2: TppShape;
    ppLabel30: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText15: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    Label4: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgainotepadanalysis: Tfrmgainotepadanalysis;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmgainotepadanalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgainotepadanalysis:=nil;
end;

procedure Tfrmgainotepadanalysis.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=1';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmgainotepadanalysis.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      //params.createparam(ftstring,'x7',ptinput);
      //params.createparam(ftstring,'x8',ptinput);
      if ((combobox1.text='KB') or (copy(combobox2.text,1,2)='KB') or ((combobox3.text>='T080') and (combobox3.text<='T110'))) then
      commandtext:='execute procedure sp_notepad_analysis(:x1,:x2,:x3,:x4,:x5,:x6)'
      else commandtext:='execute procedure sp_notepad_analysis_chn(:x1,:x2,:x3,:x4,:x5,:x6)';
      //commandtext:='execute procedure sp_notepad_analysis_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      params[3].asstring:=combobox3.text;
      params[4].asdate:=dateedit1.date;
      params[5].asdate:=dateedit2.date;
      //params[6].asstring:=edit1.text;
      //params[7].asstring:=edit2.text;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gai_notepad_tmp where tm=:x1 order by fty,wks,pline,cd';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        dt001.Caption:='Date from : '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'  to : '+formatdatetime('yyyy-MM-dd',dateedit2.date);
        fty001.Caption:='Factory: '+fieldbyname('fty').value;
        wks001.Caption:='Ws: '+fieldbyname('wks').value;
        pline001.Caption:='Line: '+fieldbyname('pline').value;
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmgainotepadanalysis.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmgainotepadanalysis.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('twf').value>0 then
    x001.Caption:=formatfloat('0.00',query1.fieldbyname('w1').value*100.00/query1.fieldbyname('twf').value)
  else x001.Caption:='0.00';
  if query1.fieldbyname('tmc').value>0 then
    x002.Caption:=formatfloat('0.00',query1.fieldbyname('m1').value*100.00/query1.fieldbyname('tmc').value)
  else x002.Caption:='0.00';
end;

end.
