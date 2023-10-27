unit cust_budgeformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmcust_budge = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
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
  frmcust_budge: Tfrmcust_budge;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmcust_budge.BitBtn1Click(Sender: TObject);
begin
  if (query1.State=dsEdit) then query1.Post;  
end;

procedure Tfrmcust_budge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcust_budge:=nil;
end;

procedure Tfrmcust_budge.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update cust_logistic_budget set ';
  str1:=str1+'defshpm='''+query1.fieldbyname('defshpm').value+''',';
  if not query1.fieldbyname('budge').isnull then
  str1:=str1+'budge='+query1.fieldbyname('budge').asstring+','
  else str1:=str1+'budge=0,';
  if not query1.fieldbyname('budge1').isnull then
  str1:=str1+'budge1='+query1.fieldbyname('budge1').asstring+','
  else str1:=str1+'budge1=0,';
  if not query1.fieldbyname('budge2').isnull then
  str1:=str1+'budge2='+query1.fieldbyname('budge2').asstring+','
  else str1:=str1+'budge2=0,';
  if not query1.fieldbyname('b0').isnull then
  str1:=str1+'b0='+query1.fieldbyname('b0').asstring+','
  else str1:=str1+'b0=0,';
  if not query1.fieldbyname('b1').isnull then
  str1:=str1+'b1='+query1.fieldbyname('b1').asstring+','
  else str1:=str1+'b1=0,';
  if not query1.fieldbyname('b2').isnull then
  str1:=str1+'b2='+query1.fieldbyname('b2').asstring+','
  else str1:=str1+'b2=0,';
  if not query1.fieldbyname('b3').isnull then
  str1:=str1+'b3='+query1.fieldbyname('b3').asstring+','
  else str1:=str1+'b3=0,';
  if not query1.fieldbyname('budge3').isnull then
  str1:=str1+'budge3='+query1.fieldbyname('budge3').asstring+' '
  else str1:=str1+'budge3=0 ';
  str1:=str1+'where tplant='''+query1.fieldbyname('tplant').asstring+''' ';
  str1:=str1+'and cust='''+query1.fieldbyname('cust').asstring+''' ';
  str1:=str1+'and prod='''+query1.fieldbyname('prod').asstring+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
