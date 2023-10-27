unit Carte_SplitFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rxToolEdit, Mask, RzEdit, RzBckgnd;

type
  TfrmCarte_Split = class(TForm)
    Label1: TLabel;
    rEdit1: TRzNumericEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    DateEdit3: TDateEdit;
    Label5: TLabel;
    DateEdit4: TDateEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DateEdit7: TDateEdit;
    DateEdit8: TDateEdit;
    DateEdit9: TDateEdit;
    BitBtn1: TBitBtn;
    RzBackground1: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Split: TfrmCarte_Split;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_Split.BitBtn1Click(Sender: TObject);
begin
  with frmCarte_Ordprocessing.adoquery1 do begin
    close;
    parameters.clear;
    sql.text:='exec sp_carte_copy_new :x1,:x2,:x3,:x4';
    parameters[0].value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
    parameters[1].value:=rEdit1.value;
    parameters[2].value:=dateedit5.date;
    parameters[3].value:=dateedit6.date;
    execsql;
  end;
  showmessage('Split finished, pls press CONFIRM to refresh data!');
  //--
  //showmessage('分拆完成，請按確定刷新數據!');
  close;
end;

procedure TfrmCarte_Split.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Split:=nil;
end;

end.
