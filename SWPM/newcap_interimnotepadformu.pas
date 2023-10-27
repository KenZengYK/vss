unit newcap_interimnotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, Mask, rxToolEdit, cxTextEdit, cxMemo,
  cxDBEdit, ExtCtrls, DB, DBClient;

type
  Tfrmnewcap_interimnotepad = class(TForm)
    Panel1: TPanel;
    cxDBMemo1: TcxDBMemo;
    Panel2: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1TPLANT: TWideStringField;
    Query1YR: TIntegerField;
    Query1BI: TWideStringField;
    Query1VER: TIntegerField;
    Query1DT: TDateField;
    Query1REMARKS: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_interimnotepad: Tfrmnewcap_interimnotepad;

implementation

uses mainformu, newcap_salesinterimformu;

{$R *.dfm}

procedure Tfrmnewcap_interimnotepad.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_interimnotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_interimnotepad:=nil;
end;

procedure Tfrmnewcap_interimnotepad.Query1AfterPost(DataSet: TDataSet);
begin
  datasetafterpost(dataset,0,1,2,3);
end;

end.
