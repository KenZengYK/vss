unit rsycformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, GridsEh, siComp;

type
  Tfrmrsyc = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    siLang1: TsiLang;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrsyc: Tfrmrsyc;

implementation

uses mainformu, worksheet, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmrsyc.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmrsyc.BitBtn1Click(Sender: TObject);
begin
  if dbgrideh1.datasource.DataSet.State=dsedit then dbgrideh1.datasource.DataSet.Post;
end;

procedure Tfrmrsyc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmrsyc:=nil;
end;

procedure Tfrmrsyc.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

end.
 