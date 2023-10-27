unit lineeffchartformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmlineeffchart = class(TForm)
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grp1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlineeffchart: Tfrmlineeffchart;

implementation

uses lineeffformu;

{$R *.dfm}

procedure Tfrmlineeffchart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmlineeffchart:=nil;
end;

procedure Tfrmlineeffchart.BitBtn1Click(Sender: TObject);
begin
  if rb1.checked then
  frmlineeff.chk1.Checked:=true
  else if rb2.Checked then
  frmlineeff.chk1.Checked:=false;
  if xh1.ItemIndex>=0 then begin
    frmlineeff.printeffchart(inttostr(xh1.ItemIndex));
    frmlineeffchart.Close;
  end;
end;

end.
