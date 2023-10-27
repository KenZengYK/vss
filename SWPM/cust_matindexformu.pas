unit cust_matindexformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh;

type
  Tfrmcust_matindex = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcust_matindex: Tfrmcust_matindex;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmcust_matindex.BitBtn1Click(Sender: TObject);
begin
  if (query1.State=dsEdit) then query1.Post;
end;

procedure Tfrmcust_matindex.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcust_matindex:=nil;
end;

procedure Tfrmcust_matindex.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update cust_mat_index set ';
  if not query1.fieldbyname('std1').isnull then
  str1:=str1+'std1='+query1.fieldbyname('std1').asstring+','
  else str1:=str1+'std1=0,';
  if not query1.fieldbyname('std2').isnull then
  str1:=str1+'std2='+query1.fieldbyname('std2').asstring+','
  else str1:=str1+'std2=0,';
  if not query1.fieldbyname('std3').isnull then
  str1:=str1+'std3='+query1.fieldbyname('std3').asstring+','
  else str1:=str1+'std3=0,';
  if not query1.fieldbyname('std4').isnull then
  str1:=str1+'std4='+query1.fieldbyname('std4').asstring+' '
  else str1:=str1+'std4=0 ';
  str1:=str1+'where tplant='''+query1.fieldbyname('tplant').asstring+''' ';
  str1:=str1+'and cust='''+query1.fieldbyname('cust').asstring+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
