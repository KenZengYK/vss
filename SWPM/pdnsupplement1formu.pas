unit pdnsupplement1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCurrencyEdit, cxDBEdit, StdCtrls, Buttons, DBCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxTimeEdit, Mask, DBCtrlsEh, DB, DBClient;

type
  Tfrmpdnsupplement1 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    DBDTEdit1: TDBDateTimeEditEh;
    DBTimeEdit1: TcxDBTimeEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label11: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label12: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnsupplement1: Tfrmpdnsupplement1;

implementation

uses mainformu, pdnformu, voyageformu;

{$R *.dfm}

procedure Tfrmpdnsupplement1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdnsupplement1:=nil;
end;

procedure Tfrmpdnsupplement1.BitBtn1Click(Sender: TObject);
begin
  if frmvoyage.Query1.state=dsedit then frmvoyage.Query1.Post;
end;

end.
 