unit newcap_custformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tfrmnewcap_cust = class(TForm)
    Query1: TClientDataSet;
    DataSource2: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_cust: Tfrmnewcap_cust;

implementation

uses mainformu, newcap_comformu;

{$R *.dfm}

procedure Tfrmnewcap_cust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_cust:=nil;
end;

procedure Tfrmnewcap_cust.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_cust.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tbl_cap_oafty_custseq set seq=:x1 where cust=:x2';
      if not query1.fieldbyname('seq').isnull then
      params[0].asinteger:=query1.fieldbyname('seq').value
      else params[0].asinteger:=0;
      params[1].asstring:=query1.fieldbyname('cust').value;
      execute;
    end;
  end;
end;

end.
