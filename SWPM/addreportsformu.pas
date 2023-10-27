unit addreportsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils;

type
  Tfrmaddreports = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddreports: Tfrmaddreports;

implementation

uses mainformu, analysisformu, leff_wsformu, leff_custformu, onhold_wsformu,
  prod_wsformu, prod_ftyformu, prodc_wsformu, output_sectformu, output_smvformu,
  output_ttlformu, dailyoutputformu, analysis_wmformu, sewerwkhrsformu;

{$R *.dfm}

procedure Tfrmaddreports.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmaddreports:=nil;
end;

procedure Tfrmaddreports.BitBtn1Click(Sender: TObject);
begin
  if frmleff_ws=nil then frmleff_ws:=tfrmleff_ws.Create(nil);
  frmleff_ws.ComboBox1.Text:='';
  frmleff_ws.DateEdit1.Date:=date;
  frmleff_ws.DateEdit2.Date:=date;
  frmleff_ws.Show;
end;

procedure Tfrmaddreports.BitBtn2Click(Sender: TObject);
begin
  if frmleff_cust=nil then frmleff_cust:=tfrmleff_cust.Create(nil);
  frmleff_cust.ComboBox1.Text:='';
  frmleff_cust.DateEdit1.Date:=date;
  frmleff_cust.DateEdit2.Date:=date;
  frmleff_cust.Show;
end;

procedure Tfrmaddreports.BitBtn3Click(Sender: TObject);
begin
  if frmonhold_ws=nil then frmonhold_ws:=tfrmonhold_ws.Create(nil);
  frmonhold_ws.ComboBox1.Text:='';
  frmonhold_ws.DateEdit1.Date:=date;
  frmonhold_ws.DateEdit2.Date:=date;
  frmonhold_ws.Show;
end;

procedure Tfrmaddreports.BitBtn4Click(Sender: TObject);
begin
  if frmprod_fty=nil then frmprod_fty:=tfrmprod_fty.Create(nil);
  frmprod_fty.ComboBox1.Text:='';
  frmprod_fty.SpinEdit1.Value:=yearof(date);
  frmprod_fty.SpinEdit2.Value:=monthof(date);
  frmprod_fty.SpinEdit3.Value:=yearof(date);
  frmprod_fty.SpinEdit4.Value:=monthof(date);
  frmprod_fty.Show;
end;

procedure Tfrmaddreports.BitBtn5Click(Sender: TObject);
begin
  if frmprodc_ws=nil then frmprodc_ws:=tfrmprodc_ws.Create(nil);
  frmprodc_ws.ComboBox1.Text:='';
  frmprodc_ws.SpinEdit1.Value:=yearof(date);
  frmprodc_ws.SpinEdit2.Value:=monthof(date);
  frmprodc_ws.SpinEdit3.Value:=yearof(date);
  frmprodc_ws.SpinEdit4.Value:=monthof(date);
  frmprodc_ws.Show;
end;

procedure Tfrmaddreports.BitBtn6Click(Sender: TObject);
begin
  if frmprod_ws=nil then frmprod_ws:=tfrmprod_ws.Create(nil);
  frmprod_ws.ComboBox1.Text:='';
  frmprod_ws.DateEdit1.Date:=date;
  frmprod_ws.DateEdit2.Date:=date;
  frmprod_ws.Show;
end;

procedure Tfrmaddreports.BitBtn7Click(Sender: TObject);
begin
  if frmoutput_sect=nil then frmoutput_sect:=tfrmoutput_sect.Create(nil);
  frmoutput_sect.ComboBox1.Text:='';
  frmoutput_sect.SpinEdit1.Value:=yearof(date);
  frmoutput_sect.Show;
end;

procedure Tfrmaddreports.BitBtn8Click(Sender: TObject);
begin
  if frmoutput_smv=nil then frmoutput_smv:=tfrmoutput_smv.Create(nil);
  frmoutput_smv.ComboBox1.Text:='';
  frmoutput_smv.SpinEdit1.Value:=yearof(date);
  frmoutput_smv.Show;
end;

procedure Tfrmaddreports.BitBtn9Click(Sender: TObject);
begin
  if frmoutput_ttl=nil then frmoutput_ttl:=tfrmoutput_ttl.Create(nil);
  frmoutput_ttl.ComboBox1.Text:='';
  frmoutput_ttl.SpinEdit1.Value:=yearof(date);
  frmoutput_ttl.SpinEdit2.Value:=yearof(date);
  frmoutput_ttl.Show;
end;

procedure Tfrmaddreports.BitBtn10Click(Sender: TObject);
begin
  if frmdailyoutput=nil then frmdailyoutput:=tfrmdailyoutput.create(nil);
  frmdailyoutput.show;
end;

procedure Tfrmaddreports.BitBtn12Click(Sender: TObject);
begin
  if frmanalysis_wm=nil then frmanalysis_wm:=tfrmanalysis_wm.create(nil);
  frmanalysis_wm.show;
end;

procedure Tfrmaddreports.BitBtn11Click(Sender: TObject);
var
  y,m,d:word;
begin
  screen.Cursor:=crSQLWait;
  try
  decodedate(date,y,m,d);
  if frmsewerwkhrs=nil then frmsewerwkhrs:=tfrmsewerwkhrs.Create(nil);
  frmsewerwkhrs.ComboBox1.text:='SL';
  frmsewerwkhrs.DateEdit1.date:=encodedate(y,m,1);
  frmsewerwkhrs.DateEdit2.date:=date-2;
  frmsewerwkhrs.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
