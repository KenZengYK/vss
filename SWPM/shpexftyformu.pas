unit shpexftyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons;

type
  Tfrmshpexfty = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshpexfty: Tfrmshpexfty;

implementation

uses shpadviceformu, shpadvice2formu;

{$R *.dfm}

procedure Tfrmshpexfty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmshpexfty:=nil;
end;

procedure Tfrmshpexfty.BitBtn1Click(Sender: TObject);
begin
  if label1.visible=true then begin
    if dateedit1.date>0 then begin
      frmshpadvice.newshipadvice(dateedit1.date,dateedit2.date,combobox1.text);
      frmshpexfty.Close;
    end;
  end else if label4.visible=true then begin
    if edit1.text>'' then begin
      frmshpadvice2.exportshpno(edit1.Text);
      frmshpexfty.Close;
    end;
  end;
end;

end.
