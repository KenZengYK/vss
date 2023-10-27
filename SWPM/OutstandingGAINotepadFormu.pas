unit OutstandingGAINotepadFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, DBClient, cxMemo, cxGridExportLink,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport, ppCtrls,
  ppStrtch, ppMemo, ppBands, ppPrnabl, ppCache, ppParameter, ppVar, ppViewr;

type
  Tfrm_outstandinggainotepad = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    cxGrid1seq: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppReport1: TppReport;
    BitBtn3: TBitBtn;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ttlseq001: TppLabel;
    cxGrid1oth: TcxGridDBColumn;
    ppLabel18: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBMemo2: TppDBMemo;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel21: TppLabel;
    ppLine29: TppLine;
    ppLabel22: TppLabel;
    ppLine30: TppLine;
    ttlkh001: TppLabel;
    ttluser001: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
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
    Label1: TLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel23: TppLabel;
    ppLine33: TppLine;
    ppDBText11: TppDBText;
    ppShape2: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1seqCompareRowValuesForCellMerging(Sender: TcxGridColumn;
      ARow1: TcxGridDataRow; AProperties1: TcxCustomEditProperties;
      const AValue1: Variant; ARow2: TcxGridDataRow;
      AProperties2: TcxCustomEditProperties; const AValue2: Variant;
      var AAreEqual: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_outstandinggainotepad: Tfrm_outstandinggainotepad;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrm_outstandinggainotepad.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrm_outstandinggainotepad.BitBtn3Click(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tmp_gaimarks_sp where tm=:x1';
    if cxgrid1dbtableview1.DataController.Filter.FilterText>'' then
    commandtext:=commandtext+' and '+cxgrid1dbtableview1.DataController.Filter.FilterText;
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    //showmessage(query3.commandtext);
    if not fieldbyname('tplant').isnull then begin
      if label1.caption='850' then
      pplabel1.caption:='850 GAI below index - Event Incomplete 未完成事項'
      else if label1.caption='915' then
      pplabel1.caption:='915 GAI below index - Event Incomplete 未完成事項';
      ppReport1.print;
    end;
  end;
end;

procedure Tfrm_outstandinggainotepad.cxGrid1seqCompareRowValuesForCellMerging(
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

procedure Tfrm_outstandinggainotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frm_outstandinggainotepad:=nil;
end;

procedure Tfrm_outstandinggainotepad.FormShow(Sender: TObject);
var
  tm:tdatetime;
  s1,s2:string;
  strupd:string;
  s0:widestring;
begin
  screen.cursor:=crSQLWait;
  try
    tm:=now;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      if label1.caption='850' then
        commandtext:='execute procedure sp_swpm_gaimarks_sp(:x1)'
      else if label1.caption='915' then
        commandtext:='execute procedure sp_swpm_915gaimarks(:x1)';
      params[0].asdatetime:=tm;
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

procedure Tfrm_outstandinggainotepad.ppDetailBand1BeforePrint(Sender: TObject);
begin
  yy001.lines.clear;
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

procedure Tfrm_outstandinggainotepad.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrm_outstandinggainotepad.ppSummaryBand1BeforePrint(Sender: TObject);
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

procedure Tfrm_outstandinggainotepad.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('dt1') as tdatefield).displayformat:='mm/dd';
  (query1.fieldbyname('cfwcrq') as tdatefield).displayformat:='mm/dd';
end;

end.
