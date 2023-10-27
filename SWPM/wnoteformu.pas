unit wnoteformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, DBClient, Buttons, RxRichEd,
  rxDBRichEd, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  Tfrmwnote = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxDBMemo1: TcxDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwnote: Tfrmwnote;

implementation

uses mainformu, achievingformu;

{$R *.dfm}

procedure Tfrmwnote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwnote:=nil;
end;

procedure Tfrmwnote.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmwnote.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='update tbl_wksremarks set remarks=:x1 where tshop=:x2 and dt1=:x3';
      if not query1.fieldbyname('remarks').isnull then
      params[0].asstring:=query1.fieldbyname('remarks').value
      else params[0].asstring:='';
      params[1].asstring:=query1.fieldbyname('tshop').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
  }
  str1:='update tbl_wksremarks set ';
  if not query1.fieldbyname('spe').isnull then
  str1:=str1+'spe='''+query1.fieldbyname('spe').value+''','
  else str1:=str1+'spe='''',';
  if not query1.fieldbyname('remarks').isnull then
  str1:=str1+'remarks='''+query1.fieldbyname('remarks').value+''' '
  else str1:=str1+'remarks='''' ';
  str1:=str1+'where tshop='''+query1.fieldbyname('tshop').value+''' and dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  
end;

end.
