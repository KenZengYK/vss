unit newcap_ftyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppStrtch, ppRichTx, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmnewcap_fty = class(TForm)
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel33: TppLabel;
    yr001: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel46: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    x001: TppLabel;
    wk001: TppLabel;
    x002: TppLabel;
    wk002: TppLabel;
    title001: TppLabel;
    ppDetailBand3: TppDetailBand;
    pst02: TppShape;
    spt02: TppShape;
    spt01: TppShape;
    spa01: TppShape;
    sp101: TppShape;
    pst01: TppShape;
    ppDBText53: TppDBText;
    t001: TppDBText;
    t002: TppDBText;
    t003: TppDBText;
    t004: TppDBText;
    ax001: TppDBText;
    ax002: TppDBText;
    ax003: TppDBText;
    ax004: TppDBText;
    ax006: TppDBText;
    ax007: TppDBText;
    ax008: TppDBText;
    ax009: TppDBText;
    ppDBText74: TppDBText;
    ppLine33: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ax005: TppDBText;
    ax010: TppDBText;
    ppLine14: TppLine;
    ppDBText73: TppDBText;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine80: TppLine;
    ppLine89: TppLine;
    ppFooterBand1: TppFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppShape10: TppShape;
    w0001: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    tc01: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    at001: TppLabel;
    at002: TppLabel;
    at003: TppLabel;
    at004: TppLabel;
    at006: TppLabel;
    at007: TppLabel;
    at008: TppLabel;
    at009: TppLabel;
    ac01: TppLabel;
    ac02: TppLabel;
    at005: TppLabel;
    at010: TppLabel;
    ppLine79: TppLine;
    ppLine94: TppLine;
    ppGroupFooterBand7: TppGroupFooterBand;
    sp0001: TppShape;
    ppRichText1: TppRichText;
    ppRichText2: TppRichText;
    ttl001: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine38: TppLine;
    ppLine49: TppLine;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppLine61: TppLine;
    ppLine73: TppLine;
    xt001: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine32: TppLine;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppLine1: TppLine;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand13BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand17BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_fty: Tfrmnewcap_fty;

implementation

uses mainformu, newcapformu, newcap_custformu;

{$R *.dfm}

procedure Tfrmnewcap_fty.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_fty.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10) then begin
    pst01.Visible:=true;
    spt01.Visible:=true;
  end else begin
    pst01.Visible:=false;
    spt01.Visible:=false;
  end;
  {
  if (query4.fieldbyname('seq').value=17) or (query4.fieldbyname('seq').value=18)
  or (query4.fieldbyname('seq').value=19) or (query4.fieldbyname('seq').value=20) then
  sp101.Visible:=true else
  }sp101.Visible:=false;
  if query4.fieldbyname('wk').value>=98 then begin
    if query4.fieldbyname('seq').value=1 then spa01.Visible:=true
    else spa01.Visible:=false;
  end else spa01.Visible:=false;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from SP_CAP_OAFTY_SUM01(:x1,:x2)';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    params[1].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('seq').isnull then begin
      if (query4.fieldbyname('seq').value=fieldbyname('seq').value) or (query4.fieldbyname('seq').value=fieldbyname('seq1').value) then begin
        pst02.Visible:=true;
        spt02.Visible:=true;
      end else begin
        pst02.Visible:=false;
        spt02.Visible:=false;
      end;
    end else begin
        pst02.Visible:=false;
        spt02.Visible:=false;
    end;
  end;
          if query4.fieldbyname('seq').value>=17 then begin
            t001.DisplayFormat:='0.00'; t002.DisplayFormat:='0.00'; t003.DisplayFormat:='0.00'; t004.DisplayFormat:='0.00';
            ax001.DisplayFormat:='0.00'; ax002.DisplayFormat:='0.00'; ax003.DisplayFormat:='0.00'; ax004.DisplayFormat:='0.00';
            ax006.DisplayFormat:='0.00'; ax007.DisplayFormat:='0.00'; ax008.DisplayFormat:='0.00'; ax009.DisplayFormat:='0.00';
            ax005.DisplayFormat:='n.a.'; ax010.DisplayFormat:='n.a.'; 
            if query4.fieldbyname('tb').value=100 then t001.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t001.Font.color:=clGreen
            else t001.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t002.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t002.Font.color:=clGreen
            else t002.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t003.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t003.Font.color:=clGreen
            else t003.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t004.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t004.Font.color:=clGreen
            else t004.Font.Color:=clRed;
            if ax001.FieldValue=100 then ax001.Font.Color:=clBlue
            else if (ax001.FieldValue>90) and (ax001.FieldValue<=110) then ax001.Font.Color:=clGreen
            else ax001.Font.Color:=clRed;
            if ax002.FieldValue=100 then ax002.Font.Color:=clBlue
            else if (ax002.FieldValue>90) and (ax002.FieldValue<=110) then ax002.Font.Color:=clGreen
            else ax002.Font.Color:=clRed;
            if ax003.FieldValue=100 then ax003.Font.Color:=clBlue
            else if (ax003.FieldValue>90) and (ax003.FieldValue<=110) then ax003.Font.Color:=clGreen
            else ax003.Font.Color:=clRed;
            if ax004.FieldValue=100 then ax004.Font.Color:=clBlue
            else if (ax004.FieldValue>90) and (ax004.FieldValue<=110) then ax004.Font.Color:=clGreen
            else ax004.Font.Color:=clRed;
            if ax006.FieldValue=100 then ax006.Font.Color:=clBlue
            else if (ax006.FieldValue>90) and (ax006.FieldValue<=110) then ax006.Font.Color:=clGreen
            else ax006.Font.Color:=clRed;
            if ax007.FieldValue=100 then ax007.Font.Color:=clBlue
            else if (ax007.FieldValue>90) and (ax007.FieldValue<=110) then ax007.Font.Color:=clGreen
            else ax007.Font.Color:=clRed;
            if ax008.FieldValue=100 then ax008.Font.Color:=clBlue
            else if (ax008.FieldValue>90) and (ax008.FieldValue<=110) then ax008.Font.Color:=clGreen
            else ax008.Font.Color:=clRed;
            if ax009.FieldValue=100 then ax009.Font.Color:=clBlue
            else if (ax009.FieldValue>90) and (ax009.FieldValue<=110) then ax009.Font.Color:=clGreen
            else ax009.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value=16) then begin
            t001.DisplayFormat:='#0'; t002.DisplayFormat:='#0'; t003.DisplayFormat:='#0'; t004.DisplayFormat:='#0';
            ax001.DisplayFormat:='#0'; ax002.DisplayFormat:='#0'; ax003.DisplayFormat:='#0'; ax004.DisplayFormat:='#0';
            ax006.DisplayFormat:='#0'; ax007.DisplayFormat:='#0'; ax008.DisplayFormat:='#0'; ax009.DisplayFormat:='#0';
            ax005.DisplayFormat:='0.00'; ax010.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=0 then t001.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t001.Font.color:=clRed
            else t001.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t002.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t002.Font.color:=clRed
            else t002.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t003.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t003.Font.color:=clRed
            else t003.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t004.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t004.Font.color:=clRed
            else t004.Font.Color:=clRed;
            if ax001.FieldValue=0 then ax001.Font.Color:=clBlue
            else if (ax001.FieldValue>0) then ax001.Font.Color:=clRed
            else ax001.Font.Color:=clRed;
            if ax002.FieldValue=0 then ax002.Font.Color:=clBlue
            else if (ax002.FieldValue>0) then ax002.Font.Color:=clRed
            else ax002.Font.Color:=clRed;
            if ax003.FieldValue=0 then ax003.Font.Color:=clBlue
            else if (ax003.FieldValue>0) then ax003.Font.Color:=clRed
            else ax003.Font.Color:=clRed;
            if ax004.FieldValue=0 then ax004.Font.Color:=clBlue
            else if (ax004.FieldValue>0) then ax004.Font.Color:=clRed
            else ax004.Font.Color:=clRed;
            if ax006.FieldValue=0 then ax006.Font.Color:=clBlue
            else if (ax006.FieldValue>0) then ax006.Font.Color:=clRed
            else ax006.Font.Color:=clRed;
            if ax007.FieldValue=0 then ax007.Font.Color:=clBlue
            else if (ax007.FieldValue>0) then ax007.Font.Color:=clRed
            else ax007.Font.Color:=clRed;
            if ax008.FieldValue=0 then ax008.Font.Color:=clBlue
            else if (ax008.FieldValue>0) then ax008.Font.Color:=clRed
            else ax008.Font.Color:=clRed;
            if ax009.FieldValue=0 then ax009.Font.Color:=clBlue
            else if (ax009.FieldValue>0) then ax009.Font.Color:=clRed
            else ax009.Font.Color:=clRed;
          end else if query4.fieldbyname('seq').value=3 then begin
            t001.DisplayFormat:='0.00'; t002.DisplayFormat:='0.00'; t003.DisplayFormat:='0.00'; t004.DisplayFormat:='0.00';
            ax001.DisplayFormat:='0.00'; ax002.DisplayFormat:='0.00'; ax003.DisplayFormat:='0.00'; ax004.DisplayFormat:='0.00';
            ax006.DisplayFormat:='0.00'; ax007.DisplayFormat:='0.00'; ax008.DisplayFormat:='0.00'; ax009.DisplayFormat:='0.00';
            ax005.DisplayFormat:='n.a.'; ax010.DisplayFormat:='n.a.';
            t001.Font.Color:=clBlack; t002.Font.Color:=clBlack; t003.Font.Color:=clBlack; t004.Font.Color:=clBlack;
            ax001.Font.color:=clBlack; ax002.Font.Color:=clBlack; ax003.Font.Color:=clBlack; ax004.Font.Color:=clBlack;
            ax006.Font.color:=clBlack; ax007.Font.Color:=clBlack; ax008.Font.Color:=clBlack; ax009.Font.Color:=clBlack;
          end else begin
            t001.DisplayFormat:='#0'; t002.DisplayFormat:='#0'; t003.DisplayFormat:='#0'; t004.DisplayFormat:='#0';
            ax001.DisplayFormat:='#0'; ax002.DisplayFormat:='#0'; ax003.DisplayFormat:='#0'; ax004.DisplayFormat:='#0';
            ax006.DisplayFormat:='#0'; ax007.DisplayFormat:='#0'; ax008.DisplayFormat:='#0'; ax009.DisplayFormat:='#0';
            ax005.DisplayFormat:='0.00'; ax010.DisplayFormat:='0.00';
            t001.Font.Color:=clBlack; t002.Font.Color:=clBlack; t003.Font.Color:=clBlack; t004.Font.Color:=clBlack;
            ax001.Font.color:=clBlack; ax002.Font.Color:=clBlack; ax003.Font.Color:=clBlack; ax004.Font.Color:=clBlack;
            ax006.Font.color:=clBlack; ax007.Font.Color:=clBlack; ax008.Font.Color:=clBlack; ax009.Font.Color:=clBlack;
          end;
end;

procedure Tfrmnewcap_fty.ppGroupFooterBand13BeforePrint(Sender: TObject);
var
  dt:tdate;
begin
  if query4.FieldByName('seq').value<17 then ppGroupFooterBand13.Visible:=true
  else ppGroupFooterBand13.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=encodedate(2009,6,13)
  else dt:=date;
  xt001.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust:      # of Line:      # of work days:      # of sect hr/line/work day(normal day: 22     Saturday: 18)      # of style(initial:      flow/repeat:      ttl:    )  ';
end;

procedure Tfrmnewcap_fty.ppGroupFooterBand17BeforePrint(Sender: TObject);
begin
  if query4.FieldByName('seq').value<17 then ppline1.Visible:=false
  else ppline1.Visible:=true;
end;

end.
