unit projsahformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBClient, Buttons;

type
  Tfrmprojsah = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprojsah: Tfrmprojsah;

implementation

{$R *.dfm}

uses mainformu, linecapformu;

procedure Tfrmprojsah.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmprojsah:=nil;
end;

procedure Tfrmprojsah.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from line_capacity1 where pline='''+combobox1.text+''' order by ptyp';
      open;
    end;
  end;
end;

procedure Tfrmprojsah.FormShow(Sender: TObject);
begin
  combobox1change(self);
end;

end.
