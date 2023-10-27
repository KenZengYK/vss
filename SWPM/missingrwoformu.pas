unit missingrwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, DBClient;

type
  Tfrmmissingrwo = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmissingrwo: Tfrmmissingrwo;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

procedure Tfrmmissingrwo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmmissingrwo:=nil;
end;

end.
