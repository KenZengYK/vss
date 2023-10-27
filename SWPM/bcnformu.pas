unit bcnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls, Buttons, Db,
  DBClient;

type
  Tfrmbcn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbcn: Tfrmbcn;

implementation

uses mainformu, pdnformu, splitpoformu;

{$R *.dfm}

procedure Tfrmbcn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmbcn:=nil;
end;

procedure Tfrmbcn.BitBtn1Click(Sender: TObject);
begin
  if frmpdn.Query2.state=dsedit then frmpdn.query2.post;
end;

procedure Tfrmbcn.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_pdn_splitcustpo(:x1,:x2)';
    params[0].asinteger:=frmpdn.Query2.fieldbyname('seq').value;
    params[1].asinteger:=frmpdn.Query2.fieldbyname('dseq').value;
    execute;
  end;
  if frmsplitpo=nil then frmsplitpo:=tfrmsplitpo.create(nil);
  with frmsplitpo.query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_custpoqty where seq=:x1 and dseq=:x2';
    params[0].asinteger:=frmpdn.Query2.fieldbyname('seq').value;
    params[1].asinteger:=frmpdn.Query2.fieldbyname('dseq').value;
    open;
  end;
  frmsplitpo.Show;
end;

end.
