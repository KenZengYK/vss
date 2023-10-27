unit CmpGAINotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxMemo, ppDB, ppDBPipe, ppParameter, ppBands, ppClass, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DBClient, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, Mask, rxToolEdit, ppViewr;

type
  Tfrmcmpgainotepad = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1seq: TcxGridDBColumn;
    cxGrid1tplant: TcxGridDBColumn;
    cxGrid1tshop: TcxGridDBColumn;
    cxGrid1pline: TcxGridDBColumn;
    cxGrid1j_no: TcxGridDBColumn;
    cxGrid1qn_no: TcxGridDBColumn;
    cxGrid1cstyle: TcxGridDBColumn;
    cxGrid1acol: TcxGridDBColumn;
    cxGrid1dt1: TcxGridDBColumn;
    cxGrid1cfwcrq: TcxGridDBColumn;
    cxGrid1muser: TcxGridDBColumn;
    cxGrid1yy_desc: TcxGridDBColumn;
    cxGrid1oth: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel18: TppLabel;
    ppLine27: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine30: TppLine;
    ppDetailBand1: TppDetailBand;
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
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppDBMemo2: TppDBMemo;
    ppLine29: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ttlseq001: TppLabel;
    ttlkh001: TppLabel;
    ttluser001: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine23: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine24: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine25: TppLine;
    ppLine28: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine26: TppLine;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    Panel2: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    ppLabel23: TppLabel;
    dt001: TppLabel;
    dt002: TppLabel;
    ppLabel25: TppLabel;
    yy001: TppMemo;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    Query4: TClientDataSet;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ttlyy001: TppLabel;
    Label3: TLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel31: TppLabel;
    ppDBText11: TppDBText;
    ppShape2: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1seqCompareRowValuesForCellMerging(Sender: TcxGridColumn;
      ARow1: TcxGridDataRow; AProperties1: TcxCustomEditProperties;
      const AValue1: Variant; ARow2: TcxGridDataRow;
      AProperties2: TcxCustomEditProperties; const AValue2: Variant;
      var AAreEqual: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcmpgainotepad: Tfrmcmpgainotepad;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmcmpgainotepad.BitBtn3Click(Sender: TObject);
begin
  //850 GAI 達標指針 - Cmpl action log 已完成行動誌
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tmp_gaimarks_sp where tm=:x1';
    if cxgrid1dbtableview1.DataController.Filter.FilterText>'' then
    commandtext:=commandtext+' and '+cxgrid1dbtableview1.DataController.Filter.FilterText;
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('tplant').isnull then begin
      dt001.caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
      dt002.caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
      if label3.caption='850' then
        pplabel1.caption:='850 GAI below index - Event Completed 已完成事項'
      else if label3.caption='915' then
        pplabel1.caption:='915 GAI below index - Event Completed 已完成事項';
      ppReport1.print;
    end;
  end;
end;

procedure Tfrmcmpgainotepad.BitBtn4Click(Sender: TObject);
var
  tm:tdatetime;
  s1,s2:string;
  strupd:string;
  s0:widestring;
begin
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    screen.cursor:=crSQLWait;
    try
      tm:=now;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        if label3.caption='850' then
          commandtext:='execute procedure sp_swpm_gaimarks_sp_cmp(:x1,:x2,:x3)'
        else if label3.caption='915' then
          commandtext:='execute procedure sp_swpm_915gaimarks_cmp(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dateedit1.date;
        params[2].asdate:=dateedit2.date;
        execute;
      end;
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tmp_gaimarks_sp where tm=:x1';
        params[0].asdatetime:=tm;
        open;
        first;
        while not eof do begin
          s1:=fieldbyname('yy_desc').value;
          s2:=fieldbyname('yy_desc_e').value;
          s0:=s1+char(10)+s2;

          strupd:='update tmp_gaimarks_sp set yy_desc1='''+s0+''' ';
          strupd:=strupd+'where tm='''+formatdatetime('YYYY/MM/DD HHNNSS.ZZZZ',tm)+''' ';
          strupd:=strupd+'and pline='''+query2.fieldbyname('pline').value+''' ';
          strupd:=strupd+'and seq='+query2.fieldbyname('seq').asstring+' ';
          strupd:=strupd+'and dt1='''+formatdatetime('YYYY/MM/DD',query2.fieldbyname('dt1').value)+'''';
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
          next;
        end;
      end;
      }
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tmp_gaimarks_sp where tm=:x1';// order by tplant,tshop,pline,seq,dt1';
        params[0].asdatetime:=tm;
        open;
      end;
    finally
      screen.cursor:=crDefault;
    end;
  end;
end;

procedure Tfrmcmpgainotepad.cxGrid1seqCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1seq.Index] = ARow2.Values[cxGrid1seq.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrmcmpgainotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcmpgainotepad:=nil;
end;

procedure Tfrmcmpgainotepad.ppDetailBand1BeforePrint(Sender: TObject);
begin
  yy001.lines.clear;
  //yy001.lines.add(query3.fieldbyname('yy_desc').value);
  //yy001.lines.add(query3.fieldbyname('yy_desc_e').value);
  if query3.fieldbyname('yy_desc_cde01').value='0' then begin
    yy001.lines.add(query3.fieldbyname('yy_desc').value);
    yy001.lines.add(query3.fieldbyname('yy_desc_e').value);
  end else begin
    yy001.lines.add(query3.fieldbyname('yy_desc_cde').value);
  end;
  if (query3.fieldbyname('ws_seq').value mod 2 = 0) then
    ppshape2.visible:=true
  else ppshape2.visible:=false;
end;

procedure Tfrmcmpgainotepad.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcmpgainotepad.ppSummaryBand1BeforePrint(Sender: TObject);
var
  tseq,tkh,tuser,tyy:integer;
begin
  tseq:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct tplant,tshop,pline,seq from tmp_gaimarks_sp where tm=:x1';
    if cxgrid1dbtableview1.DataController.Filter.FilterText>'' then
    commandtext:=commandtext+' and '+cxgrid1dbtableview1.DataController.Filter.FilterText;
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      tseq:=tseq+1;
      application.processmessages;
      next;
    end;
  end;
  ttlseq001.caption:=inttostr(tseq);

  tkh:=0; tuser:=0; tyy:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as x1,count(distinct muser) as x2,count(distinct yy_desc) as x3 from tmp_gaimarks_sp where tm=:x1';
    if cxgrid1dbtableview1.DataController.Filter.FilterText>'' then
    commandtext:=commandtext+' and '+cxgrid1dbtableview1.DataController.Filter.FilterText;
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then tkh:=fieldbyname('x1').value;
    if not fieldbyname('x2').isnull then tuser:=fieldbyname('x2').value;
    if not fieldbyname('x3').isnull then tyy:=fieldbyname('x3').value;
  end;
  ttlkh001.caption:=inttostr(tkh);
  ttluser001.caption:=inttostr(tuser);
  ttlyy001.caption:=inttostr(tyy)+' reasons';
end;

procedure Tfrmcmpgainotepad.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('dt1') as tdatefield).displayformat:='mm/dd';
  (query1.fieldbyname('cfwcrq') as tdatefield).displayformat:='mm/dd';
end;

end.
