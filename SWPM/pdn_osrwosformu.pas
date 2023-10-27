unit pdn_osrwosformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Mask,
  Buttons, DBClient, DateUtils, cxGridExportLink, Spin;

type
  Tfrmpdn_osrwos = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1EXDT: TcxGridDBColumn;
    cxGrid1DBTableView1AT3DT: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1ACOL: TcxGridDBColumn;
    cxGrid1DBTableView1RWO: TcxGridDBColumn;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdn_osrwos: Tfrmpdn_osrwos;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

procedure Tfrmpdn_osrwos.BitBtn1Click(Sender: TObject);
begin
  if (spinedit1.Value>0) and (spinedit2.Value>0) then begin
    with query1 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_cap_erprwo a where not exists (select rwo from tbl_pdn_rwo b where a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol)';
      if rb1.Checked then
      commandtext:=commandtext+' and f_year(exdt)='+inttostr(spinedit1.Value)+' and f_weekofyear(exdt)='+inttostr(spinedit2.Value)
      else if rb2.Checked then
      commandtext:=commandtext+' and f_year(at3dt)='+inttostr(spinedit1.Value)+' and f_weekofyear(at3dt)='+inttostr(spinedit2.Value);
      open;
    end;
  end;
end;

procedure Tfrmpdn_osrwos.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmpdn_osrwos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpdn_osrwos:=nil;
end;

procedure Tfrmpdn_osrwos.FormShow(Sender: TObject);
begin
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=weekoftheyear(date);
end;

end.
