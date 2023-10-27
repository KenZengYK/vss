unit onholdformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, Mask, rxToolEdit, ppDB, ppComm, ppRelatv,
  ppDBPipe, DB, DBClient, DateUtils, ppPrnabl, ppClass, ppCtrls, ppBands,
  ppCache, ppProd, ppReport, ppVar, ppViewr, ppParameter;

type
  Tfrmonhold = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    xh1: TRadioButton;
    xh2: TRadioButton;
    xh3: TRadioButton;
    rg1: TGroupBox;
    rg2: TGroupBox;
    rg3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    fty001: TppLabel;
    ws001: TppLabel;
    ppLabel4: TppLabel;
    dt001: TppLabel;
    ppLabel6: TppLabel;
    dt002: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel20: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    Label9: TLabel;
    ComboBox3: TComboBox;
    title001: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmonhold: Tfrmonhold;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmonhold.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmonhold:=nil;
end;

procedure Tfrmonhold.FormShow(Sender: TObject);
begin
  combobox1.text:='SL';
  combobox2.Text:='4B';
  xh1.Checked:=true;
  dateedit1.Date:=date;
  dateedit2.Date:=date;
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=weekof(date);
  spinedit3.Value:=yearof(date);
  spinedit4.Value:=weekof(date);
  spinedit5.Value:=yearof(date);
  spinedit6.Value:=monthof(date);
  spinedit7.Value:=yearof(date);
  spinedit8.Value:=monthof(date);
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where act=1';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmonhold.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    rg1.Enabled:=true;
    rg2.Enabled:=false;
    rg3.Enabled:=false;
  end;
end;

procedure Tfrmonhold.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    rg2.Enabled:=true;
    rg1.Enabled:=false;
    rg3.Enabled:=false;
  end;
end;

procedure Tfrmonhold.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    rg3.Enabled:=true;
    rg2.Enabled:=false;
    rg1.Enabled:=false;
  end;
end;

procedure Tfrmonhold.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      if combobox3.Text>'' then begin
        params.Createparam(ftstring,'x12',ptinput);
        commandtext:='execute procedure sp_onhold_cust(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12)';
      end else commandtext:='execute procedure sp_onhold(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      params[3].asdate:=dateedit1.date;
      params[4].asdate:=dateedit2.date;
      if xh2.Checked then begin
        params[5].asinteger:=spinedit1.Value;
        params[6].asinteger:=spinedit2.Value;
        params[7].asinteger:=spinedit3.Value;
        params[8].asinteger:=spinedit4.Value;
        params[9].asinteger:=0;
        params[10].asinteger:=0;
      end else if xh3.Checked then begin
        params[5].asinteger:=spinedit5.Value;
        params[6].asinteger:=0;
        params[7].asinteger:=spinedit7.Value;
        params[8].asinteger:=0;
        params[9].asinteger:=spinedit6.value;
        params[10].asinteger:=spinedit8.value;
      end else begin
        params[5].asinteger:=0;
        params[6].asinteger:=0;
        params[7].asinteger:=0;
        params[8].asinteger:=0;
        params[9].asinteger:=0;
        params[10].asinteger:=0;
      end;
      if combobox3.text>'' then params[11].asstring:=combobox3.text;
      execute;
    end;

    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tplant,tshop,line,yr,mm,dd,sum(csect) as csect,sum(lsect) as lsect,sum(a2) as a2,sum(b2) as b2,'
                  +'sum(c2) as c2,sum(d2) as d2,sum(e2) as e2,sum(f2) as f2,sum(g2) as g2,sum(h2) as h2 from tmp_onholdtime '
                  +'where tm=:x1 group by tplant,tshop,line,yr,mm,dd order by tplant,tshop,line,yr,mm,dd';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tplant').isnull then begin
        fty001.Caption:=fieldbyname('tplant').value;
        ws001.Caption:=combobox2.text;
        if xh1.Checked then begin
          dt001.Caption:=dateedit1.text;
          dt002.Caption:=dateedit2.Text;
        end else if xh2.Checked then begin
          dt001.Caption:=inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.value);
          dt002.Caption:=inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.value);
        end else if xh3.Checked then begin
          dt001.Caption:=inttostr(spinedit5.Value)+'-'+inttostr(spinedit6.value);
          dt002.Caption:=inttostr(spinedit7.Value)+'-'+inttostr(spinedit8.value);
        end;
        if combobox3.text>'' then title001.Caption:='- '+combobox3.text
        else title001.Caption:='';
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmonhold.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
