unit pdnqty_enqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, DB, DBClient, ExtCtrls,
  DBGridEHImpExp;

type
  Tfrmpdnqty_enq = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    xh1: TRadioGroup;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure xh1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnqty_enq: Tfrmpdnqty_enq;

implementation

uses mainformu, pdnformu, enqnotepadformu;

{$R *.dfm}

procedure Tfrmpdnqty_enq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdnqty_enq:=nil;
end;

procedure Tfrmpdnqty_enq.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if (edit1.text>'') or (edit3.text>'') then begin
    if key=#13 then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_pdn_newenquiry_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asstring:=edit1.text;
        params[2].asstring:=edit3.text;
        params[3].asinteger:=xh1.ItemIndex;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_enquiry_sku where tm=:x1';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        params[0].asdatetime:=tm;
        open;
      end;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnqty_enq.xh1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if edit1.text>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='execute procedure sp_pdn_newenquiry_1(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asstring:=edit1.text;
        params[2].asinteger:=xh1.ItemIndex;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_enquiry_sku where tm=:x1';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        params[0].asdatetime:=tm;
        open;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnqty_enq.BitBtn1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,true);
  finally
    showmessage('succeeded!');
  end;
end;

procedure Tfrmpdnqty_enq.BitBtn2Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    if edit1.text>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_enqnotepad(:x1)';
        params[0].asstring:=edit1.text;
        execute;
      end;
      if frmenqnotepad=nil then frmenqnotepad:=tfrmenqnotepad.Create(nil);
      with frmenqnotepad.Query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from tbl_pdn_tmp_notepad where j_no=:x1';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        params[0].asstring:=edit1.text;
        open;
      end;
      frmenqnotepad.Show;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
