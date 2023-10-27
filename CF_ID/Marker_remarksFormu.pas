unit Marker_remarksFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMemo, cxDBEdit, StdCtrls, Buttons, DBCtrls;

type
  Tfrmmarker_remarks = class(TForm)
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBMemo1: TcxDBMemo;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmarker_remarks: Tfrmmarker_remarks;

implementation

uses mainu, lbjhu, jhmjfxformu;

{$R *.dfm}

procedure Tfrmmarker_remarks.BitBtn1Click(Sender: TObject);
begin
  if (ADODataSet1.State=dsEdit) or (ADODataSet1.State=dsInsert) then
    ADODataSet1.Post;
end;

procedure Tfrmmarker_remarks.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmarker_remarks.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmmarker_remarks:=nil;
end;

end.
