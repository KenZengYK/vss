unit sz_bascustformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Buttons, DBCtrls, DBClient, StdCtrls;

type
  Tfrmsz_bascust = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Query1: TClientDataSet;
    Table1: TClientDataSet;
    DataSource1: TDataSource;
    Table1id: TIntegerField;
    Table1id1: TIntegerField;
    Table1cust: TStringField;
    Table1pom_cd: TStringField;
    Table1emeas: TStringField;
    cxcust: TcxGridDBColumn;
    cxemeas: TcxGridDBColumn;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Table1uom: TStringField;
    Table1tolerence: TStringField;
    cxuom: TcxGridDBColumn;
    cxtolerence: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure Table1NewRecord(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Table1BeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsz_bascust: Tfrmsz_bascust;

implementation

uses loginu, mainu, libraryu;

{$R *.dfm}

procedure Tfrmsz_bascust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsz_bascust:=nil;
end;

procedure Tfrmsz_bascust.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsz_bascust.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
  with query1 do begin
    close;
    params.clear;
    //params.createparam(ftinteger,'x1',ptinput);
    commandtext:='exec sp_sz_emeasn '+table1.fieldbyname('id').asstring;
    //params[0].asinteger:=table1.fieldbyname('id').value;
    open;
    with frmlibrary.Table1 do begin
      edit;
      fieldbyname('emeas_n').value:=query1.fieldbyname('emeas_n').value;
      post;
    end;
  end;
end;

procedure Tfrmsz_bascust.Table1NewRecord(DataSet: TDataSet);
begin
  table1.fieldbyname('id').value:=frmlibrary.Table1.fieldbyname('id').value;
  table1.fieldbyname('id1').value:=GetSeq('sz_bastbl_cust','id1');
end;

procedure Tfrmsz_bascust.SpeedButton3Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  table1.append;
end;

procedure Tfrmsz_bascust.SpeedButton4Click(Sender: TObject);
begin
  if application.messagebox('要刪除此記錄嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
  begin
    table1.delete;
    with query1 do begin
      close;
      params.clear;
      //params.createparam(ftinteger,'x1',ptinput);
      commandtext:='exec sp_sz_emeasn '+frmlibrary.table1.fieldbyname('id').asstring;
      //params[0].asinteger:=frmlibrary.table1.fieldbyname('id').value;
      open;
      with frmlibrary.Table1 do begin
        edit;
        fieldbyname('emeas_n').value:=query1.fieldbyname('emeas_n').value;
        post;
      end;
    end;
  end;
end;

procedure Tfrmsz_bascust.Table1BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet,2);
end;

procedure Tfrmsz_bascust.FormShow(Sender: TObject);
begin
  with table1 do begin
    close;
    params.clear;
    //params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from sz_bastbl_cust where id='+frmlibrary.table1.fieldbyname('id').asstring;
    //params[0].asinteger:=frmlibrary.Table1.fieldbyname('id').value;
    open;
  end;
  speedbutton3.Enabled:=not frmlibrary.DBEdit2.ReadOnly;
  speedbutton4.Enabled:=not frmlibrary.DBEdit2.ReadOnly;
  cxcust.Options.Editing:=not frmlibrary.DBEdit2.ReadOnly;
  cxemeas.Options.Editing:=not frmlibrary.DBEdit2.ReadOnly;
  cxuom.Options.Editing:=not frmlibrary.DBEdit2.ReadOnly;
  cxtolerence.Options.Editing:=not frmlibrary.DBEdit2.ReadOnly;
end;

end.
