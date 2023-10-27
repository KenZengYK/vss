unit newcap_spwf_detailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmnewcap_spwf_detail = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_spwf_detail: Tfrmnewcap_spwf_detail;

implementation

uses mainformu, newcap_spwfformu;

{$R *.dfm}

procedure Tfrmnewcap_spwf_detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_spwf_detail:=nil;
end;

end.
