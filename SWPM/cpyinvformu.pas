unit cpyinvformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, DB, DBClient;

type
  Tfrmcpyinv = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcpyinv: Tfrmcpyinv;

implementation

uses mainformu, pdninvoiceformu, pdninvoice_lardformu;

{$R *.dfm}

procedure Tfrmcpyinv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcpyinv:=nil;
end;

procedure Tfrmcpyinv.BitBtn1Click(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_pdn_cpyinv(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('inv').value;
    if label1.caption='ETAM' then
    params[2].asstring:=frmpdninvoice.Query1.fieldbyname('inv').value
    else if label1.Caption='LARD' then
    params[2].asstring:=frmpdninvoice_lard.Query1.fieldbyname('inv').value;
    execute;
  end;
  if label1.Caption='ETAM' then begin
    with frmpdninvoice.Query1 do begin
      edit;
      fieldbyname('addr').value:=query1.fieldbyname('addr').value;
      fieldbyname('memo1').value:=query1.fieldbyname('memo1').value;
      fieldbyname('payterm').value:=query1.fieldbyname('payterm').value;
      fieldbyname('incoterm').value:=query1.fieldbyname('incoterm').value;
      fieldbyname('shpm').value:=query1.fieldbyname('shpm').value;
      fieldbyname('vessel').value:=query1.fieldbyname('vessel').value;
      fieldbyname('lport').value:=query1.fieldbyname('lport').value;
      fieldbyname('dport').value:=query1.fieldbyname('dport').Value;
      post;
    end;
  end else if label1.Caption='LARD' then begin
    with frmpdninvoice_lard.Query1 do begin
      edit;
      fieldbyname('addr').value:=query1.fieldbyname('addr').value;
      fieldbyname('memo1').value:=query1.fieldbyname('memo1').value;
      fieldbyname('payterm').value:=query1.fieldbyname('payterm').value;
      fieldbyname('incoterm').value:=query1.fieldbyname('incoterm').value;
      fieldbyname('shpm').value:=query1.fieldbyname('shpm').value;
      fieldbyname('vessel').value:=query1.fieldbyname('vessel').value;
      fieldbyname('lport').value:=query1.fieldbyname('lport').value;
      fieldbyname('dport').value:=query1.fieldbyname('dport').Value;
      post;
    end;
  end;
  frmcpyinv.close;
end;

end.
