unit ver_engchnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBClient, Buttons;

type
  Tfrmver_engchn = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    Query1F_MOD: TStringField;
    Query1F_FRM: TStringField;
    Query1F_LBL_GRD: TStringField;
    Query1F_XH: TIntegerField;
    Query1F_ENG: TStringField;
    Query1F_CHN: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmver_engchn: Tfrmver_engchn;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmver_engchn.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1,2,3);
end;

procedure Tfrmver_engchn.Query1NewRecord(DataSet: TDataSet);
begin
  query1.fieldbyname('f_mod').value:=combobox1.text;
end;

procedure Tfrmver_engchn.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=1;
  query1.Append;
end;

procedure Tfrmver_engchn.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='delete from tbl_ver_engchn where f_mod=:x1 and f_frm=:x2 and f_lbl_grd=:x3 and f_xh=:x4';
      params[0].asstring:=query1.fieldbyname('f_mod').value;
      params[1].asstring:=query1.fieldbyname('f_frm').value;
      params[2].asstring:=query1.fieldbyname('f_lbl_grd').value;
      params[3].asinteger:=query1.fieldbyname('f_xh').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmver_engchn.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmver_engchn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmver_engchn:=nil;
end;

procedure Tfrmver_engchn.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_ver_engchn where f_mod=:x1';
      params[0].asstring:=combobox1.text;
      open;
    end;
  end;
end;

procedure Tfrmver_engchn.FormShow(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_ver_engchn where f_mod=:x1';
      params[0].asstring:=combobox1.text;
      open;
    end;
  end;
end;

end.
