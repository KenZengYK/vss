unit qn_calcsectsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls, Mask, rxToolEdit,
  rxCurrEdit, DB, DBClient, Buttons;

type
  Tfrmqn_calcsects = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    cEdit1: TCurrencyEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query10: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqn_calcsects: Tfrmqn_calcsects;

implementation

uses mainformu, achievingformu;

{$R *.dfm}

procedure Tfrmqn_calcsects.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='execute procedure sp_swpm_lineshjs_qnf1(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    params[2].asfloat:=cEdit1.value;
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from line_shjs_tmpjs where pline=:x1 and dt1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmqn_calcsects.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmqn_calcsects:=nil;
end;

procedure Tfrmqn_calcsects.FormShow(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select ttl from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('ttl').isnull then cEdit1.value:=fieldbyname('ttl').value;
  end;
end;

procedure Tfrmqn_calcsects.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update line_shjs_tmpjs set ';
  if not query1.fieldbyname('fsect').isnull then
  str1:=str1+'fsect='+query1.fieldbyname('fsect').asstring+','
  else str1:=str1+'fsect=0,';
  if not query1.fieldbyname('tsect').isnull then
  str1:=str1+'tsect='+query1.fieldbyname('tsect').asstring+','
  else str1:=str1+'tsect=0,';
  if not query1.fieldbyname('qsect').isnull then
  str1:=str1+'qsect='+query1.fieldbyname('qsect').asstring+' '
  else str1:=str1+'qsect=0 ';
  str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
  str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
  str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
