unit sz_partsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBClient;

type
  Tfrmsz_parts = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query1stylno: TStringField;
    Query1id: TIntegerField;
    Query1parts_d: TStringField;
    Query1parts_d_brif: TStringField;
    Query1parts_d_detail: TStringField;
    cxGrid1DBTableView1parts_d: TcxGridDBColumn;
    cxGrid1DBTableView1parts_d_brif: TcxGridDBColumn;
    cxGrid1DBTableView1parts_d_detail: TcxGridDBColumn;
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsz_parts: Tfrmsz_parts;

implementation

uses loginu, mainu, siztblu;

{$R *.dfm}

procedure Tfrmsz_parts.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

end.
