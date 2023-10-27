unit wprofileformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, Buttons,
  ExtCtrls, DBCtrls, StdCtrls, Mask, ppViewr, ppStrtch, ppMemo,
  ppParameter;

type
  Tfrmwprofile = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    mgr001: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    title001: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    SpeedButton3: TSpeedButton;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine1: TppLine;
    ppLabel23: TppLabel;
    ppLine2: TppLine;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppDBText18: TppDBText;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppLabel27: TppLabel;
    ppDBText20: TppDBText;
    ppLabel28: TppLabel;
    ppDBText21: TppDBText;
    ppLabel29: TppLabel;
    ppDBText22: TppDBText;
    ppLabel30: TppLabel;
    ppDBText23: TppDBText;
    ppLabel31: TppLabel;
    ppDBText24: TppDBText;
    ppShape3: TppShape;
    ppMemo1: TppMemo;
    Query1TPLANT: TWideStringField;
    Query1TSHOP: TWideStringField;
    Query1SHPMGR: TWideStringField;
    Query1WF12: TFloatField;
    Query1WF13: TFloatField;
    Query1WF14: TFloatField;
    Query1WF15: TFloatField;
    Query1WF16: TFloatField;
    Query1WF17: TFloatField;
    Query1WF18: TFloatField;
    Query1WF19: TFloatField;
    Query1WF20: TFloatField;
    Query1WF21: TFloatField;
    Query1WF26: TFloatField;
    Query1WF27: TFloatField;
    Query1WF28: TFloatField;
    Query1WF31: TFloatField;
    Query1WF32: TFloatField;
    Query1WF33: TFloatField;
    Query1WF34: TFloatField;
    Query1WF35: TFloatField;
    Query1WF36: TFloatField;
    Query1WF37: TFloatField;
    Query1WF38: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1WF12Change(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwprofile: Tfrmwprofile;

implementation

uses mainformu, lineinfou;

{$R *.dfm}

procedure Tfrmwprofile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmwprofile:=nil;
end;

procedure Tfrmwprofile.Query1WF12Change(Sender: TField);
var
  f12,f13,f14,f15,f16,f26,f17,f18,f19,f20,f21,f27,f31,f32,f33,f34,f35,f36,f37,f38:double;
begin
  if not query1.fieldbyname('wf12').isnull then f12:=query1.fieldbyname('wf12').value else f12:=0;
  if not query1.fieldbyname('wf13').isnull then f13:=query1.fieldbyname('wf13').value else f13:=0;
  if not query1.fieldbyname('wf14').isnull then f14:=query1.fieldbyname('wf14').value else f14:=0;
  if not query1.fieldbyname('wf15').isnull then f15:=query1.fieldbyname('wf15').value else f15:=0;
  if not query1.fieldbyname('wf16').isnull then f16:=query1.fieldbyname('wf16').value else f16:=0;
  if not query1.fieldbyname('wf26').isnull then f26:=query1.fieldbyname('wf26').value else f26:=0;
  if not query1.fieldbyname('wf17').isnull then f17:=query1.fieldbyname('wf17').value else f17:=0;
  if not query1.fieldbyname('wf18').isnull then f18:=query1.fieldbyname('wf18').value else f18:=0;
  if not query1.fieldbyname('wf19').isnull then f19:=query1.fieldbyname('wf19').value else f19:=0;
  if not query1.fieldbyname('wf20').isnull then f20:=query1.fieldbyname('wf20').value else f20:=0;
  if not query1.fieldbyname('wf21').isnull then f21:=query1.fieldbyname('wf21').value else f21:=0;
  if not query1.fieldbyname('wf27').isnull then f27:=query1.fieldbyname('wf27').value else f27:=0;
  if not query1.fieldbyname('wf31').isnull then f31:=query1.fieldbyname('wf31').value else f31:=0;
  if not query1.fieldbyname('wf32').isnull then f32:=query1.fieldbyname('wf32').value else f32:=0;
  if not query1.fieldbyname('wf33').isnull then f33:=query1.fieldbyname('wf33').value else f33:=0;
  if not query1.fieldbyname('wf34').isnull then f34:=query1.fieldbyname('wf34').value else f34:=0;
  if not query1.fieldbyname('wf35').isnull then f35:=query1.fieldbyname('wf35').value else f35:=0;
  if not query1.fieldbyname('wf36').isnull then f36:=query1.fieldbyname('wf36').value else f36:=0;
  if not query1.fieldbyname('wf37').isnull then f37:=query1.fieldbyname('wf37').value else f37:=0;
  if not query1.fieldbyname('wf38').isnull then f38:=query1.fieldbyname('wf38').value else f38:=0;
  query1.fieldbyname('wf28').value:=f17+f18+f19+f20+f21+f27+f31+f32+f33+f34-f12-f13-f14-f15-f16-f26-f35-f36-f37-f38;
end;

procedure Tfrmwprofile.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'f12',ptinput);
      params.createparam(ftfloat,'f13',ptinput);
      params.createparam(ftfloat,'f14',ptinput);
      params.createparam(ftfloat,'f15',ptinput);
      params.createparam(ftfloat,'f16',ptinput);
      params.createparam(ftfloat,'f17',ptinput);
      params.createparam(ftfloat,'f18',ptinput);
      params.createparam(ftfloat,'f19',ptinput);
      params.createparam(ftfloat,'f20',ptinput);
      params.createparam(ftfloat,'f21',ptinput);
      params.createparam(ftfloat,'f26',ptinput);
      params.createparam(ftfloat,'f27',ptinput);
      params.createparam(ftfloat,'f28',ptinput);
      params.createparam(ftfloat,'f31',ptinput);
      params.createparam(ftfloat,'f32',ptinput);
      params.createparam(ftfloat,'f33',ptinput);
      params.createparam(ftfloat,'f34',ptinput);
      params.createparam(ftfloat,'f35',ptinput);
      params.createparam(ftfloat,'f36',ptinput);
      params.createparam(ftfloat,'f37',ptinput);
      params.createparam(ftfloat,'f38',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='update tblwks set wf12=:f12,wf13=:f13,wf14=:f14,wf15=:f15,wf16=:f16,wf17=:f17,wf18=:f18,wf19=:f19,'
                  +'wf20=:f20,wf21=:f21,wf26=:f26,wf27=:f27,wf28=:f28,wf31=:f31,wf32=:f32,wf33=:f33,wf34=:f34,wf35=:f35,'
                  +'wf36=:f36,wf37=:f37,wf38=:f38 where tshop=:x1';
      if not query1.fieldbyname('wf12').isnull then
      params[0].asfloat:=query1.fieldbyname('wf12').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('wf13').isnull then
      params[1].asfloat:=query1.fieldbyname('wf13').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('wf14').isnull then
      params[2].asfloat:=query1.fieldbyname('wf14').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('wf15').isnull then
      params[3].asfloat:=query1.fieldbyname('wf15').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('wf16').isnull then
      params[4].asfloat:=query1.fieldbyname('wf16').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('wf17').isnull then
      params[5].asfloat:=query1.fieldbyname('wf17').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('wf18').isnull then
      params[6].asfloat:=query1.fieldbyname('wf18').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('wf19').isnull then
      params[7].asfloat:=query1.fieldbyname('wf19').value
      else params[7].asfloat:=0;
      if not query1.fieldbyname('wf20').isnull then
      params[8].asfloat:=query1.fieldbyname('wf20').value
      else params[8].asfloat:=0;
      if not query1.fieldbyname('wf21').isnull then
      params[9].asfloat:=query1.fieldbyname('wf21').value
      else params[9].asfloat:=0;
      if not query1.fieldbyname('wf26').isnull then
      params[10].asfloat:=query1.fieldbyname('wf26').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('wf27').isnull then
      params[11].asfloat:=query1.fieldbyname('wf27').value
      else params[11].asfloat:=0;
      params[12].asfloat:=query1.fieldbyname('wf28').value;
      if not query1.fieldbyname('wf31').isnull then
      params[13].asfloat:=query1.fieldbyname('wf31').value
      else params[13].asfloat:=0;
      if not query1.fieldbyname('wf32').isnull then
      params[14].asfloat:=query1.fieldbyname('wf32').value
      else params[14].asfloat:=0;
      if not query1.fieldbyname('wf33').isnull then
      params[15].asfloat:=query1.fieldbyname('wf33').value
      else params[15].asfloat:=0;
      if not query1.fieldbyname('wf34').isnull then
      params[16].asfloat:=query1.fieldbyname('wf34').value
      else params[16].asfloat:=0;
      if not query1.fieldbyname('wf35').isnull then
      params[17].asfloat:=query1.fieldbyname('wf35').value
      else params[17].asfloat:=0;
      if not query1.fieldbyname('wf36').isnull then
      params[18].asfloat:=query1.fieldbyname('wf36').value
      else params[18].asfloat:=0;
      if not query1.fieldbyname('wf37').isnull then
      params[19].asfloat:=query1.fieldbyname('wf37').value
      else params[19].asfloat:=0;
      if not query1.fieldbyname('wf38').isnull then
      params[20].asfloat:=query1.fieldbyname('wf38').value
      else params[20].asfloat:=0;
      params[21].asstring:=query1.fieldbyname('tshop').value;
      execute;
    end;
  end;
  }
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'f12',ptinput);
      params.createparam(ftfloat,'f13',ptinput);
      params.createparam(ftfloat,'f14',ptinput);
      params.createparam(ftfloat,'f15',ptinput);
      params.createparam(ftfloat,'f16',ptinput);
      params.createparam(ftfloat,'f17',ptinput);
      params.createparam(ftfloat,'f18',ptinput);
      params.createparam(ftfloat,'f19',ptinput);
      params.createparam(ftfloat,'f20',ptinput);
      params.createparam(ftfloat,'f21',ptinput);
      params.createparam(ftfloat,'f26',ptinput);
      params.createparam(ftfloat,'f27',ptinput);
      params.createparam(ftfloat,'f28',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='update tblline set wf12=:f12,wf13=:f13,wf14=:f14,wf15=:f15,wf16=:f16,wf17=:f17,wf18=:f18,wf19=:f19,'
                  +'wf20=:f20,wf21=:f21,wf26=:f26,wf27=:f27,wf28=:f28 where tshop=:x1';
      if not query1.fieldbyname('wf12').isnull then
      params[0].asfloat:=query1.fieldbyname('wf12').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('wf13').isnull then
      params[1].asfloat:=query1.fieldbyname('wf13').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('wf14').isnull then
      params[2].asfloat:=query1.fieldbyname('wf14').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('wf15').isnull then
      params[3].asfloat:=query1.fieldbyname('wf15').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('wf16').isnull then
      params[4].asfloat:=query1.fieldbyname('wf16').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('wf17').isnull then
      params[5].asfloat:=query1.fieldbyname('wf17').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('wf18').isnull then
      params[6].asfloat:=query1.fieldbyname('wf18').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('wf19').isnull then
      params[7].asfloat:=query1.fieldbyname('wf19').value
      else params[7].asfloat:=0;
      if not query1.fieldbyname('wf20').isnull then
      params[8].asfloat:=query1.fieldbyname('wf20').value
      else params[8].asfloat:=0;
      if not query1.fieldbyname('wf21').isnull then
      params[9].asfloat:=query1.fieldbyname('wf21').value
      else params[9].asfloat:=0;
      if not query1.fieldbyname('wf26').isnull then
      params[10].asfloat:=query1.fieldbyname('wf26').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('wf27').isnull then
      params[11].asfloat:=query1.fieldbyname('wf27').value
      else params[11].asfloat:=0;
      params[12].asfloat:=query1.fieldbyname('wf28').value;
      params[13].asstring:=query1.fieldbyname('tshop').value;
      execute;
    end;
    }
end;

procedure Tfrmwprofile.SpeedButton1Click(Sender: TObject);
begin
  if query1.Active then begin
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from tblwks where tshop='''+query1.fieldbyname('tshop').value+'''';
      open;
    end;
    ppDBPipeLine1.DataSource:=datasource2;
    title001.Caption:='- '+query4.fieldbyname('tshop').value;
    ppReport1.Print;
  end;
end;

procedure Tfrmwprofile.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmwprofile.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwprofile.SpeedButton2Click(Sender: TObject);
begin
  if query1.Active then begin
    ppDBPipeLine1.DataSource:=datasource1;
    title001.Caption:='';
    ppReport1.Print;
  end;
end;

end.
