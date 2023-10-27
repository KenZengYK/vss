unit sot3formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, StdCtrls, Buttons, DateUtils, Menus;

type
  Tfrmsot3 = class(TForm)
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    cxView1SOPNO: TcxGridDBColumn;
    cxView1ORDLINE: TcxGridDBColumn;
    cxView1J_NO: TcxGridDBColumn;
    cxView1TPLANT: TcxGridDBColumn;
    cxView1DDT: TcxGridDBColumn;
    cxView1EXFTY: TcxGridDBColumn;
    cxView1T3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    ExpandAll1: TMenuItem;
    ColapseAll1: TMenuItem;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure queryexftychange(Sender: TField);
    procedure queryt3change(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
    procedure ColapseAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsot3: Tfrmsot3;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure Tfrmsot3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsot3:=nil;
end;

procedure Tfrmsot3.Edit1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_erpsop_t3';
    if edit1.text>'' then commandtext:=commandtext+' where j_no like '''+edit1.text+'%''';
    open;
  end;
end;

procedure Tfrmsot3.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('exfty').onchange:=queryexftychange;
  query1.fieldbyname('t3').onchange:=queryt3change;
end;

procedure Tfrmsot3.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      commandtext:='update tbl_erpsop_t3 set exfty=:x1,exwk=:x2,t3=:x3,t3wk=:x4 where sopno=:x5 and ordline=:x6';
      if not query1.fieldbyname('exfty').isnull then
      params[0].asdate:=query1.fieldbyname('exfty').value;
      if not query1.fieldbyname('exwk').isnull then
      params[1].asinteger:=query1.fieldbyname('exwk').value;
      if not query1.fieldbyname('t3').isnull then
      params[2].asdate:=query1.fieldbyname('t3').value;
      if not query1.fieldbyname('t3wk').isnull then
      params[3].asinteger:=query1.fieldbyname('t3wk').value;
      params[4].asstring:=query1.fieldbyname('sopno').value;
      params[5].asinteger:=query1.fieldbyname('ordline').value;
      execute;
    end;
  end;
end;

procedure Tfrmsot3.queryexftychange(Sender: TField);
begin
  if not query1.fieldbyname('exfty').isnull then
  query1.fieldbyname('exwk').value:=weekof(query1.fieldbyname('exfty').value);
end;

procedure Tfrmsot3.queryt3change(Sender: TField);
begin
  if not query1.fieldbyname('t3').isnull then
  query1.fieldbyname('t3wk').value:=weekof(query1.fieldbyname('t3').value);
end;

procedure Tfrmsot3.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_erpsop_t3';
    open;
  end;
end;

procedure Tfrmsot3.ExpandAll1Click(Sender: TObject);
begin
  cxView1.ViewData.Expand(True);
end;

procedure Tfrmsot3.ColapseAll1Click(Sender: TObject);
begin
  cxView1.ViewData.Collapse(True);
end;

end.
