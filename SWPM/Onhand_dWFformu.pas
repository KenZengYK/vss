unit Onhand_dWFformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, DB, DBClient;

type
  Tfrmonhand_dwf = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmonhand_dwf: Tfrmonhand_dwf;

implementation

uses mainformu, newcapformu, newcap_1stchoiceformu;

{$R *.dfm}

procedure Tfrmonhand_dwf.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    if query1.state=dsedit then query1.post;
    if application.MessageBox('Update all balancing?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_cap_updonhandwf(:x1)';
        params[0].asinteger:=frmnewcap_1stchoice.spinedit2.value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_cap_updonhandwf(:x1)';
        params[0].asinteger:=frmnewcap_1stchoice.spinedit2.value+1;
        execute;
      end;
      showmessage('Updated!');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmonhand_dwf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmonhand_dwf:=nil;
end;

procedure Tfrmonhand_dwf.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_onhandwf';
    open;
  end;
end;

procedure Tfrmonhand_dwf.Query1AfterPost(DataSet: TDataSet);
var
  strupd:string;
begin
  strupd:='update tbl_cap_onhandwf set ';
  if not query1.fieldbyname('onhand_wf').isnull then
  strupd:=strupd+'onhand_wf='+query1.fieldbyname('onhand_wf').asstring+' '
  else strupd:=strupd+'onhand_wf=0 ';
  strupd:=strupd+'where tplant='''+query1.fieldbyname('tplant').value+'''';
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
end;

end.
