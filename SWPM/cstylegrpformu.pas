unit cstylegrpformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, DBClient, Buttons;

type
  Tfrmcstylegrp = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcstylegrp: Tfrmcstylegrp;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmcstylegrp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    //
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_genstylegrp(:x1)';
      params[0].asstring:=edit1.text;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_stylegrp where cust='''+edit1.text+''' and j_no>''''';
      open;
    end;
  end;
end;

procedure Tfrmcstylegrp.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_stylegrp set jhrs=:x1 where seq=:x2';
      if not query1.fieldbyname('jhrs').isnull then
      params[0].asstring:=query1.fieldbyname('jhrs').value
      else params[0].asstring:='';
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  }
  str1:='update tbl_stylegrp set ';
  if not query1.fieldbyname('jhrs').isnull then
  str1:=str1+'jhrs='''+query1.fieldbyname('jhrs').value+''' '
  else str1:=str1+'jhrs='''' ';
  str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_updjhrs(:x1)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
end;

procedure Tfrmcstylegrp.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmcstylegrp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcstylegrp:=nil;
end;

end.
