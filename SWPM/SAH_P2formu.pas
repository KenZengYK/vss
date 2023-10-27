unit SAH_P2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, StdCtrls, Buttons, cxGridExportLink;

type
  TfrmSAH_p2 = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxView1: TcxGridDBBandedTableView;
    cxView1proj: TcxGridDBBandedColumn;
    cxView1wo: TcxGridDBBandedColumn;
    cxView1woc: TcxGridDBBandedColumn;
    cxView1rwo: TcxGridDBBandedColumn;
    cxView1qn: TcxGridDBBandedColumn;
    cxView1line: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
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
    cxView1Column17: TcxGridDBBandedColumn;
    cxView1Column18: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    cxView1Column19: TcxGridDBBandedColumn;
    cxView1Column20: TcxGridDBBandedColumn;
    cxView1Column21: TcxGridDBBandedColumn;
    cxView1Column22: TcxGridDBBandedColumn;
    cxView1Column23: TcxGridDBBandedColumn;
    cxView1Column24: TcxGridDBBandedColumn;
    cxView1Column25: TcxGridDBBandedColumn;
    cxView1Column26: TcxGridDBBandedColumn;
    cxView1Column27: TcxGridDBBandedColumn;
    cxView1Column28: TcxGridDBBandedColumn;
    cxView1Column29: TcxGridDBBandedColumn;
    cxView1Column30: TcxGridDBBandedColumn;
    cxView1Column31: TcxGridDBBandedColumn;
    cxView1Column32: TcxGridDBBandedColumn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSAH_p2: TfrmSAH_p2;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure TfrmSAH_p2.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmSAH_p2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSAH_p2:=nil;
  action:=cafree;
end;

procedure TfrmSAH_p2.FormShow(Sender: TObject);
begin
    with worksheet1.clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r_cls1 from tbluser where usr='''+frmmain.combobox1.text+'''';
      open;
      if fieldbyname('r_cls1').value=true then begin
        cxview1.OptionsData.Editing:=true;
        cxview1column17.options.editing:=true;
        cxview1column21.options.editing:=true;
      end else begin
        cxview1.OptionsData.Editing:=false;
        cxview1column17.options.editing:=false;
        cxview1column21.options.editing:=false;
      end;
    end;
end;

end.
