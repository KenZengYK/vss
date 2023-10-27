unit Cause_ChooseFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls,
  Buttons, ADODB, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  Tfrmcause_choose = class(TForm)
    pnl1: TPanel;
    cxGrid1: TcxGrid;
    cxView0: TcxGridDBTableView;
    cxView0al_cde: TcxGridDBColumn;
    cxView0al_des_c: TcxGridDBColumn;
    cxView0al_des_e: TcxGridDBColumn;
    cxView1: TcxGridDBBandedTableView;
    cxView1al_cde: TcxGridDBBandedColumn;
    cxView1al_grp_c: TcxGridDBBandedColumn;
    cxView1al_grp_e: TcxGridDBBandedColumn;
    cxView1al_des_c: TcxGridDBBandedColumn;
    cxView1al_des_e: TcxGridDBBandedColumn;
    cxView1al_item_cde: TcxGridDBBandedColumn;
    cxView1al_item_c: TcxGridDBBandedColumn;
    cxView1al_item_e: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ds_al_reason: TADODataSet;
    dsal_reason: TDataSource;
    qry1: TADOQuery;
    qry2: TADOQuery;
    dlgSave1: TSaveDialog;
    btn1: TBitBtn;
    btn2: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcause_choose: Tfrmcause_choose;

implementation

uses mainu, cmpl_actionlogformu, cmpl_actionlog1formu;

{$R *.dfm}

procedure Tfrmcause_choose.btn1Click(Sender: TObject);
begin
  if (not ds_al_reason.fieldbyname('al_cde').isnull) or (not ds_al_reason.fieldbyname('al_item_cde').isnull) then begin
    frmcmpl_actionlog.al_dashboard.edit;
    if not ds_al_reason.fieldbyname('al_cde').isnull then
    frmcmpl_actionlog.al_dashboard.fieldbyname('al_cde').value:=ds_al_reason.fieldbyname('al_cde').value;
    if not ds_al_reason.fieldbyname('al_grp_e').isnull then
    frmcmpl_actionlog.al_dashboard.fieldbyname('al_grp').value:=ds_al_reason.fieldbyname('al_grp_e').value;
    if not ds_al_reason.fieldbyname('al_item_cde').isnull then
    frmcmpl_actionlog.al_dashboard.fieldbyname('al_reason_cde').value:=ds_al_reason.fieldbyname('al_item_cde').value;
    if not ds_al_reason.fieldbyname('al_item_e').isnull then
    frmcmpl_actionlog.al_dashboard.fieldbyname('al_reason_grp').value:=ds_al_reason.fieldbyname('al_item_e').value;
    if not ds_al_reason.fieldbyname('al_des_e').isnull then
    frmcmpl_actionlog.al_dashboard.fieldbyname('al_reason').value:=ds_al_reason.fieldbyname('al_des_e').value;
    if frmcmpl_actionlog.al_dashboard.FieldByName('al_startdt').isnull then
    frmcmpl_actionlog.al_dashboard.FieldByName('al_startdt').Value:=Now;
  end;
  if Label1.Caption='1' then begin
    if (not ds_al_reason.fieldbyname('al_cde').isnull) or (not ds_al_reason.fieldbyname('al_item_cde').isnull) then begin
      frmcmpl_actionlog1.al_dashboard.edit;
      if not ds_al_reason.fieldbyname('al_cde').isnull then
      frmcmpl_actionlog1.al_dashboard.fieldbyname('al_cde').value:=ds_al_reason.fieldbyname('al_cde').value;
      if not ds_al_reason.fieldbyname('al_grp_e').isnull then
      frmcmpl_actionlog1.al_dashboard.fieldbyname('al_grp').value:=ds_al_reason.fieldbyname('al_grp_e').value;
      if not ds_al_reason.fieldbyname('al_item_cde').isnull then
      frmcmpl_actionlog1.al_dashboard.fieldbyname('al_reason_cde').value:=ds_al_reason.fieldbyname('al_item_cde').value;
      if not ds_al_reason.fieldbyname('al_item_e').isnull then
      frmcmpl_actionlog1.al_dashboard.fieldbyname('al_reason_grp').value:=ds_al_reason.fieldbyname('al_item_e').value;
      if not ds_al_reason.fieldbyname('al_des_e').isnull then
      frmcmpl_actionlog1.al_dashboard.fieldbyname('al_reason').value:=ds_al_reason.fieldbyname('al_des_e').value;
      if frmcmpl_actionlog1.al_dashboard.FieldByName('al_startdt').isnull then
      frmcmpl_actionlog1.al_dashboard.FieldByName('al_startdt').Value:=Now;
    end;
  end;
  close;
end;

procedure Tfrmcause_choose.btn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcause_choose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  frmcause_choose:=nil;
end;

procedure Tfrmcause_choose.FormShow(Sender: TObject);
begin
  with ds_al_reason do begin
    close;
    commandtext:='select * from phgdb..cut_al_reason';
    open;
  end;
end;

end.
