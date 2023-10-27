unit AL_categoryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  Buttons, cxGridExportLink, cxGridBandedTableView, cxGridDBBandedTableView,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfrmal_category = class(TForm)
    Panel1: TPanel;
    cut_al_reason: TADODataSet;
    dsal_reason: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    cxView0: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView0al_cde: TcxGridDBColumn;
    cxView0al_des_c: TcxGridDBColumn;
    cxView0al_des_e: TcxGridDBColumn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    cxView1: TcxGridDBBandedTableView;
    cxView1al_grp_c: TcxGridDBBandedColumn;
    cxView1al_grp_e: TcxGridDBBandedColumn;
    cxView1al_cde: TcxGridDBBandedColumn;
    cxView1al_des_c: TcxGridDBBandedColumn;
    cxView1al_des_e: TcxGridDBBandedColumn;
    cxView1al_item_cde: TcxGridDBBandedColumn;
    cxView1al_item_c: TcxGridDBBandedColumn;
    cxView1al_item_e: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cut_al_reasonNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cut_al_reasonAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmal_category: Tfrmal_category;

implementation

uses mainu;

{$R *.dfm}

procedure Tfrmal_category.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
  frmal_category:=nil;
end;

procedure Tfrmal_category.cut_al_reasonAfterPost(DataSet: TDataSet);
begin
  cut_al_reason.UpdateBatch(arAll);
end;

procedure Tfrmal_category.cut_al_reasonNewRecord(DataSet: TDataSet);
var
  al_seq:integer;
begin
  with ADOQuery1 do begin
    close;
    SQL.text:='select max(al_seq) as seq from phgdb..cut_al_reason';
    open;
    if not FieldByName('seq').IsNull then al_seq:=fieldbyname('seq').value+1
    else al_seq:=1;
  end;
  cut_al_reason.FieldByName('al_seq').value:=al_seq;
end;

procedure Tfrmal_category.SpeedButton1Click(Sender: TObject);
begin
  cxGrid1.SetFocus;
  cut_al_reason.Append;
end;

procedure Tfrmal_category.SpeedButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Delete this record?','Confirmation',MB_ICONQUESTION+mb_yesno)=Idyes then cut_al_reason.Delete;
end;

procedure Tfrmal_category.SpeedButton3Click(Sender: TObject);
begin
  if (cut_al_reason.State=dsedit) or (cut_al_reason.State=dsInsert) then cut_al_reason.Post;
end;

procedure Tfrmal_category.SpeedButton4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then begin
    ExportGridToExcel(SaveDialog1.FileName,cxGrid1,False,True,False,'xls');
  end;
end;

procedure Tfrmal_category.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmal_category.FormShow(Sender: TObject);
begin
  with cut_al_reason do begin
    close;
    commandtext:='select * from phgdb..cut_al_reason';
    open;
  end;
end;

end.
