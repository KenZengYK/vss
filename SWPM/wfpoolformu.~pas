unit wfpoolformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ComCtrls, ExtCtrls, ImgList;

type
  Tfrmwfpool = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TreeView1: TTreeView;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwfpool: Tfrmwfpool;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmwfpool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwfpool:=nil;
end;

end.
