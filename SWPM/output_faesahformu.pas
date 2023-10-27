unit output_faesahformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBClient, cxGridExportLink, cxCurrencyEdit;

type
  Tfrmoutput_faesah = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    xh1: TRadioGroup;
    xh2: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    view_cust: TcxGridDBColumn;
    view_prod: TcxGridDBColumn;
    view_prjno: TcxGridDBColumn;
    view_wo: TcxGridDBColumn;
    view_ttlsah: TcxGridDBColumn;
    view_output: TcxGridDBColumn;
    view_sah: TcxGridDBColumn;
    Label3: TLabel;
    ComboBox1: TComboBox;
    view_cstyle: TcxGridDBColumn;
    view_psah: TcxGridDBColumn;
    view_fsah: TcxGridDBColumn;
    view_asah: TcxGridDBColumn;
    view_esah: TcxGridDBColumn;
    view_line: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoutput_faesah: Tfrmoutput_faesah;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmoutput_faesah.BitBtn1Click(Sender: TObject);
begin
  if xh1.itemindex=0 then begin
    if xh2.itemindex=0 then begin
      view_psah.visible:=true;
      view_fsah.visible:=true;
      view_asah.visible:=true;
      view_esah.visible:=true;
      view_line.visible:=false;
    end else begin
      view_psah.visible:=false;
      view_fsah.visible:=false;
      view_asah.visible:=false;
      view_esah.visible:=false;
      view_line.visible:=true;
    end;
  end else begin
    view_psah.visible:=false;
    view_fsah.visible:=false;
    view_asah.visible:=false;
    view_esah.visible:=false;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    if xh1.ItemIndex=0 then begin
      if xh2.ItemIndex=0 then begin
        commandtext:='select distinct cust,prod,'''' as cstyle,sum(fae_gsd*act_output) as ttlsah,sum(act_output) as output,sum(fae_gsd*act_output)/sum(act_output) as sah,'
                    +'sum(psah*act_output) as tpsah,sum(fsah*act_output) as tfsah,sum(asah*act_output) as tasah,sum(esah*act_output) as tesah '
                    +'from sp_gentmeff_customer(:x0,:x1,:x2) group by cust,prod';
      end else begin
        commandtext:='select distinct cust,prod,prjno,WO,line,cstyle,sum(fae_gsd*act_output) as ttlsah,sum(act_output) as output,sum(fae_gsd*act_output)/sum(act_output) as sah '
                    +'from sp_gentmeff_customer(:x0,:x1,:x2) group by cust,prod,prjno,wo,line,cstyle';
      end;
    end else begin
      if xh2.ItemIndex=0 then begin
        commandtext:='select distinct cust,prod,'''' as cstyle,sum(fae_gsd*act_output) as ttlsah,sum(act_output) as output,sum(fae_gsd*act_output)/sum(act_output) as sah '
                    +'from sp_gentmeff_customer_out(:x0,:x1,:x2) group by cust,prod';
      end else begin
        commandtext:='select distinct cust,prod,prjno,WO,line,cstyle,sum(fae_gsd*act_output) as ttlsah,sum(act_output) as output,sum(fae_gsd*act_output)/sum(act_output) as sah '
                    +'from sp_gentmeff_customer_out(:x0,:x1,:x2) group by cust,prod,prjno,wo,line,cstyle';
      end;
    end;
    params[0].asstring:=combobox1.text;//'SL';
    params[1].asdate:=dateedit1.Date;
    params[2].asdate:=dateedit2.Date;
    open;
  end;
end;

procedure Tfrmoutput_faesah.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmoutput_faesah.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoutput_faesah:=nil;
end;

procedure Tfrmoutput_faesah.FormShow(Sender: TObject);
var
  y,m,n:word;
begin
  decodedate(date,y,m,n);
  dateedit1.Date:=encodedate(y,m,1);
  dateedit2.Date:=date-2;
  if dateedit2.Date<dateedit1.Date then dateedit1.Date:=dateedit2.Date;
end;

procedure Tfrmoutput_faesah.Query1AfterOpen(DataSet: TDataSet);
begin
  if xh1.ItemIndex=0 then begin
    if xh2.ItemIndex=0 then begin
      view_prjno.Visible:=false;
      view_wo.Visible:=false;
    end else begin
      view_prjno.Visible:=true;
      view_wo.Visible:=true;
    end;
  end else begin
    if xh2.ItemIndex=0 then begin
      view_prjno.Visible:=false;
      view_wo.Visible:=false;
    end else begin
      view_prjno.Visible:=true;
      view_wo.Visible:=true;
    end;
  end;
end;

end.
