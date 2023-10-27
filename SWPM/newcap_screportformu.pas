unit newcap_screportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmnewcap_screport = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_screport: Tfrmnewcap_screport;

implementation

{$R *.dfm}

procedure Tfrmnewcap_screport.BitBtn1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmnewcap_screport.BitBtn2Click(Sender: TObject);
begin
  //
end;

procedure Tfrmnewcap_screport.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewcap_screport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_screport:=nil;
end;

end.
