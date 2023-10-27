unit selstyleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBClient, Buttons;

type
  Tfrmselstyle = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselstyle: Tfrmselstyle;

implementation

uses mainformu, packoptformu;

{$R *.dfm}

procedure Tfrmselstyle.Edit1Change(Sender: TObject);
begin
  if edit1.Text>'' then begin
    if label2.Caption='1' then begin
      //query1.Locate('artno',edit1.text,[])
      query1.FindNearest([edit1.text]);
    end else if label2.Caption='2' then begin
      //query1.Locate('cstyle',edit1.text,[])
      query1.FindNearest([edit1.text]);
    end;
  end;
end;

procedure Tfrmselstyle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmselstyle:=nil;
end;

procedure Tfrmselstyle.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct artno,cstyle from tblshedule where cstyle>''''';
    open;
    if label2.Caption='1' then
      indexname:='idx1'
    else if label2.Caption='2' then
      indexname:='idx2';
    SetKey;
    first;
  end;
end;

procedure Tfrmselstyle.BitBtn1Click(Sender: TObject);
var
  q:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select seq from tbl_pdn_pack_opt01 where cstyle='''+query1.fieldbyname('cstyle').value+'''';
    open;
    if not fieldbyname('seq').isnull then q:=fieldbyname('seq').value
    else begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select max(seq) as q from tbl_pdn_pack_opt01';
        open;
        if not fieldbyname('q').isnull then q:=fieldbyname('q').value+1 else q:=1;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='insert into tbl_pdn_pack_opt01(seq,artno,cstyle) values(:x1,:x2,:x3)';
        params[0].asinteger:=q;
        params[1].asstring:=query1.fieldbyname('artno').value;
        params[2].asstring:=query1.fieldbyname('cstyle').value;
        execute;
      end;
    end;
  end;
  //if not query1.fieldbyname('seq').isnull then begin
    with frmpackopt.Query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_pack_opt01 where seq=:x1';
      params[0].asinteger:=q;//query1.fieldbyname('seq').value;
      open;
    end;
    frmselstyle.Close;
  //end;
end;

end.
