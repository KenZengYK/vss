unit Carte_Timechange1Formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxButtonEdit, cxDropDownEdit, Menus, ppParameter, ppCtrls,
  ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ADODB, StdCtrls, DBCtrls, rxToolEdit, RXDBCtrl,
  Mask, Buttons, RzBckgnd, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxMemo, cxGridExportLink, ppViewr;

type
  TfrmCarte_Timechange1 = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn11: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1keycode: TcxGridDBBandedColumn;
    cxGrid1qty1: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel356: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    title7001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine80: TppLine;
    ppLine82: TppLine;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine84: TppLine;
    ppDBText41: TppDBText;
    ppLine87: TppLine;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppShape12: TppShape;
    ppShape3: TppShape;
    ppLabel10: TppLabel;
    ppLabel107: TppLabel;
    ppLabel121: TppLabel;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel79: TppLabel;
    ppLabel8: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel9: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine8: TppLine;
    ppLine81: TppLine;
    ppLine83: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLabel177: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLabel144: TppLabel;
    ppDBText47: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel181: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel182: TppLabel;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppParameterList1: TppParameterList;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    ADODataSet4: TADODataSet;
    ADOQuery2: TADOQuery;
    PopupMenu1: TPopupMenu;
    CreateDetail1: TMenuItem;
    ADOQuery3: TADOQuery;
    cxGrid1lwdt: TcxGridDBBandedColumn;
    cxGrid1lwdt_r: TcxGridDBBandedColumn;
    cxGrid1lwdt_p: TcxGridDBBandedColumn;
    cxGrid1lwdt_c: TcxGridDBBandedColumn;
    cxGrid1lwdt_s: TcxGridDBBandedColumn;
    cxGrid1lwdt_r1: TcxGridDBBandedColumn;
    cxGrid1lwdt_marks: TcxGridDBBandedColumn;
    Label8: TLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    lwdtp001: TppLabel;
    lwdtc001: TppLabel;
    lwdts001: TppLabel;
    lwdtr1001: TppLabel;
    cxGrid1q1_dt1: TcxGridDBBandedColumn;
    cxGrid1q1_dt4: TcxGridDBBandedColumn;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    cxGrid1t3dt: TcxGridDBBandedColumn;
    cxGrid1t3dt_r: TcxGridDBBandedColumn;
    cxGrid1q1_dtdiff: TcxGridDBBandedColumn;
    DBCheckBox2: TDBCheckBox;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppLabel24: TppLabel;
    ppDBText11: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine15: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    t3dt001: TppLabel;
    t3dtr001: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLine32: TppLine;
    ppLine39: TppLine;
    ppShape5: TppShape;
    cxGrid1lwdt_yn1: TcxGridDBBandedColumn;
    cxGrid1lwdt_r2: TcxGridDBBandedColumn;
    ppLabel17: TppLabel;
    ppLine28: TppLine;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine29: TppLine;
    ppLabel30: TppLabel;
    lwdtr2001: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine30: TppLine;
    ppLabel32: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppDBText14: TppDBText;
    ppShape6: TppShape;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ADODataSet3NewRecord(DataSet: TDataSet);
    procedure ADODataSet3AfterPost(DataSet: TDataSet);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Timechange1: TfrmCarte_Timechange1;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_ItemchooseFormu,
  Carte_ReportsFormu, Carte_MailFormu;

{$R *.dfm}

procedure TfrmCarte_Timechange1.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.FieldByName('lwdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_p') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_c') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_s') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r1') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r2') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('q1_dt1') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('q1_dt4') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t3dt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t3dt_r') as tdatetimefield).DisplayFormat:='mm/dd';
end;

procedure TfrmCarte_Timechange1.ADODataSet3AfterPost(DataSet: TDataSet);
var
  cmp3g,noneed:string;
begin
  if adodataset3.FieldByName('act_cmp3g').Value=true then cmp3g:='*' else cmp3g:='';
  noneed:='0';
  with adoquery2 do begin
    close;
    sql.Text:='select distinct seq from tbl_carte_sopc1 where lwdt_act like ''%'++adodataset3.FieldByName('lwdt_act3g').Value+'%''';
    open;
    if fieldbyname('seq').isnull then noneed:='1' else begin
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.Text:='update tbl_carte_sopc1 set lwdt_act=replace(lwdt_act,:x0,:x1) where seq=:x2';
          parameters[0].Value:=adodataset3.FieldByName('lwdt_act3g').Value;
          parameters[1].Value:=adodataset3.FieldByName('lwdt_act3g').Value+cmp3g;
          parameters[2].Value:=adoquery2.FieldByName('seq').Value;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  if (frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20) and (noneed='1') then begin
    with adodataset4 do begin
      close;
      commandtext:='select a.* from tbl_carte_sopc1 a,tbl_carte_sopc2_lwdt b where a.seq=b.seq and b.seq3g='+adodataset3.fieldbyname('seq3g').asstring;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          if adodataset4.fieldbyname('lwdt_act').isnull then begin
            sql.Text:='update tbl_carte_sopc1 set lwdt_act=:x1 where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('lwdt_act3g').Value;
            parameters[1].Value:=adodataset4.FieldByName('seq').Value;
          end else if pos(adodataset3.FieldByName('lwdt_act3g').Value,adodataset4.fieldbyname('lwdt_act').value)>0 then begin
            sql.Text:='update tbl_carte_sopc1 set lwdt_act=replace(lwdt_act,:x0,:x1) where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('lwdt_act3g').Value;
            parameters[1].Value:=adodataset3.FieldByName('lwdt_act3g').Value+cmp3g;
            parameters[2].Value:=adodataset4.FieldByName('seq').Value;
          end else begin
            sql.Text:='update tbl_carte_sopc1 set lwdt_act=rtrim(lwdt_act)+'',''+:x1 where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('lwdt_act3g').Value+cmp3g;
            parameters[1].Value:=adodataset4.FieldByName('seq').Value;
          end;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  with adoquery1 do begin
    close;
    sql.Text:='update tbl_carte_sopc3_grp set lwdt_act3g='''+adodataset3.FieldByName('lwdt_act3g').Value+cmp3g+''' where seq3g='+adodataset3.FieldByName('seq3g').asstring;
    execsql;
  end;
end;

procedure TfrmCarte_Timechange1.ADODataSet3NewRecord(DataSet: TDataSet);
var
  seq1,grp1:integer;
  yn,sqlstr:string;
begin
  yn:=copy(formatdatetime('yymmdd',date),1,4);
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(seq3g) as x1 from tbl_carte_sopc3_grp';
    open;
    if not fieldbyname('x1').isnull then seq1:=fieldbyname('x1').Value+1
    else seq1:=1;
  end;
  with adoquery1 do begin
    close;
    sql.Text:='select count(distinct lwdt_act3g) as x1 from tbl_carte_sopc3_grp where lwdt_act3g like '''+yn+'%''';
    //parameters[0].Value:=yn+'%';
    open;
    if not fieldbyname('x1').isnull then grp1:=fieldbyname('x1').Value+1 else grp1:=1;
  end;
  adodataset3.fieldbyname('seq3g').value:=seq1;
  adodataset3.FieldByName('lwdt_act3g').Value:=yn+'-'+copy('00'+inttostr(grp1),length('00'+inttostr(grp1))-2,3);
  adodataset3.FieldByName('act_cmp3g').Value:=false;
  adodataset3.FieldByName('tc_cfm').Value:=false;
  adodataset3.FieldByName('act_start3g').Value:=date;
  adodataset3.FieldByName('act_issue3g').Value:=frmCarte_Main.lbluser.caption;

  sqlstr:='select '+inttostr(seq1)+',seq,cust,projectno,keycode,qty1,lwdt,lwdt_r,lwdt_p,lwdt_c,lwdt_s,lwdt_r1 from tbl_carte_sopc1 where 0=0';
  if label8.caption='1' then sqlstr:=sqlstr+' and seq='+frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').asstring
  else begin
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr:=sqlstr+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr:=sqlstr+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr:=sqlstr+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr:=sqlstr+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr:=sqlstr+' and qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr:=sqlstr+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr:=sqlstr+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr:=sqlstr+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr:=sqlstr+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr:=sqlstr+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr:=sqlstr+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr:=sqlstr+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr:=sqlstr+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                           +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr:=sqlstr+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr:=sqlstr+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr:=sqlstr+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr:=sqlstr+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr:=sqlstr+' and ex_a is not null'
      else sqlstr:=sqlstr+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr:=sqlstr+' and ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr:=sqlstr+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr:=sqlstr+' and workorderno>''''';
    end;
    if frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    sqlstr:=sqlstr+' and '+frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
  end;

    with adoquery3 do begin
      close;
      sql.text:='exec sp_carte_genlwdtdetail :x1,:x2';
      parameters[0].Value:=seq1;
      parameters[1].Value:=sqlstr;
      execsql;
    end;

    with adodataset1 do begin
      close;
      commandtext:='select * from tbl_carte_sopc2_lwdt where seq3g='+inttostr(seq1);
      open;
    end;
end;

procedure TfrmCarte_Timechange1.BitBtn11Click(Sender: TObject);
begin
  if frmcarte_Mail=nil then frmCarte_Mail:=tfrmCarte_Mail.create(nil);
  frmCarte_Mail.edit4.text:=frmCarte_Main.lblmail.caption;
  frmCarte_Mail.edit5.text:=adodataset3.fieldbyname('act_item3g').value+' - '+adodataset3.fieldbyname('act_subject3g').value+' on [生產配合行動誌編號: '+adodataset3.fieldbyname('lwdt_act3g').value+', 要求者: '+adodataset3.fieldbyname('act_issue3g').value+']';
  frmCarte_Mail.memo1.lines.clear;
  frmCarte_Mail.memo1.lines.add('');
  frmCarte_Mail.memo1.lines.add('Sender: '+adodataset3.fieldbyname('act_issue3g').value);
  frmCarte_Mail.memo1.lines.add('Date: '+formatdatetime('mm/dd hh:nn',adodataset3.fieldbyname('act_start3g').value));
  frmCarte_Mail.show;
end;

procedure TfrmCarte_Timechange1.BitBtn1Click(Sender: TObject);
begin
  if adodataset3.fieldbyname('tc_cfm').value=true then showmessage('已批核, 不能再次批核!')
  else begin
    if application.messagebox('確認批核此生產配合行動誌?','提示信息',mb_iconquestion+mb_yesno)=idyes then begin
      if adodataset3.state=dsbrowse then adodataset3.edit;
      adodataset3.fieldbyname('tc_cfm').value:=true;
      adodataset3.fieldbyname('tc_cfmuser').value:=frmCarte_Main.lbluser.caption;
      adodataset3.fieldbyname('tc_cfmdt').value:=date;
      adodataset3.post;
      with adoquery1 do begin
        close;
        sql.text:='exec sp_carte_updlwdt '+adodataset3.fieldbyname('seq3g').asstring;
        execsql;
      end;
      showmessage('完成批核!');
    end;
  end;
end;

procedure TfrmCarte_Timechange1.BitBtn3Click(Sender: TObject);
begin
  if (adodataset3.State=dsEdit) or (adodataset3.State=dsInsert) then adodataset3.Post;
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_Timechange1.BitBtn4Click(Sender: TObject);
begin
  with adodataset2 do begin
    close;
    commandtext:='select * from tbl_carte_sopc3_grp a,tbl_carte_sopc2_lwdt b where a.seq3g=b.seq3g';// and a.seq3g=:x1';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then commandtext:=commandtext+' and b.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if adodataset3.active then commandtext:=commandtext+' and a.seq3g='+adodataset3.fieldbyname('seq3g').asstring
    else begin
      if frmCarte_Reports.checkbox3.checked=false then
      commandtext:=commandtext+' and a.act_cmp3g=0';
    end;
    open;
    if not fieldbyname('seq3g').isnull then begin
      title7001.caption:=frmCarte_Ordprocessing.combobox4.text;
      ppReport1.print;
    end;
  end;
end;

procedure TfrmCarte_Timechange1.BitBtn5Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.savedialog1.Execute then begin
    ExportGridToExcel(frmCarte_Ordprocessing.savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Timechange1.BitBtn6Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20 then begin
    adodataset3.append;
  end;
end;

procedure TfrmCarte_Timechange1.BitBtn7Click(Sender: TObject);
begin
  if not adodataset3.bof then adodataset3.Prior;
end;

procedure TfrmCarte_Timechange1.BitBtn8Click(Sender: TObject);
begin
  if not adodataset3.eof then adodataset3.Next;
end;

procedure TfrmCarte_Timechange1.BitBtn9Click(Sender: TObject);
begin
  if (adodataset3.state=dsinsert) or (adodataset3.state=dsedit) then adodataset3.post;
end;

procedure TfrmCarte_Timechange1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Timechange1:=nil;
end;

procedure TfrmCarte_Timechange1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  seq3g:integer;
begin
 if (adodataset3.State=dsinsert) or (adodataset3.State=dsedit) then begin
   seq3g:=adodataset3.FieldByName('seq3g').Value;
   if application.MessageBox('有資料未保存,是否放棄?','確定',mb_iconquestion+mb_yesno)=idno then canclose:=false
   else if (adodataset3.state=dsinsert) then begin
     with adoquery1 do begin
       close;
       sql.Text:='delete from tbl_carte_sopc2_lwdt where seq3g='+inttostr(seq3g);
       //parameters[0].Value:=seq3g;
       execsql;
     end;
   end;
 end;
end;

procedure TfrmCarte_Timechange1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if not adodataset2.fieldbyname('lwdt_p').isnull then
    lwdtp001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('lwdt_p').value)
  else lwdtp001.caption:='- -';
  if not adodataset2.fieldbyname('lwdt_c').isnull then
    lwdtc001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('lwdt_c').value)
  else lwdtc001.caption:='- -';
  if not adodataset2.fieldbyname('lwdt_s').isnull then
    lwdts001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('lwdt_s').value)
  else lwdts001.caption:='- -';
  if not adodataset2.fieldbyname('lwdt_r1').isnull then
    lwdtr1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('lwdt_r1').value)
  else lwdtr1001.caption:='- -';
  if not adodataset2.fieldbyname('lwdt_r2').isnull then
    lwdtr2001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('lwdt_r2').value)
  else lwdtr2001.caption:='- -';
  if not adodataset2.fieldbyname('t3dt').isnull then
    t3dt001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('t3dt').value)
  else t3dt001.caption:='- -';
  if not adodataset2.fieldbyname('t3dt_r').isnull then
    t3dtr001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('t3dt_r').value)
  else t3dtr001.caption:='- -';
end;

procedure TfrmCarte_Timechange1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Timechange1.SpeedButton1Click(Sender: TObject);
begin
  if frmCarte_Itemchoose=nil then frmCarte_Itemchoose:=tfrmCarte_Itemchoose.create(nil);
  frmCarte_Itemchoose.Label1.Caption:='Timechange1';
  frmCarte_Itemchoose.show;
end;

end.
