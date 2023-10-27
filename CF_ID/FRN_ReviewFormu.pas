unit FRN_ReviewFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBClient, DB, ADODB, StdCtrls, GridsEh, DBGridEh, Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmFRN_review = class(TForm)
    tc: TSpeedButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    DataSource1: TDataSource;
    clientdataset2: TADOQuery;
    ClientDataSet1: TClientDataSet;
    Label3: TLabel;
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView1FRN_NO: TcxGridDBColumn;
    cxView1PRJNO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxView1ttl_prj: TcxGridDBColumn;
    cxView1frn_dt: TcxGridDBColumn;
    cxView1Column2: TcxGridDBColumn;
    cxView1pu_marker: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFRN_review: TfrmFRN_review;

implementation

uses mainu, frnformu, FRN_ChooseFormu, fcu, Marking_YieldFormu, xzzdu, eOrderFormu;

{$R *.dfm}

procedure TfrmFRN_review.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmFRN_Review:=nil;
end;

procedure TfrmFRN_review.SpeedButton1Click(Sender: TObject);
begin
  if not clientdataset1.fieldbyname('frn_no').isnull then begin
    if label3.caption='1' then begin
      frmFRN.label6.text:='Preview';
      frmFRN.Edit1.text:=clientdataset1.fieldbyname('frn_no').value;
      frmFRN.ComboBox1.Text:=clientdataset1.fieldbyname('frn_div').value;
      frmFRN.DateEdit1.date:=clientdataset1.fieldbyname('frn_dt').value;
      frmFRN.openmaster;
    end else if label3.caption='2' then begin
      frmFRN_Choose.Edit1.text:=clientdataset1.fieldbyname('frn_no').value;
      frmFRN_Choose.openmaster;
    end else if label3.caption='3' then begin
      frmfc.edit4.text:=clientdataset1.fieldbyname('frn_no').value;
    end else if label3.caption='4' then begin
      frmMarking_Yield.edit1.text:=clientdataset1.fieldbyname('frn_no').value;
    end else if label3.caption='5' then begin
      frmxzzd.edit2.text:=clientdataset1.fieldbyname('frn_no').value;
    end else if label3.caption='eOrder' then begin
      frmeOrder.edit2.text:=clientdataset1.fieldbyname('frn_no').value;
    end;
    frmFRN_Review.close;
  end;
end;

procedure TfrmFRN_review.FormShow(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    sql.Text:='exec cut_updfrn_master';
    ExecSQL;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from cut_frn_master where isnull(cmp,0)=0';
    open;
  end;
end;

procedure TfrmFRN_review.tcClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFRN_review.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  (ClientDataSet1.FieldByName('frn_dt') as TDateTimeField).DisplayFormat:='yyyy-MM-dd';
end;

procedure TfrmFRN_review.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str,dt1,dt2: string;
  str1,str2: TDate;
begin
  //{
  dt1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxView1frn_dt.Index],   varDate));
  str1:=StrToDate(dt1)+14;
  str2:=Date;
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxView1frn_no.Index],   varString));
  dt2:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxView1pu_marker.Index],   varString));
  if (AViewInfo.Item = cxView1frn_no) then begin
    if dt2='' then begin
      if str1<str2 then begin
        ACanvas.canvas.Font.Color   :=   clRed;
        ACanvas.Canvas.Font.Style := [];
      end;
    end else  ACanvas.canvas.Font.Color   :=   clBlack;
  end;
  //}
end;

procedure TfrmFRN_review.Edit1Change(Sender: TObject);
begin
  if edit1.text<>'' then begin
    clientdataset1.FindNearest([edit1.text]);
  end;
end;

end.