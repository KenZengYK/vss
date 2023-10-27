unit ftydefault_refformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, DBCtrls;

type
  Tfrmftydefault_ref = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    Label5: TLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmftydefault_ref: Tfrmftydefault_ref;

implementation

uses mainformu, ftydefaultformu;

{$R *.dfm}

procedure Tfrmftydefault_ref.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmftydefault_ref:=nil;
end;

procedure Tfrmftydefault_ref.BitBtn1Click(Sender: TObject);
var
  dt1,dt2:tdate;
  sah,sah1,lst,eff,wf:double;
begin
  screen.Cursor:=crSQLWait;
  sah:=0;lst:=0;eff:=0;wf:=0;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='select * from sp_line_capacity_new(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=dbtext1.Caption;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      params[3].asdate:=dateedit1.date;
      params[4].asdate:=dateedit2.date;
      open;
      if not fieldbyname('refsah').isnull then sah:=fieldbyname('refsah').value;
      if not fieldbyname('refsah1').isnull then sah1:=fieldbyname('refsah1').value;
      if not fieldbyname('reflst').isnull then lst:=fieldbyname('reflst').value;
      if not fieldbyname('refeff').isnull then eff:=fieldbyname('refeff').value;
      dt1:=fieldbyname('refdt1').value;
      dt2:=fieldbyname('refdt2').value;
      if not fieldbyname('refwf').isnull then wf:=fieldbyname('refwf').value;
    end;
    with frmftydefault.query1 do begin
      edit;
      fieldbyname('refdt1').value:=dt1;
      fieldbyname('refdt2').value:=dt2;
      fieldbyname('refsah').value:=sah;
      fieldbyname('refsah1').value:=sah1;
      fieldbyname('reflst').value:=lst;
      fieldbyname('refeff').value:=eff;
      fieldbyname('refwf').value:=wf;
      post;
    end;
    frmftydefault_ref.Close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
