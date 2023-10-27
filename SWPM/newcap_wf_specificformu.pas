unit newcap_wf_specificformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, Buttons, DB, DBClient;

type
  Tfrmnewcap_wf_specific = class(TForm)
    Label1: TLabel;
    DBNumberEditEh1: TDBNumberEditEh;
    Label2: TLabel;
    DBNumberEditEh2: TDBNumberEditEh;
    Label3: TLabel;
    DBNumberEditEh3: TDBNumberEditEh;
    Label4: TLabel;
    DBNumberEditEh4: TDBNumberEditEh;
    Label5: TLabel;
    DBNumberEditEh5: TDBNumberEditEh;
    Label6: TLabel;
    DBNumberEditEh6: TDBNumberEditEh;
    Label7: TLabel;
    DBNumberEditEh7: TDBNumberEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_wf_specific: Tfrmnewcap_wf_specific;

implementation

uses mainformu, newcap_wfformu, newcap_wf_detailformu;

{$R *.dfm}

procedure Tfrmnewcap_wf_specific.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_wf_specific:=nil;
end;

procedure Tfrmnewcap_wf_specific.BitBtn1Click(Sender: TObject);
var
  d01,d02,d03,h01,h02,h03,ht01:integer;
begin
  with frmnewcap_wf.query1 do begin
    d01:=fieldbyname('d01').value;
    d02:=fieldbyname('d02').value;
    d03:=fieldbyname('d03').value;
    h01:=fieldbyname('h01').value;
    h02:=fieldbyname('h02').value;
    h03:=fieldbyname('h03').value;
    ht01:=fieldbyname('ht01').value;
    edit;
    fieldbyname('d14').value:=d01+d02+d03+h01+h02+h03+ht01;
    post;
  end;
end;

end.
