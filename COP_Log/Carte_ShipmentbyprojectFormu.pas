unit Carte_ShipmentbyprojectFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzBckgnd;

type
  TfrmCarte_Shipmentbyproject = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzBackground1: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Shipmentbyproject: TfrmCarte_Shipmentbyproject;

implementation

uses Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_Shipmentbyproject.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text>'' then frmCarte_Ordprocessing.printshipmentbyproject(combobox1.text);
end;

procedure TfrmCarte_Shipmentbyproject.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Shipmentbyproject:=nil;
end;

end.
