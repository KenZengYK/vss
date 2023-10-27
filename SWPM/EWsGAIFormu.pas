unit EWsGAIFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, StdCtrls, Mask, RzEdit, Buttons, DateUtils, rxToolEdit,
  DBClient, cxGridExportLink, cxCurrencyEdit, Menus;

type
  TfrmEWsGAI = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxView1: TcxGridDBBandedTableView;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1View1PLINE: TcxGridDBBandedColumn;
    cxGrid1View1CUST: TcxGridDBBandedColumn;
    cxGrid1View1PRJ: TcxGridDBBandedColumn;
    cxGrid1View1STYLE: TcxGridDBBandedColumn;
    cxGrid1View1LWO: TcxGridDBBandedColumn;
    cxGrid1View1D1_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D1_EQTY: TcxGridDBBandedColumn;
    D1_EQTY1: TcxGridDBBandedColumn;
    D1_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D2_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D2_EQTY: TcxGridDBBandedColumn;
    D2_EQTY1: TcxGridDBBandedColumn;
    D2_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D3_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D3_EQTY: TcxGridDBBandedColumn;
    D3_EQTY1: TcxGridDBBandedColumn;
    D3_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D4_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D4_EQTY: TcxGridDBBandedColumn;
    D4_EQTY1: TcxGridDBBandedColumn;
    D4_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D5_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D5_EQTY: TcxGridDBBandedColumn;
    D5_EQTY1: TcxGridDBBandedColumn;
    D5_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D6_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D6_EQTY: TcxGridDBBandedColumn;
    D6_EQTY1: TcxGridDBBandedColumn;
    D6_ACT: TcxGridDBBandedColumn;
    cxGrid1View1D7_ADJ: TcxGridDBBandedColumn;
    cxGrid1View1D7_EQTY: TcxGridDBBandedColumn;
    D7_EQTY1: TcxGridDBBandedColumn;
    D7_ACT: TcxGridDBBandedColumn;
    TTL_EQTY: TcxGridDBBandedColumn;
    TTL_ACT: TcxGridDBBandedColumn;
    Label4: TLabel;
    ComboBox2: TComboBox;
    DTEdit1: TDateEdit;
    DTEdit2: TDateEdit;
    SaveDialog1: TSaveDialog;
    prj_seq: TcxGridDBBandedColumn;
    SPSAH: TcxGridDBBandedColumn;
    ACT_QDIFF: TcxGridDBBandedColumn;
    ACT_SAH: TcxGridDBBandedColumn;
    cxACT_SDIFF: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TextStyle_G: TcxStyle;
    TextStyle_R: TcxStyle;
    BK_Style1: TcxStyle;
    BK_Style2: TcxStyle;
    cxStyle4: TcxStyle;
    pm1: TPopupMenu;
    MaintainEff1: TMenuItem;
    BitBtn5: TBitBtn;
    Maintainproductivity1: TMenuItem;
    cxD1_DP: TcxGridDBBandedColumn;
    cxD2_DP: TcxGridDBBandedColumn;
    cxD3_DP: TcxGridDBBandedColumn;
    cxD4_DP: TcxGridDBBandedColumn;
    cxD5_DP: TcxGridDBBandedColumn;
    cxD6_DP: TcxGridDBBandedColumn;
    cxD7_DP: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure DTEdit1Change(Sender: TObject);
    procedure DTEdit2Change(Sender: TObject);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxView1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure MaintainEff1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Maintainproductivity1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetCorrectDate(Const Fty: string; DT: TDateTime);
  end;

var
  frmEWsGAI: TfrmEWsGAI;
  tm:tdatetime;
  dt:string;

implementation

uses mainformu, worksheet, EWsGAI_DetailFormu, EWs_effFormu;

{$R *.dfm}

procedure TfrmEWsGAI.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  dt:=formatdatetime('MM/DD',now-1);
  tm:=now;
  try
    if ((dtedit1.date=0) or (dtedit2.date=0)) then showmessage('Must choose date range!')
    else if (dtedit1.date+6<>dtedit2.date) then showmessage('Must choose 7 days for a week!')
    else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftdatetime,'x6',ptinput);
        commandtext:='execute procedure sp_swpm_915proj_fty_new(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        params[2].asstring:='';
        params[3].asdate:=dtedit1.date;
        params[4].asdate:=dtedit2.date;
        params[5].asdatetime:=tm;
        execute;
      end;

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_e915_prj1 where tm=:x1';
        params[0].asdatetime:=tm;
        open;
        cxview1.bands[5].caption:=formatdatetime('MM/DD',fieldbyname('dt1').value);
        cxview1.bands[6].caption:=formatdatetime('MM/DD',fieldbyname('dt2').value);
        cxview1.bands[7].caption:=formatdatetime('MM/DD',fieldbyname('dt3').value);
        cxview1.bands[8].caption:=formatdatetime('MM/DD',fieldbyname('dt4').value);
        cxview1.bands[9].caption:=formatdatetime('MM/DD',fieldbyname('dt5').value);
        cxview1.bands[10].caption:=formatdatetime('MM/DD',fieldbyname('dt6').value);
        cxview1.bands[11].caption:=formatdatetime('MM/DD',fieldbyname('dt7').value);
        cxview1.bands[12].caption:='Def Sect Hr 預設節時 = '+formatfloat('#0',fieldbyname('sect1').value);//+chr(13)+'預設節時';
        cxview1.bands[13].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect2').value);
        cxview1.bands[14].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect3').value);
        cxview1.bands[15].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect4').value);
        cxview1.bands[16].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect5').value);
        cxview1.bands[17].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect6').value);
        cxview1.bands[18].caption:='Def Sect Hr = '+formatfloat('#0',fieldbyname('sect7').value);
      end;

      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_e915_prj2 where tm=:x1 order by fty,ws,prj_seq,pline';
        params[0].asdatetime:=tm;
        open;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmEWsGAI.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmEWsGAI.BitBtn3Click(Sender: TObject);
begin
  if query1.fieldbyname('prj_seq').value=1 then begin
    if frmewsgai_detail=nil then frmewsgai_detail:=tfrmewsgai_detail.create(nil);
    with frmewsgai_detail.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from tbl_e915_wkprj2 where tm=:x1 and ws=:x2';
      // order by e915_seq,fty,ws,pline,seq';
      params[0].asdatetime:=tm;
      params[1].asstring:=query1.fieldbyname('ws').value;
      open;
    end;
    frmewsgai_detail.show;
  end;
end;

procedure TfrmEWsGAI.BitBtn5Click(Sender: TObject);
begin
  if frmews_eff=nil then begin
    //showmessage('Need to create form!');
    frmews_eff:=tfrmews_eff.create(nil);
  end;
  frmews_eff.show;
end;

procedure TfrmEWsGAI.ComboBox1Change(Sender: TObject);
begin
  GetCorrectDate(combobox1.text,date);
  {
  if combobox1.text='CL' then begin
    if dayofweek(date)=2 then begin
      dtedit1.date:=date-2;
      dtedit2.date:=date+4;
    end else if dayofweek(date)=3 then begin
      dtedit1.date:=date-3;
      dtedit2.date:=date+3;
    end else if dayofweek(date)=4 then begin
      dtedit1.date:=date-4;
      dtedit2.date:=date+2;
    end else if dayofweek(date)=5 then begin
      dtedit1.date:=date-5;
      dtedit2.date:=date+1;
    end else if dayofweek(date)=6 then begin
      dtedit1.date:=date-6;
      dtedit2.date:=date;
    end else if dayofweek(date)=7 then begin
      dtedit1.date:=date;
      dtedit2.date:=date+6;
    end else if dayofweek(date)=1 then begin
      dtedit1.date:=date-1;
      dtedit2.date:=date+5;
    end;
  end else begin
    if dayofweek(date)=2 then begin
      dtedit1.date:=date;
      dtedit2.date:=date+6;
    end else if dayofweek(date)=3 then begin
      dtedit1.date:=date-1;
      dtedit2.date:=date+5;
    end else if dayofweek(date)=4 then begin
      dtedit1.date:=date-2;
      dtedit2.date:=date+4;
    end else if dayofweek(date)=5 then begin
      dtedit1.date:=date-3;
      dtedit2.date:=date+3;
    end else if dayofweek(date)=6 then begin
      dtedit1.date:=date-4;
      dtedit2.date:=date+2;
    end else if dayofweek(date)=7 then begin
      dtedit1.date:=date-5;
      dtedit2.date:=date+1;
    end else if dayofweek(date)=1 then begin
      dtedit1.date:=date-6;
      dtedit2.date:=date;
    end;
  end;
  }
end;

procedure TfrmEWsGAI.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text='SL' then begin
    combobox2.items.add('3A');
    combobox2.items.add('4A');
    combobox2.items.add('4B');
  end else if combobox1.text='GX' then begin
    combobox2.items.add('1H');
    combobox2.items.add('2R');
    combobox2.items.add('3R');
  end else if combobox1.text='RX' then begin
    combobox2.items.add('2R');
    combobox2.items.add('3R');
  end else if combobox1.text='GG' then begin
    combobox2.items.add('1H');
  end else if combobox1.text='CL' then begin
    combobox2.items.add('CL1');
    combobox2.items.add('CL2');
    combobox2.items.add('CL3');
    combobox2.items.add('CL4');
    combobox2.items.add('CL5');
    combobox2.items.add('CL6');
  end;
end;

procedure TfrmEWsGAI.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str,str1,str2:string;
  set1,set2:set of 1..10;
  seqi:integer;
begin
  set1:=[1];
  set2:=[2];
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('prj_seq').index];
  if (seqi in set1) then begin
    acanvas.Canvas.Brush.Color:=$00CDFCFB;//clMoneyGreen;//$00CDFCFB;
    acanvas.Canvas.Font.Color:=clBlack;
  end else if (seqi in set2) then begin
    acanvas.Canvas.Brush.Color:=$00E0BCB4;//clSkyBlue;//$00E0BCB4;
    acanvas.Canvas.Font.Color:=clBlack;
  end;

  {
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[ttl_act.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_qdiff.Index],   varString));
  if (AViewInfo.Item = ttl_act) then begin
    if str='' then str:='0';
  //  if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen;
  //  ACanvas.FillRect(ARec);
  end;
  }

  //str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_sdiff.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_qdiff.Index],   varString));
  if (AViewInfo.Item = act_qdiff) then begin
    if str='' then str:='0';
  //  if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen;
  //  ACanvas.FillRect(ARec);
  end;

  {
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_sah.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_sdiff.Index],   varString));
  if (AViewInfo.Item = act_sah) then begin
    if str='' then str:='0';
  //  if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtofloat(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtofloat(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen;
  //  ACanvas.FillRect(ARec);
  end;
  }

  //str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[act_sdiff.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxact_sdiff.Index],   varString));
  if (AViewInfo.Item = cxact_sdiff) then begin
    if str='' then str:='0';
  //  if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtofloat(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtofloat(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen;
  //  ACanvas.FillRect(ARec);
  end;

  str2:=cxview1.bands[5].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d1_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d1_act.Index],   varString));
    if (AViewInfo.Item = d1_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[6].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d2_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d2_act.Index],   varString));
    if (AViewInfo.Item = d2_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[7].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d3_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d3_act.Index],   varString));
    if (AViewInfo.Item = d3_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[8].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d4_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d4_act.Index],   varString));
    if (AViewInfo.Item = d4_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[9].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d5_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d5_act.Index],   varString));
    if (AViewInfo.Item = d5_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[10].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d6_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d6_act.Index],   varString));
    if (AViewInfo.Item = d6_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;

  str2:=cxview1.bands[11].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d7_eqty1.Index],   varString));
    str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[d7_act.Index],   varString));
    if (AViewInfo.Item = d7_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
      else if strtoint(str)>strtoint(str1) then ACanvas.canvas.Font.Color   :=   clGreen;
    end;
  end;
end;

procedure TfrmEWsGAI.cxView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  str,str1,str2:string;
  set1,set2:set of 1..10;
  seqi:integer;
begin
  set1:=[1];
  set2:=[2];
  {
  seqi:=ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('prj_seq').index];
  if (seqi in set1) then begin
    Astyle:=BK_Style1;
  end else if (seqi in set2) then begin
    Astyle:=BK_Style2;
  end;

  str1:=trim(VarAsType(ARecord.DisplayTexts[ttl_act.Index],   varString));
  str:=trim(VarAsType(ARecord.DisplayTexts[act_qdiff.Index],   varString));
  if (AItem = ttl_act) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then AStyle:=TextStyle_R
    else if strtoint(str)>0 then AStyle:=TextStyle_G;
  end;
  //
  str2:=cxview1.bands[8].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(ARecord.DisplayTexts[d4_eqty1.Index],   varString));
    str:=trim(VarAsType(ARecord.DisplayTexts[d4_act.Index],   varString));
    if (AItem = d4_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then AStyle:=TextStyle_R
      else if strtoint(str)>strtoint(str1) then AStyle:=TextStyle_G;
    end;
  end;
  str2:=cxview1.bands[9].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(ARecord.DisplayTexts[d5_eqty1.Index],   varString));
    str:=trim(VarAsType(ARecord.DisplayTexts[d5_act.Index],   varString));
    if (AItem = d5_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then AStyle:=TextStyle_R
      else if strtoint(str)>strtoint(str1) then AStyle:=TextStyle_G;
    end;
  end;
  str2:=cxview1.bands[10].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(ARecord.DisplayTexts[d6_eqty1.Index],   varString));
    str:=trim(VarAsType(ARecord.DisplayTexts[d6_act.Index],   varString));
    if (AItem = d6_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then AStyle:=TextStyle_R
      else if strtoint(str)>strtoint(str1) then AStyle:=TextStyle_G;
    end;
  end;
  str2:=cxview1.bands[11].caption;
  if str2<=dt then begin
    str1:=trim(VarAsType(ARecord.DisplayTexts[d7_eqty1.Index],   varString));
    str:=trim(VarAsType(ARecord.DisplayTexts[d7_act.Index],   varString));
    if (AItem = d7_act) then begin
      if str1='' then str1:='0';
      if str='' then str:='0';
      if strtoint(str)<strtoint(str1) then AStyle:=TextStyle_R
      else if strtoint(str)>strtoint(str1) then AStyle:=TextStyle_G;
    end;
  end;
  }
end;

procedure TfrmEWsGAI.DTEdit1Change(Sender: TObject);
begin
  if dtedit1.date>0 then GetCorrectDate(combobox1.text,dtedit1.date); //dtedit2.date:=dtedit1.date+6;
end;

procedure TfrmEWsGAI.DTEdit2Change(Sender: TObject);
begin
  if dtedit2.date>0 then GetCorrectDate(combobox1.text,dtedit2.date-6); //dtedit1.date:=dtedit2.date-6;
end;

procedure TfrmEWsGAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmewsgai:=nil;
end;

procedure TfrmEWsGAI.FormShow(Sender: TObject);
begin
  cxview1.bands[5].caption:='';
  cxview1.bands[6].caption:='';
  cxview1.bands[7].caption:='';
  cxview1.bands[8].caption:='';
  cxview1.bands[9].caption:='';
  cxview1.bands[10].caption:='';
  cxview1.bands[11].caption:='';
  ComboBox1Change(self);
end;

procedure TfrmEWsGAI.GetCorrectDate(const Fty: string; DT: TDateTime);
begin
  if Fty='CL' then begin
    if dayofweek(DT)=2 then begin
      dtedit1.date:=DT-2;
      dtedit2.date:=DT+4;
    end else if dayofweek(DT)=3 then begin
      dtedit1.date:=DT-3;
      dtedit2.date:=DT+3;
    end else if dayofweek(DT)=4 then begin
      dtedit1.date:=DT-4;
      dtedit2.date:=DT+2;
    end else if dayofweek(DT)=5 then begin
      dtedit1.date:=DT-5;
      dtedit2.date:=DT+1;
    end else if dayofweek(DT)=6 then begin
      dtedit1.date:=DT-6;
      dtedit2.date:=DT;
    end else if dayofweek(DT)=7 then begin
      dtedit1.date:=DT;
      dtedit2.date:=DT+6;
    end else if dayofweek(DT)=1 then begin
      dtedit1.date:=DT-1;
      dtedit2.date:=DT+5;
    end;
  end else begin
    if dayofweek(DT)=2 then begin
      dtedit1.date:=DT;
      dtedit2.date:=DT+6;
    end else if dayofweek(DT)=3 then begin
      dtedit1.date:=DT-1;
      dtedit2.date:=DT+5;
    end else if dayofweek(DT)=4 then begin
      dtedit1.date:=DT-2;
      dtedit2.date:=DT+4;
    end else if dayofweek(DT)=5 then begin
      dtedit1.date:=DT-3;
      dtedit2.date:=DT+3;
    end else if dayofweek(DT)=6 then begin
      dtedit1.date:=DT-4;
      dtedit2.date:=DT+2;
    end else if dayofweek(DT)=7 then begin
      dtedit1.date:=DT-5;
      dtedit2.date:=DT+1;
    end else if dayofweek(DT)=1 then begin
      dtedit1.date:=DT-6;
      dtedit2.date:=DT;
    end;
  end;
end;

procedure TfrmEWsGAI.MaintainEff1Click(Sender: TObject);
begin
  if frmews_eff=nil then begin
    //showmessage('Need to create form!');
    frmews_eff:=tfrmews_eff.create(nil);
  end;
  frmews_eff.show;
end;

procedure TfrmEWsGAI.Maintainproductivity1Click(Sender: TObject);
begin
  //
end;

end.
