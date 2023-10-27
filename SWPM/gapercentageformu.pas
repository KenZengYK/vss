unit gapercentageformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppViewr, ppStrtch, ppSubRpt, ppParameter;

type
  Tfrmgapercentage = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lbl001: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    tittle01: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Label7: TLabel;
    ComboBox4: TComboBox;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    dt001: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query4: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppLabel16: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    lbl002: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel18: TppLabel;
    ppLabel27: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    lbl003: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    rk001: TppLabel;
    rk002: TppLabel;
    rk101: TppLabel;
    rk102: TppLabel;
    title001: TppLabel;
    ppReport2: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel37: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    dt002: TppLabel;
    title002: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape6: TppShape;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ps01: TppShape;
    chk1: TCheckBox;
    rk301: TppLabel;
    rk302: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel38: TppLabel;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppHeaderBand5: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ps02: TppShape;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel42: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppLabel49: TppLabel;
    ppShape5: TppShape;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ps03: TppShape;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    subtitle001: TppLabel;
    ppLabel39: TppLabel;
    ppDBText34: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel68: TppLabel;
    ppLabel75: TppLabel;
    ppDBText37: TppDBText;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText38: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDBText39: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    chk2: TCheckBox;
    BitBtn3: TBitBtn;
    Label8: TLabel;
    Edit2: TEdit;
    chk3: TCheckBox;
    subtitle002: TppLabel;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppShape7: TppShape;
    ppLabel9: TppLabel;
    ppLabel21: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    lbl004: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel107: TppLabel;
    Query5: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    xh1: TRadioButton;
    xh2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgapercentage: Tfrmgapercentage;

implementation

uses mainformu, analysisformu, lineeff_summaryformu;

{$R *.dfm}

procedure Tfrmgapercentage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmlineeff_summary<>nil then frmlineeff_summary:=nil;
  action:=cafree;
  frmgapercentage:=nil;
end;

procedure Tfrmgapercentage.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmgapercentage.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  if ((combobox1.text='') and (combobox2.text='') and (combobox3.text='') and (edit1.text=''))
  or (chk1.Checked) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      commandtext:='execute procedure sp_upd_tblgapercent_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      params[3].asstring:=combobox1.text;
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      params[6].asstring:=edit1.text;
      params[7].asstring:=combobox4.text;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_upd_gapercent_fty(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust=''- -'' and flag60<>''B+K+U'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust=''- -'' and flag60=''B+K+U'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust<>''- -'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if combobox1.text>'' then begin
          title002.Caption:='- Customer dependent & Factory dependent ';
          subtitle001.Caption:='A). Customer dependent & Factory dependent ';
        end else begin
          title002.Caption:='- Customer dependent & Factory independent ';
          subtitle001.Caption:='A). Customer dependent & Factory independent ';
        end;
        dt002.Caption:='Time Period from: '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'   to: '+formatdatetime('yyyy-MM-dd',dateedit2.date);
        ppReport2.Print;
      end;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      if chk2.Checked=false then begin
        params.createparam(ftstring,'x9',ptinput);
        if chk3.Checked then
        params.createparam(ftboolean,'x10',ptinput);
      end;
      if chk2.checked=true then
        commandtext:='execute procedure sp_upd_tblgapercent_0(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)'
      //else commandtext:='execute procedure sp_upd_tblgapercent(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      else begin
        if chk3.Checked then begin
          if xh1.Checked then commandtext:='execute procedure sp_upd_tblgapercent_new_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)'
          else if xh2.Checked then commandtext:='execute procedure sp_upd_tblgapercent_new_2(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)';
        end else begin
          if xh1.Checked then commandtext:='execute procedure sp_upd_tblgapercent_new_10(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)'
          else if xh2.Checked then commandtext:='execute procedure sp_upd_tblgapercent_new_20(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
        end;
      end;
      params[0].asdatetime:=tm;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      params[3].asstring:=combobox1.text;
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      params[6].asstring:=edit1.text;
      params[7].asstring:=combobox4.text;
      if chk2.Checked=false then begin
        params[8].asstring:=edit2.text;
        if chk3.Checked then
        params[9].Asboolean:=true;
      end;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_upd_gapercent(:x1)';
      params[0].asdatetime:=tm;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and (pline>=''1'' and pline<=''99'') order by cust,flag60,tplant desc,tshop';
      params[0].asdatetime:=tm;
      open;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop not in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and tplant>''9'' and (pline>=''1'' and pline<=''99'') order by cust,flag60,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop not in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and (tplant>=''1'' and tplant<=''9'')';
      params[0].asdatetime:=tm;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop>'''' and pline>''T'' order by cust,flag60,tplant desc,tshop,pline';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        dt001.Caption:='Time Period from: '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'   to: '+formatdatetime('yyyy-MM-dd',dateedit2.date);
        if xh1.Checked then dt001.Caption:=dt001.Caption+'    [Calculated on QN GAI]'
        else if xh2.Checked then dt001.Caption:=dt001.Caption+'    [Based on Daily GAI]';
        if chk2.checked then begin
          if edit1.text>'' then begin
            if edit2.text>'' then begin
              title001.Caption:='-  Season & Range dependent ('+edit2.text+')';
              ppLabel1.Caption:='Customer ';
              ppLabel17.Caption:='Customer ';
              ppLabel18.Caption:='Customer ';
              ppLabel9.Caption:='Customer ';
              //subtitle002.Caption:='Season & Range dependent : -   ';
            end else begin
              if length(edit1.text)<=4 then begin
                title001.Caption:='-  Customer dependent';
                ppLabel1.Caption:='Customer ';
                ppLabel17.Caption:='Customer ';
                ppLabel18.Caption:='Customer ';
                ppLabel9.Caption:='Customer ';
                //subtitle002.Caption:='Customer dependent : -   ';
              end else begin
                title001.Caption:='-  Project dependent';
                ppLabel1.Caption:='Project ';
                ppLabel17.Caption:='Project ';
                ppLabel18.Caption:='Project ';
                ppLabel9.Caption:='Project ';
                //subtitle002.Caption:='Project dependent : -   ';
              end;
            end;
          end else title001.Caption:='-  Customer / Product independent';
        end else begin
          if edit1.text>'' then begin
            if edit2.text>'' then begin
              title001.Caption:='-  Season & Range dependent ('+edit2.text+')';
              ppLabel1.Caption:='Customer ';
              ppLabel17.Caption:='Customer ';
              ppLabel18.Caption:='Customer ';
              ppLabel9.Caption:='Customer ';
              //subtitle002.Caption:='Season & Range dependent : -   ';
            end else begin
              if length(edit1.text)<=4 then begin
                title001.Caption:='-  Customer dependent';
                ppLabel1.Caption:='Customer ';
                ppLabel17.Caption:='Customer ';
                ppLabel18.Caption:='Customer ';
                ppLabel9.Caption:='Customer ';
                //subtitle002.Caption:='Customer dependent : -   ';
              end else begin
                title001.Caption:='-  Project dependent';
                ppLabel1.Caption:='Project ';
                ppLabel17.Caption:='Project ';
                ppLabel18.Caption:='Project ';
                ppLabel9.Caption:='Project ';
                //subtitle002.Caption:='Project dependent : -   ';
              end;
            end;
          end else title001.Caption:='-  Customer independent';
        end;
        ppReport1.Print;
      end;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmgapercentage.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=1';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      combobox3.Items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmgapercentage.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('aqty').value>90.00 then begin
    ppdbtext3.Font.Color:=clGreen;
    ppdbtext4.Font.Color:=clGreen;
    ppdbtext5.Font.Color:=clGreen;
    rk001.Font.color:=clGreen;
    ppdbtext3.Font.Style:=[fsBold];
    ppdbtext4.Font.Style:=[fsBold];
    ppdbtext5.Font.Style:=[fsBold];
    rk001.Font.Style:=[fsBold];
  end else if query1.fieldbyname('aqty').value<75.00 then begin
    ppdbtext3.Font.Color:=clRed;
    ppdbtext4.Font.Color:=clRed;
    ppdbtext5.Font.Color:=clRed;
    rk001.Font.Color:=clRed;
    ppdbtext3.Font.Style:=[];
    ppdbtext4.Font.Style:=[];
    ppdbtext5.Font.Style:=[];
    rk001.Font.Style:=[];
  end else begin
    ppdbtext3.Font.Color:=clBlack;
    ppdbtext4.Font.Color:=clBlack;
    ppdbtext5.Font.Color:=clBlack;
    rk001.Font.Color:=clBlack;
    ppdbtext3.Font.Style:=[];
    ppdbtext4.Font.Style:=[];
    ppdbtext5.Font.Style:=[];
    rk001.Font.Style:=[];
  end;
  if query1.fieldbyname('diff').value>90.00 then begin
    ppdbtext3.Font.Color:=clGreen;
    ppdbtext4.Font.Color:=clGreen;
    ppdbtext6.Font.Color:=clGreen;
    rk002.Font.Color:=clGreen;
    ppdbtext3.Font.Style:=[fsBold];
    ppdbtext4.Font.Style:=[fsBold];
    ppdbtext6.Font.Style:=[fsBold];
    rk002.Font.Style:=[fsBold];
  end else if query1.fieldbyname('diff').value<75.00 then begin
    ppdbtext6.Font.Color:=clRed;
    rk002.Font.Color:=clRed;
    ppdbtext6.Font.Style:=[];
    rk002.Font.Style:=[];
  end else begin
    ppdbtext6.Font.Color:=clBlack;
    rk002.Font.Color:=clBlack;
    ppdbtext6.Font.Style:=[];
    rk002.Font.Style:=[];
  end;
  
  if query1.fieldbyname('rk1').value<>0 then rk001.Caption:='('+query1.fieldbyname('rk1').asstring+')'
  else rk001.Caption:='';
  if query1.fieldbyname('rk2').value<>0 then rk002.Caption:='('+query1.fieldbyname('rk2').asstring+')'
  else rk002.Caption:='';
end;

procedure Tfrmgapercentage.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query3.fieldbyname('aqty').value>90.00 then begin
    ppdbtext10.Font.Color:=clGreen;
    ppdbtext12.Font.Color:=clGreen;
    rk101.Font.Color:=clGreen;
    ppdbtext10.Font.Style:=[fsBold];
    ppdbtext12.Font.Style:=[fsBold];
    rk101.Font.Style:=[fsBold];
  end else if query3.fieldbyname('aqty').value<75.00 then begin
    ppdbtext10.Font.Color:=clRed;
    ppdbtext12.Font.Color:=clRed;
    rk101.Font.Color:=clRed;
    ppdbtext10.Font.Style:=[];
    ppdbtext12.Font.Style:=[];
    rk101.Font.Style:=[];
  end else begin
    ppdbtext10.Font.Color:=clBlack;
    ppdbtext12.Font.Color:=clBlack;
    rk101.Font.Color:=clBlack;
    ppdbtext10.Font.Style:=[];
    ppdbtext12.Font.Style:=[];
    rk101.Font.Style:=[];
  end;
  if query3.fieldbyname('diff').value>90.00 then begin
    ppdbtext10.Font.Color:=clGreen;
    ppdbtext13.Font.Color:=clGreen;
    rk102.Font.Color:=clGreen;
    ppdbtext10.Font.Style:=[fsBold];
    ppdbtext13.Font.Style:=[fsBold];
    rk102.Font.Style:=[fsBold];
  end else if query3.fieldbyname('diff').value<75.00 then begin
    ppdbtext13.Font.Color:=clRed;
    rk102.Font.Color:=clRed;
    ppdbtext13.Font.Style:=[];
    rk102.Font.Style:=[];
  end else begin
    ppdbtext13.Font.Color:=clBlack;
    rk102.Font.Color:=clBlack;
    ppdbtext13.Font.Style:=[];
    rk102.Font.Style:=[];
  end;
  if query3.fieldbyname('rk1').value<>0 then rk101.Caption:='('+query3.fieldbyname('rk1').asstring+')'
  else rk101.Caption:='';
  if query3.fieldbyname('rk2').value<>0 then rk102.Caption:='('+query3.fieldbyname('rk2').asstring+')'
  else rk102.Caption:='';
end;

procedure Tfrmgapercentage.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('aqty').value>90.00 then begin
    ppdbtext16.Font.Color:=clGreen;
    ppdbtext16.Font.Style:=[fsBold];
  end else if query4.fieldbyname('aqty').value<75.00 then begin
    ppdbtext16.Font.Color:=clRed;
    ppdbtext16.Font.Style:=[];
  end else begin
    ppdbtext16.Font.Color:=clBlack;
    ppdbtext16.Font.Style:=[];
  end;
  if query4.fieldbyname('diff').value>90.00 then begin
    ppdbtext17.Font.Color:=clGreen;
    ppdbtext17.Font.Style:=[fsBold];
  end else if query4.fieldbyname('diff').value<75.00 then begin
    ppdbtext17.Font.Color:=clRed;
    ppdbtext17.Font.Style:=[];
  end else begin
    ppdbtext17.Font.Color:=clBlack;
    ppdbtext17.Font.Style:=[];
  end;
end;

procedure Tfrmgapercentage.ppDetailBand4BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('aqty').value>90.00 then begin
    ppdbtext23.Font.Color:=clGreen;
    ppdbtext23.Font.Style:=[fsBold];
    rk301.Font.Color:=clGreen;
    rk301.Font.Style:=[fsBold];
  end else if query1.fieldbyname('aqty').value<75.00 then begin
    ppdbtext23.Font.Color:=clRed;
    ppdbtext23.Font.Style:=[];
    rk301.Font.Color:=clRed;
    rk301.Font.Style:=[];
  end else begin
    ppdbtext23.Font.Color:=clBlack;
    ppdbtext23.Font.Style:=[];
    rk301.Font.Color:=clBlack;
    rk301.Font.Style:=[];
  end;
  if query1.fieldbyname('diff').value>90.00 then begin
    ppdbtext24.Font.Color:=clGreen;
    ppdbtext24.Font.Style:=[fsBold];
    rk302.Font.Color:=clGreen;
    rk302.Font.Style:=[fsBold];
  end else if query1.fieldbyname('diff').value<75.00 then begin
    ppdbtext24.Font.Color:=clRed;
    ppdbtext24.Font.Style:=[];
    rk302.Font.Color:=clRed;
    rk302.Font.Style:=[];
  end else begin
    ppdbtext24.Font.Color:=clBlack;
    ppdbtext24.Font.Style:=[];
    rk302.Font.Color:=clBlack;
    rk302.Font.Style:=[];
  end;
  if query1.fieldbyname('tplant').value='KB' then ps01.Visible:=true
  else ps01.Visible:=false;

  if query1.fieldbyname('rk1').value<>0 then rk301.Caption:='('+query1.fieldbyname('rk1').asstring+')'
  else rk301.Caption:='';
  if query1.fieldbyname('rk2').value<>0 then rk302.Caption:='('+query1.fieldbyname('rk2').asstring+')'
  else rk302.Caption:='';
end;

procedure Tfrmgapercentage.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmgapercentage.ppDetailBand5BeforePrint(Sender: TObject);
begin
  if query3.fieldbyname('aqty').value>90.00 then begin
    ppdbtext26.Font.Color:=clGreen;
    ppdbtext26.Font.Style:=[fsBold];
  end else if query3.fieldbyname('aqty').value<75.00 then begin
    ppdbtext26.Font.Color:=clRed;
    ppdbtext26.Font.Style:=[];
  end else begin
    ppdbtext26.Font.Color:=clBlack;
    ppdbtext26.Font.Style:=[];
  end;
  if query3.fieldbyname('diff').value>90.00 then begin
    ppdbtext27.Font.Color:=clGreen;
    ppdbtext27.Font.Style:=[fsBold];
  end else if query3.fieldbyname('diff').value<75.00 then begin
    ppdbtext27.Font.Color:=clRed;
    ppdbtext27.Font.Style:=[];
  end else begin
    ppdbtext27.Font.Color:=clBlack;
    ppdbtext27.Font.Style:=[];
  end;
  if query3.fieldbyname('tplant').value='KB' then ps02.Visible:=true
  else ps02.Visible:=false;
end;

procedure Tfrmgapercentage.ppDetailBand6BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('aqty').value>90.00 then begin
    ppdbtext31.Font.Color:=clGreen;
    ppdbtext31.Font.Style:=[fsBold];
  end else if query4.fieldbyname('aqty').value<75.00 then begin
    ppdbtext31.Font.Color:=clRed;
    ppdbtext31.Font.Style:=[];
  end else begin
    ppdbtext31.Font.Color:=clBlack;
    ppdbtext31.Font.Style:=[];
  end;
  if query4.fieldbyname('diff').value>90.00 then begin
    ppdbtext32.Font.Color:=clGreen;
    ppdbtext32.Font.Style:=[fsBold];
  end else if query4.fieldbyname('diff').value<75.00 then begin
    ppdbtext32.Font.Color:=clRed;
    ppdbtext32.Font.Style:=[];
  end else begin
    ppdbtext32.Font.Color:=clBlack;
    ppdbtext32.Font.Style:=[];
  end;
  if query4.fieldbyname('tplant').value='KB' then ps03.Visible:=true
  else ps03.Visible:=false;
end;

procedure Tfrmgapercentage.ppDetailBand7BeforePrint(Sender: TObject);
begin
  if query5.fieldbyname('aqty').value>90.00 then begin
    ppdbtext48.Font.Color:=clGreen;
    ppdbtext48.Font.Style:=[fsBold];
  end else if query5.fieldbyname('aqty').value<75.00 then begin
    ppdbtext48.Font.Color:=clRed;
    ppdbtext48.Font.Style:=[];
  end else begin
    ppdbtext48.Font.Color:=clBlack;
    ppdbtext48.Font.Style:=[];
  end;
  if query5.fieldbyname('diff').value>90.00 then begin
    ppdbtext49.Font.Color:=clGreen;
    ppdbtext49.Font.Style:=[fsBold];
  end else if query5.fieldbyname('diff').value<75.00 then begin
    ppdbtext49.Font.Color:=clRed;
    ppdbtext49.Font.Style:=[];
  end else begin
    ppdbtext49.Font.Color:=clBlack;
    ppdbtext49.Font.Style:=[];
  end;
end;

procedure Tfrmgapercentage.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  screen.Cursor:=crSQLWait;
  try
  if ((combobox1.text='') and (combobox2.text='') and (combobox3.text='') and (edit1.text=''))
  or (chk1.Checked) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      commandtext:='execute procedure sp_upd_tblgapercent_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      params[3].asstring:=combobox1.text;
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      params[6].asstring:=edit1.text;
      params[7].asstring:=combobox4.text;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_upd_gapercent_fty(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust=''- -'' and flag60<>''B+K+U'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust=''- -'' and flag60=''B+K+U'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and (tshop is null) and (pline is null) and cust<>''- -'' order by flag60,cust,tplant desc';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if combobox1.text>'' then begin
          title002.Caption:='- Customer dependent & Factory dependent ';
          subtitle001.Caption:='A). Customer dependent & Factory dependent ';
        end else begin
          title002.Caption:='- Customer dependent & Factory independent ';
          subtitle001.Caption:='A). Customer dependent & Factory independent ';
        end;
        dt002.Caption:='Time Period from: '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'   to: '+formatdatetime('yyyy-MM-dd',dateedit2.date);
        ppReport2.Print;
      end;
    end;
  end else begin
    if frmlineeff_summary=nil then frmlineeff_summary:=tfrmlineeff_summary.Create(nil);
    with frmlineeff_summary.query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      if chk3.Checked then begin
        params.createparam(ftboolean,'x10',ptinput);
        commandtext:='execute procedure sp_upd_tblgapercent_new_eff(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)';
      end else commandtext:='execute procedure sp_upd_tblgapercent_new_eff_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      params[3].asstring:=combobox1.text;
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      params[6].asstring:=edit1.text;
      params[7].asstring:=combobox4.text;
      params[8].asstring:=edit2.text;
      params[8].asstring:=edit2.text;
      if chk3.Checked then
      params[9].Asboolean:=true;
      execute;
    end;
    with frmlineeff_summary.query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_upd_gapercent(:x1)';
      params[0].asdatetime:=tm;
      execute;
    end;
    with frmlineeff_summary.query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and (pline>=''1'' and pline<=''99'') order by cust,flag60,tplant desc,tshop';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmlineeff_summary.query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop not in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and tplant>''9'' and (pline>=''1'' and pline<=''99'') order by cust,flag60,tplant desc';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmlineeff_summary.query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop not in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and flag60>''9'' and (tplant>=''1'' and tplant<=''9'') order by cust,flag60';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmlineeff_summary.query6 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop not in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB1C'',''KB1D'',''KB1E'',''1H'') '
                  +'and (flag60>=''1'' and flag60<=''9'')';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmlineeff_summary.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_gapercent where tm=:x1 and tshop>'''' and pline>''T'' order by cust,flag60,tplant desc,tshop,pline';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmlineeff_summary.dt001.Caption:='Time Period from: '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'   to: '+formatdatetime('yyyy-MM-dd',dateedit2.date);
        if chk2.checked then begin
          if edit1.text>'' then begin
            if edit2.text>'' then begin
              frmlineeff_summary.title001.Caption:='-  Season & Range dependent ('+edit2.text+')';
              frmlineeff_summary.ppLabel1.Caption:='Customer ';
              frmlineeff_summary.ppLabel17.Caption:='Customer ';
              frmlineeff_summary.ppLabel18.Caption:='Customer ';
              frmlineeff_summary.ppLabel9.Caption:='Customer ';
              //frmlineeff_summary.subtitle002.Caption:='Season & Range dependent : -   ';
            end else begin
              if length(edit1.text)<=4 then begin
                frmlineeff_summary.title001.Caption:='-  Customer dependent';
                frmlineeff_summary.ppLabel1.Caption:='Customer ';
                frmlineeff_summary.ppLabel17.Caption:='Customer ';
                frmlineeff_summary.ppLabel18.Caption:='Customer ';
                frmlineeff_summary.ppLabel9.Caption:='Customer ';
                //frmlineeff_summary.subtitle002.Caption:='Customer dependent : -   ';
              end else begin
                frmlineeff_summary.title001.Caption:='-  Project dependent';
                frmlineeff_summary.ppLabel1.Caption:='Project ';
                frmlineeff_summary.ppLabel17.Caption:='Project ';
                frmlineeff_summary.ppLabel18.Caption:='Project ';
                frmlineeff_summary.ppLabel9.Caption:='Project ';
                //frmlineeff_summary.subtitle002.Caption:='Project dependent : -   ';
              end;
            end;
          end else frmlineeff_summary.title001.Caption:='-  Customer / Product independent';
        end else begin
          if edit1.text>'' then begin
            if edit2.text>'' then begin
              frmlineeff_summary.title001.Caption:='-  Season & Range dependent ('+edit2.text+')';
              frmlineeff_summary.ppLabel1.Caption:='Customer ';
              frmlineeff_summary.ppLabel17.Caption:='Customer ';
              frmlineeff_summary.ppLabel18.Caption:='Customer ';
              frmlineeff_summary.ppLabel9.Caption:='Customer ';
              //frmlineeff_summary.subtitle002.Caption:='Season & Range dependent : -   ';
            end else begin
              if length(edit1.text)<=4 then begin
                frmlineeff_summary.title001.Caption:='-  Customer dependent';
                frmlineeff_summary.ppLabel1.Caption:='Customer ';
                frmlineeff_summary.ppLabel17.Caption:='Customer ';
                frmlineeff_summary.ppLabel18.Caption:='Customer ';
                frmlineeff_summary.ppLabel9.Caption:='Customer ';
                //frmlineeff_summary.subtitle002.Caption:='Customer dependent : -   ';
              end else begin
                frmlineeff_summary.title001.Caption:='-  Project dependent';
                frmlineeff_summary.ppLabel1.Caption:='Project ';
                frmlineeff_summary.ppLabel17.Caption:='Project ';
                frmlineeff_summary.ppLabel18.Caption:='Project ';
                frmlineeff_summary.ppLabel9.Caption:='Project ';
                //frmlineeff_summary.subtitle002.Caption:='Project dependent : -   ';
              end;
            end;
          end else frmlineeff_summary.title001.Caption:='-  Customer independent';
        end;
        frmlineeff_summary.ppReport1.Print;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
