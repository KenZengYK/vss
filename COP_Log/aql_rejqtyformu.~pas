unit aql_rejqtyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, cxGridExportLink;

type
  Tfrmaql_rejqty = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Label4: TLabel;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1Project: TcxGridDBColumn;
    cxGrid1DBTableView1WO: TcxGridDBColumn;
    cxGrid1DBTableView1Style: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1RejQty: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaql_rejqty: Tfrmaql_rejqty;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmaql_rejqty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmaql_rejqty:=nil;
end;

procedure Tfrmaql_rejqty.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

procedure Tfrmaql_rejqty.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if label4.caption='AQL' then begin
    with query1 do begin
      close;
      params.Clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct projectno as "Project #",workorder as "WO #",cstyle as "Style #",color,sum(qty) as "Rej Qty" from v_aql_rejqty '
                  +'where fty='''+combobox1.text+''' and dt>=:x1 and dt<=:x2 group by projectno,workorder,cstyle,color';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
    end;
  end else if label4.caption='FAUDIT' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_aql_fullaudit_rej';
      execute;
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='insert into tbl_aql_fullaudit_rej(tm,projectno,workorder,cstyle,color,qty,rej_ratio) '
                  +'select current_timestamp,projectno,workorder,cstyle,color,qty,rej_ratio from v_aql_fullaudit_rej '
                  +'where fty='''+combobox1.text+''' and dt>=:x1 and dt<=:x2';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      commandtext:='select distinct projectno as "Project #",workorder as "WO #",cstyle as "Style #",color,sum(qty) as "Rej Qty" from tbl_aql_fullaudit_rej '
                  +'where rej_ratio>5.00 group by projectno,workorder,cstyle,color';
      open;
    end;
  end;
  if savedialog1.execute then begin
    exportgridtoexcel(savedialog1.filename,cxgrid1,false,true,false,'xls');
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
