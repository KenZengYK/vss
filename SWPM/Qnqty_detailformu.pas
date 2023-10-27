unit Qnqty_detailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, Buttons, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, ExtCtrls;

type
  Tfrmqnqty_detail = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1scqty: TcxGridDBBandedColumn;
    cxView1piqty: TcxGridDBBandedColumn;
    cxView1dta: TcxGridDBBandedColumn;
    cxView1dta1: TcxGridDBBandedColumn;
    cxView1pfqty: TcxGridDBBandedColumn;
    cxView1pf_bqty: TcxGridDBBandedColumn;
    cxView1pf_fqty: TcxGridDBBandedColumn;
    cxView1sqty1: TcxGridDBBandedColumn;
    cxView1sqty: TcxGridDBBandedColumn;
    cxView1bqty: TcxGridDBBandedColumn;
    cxView1t2qty: TcxGridDBBandedColumn;
    cxView1bqty1: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    cxView1Column1: TcxGridDBBandedColumn;
    cxView1Column2: TcxGridDBBandedColumn;
    cxView1Column3: TcxGridDBBandedColumn;
    cxView1Column4: TcxGridDBBandedColumn;
    cxView1Column5: TcxGridDBBandedColumn;
    cxView1Column6: TcxGridDBBandedColumn;
    cxView1Column7: TcxGridDBBandedColumn;
    cxView1Column8: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqnqty_detail: Tfrmqnqty_detail;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmqnqty_detail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmqnqty_detail:=nil;
  action:=cafree;
end;

end.
