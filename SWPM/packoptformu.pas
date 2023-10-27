unit packoptformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBClient, StdCtrls,
  Mask, DBCtrlsEh, Buttons, Menus;

type
  Tfrmpackopt = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query3: TClientDataSet;
    DataSource3: TDataSource;
    Label1: TLabel;
    DBEditEh1: TDBEditEh;
    Label2: TLabel;
    DBEditEh2: TDBEditEh;
    Label3: TLabel;
    DBEditEh3: TDBEditEh;
    Label4: TLabel;
    DBEditEh4: TDBEditEh;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1DSEQ: TIntegerField;
    Query1OPTC: TStringField;
    Query1OPTD: TStringField;
    Query1SAM: TFloatField;
    Query1SAH: TFloatField;
    Query1RT: TFloatField;
    Query1MARKS: TMemoField;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Query2SEQ: TIntegerField;
    Query2ARTNO: TStringField;
    Query2CSTYLE: TStringField;
    Query2OPT: TStringField;
    Query2OBS: TStringField;
    Query2SAM: TFloatField;
    Query2SAH: TFloatField;
    Query2RT: TFloatField;
    Query2DT: TDateField;
    Query3SEQ: TIntegerField;
    Query3DSEQ: TIntegerField;
    Query3PK: TStringField;
    Query3OPTS: TIntegerField;
    Query3OPTC: TStringField;
    Query3OPTD: TStringField;
    Query3SAM: TFloatField;
    Query3SAH: TFloatField;
    Query3RT: TFloatField;
    Query3MARKS: TMemoField;
    PopupMenu1: TPopupMenu;
    AddNew1: TMenuItem;
    Delete1: TMenuItem;
    Query1CUST: TStringField;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query3AfterPost(DataSet: TDataSet);
    procedure Query3NewRecord(DataSet: TDataSet);
    procedure AddNew1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query3SAMChange(Sender: TField);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpackopt: Tfrmpackopt;

implementation

uses mainformu, selstyleformu, selpkoptformu, selcuststyleformu;

{$R *.dfm}

procedure Tfrmpackopt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpackopt:=nil;
end;

procedure Tfrmpackopt.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_pack_opt';
      open;
    end;
  end;
end;

procedure Tfrmpackopt.BitBtn1Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    dbgrideh1.SetFocus;
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    dbediteh2.SetFocus;
    if not query2.Active then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_pdn_pack_opt01 where seq=-1';
        open;
      end;
    end;
    query2.Append;
  end;
end;

procedure Tfrmpackopt.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmpackopt.Query1NewRecord(DataSet: TDataSet);
var
  q:integer;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select max(dseq) as q from tbl_pdn_pack_opt';
    open;
    if not fieldbyname('q').isnull then q:=fieldbyname('q').value+1
    else q:=1;
  end;
  query1.fieldbyname('dseq').value:=q;
end;

procedure Tfrmpackopt.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
  if (query2.state=dsinsert) or (query2.state=dsedit) then query2.Post;
  if (query3.state=dsinsert) or (query3.state=dsedit) then query3.Post;
end;

procedure Tfrmpackopt.BitBtn2Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_pdn_pack_opt where dseq=:x1';
        params[0].asinteger:=query1.fieldbyname('dseq').value;
        execute;
      end;
      query1.delete;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_pdn_pack_opt01 where seq=:x1';
      params[0].AsInteger:=query2.fieldbyname('seq').value;
      execute;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_pdn_pack_opt02 where seq=:x1';
      params[0].AsInteger:=query2.fieldbyname('seq').value;
      execute;
    end;
    query2.Delete;
    query2.Close;
    query3.Close;
  end;
end;

procedure Tfrmpackopt.SpeedButton1Click(Sender: TObject);
begin
  if frmselstyle=nil then frmselstyle:=tfrmselstyle.create(nil);
  frmselstyle.Label1.Caption:='PH´Ú¸¹';
  frmselstyle.Label2.Caption:='1';
  frmselstyle.Show;
end;

procedure Tfrmpackopt.SpeedButton2Click(Sender: TObject);
begin
  if frmselstyle=nil then frmselstyle:=tfrmselstyle.create(nil);
  frmselstyle.Label1.Caption:='«È¤á´Ú¸¹';
  frmselstyle.Label2.Caption:='2';
  frmselstyle.Show;
end;

procedure Tfrmpackopt.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  if not query2.fieldbyname('seq').isnull then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_pack_opt02 where seq=:x1';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      open;
    end;
  end;
end;

procedure Tfrmpackopt.Query2NewRecord(DataSet: TDataSet);
var
  q:integer;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_pdn_pack_opt01';
    open;
    if not fieldbyname('q').isnull then q:=fieldbyname('q').value+1
    else q:=1;
  end;
  query2.fieldbyname('seq').value:=q;
end;

procedure Tfrmpackopt.Query2AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmpackopt.DBGridEh2Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //with query4 do begin
    //
  //end;
  if frmselpkopt=nil then frmselpkopt:=tfrmselpkopt.create(nil);
  with frmselpkopt.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_pack_opt';
    open;
  end;
  frmselpkopt.show;
end;

procedure Tfrmpackopt.Query3AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

procedure Tfrmpackopt.Query3NewRecord(DataSet: TDataSet);
var
  q:integer;
begin
  query3.fieldbyname('seq').value:=query2.fieldbyname('seq').value;
  with query4 do begin
    close;
    params.clear;
    commandtext:='select max(dseq) as q from tbl_pdn_pack_opt02';
    open;
    if not fieldbyname('q').isnull then q:=fieldbyname('q').value+1
    else q:=1;
  end;
  query3.fieldbyname('dseq').value:=q;
end;

procedure Tfrmpackopt.AddNew1Click(Sender: TObject);
begin
  dbgrideh2.SetFocus;
  dbgrideh2.SelectedIndex:=0;
  query3.Append;
end;

procedure Tfrmpackopt.Delete1Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='delete from tbl_pdn_pack_opt02 where seq=:x1 and dseq=:x2';
      params[0].AsInteger:=query3.fieldbyname('seq').value;
      params[1].AsInteger:=query3.fieldbyname('dseq').value;
      execute;
    end;
    query3.Delete;
  end;
end;

procedure Tfrmpackopt.FormShow(Sender: TObject);
begin
  pagecontrol1change(self);
end;

procedure Tfrmpackopt.Query3SAMChange(Sender: TField);
begin
  if not query3.fieldbyname('sam').isnull then begin
    query3.fieldbyname('sah').value:=query3.fieldbyname('sam').value/60.000000;
    query3.fieldbyname('rt').value:=query3.fieldbyname('sam').value/60.000000*3.85;
  end;
end;

procedure Tfrmpackopt.BitBtn5Click(Sender: TObject);
begin
  if query2.Active then begin
    if not query2.fieldbyname('seq').isnull then begin
      if frmselcuststyle=nil then frmselcuststyle:=tfrmselcuststyle.create(nil);
      with frmselcuststyle.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_pack_opt01 where seq<>:x1';
        params[0].asinteger:=query2.fieldbyname('seq').value;
        open;
      end;
      frmselcuststyle.Show;
    end;
  end;
end;

end.
