unit xzcbgxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGridEh, Buttons, ADODB, DBClient,
  GridsEh;

type
  Tfrmxzcbgx = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    xh1: TRadioButton;
    xh2: TRadioButton;
    xh3: TRadioButton;
    xh4: TRadioButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzcbgx: Tfrmxzcbgx;

implementation
uses scgxu, dlu;
{$R *.DFM}

procedure Tfrmxzcbgx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxzcbgx.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  screen.cursor:=crHourglass;
  if not dbgrideh1.fields[0].isnull then begin
    {
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from IE_zygx';
      if label3.Caption='KH' then commandtext:=commandtext+' where kh='''+dbgrideh1.fields[1].value+''''
      else if label3.Caption='KH1' then commandtext:=commandtext+' where kh1='''+dbgrideh1.fields[2].Value+''''
      else if label3.Caption='ZD' then commandtext:=commandtext+' where zd='''+dbgrideh1.fields[3].value+'''';
      open;
      if recordcount=0 then begin
        with query3 do begin
          close;
          params.clear;
          params.CreateParam(ftinteger,'Seq',ptinput);
          commandtext:='Execute IE_scgxgetdata :seq';
          params[0].value:=dbgrideh1.fields[0].value;
          execute;
        end;
        frmscgx.zygx.close;
        frmscgx.zygx.Open;
      end;
    end;
    }
    if label3.Caption='KH' then begin
    frmscgx.edit2.text:=dbgrideh1.fields[1].value;
    with frmscgx.zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh like '''+frmscgx.edit2.text+'%''';
      open;
    end;
    end else if label3.Caption='KH1' then begin
    frmscgx.edit3.text:=dbgrideh1.fields[2].value;
    with frmscgx.zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh1 like '''+frmscgx.edit3.text+'%''';
      open;
    end;
    end else if label3.Caption='ZD' then begin
    frmscgx.edit1.text:=dbgrideh1.fields[3].value;
    with frmscgx.zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd like '''+frmscgx.edit1.text+'%''';
      open;
    end;
    end;
  end;
  close;
  screen.cursor:=crDefault;
end;

procedure Tfrmxzcbgx.Edit1Change(Sender: TObject);
begin
  if edit1.text>'' then query1.locate('kh',edit1.text,[]);
end;

procedure Tfrmxzcbgx.Edit2Change(Sender: TObject);
begin
  if edit2.text>'' then query1.locate('zd',edit2.text,[]);
end;

procedure Tfrmxzcbgx.Edit3Change(Sender: TObject);
begin
  if edit3.text>'' then query1.locate('kh1',edit3.text,[]);
end;

procedure Tfrmxzcbgx.xh1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct seq,kh,kh1,zd,flag2,tplant,activ,zd1,cls,statu from IE_zygx where 0=0';
    if xh2.Checked then commandtext:=commandtext+' and statu=''Active'''
    else if xh3.Checked then commandtext:=commandtext+' and statu=''Inactive'''
    else if xh4.Checked then commandtext:=commandtext+' and statu=''Drop''';
    open;
  end;
end;

procedure Tfrmxzcbgx.FormShow(Sender: TObject);
begin
  xh1click(self);
end;

procedure Tfrmxzcbgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //action:=cafree;
  //frmxzcbgx:=nil;
end;

end.
