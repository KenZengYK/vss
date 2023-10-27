unit newcap_fcsetupformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils;

type
  Tfrmnewcap_fcsetup = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_fcsetup: Tfrmnewcap_fcsetup;

implementation

uses newcap_simftyformu;

{$R *.dfm}

procedure Tfrmnewcap_fcsetup.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_simfty=nil then frmnewcap_simfty:=tfrmnewcap_simfty.Create(nil);
  frmnewcap_simfty.combobox1.text:='SL';
  frmnewcap_simfty.spinedit1.value:=yearof(date);
  frmnewcap_simfty.show;
end;

procedure Tfrmnewcap_fcsetup.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewcap_fcsetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_fcsetup:=nil;
end;

end.
