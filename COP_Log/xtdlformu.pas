unit xtdlformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmxtdl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxtdl: Tfrmxtdl;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmxtdl.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct usr from tbl_aql_user';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('usr').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmxtdl.BitBtn2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfrmxtdl.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then edit1.SetFocus;
end;

procedure Tfrmxtdl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then bitbtn1click(self);
end;

procedure Tfrmxtdl.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_user where usr='''+combobox1.text+''' and passwrd='''+edit1.text+'''';
      open;
      if not fieldbyname('usr').isnull then begin
        {
        if fieldbyname('r_inp').value=true then begin
          frmaqlmain.DBCheckBox4.Enabled:=false;
          frmaqlmain.BitBtn6.Enabled:=false;
          frmaqlmain.BitBtn8.Enabled:=false;
          frmaqlmain.Label6.Caption:='Inspector (質檢員) : ';
          frmaqlmain.Label10.Caption:='Sewn Qty being Audit (通過審核之縫合數) : ';
          frmaqlmain.TabSheet5.Caption:='End-line Inspection Result (抽樣檢查結果)';
          frmaqlmain.DBGridEh5.Columns[13].Title.caption:='Reinspect Qty';
        end else begin
          frmaqlmain.DBCheckBox4.Enabled:=true;
          frmaqlmain.BitBtn6.Enabled:=true;
          frmaqlmain.BitBtn8.Enabled:=true;
          frmaqlmain.Label6.Caption:='Quality Auditor (審核者) : ';
          frmaqlmain.Label10.Caption:='Shipment Qty being Audit (通過審核之出貨數) : ';
          frmaqlmain.TabSheet5.Caption:='AQL Result (抽樣檢查結果)';
          frmaqlmain.DBGridEh5.Columns[13].Title.caption:='Re-audit Qty';
        end;
        }
        //frmaqlmain.Show;
        //frmxtdl.Hide;
        //if frmaqlmain=nil then frmaqlmain:=tfrmaqlmain.create(application);
        frmaqlmain.windowstate:=wsMaximized;
        frmaqlmain.bringtofront;
      end else begin
        frmaqlmain.close;
        showmessage('沒有權限!');
      end;
    end;
  end;
end;

end.
