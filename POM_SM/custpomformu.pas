unit custpomformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Buttons, DBCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, DBClient, StdCtrls, Mask, cxGridExportLink;

type
  Tfrmcustpom = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Query1: TClientDataSet;
    Table1: TClientDataSet;
    DataSource1: TDataSource;
    Table1c_id: TIntegerField;
    Table1cust: TStringField;
    Table1pod_cd: TStringField;
    Table1emeas: TStringField;
    Table1cde: TStringField;
    Table1cmeas: TStringField;
    Table1uom: TStringField;
    Table1tolerence: TStringField;
    Table1newdt: TDateTimeField;
    cxcust: TcxGridDBColumn;
    cxpod_cd: TcxGridDBColumn;
    cxemeas: TcxGridDBColumn;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure Table1NewRecord(DataSet: TDataSet);
    procedure Table1BeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcustpom: Tfrmcustpom;

implementation

uses mainu, loginu;

{$R *.dfm}

procedure Tfrmcustpom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcustpom:=nil;
end;

procedure Tfrmcustpom.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcustpom.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmcustpom.Table1NewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('id').value:=GetSeq('sz_cust_bastbl','c_id');
  DataSet.fieldbyname('newdt').value:=date;
end;

procedure Tfrmcustpom.Table1BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmcustpom.SpeedButton3Click(Sender: TObject);
begin
  table1.append;
  //dbedit9.setfocus;
end;

procedure Tfrmcustpom.SpeedButton4Click(Sender: TObject);
begin
    if application.messagebox('要刪除此記錄嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      table1.delete;
    end;
end;

procedure Tfrmcustpom.SpeedButton5Click(Sender: TObject);
begin
  try
    if savedialog1.Execute then
    ExportGridToExcel(savedialog1.FileName,cxGrid1,true,true,false,'xls');
  finally
    showmessage('Succeeded!');
  end;
end;

procedure Tfrmcustpom.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r5 from SZ_athtbl where usr='''+frmmain.combobox1.text+'''';//:usr';
    //params[0].asstring:=frmmain.combobox1.text;
    open;
    if fieldbyname('r5').value=true then begin
      speedbutton3.Enabled:=true;speedbutton4.Enabled:=true;
      dbedit2.readonly:=false;dbedit5.ReadOnly:=false;
      dbedit9.ReadOnly:=false;
      if uppercase(frmmain.combobox1.text)<>'ADMIN' then begin
        cxcust.Options.Editing:=false;
        cxpod_cd.Options.Editing:=false;
        cxemeas.Options.Editing:=false;
      end else begin
        cxcust.Options.Editing:=true;
        cxpod_cd.Options.Editing:=true;
        cxemeas.Options.Editing:=true;
      end;
    end else begin
      speedbutton3.Enabled:=false;speedbutton4.Enabled:=false;
      dbedit2.readonly:=true;dbedit5.ReadOnly:=true;
      dbedit9.ReadOnly:=true;
      cxcust.Options.Editing:=false;
      cxpod_cd.Options.Editing:=false;
      cxemeas.Options.Editing:=false;
    end;
  end;
  table1.close;
  table1.open;  
  dbedit9.setfocus;
end;

end.
