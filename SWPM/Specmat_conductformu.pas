unit Specmat_conductformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtonEdit, StdCtrls, Buttons;

type
  Tfrmspecmat_conduct = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxView1: TcxGridDBBandedTableView;
    cxView1Column1: TcxGridDBBandedColumn;
    cxView1Column2: TcxGridDBBandedColumn;
    cxView1Column3: TcxGridDBBandedColumn;
    cxView1Column4: TcxGridDBBandedColumn;
    cxView1Column5: TcxGridDBBandedColumn;
    cxView1Column6: TcxGridDBBandedColumn;
    cxView1Column7: TcxGridDBBandedColumn;
    cxView1Column8: TcxGridDBBandedColumn;
    cxView1Column9: TcxGridDBBandedColumn;
    cxView1Column10: TcxGridDBBandedColumn;
    cxView1Column11: TcxGridDBBandedColumn;
    cxView1Column12: TcxGridDBBandedColumn;
    cxView1Column13: TcxGridDBBandedColumn;
    cxView1Column14: TcxGridDBBandedColumn;
    cxView1Column15: TcxGridDBBandedColumn;
    cxView1Column16: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxView1Column17: TcxGridDBBandedColumn;
    cxView1Column18: TcxGridDBBandedColumn;
    cxView1Column19: TcxGridDBBandedColumn;
    cxView1Column20: TcxGridDBBandedColumn;
    cxView1Column21: TcxGridDBBandedColumn;
    cxView1Column22: TcxGridDBBandedColumn;
    cxView1Column23: TcxGridDBBandedColumn;
    procedure cxView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmspecmat_conduct: Tfrmspecmat_conduct;

implementation

uses mainformu, worksheet, Specmatformu;

{$R *.dfm}

procedure Tfrmspecmat_conduct.BitBtn1Click(Sender: TObject);
begin
  worksheet1.bitbtn2click(self);
end;

procedure Tfrmspecmat_conduct.cxView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmspecmat=nil then frmspecmat:=tfrmspecmat.create(nil);
  frmspecmat.show;
end;

procedure Tfrmspecmat_conduct.cxView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  str,str1,str2:string;
  ARec: TRect;
begin
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1column7.Index],   varString));
  if (AViewInfo.Item = cxview1column7) then begin
    if str='' then str:='0';
    if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
end;

procedure Tfrmspecmat_conduct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmspecmat_conduct:=nil;
end;

procedure Tfrmspecmat_conduct.FormShow(Sender: TObject);
begin
  //
  {
  with cxView1.DataController.Filter do begin
    Active:=false;
    Root.Clear;
    Root.AddItem(cxView1Column16,folike,'%M%','%M%');
    Active:=true;
  end;
  }
  //cxview1.DataController.Filter.FilterText:='(item_fm=''M'')';
  //cxview1.datacontroller.filter.active:=true;
end;

end.
