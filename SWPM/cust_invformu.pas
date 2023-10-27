unit cust_invformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DB, DBClient;

type
  Tfrmcust_inv = class(TForm)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    DBMemo3: TDBMemo;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcust_inv: Tfrmcust_inv;

implementation

uses mainformu;//, pdnformu, shpadvice1formu, pdninvoiceformu;

{$R *.dfm}

procedure Tfrmcust_inv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcust_inv:=nil;
end;

procedure Tfrmcust_inv.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      commandtext:='update tbl_inv_cust set addr=:x1,memo1=:x2,payterm=:x3,incoterm=:x4,country=:x5,spmarks=:x6,lport=:x7,dport=:x8 where seq=:x9';
      if not query1.fieldbyname('addr').isnull then
      params[0].asstring:=query1.fieldbyname('addr').value
      else params[0].asstring:='';
      if not query1.fieldbyname('memo1').isnull then
      params[1].asstring:=query1.fieldbyname('memo1').value
      else params[1].asstring:='';
      if not query1.fieldbyname('payterm').isnull then
      params[2].asstring:=query1.fieldbyname('payterm').value
      else params[2].asstring:='';
      if not query1.fieldbyname('incoterm').isnull then
      params[3].asstring:=query1.fieldbyname('incoterm').value
      else params[3].asstring:='';
      if not query1.fieldbyname('country').isnull then
      params[4].asstring:=query1.fieldbyname('country').value
      else params[4].asstring:='';
      if not query1.fieldbyname('spmarks').isnull then
      params[5].asstring:=query1.fieldbyname('spmarks').value
      else params[5].asstring:='';
      if not query1.fieldbyname('lport').isnull then
      params[6].asstring:=query1.fieldbyname('lport').value
      else params[6].asstring:='';
      if not query1.fieldbyname('dport').isnull then
      params[7].asstring:=query1.fieldbyname('dport').value
      else params[7].asstring:='';
      params[8].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
end;

procedure Tfrmcust_inv.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

end.
