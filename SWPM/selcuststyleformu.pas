unit selcuststyleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tfrmselcuststyle = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselcuststyle: Tfrmselcuststyle;

implementation

uses mainformu, packoptformu;

{$R *.dfm}

procedure Tfrmselcuststyle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmselcuststyle:=nil;
end;

procedure Tfrmselcuststyle.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('seq').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_pack_opt_copy :x1,:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=frmpackopt.Query2.fieldbyname('seq').value;
      execute;
    end;
    with frmpackopt.Query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_pack_opt02 where seq=:x1';
      params[0].asinteger:=frmpackopt.Query2.fieldbyname('seq').value;
      open;
    end;
    frmselcuststyle.Close;
  end;
end;

end.
