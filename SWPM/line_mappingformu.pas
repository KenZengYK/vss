unit line_mappingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, GridsEh, DBGridEh, Buttons, DB, DBClient;

type
  Tfrmline_mapping = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query1TPLANT: TWideStringField;
    Query1PLINE: TWideStringField;
    Query1M_PLINE: TWideStringField;
    procedure Query1M_PLINESetText(Sender: TField; const Text: string);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmline_mapping: Tfrmline_mapping;

implementation

uses mainformu, lineinfou;

{$R *.dfm}

procedure Tfrmline_mapping.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmline_mapping.BitBtn2Click(Sender: TObject);
begin
  if not query1.FieldByName('tplant').isnull then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
      with query2 do begin
        close;
        params.Clear;
        commandtext:='delete from tblline_mapping where tplant='''+query1.FieldByName('tplant').Value+''' and pline='''+query1.FieldByName('pline').Value+''' and m_pline='''+query1.FieldByName('m_pline').Value+'''';
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmline_mapping.BitBtn3Click(Sender: TObject);
begin
  if query1.State=dsInsert then query1.Post;
end;

procedure Tfrmline_mapping.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmline_mapping:=nil;
end;

procedure Tfrmline_mapping.Query1AfterPost(DataSet: TDataSet);
begin
  with query2 do begin
    close;
    params.Clear;
    params.CreateParam(ftstring,'x1',ptinput);
    params.CreateParam(ftstring,'x2',ptinput);
    params.CreateParam(ftstring,'x3',ptinput);
    commandtext:='insert into tblline_mapping(tplant,pline,m_pline) values(:x1,:x2,:x3)';
    params[0].AsString:=query1.FieldByName('tplant').Value;
    params[1].AsString:=query1.FieldByName('pline').Value;
    if not query1.FieldByName('m_pline').isnull then
    params[2].AsString:=query1.FieldByName('m_pline').Value
    else params[2].AsString:='';
    execute;
  end;
end;

procedure Tfrmline_mapping.Query1M_PLINESetText(Sender: TField;
  const Text: string);
begin
  Query1M_PLINE.Value:=uppercase(Text);
end;

procedure Tfrmline_mapping.Query1NewRecord(DataSet: TDataSet);
begin
  query1.fieldbyname('tplant').value:=frmlineinfo.tblline.fieldbyname('tplant').value;
  query1.fieldbyname('pline').value:=frmlineinfo.tblline.fieldbyname('pline').value;
end;

end.