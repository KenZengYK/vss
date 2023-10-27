unit sosplitformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmsosplit = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    so001: TLabel;
    Label4: TLabel;
    sl001: TLabel;
    Label6: TLabel;
    wo001: TLabel;
    Label8: TLabel;
    cl001: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    qt001: TLabel;
    Query1SOPNO: TStringField;
    Query1ORDLINE: TIntegerField;
    Query1J2_JOB: TStringField;
    Query1ARTNO: TStringField;
    Query1ACOL: TStringField;
    Query1SEQ: TIntegerField;
    Query1DDT: TDateField;
    Query1QTY: TIntegerField;
    Label5: TLabel;
    dt001: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsosplit: Tfrmsosplit;

implementation

uses mainformu, newcapformu, soselectionformu;

{$R *.dfm}

procedure Tfrmsosplit.SpeedButton1Click(Sender: TObject);
begin
  if frmsoselection=nil then frmsoselection:=tfrmsoselection.Create(nil);
  frmsoselection.show;
end;

procedure Tfrmsosplit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsosplit:=nil;
end;

procedure Tfrmsosplit.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1,2,3,4);
end;

procedure Tfrmsosplit.BitBtn1Click(Sender: TObject);
begin
  if query1.Active then begin
    dbgrideh1.SetFocus;
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end;
end;

procedure Tfrmsosplit.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_erpsop_rwo where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmsosplit.BitBtn3Click(Sender: TObject);
begin
  if (query1.State=dsedit) or (query1.state=dsinsert) then query1.Post;
end;

procedure Tfrmsosplit.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
  y,m,d:word;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_erpsop_rwo';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
    else seq:=1;
  end;
  query1.fieldbyname('sopno').value:=so001.Caption;
  query1.fieldbyname('ordline').value:=sl001.Caption;
  query1.fieldbyname('j2_job').value:=wo001.Caption;
  query1.fieldbyname('acol').value:=cl001.Caption;
  query1.fieldbyname('seq').value:=seq;
  y:=strtoint(copy(dt001.caption,1,4));
  m:=strtoint(copy(dt001.caption,6,2));
  d:=strtoint(copy(dt001.caption,9,2));
  query1.fieldbyname('ddt').value:=encodedate(y,m,d);//date;
end;

end.
