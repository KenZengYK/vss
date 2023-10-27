unit changelineformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmchangeline = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchangeline: Tfrmchangeline;

implementation

uses mainformu, lineinfou;

{$R *.dfm}

procedure Tfrmchangeline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmchangeline:=nil;
end;

procedure Tfrmchangeline.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure SP_CHANGE_LINENAME(:x1,:x2)';
    params[0].asstring:=edit1.text;
    params[1].asstring:=edit2.text;
    execute;
  end;
  finally
    screen.cursor:=crDefault;
    showmessage('OK!');
  end;
end;

end.
