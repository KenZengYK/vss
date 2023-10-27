unit newcap_custupdated_spformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmnewcap_custupdated_sp = class(TForm)
    xh1: TRadioGroup;
    xh2: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_custupdated_sp: Tfrmnewcap_custupdated_sp;

implementation

uses newcap_custupdatedformu;

{$R *.dfm}

procedure Tfrmnewcap_custupdated_sp.xh1Click(Sender: TObject);
begin
  if xh1.ItemIndex>=0 then xh2.ItemIndex:=-1;
end;

procedure Tfrmnewcap_custupdated_sp.xh2Click(Sender: TObject);
begin
  if xh2.ItemIndex>=0 then xh1.ItemIndex:=-1;
end;

procedure Tfrmnewcap_custupdated_sp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_custupdated_sp:=nil;
end;

procedure Tfrmnewcap_custupdated_sp.BitBtn1Click(Sender: TObject);
begin
  if xh1.ItemIndex=0 then frmnewcap_custupdated.printreportbysp('1')
  else if xh1.ItemIndex=1 then frmnewcap_custupdated.printreportbysp('2')
  else if xh2.ItemIndex=0 then frmnewcap_custupdated.printreportbysp('3')
  else if xh2.ItemIndex=1 then frmnewcap_custupdated.printreportbysp('4');
end;

end.
