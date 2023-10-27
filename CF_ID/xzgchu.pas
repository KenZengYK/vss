unit xzgchu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons, GridsEh,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, ADODB;

type
  Tfrmxzgch = class(TForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    ComboBox1: TComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Query1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzgch: Tfrmxzgch;

implementation
uses mainu, eOrderFormu;
{$R *.dfm}

procedure Tfrmxzgch.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxzgch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxzgch:=nil;
end;

procedure Tfrmxzgch.Edit1Change(Sender: TObject);
begin
  if edit1.text<>'' then begin
    Query1.FindNearest([edit1.text]);
  end;
end;

procedure Tfrmxzgch.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh1.Fields[0].isnull then begin
    frmeOrder.Edit1.Text:=dbgrideh1.Fields[0].Value;
    close;
  end;
end;

procedure Tfrmxzgch.ComboBox1Change(Sender: TObject);
var
  fty:string;
begin
  fty:='ALL';
  if combobox1.text>'' then fty:=combobox1.text;
  with Query1 do begin
    close;
    Params.Clear;
    //commandtext:='select distinct prjno as gch from cut_fcjy3 where qr=1 and wc=0 order by prjno';
    commandtext:='select distinct a.prjno,b.gch from cut_lbjh1 a, cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.qr=1 and b.wc=0 and a.rq>=''2023-03-01'' '
                +'and charindex(''PL'',a.prjno)=0 and charindex(''PU'',a.prjno)=0 and charindex(''PP'',a.prjno)=0 and charindex(''TOP'',a.prjno)=0 and charindex(''TP'',a.prjno)=0';
    if fty<>'ALL' then begin
      //if fty='RX' then commandtext:=commandtext+' and charindex(''RX'',a.prjno)>0'
      //else if fty='CL' then commandtext:=commandtext+' and charindex(''CL'',a.prjno)>0'
      //else if fty='SL' then commandtext:=commandtext+' and charindex(''CL'',a.prjno)=0 and charindex(''RX'',a.prjno)=0';
      commandtext:=commandtext+' and a.fty='''+fty+'''';
    end;
    open;
  end;
end;

procedure Tfrmxzgch.FormShow(Sender: TObject);
begin
  combobox1.text:='ALL';
  combobox1change(self);
end;

end.
