unit timeeff_notepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, DBClient;

type
  Tfrmtimeeff_notepad = class(TForm)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtimeeff_notepad: Tfrmtimeeff_notepad;

implementation

uses mainformu, timeeff_newformu;

{$R *.dfm}

procedure Tfrmtimeeff_notepad.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmtimeeff_notepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmtimeeff_notepad:=nil;
end;

procedure Tfrmtimeeff_notepad.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //str1:='update tbl_tmeff_notepad set ';
  //if not query1.fieldbyname('remarks').isnull then
  //str1:=str1+'remarks='''+query1.FieldByName('remarks').value+''' where seq=1'
  //else str1:=str1+'remarks='''' where seq=1';
  //if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  if not query1.fieldbyname('remarks').isnull then
  str1:=query1.fieldbyname('remarks').value else str1:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='execute procedure sp_update_tmeff_notepad(:x1)';
    params[0].asstring:=str1;
    execute;
  end;
end;

end.
