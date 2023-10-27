unit supselformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, Buttons;

type
  Tfrmsupsel = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1VNDR: TcxGridDBColumn;
    cxGrid1DBTableView1ADDR: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsupsel: Tfrmsupsel;

implementation

uses mainformu, airrequestformu, debitnoteformu;

{$R *.dfm}

procedure Tfrmsupsel.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_erpvndr';
    open;
  end;
end;

procedure Tfrmsupsel.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('vndr').isnull then begin
    with frmairrequestform.Query1 do begin
      edit;
      if frmdebitnote.DBEdit1.DataField='DEBIT_NO' then begin
        fieldbyname('debit_vndr').value:=query1.fieldbyname('vndr').value;
        fieldbyname('debit_messrs').value:=query1.fieldbyname('addr').value;
      end else if frmdebitnote.DBEdit1.DataField='DEBIT_NO1' then begin
        fieldbyname('debit_vndr1').value:=query1.fieldbyname('vndr').value;
        fieldbyname('debit_messrs1').value:=query1.fieldbyname('addr').value;
      end;
    end;
    //frmdebitnote.DBEdit5.Text:=query1.fieldbyname('vndr').value;
    //frmdebitnote.DBMemo1.Text:=query1.fieldbyname('addr').value;
    frmsupsel.Close;
  end;
end;

procedure Tfrmsupsel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsupsel:=nil;
end;

end.
