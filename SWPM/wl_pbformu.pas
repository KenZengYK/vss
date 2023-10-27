unit wl_pbformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppParameter, ppViewr, ppVar, siComp, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridExportLink, cxCurrencyEdit;

type
  Tfrmwl_pb = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ClientDataSet2: TClientDataSet;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
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
    dtperiod001: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    siLang1: TsiLang;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1PLINE: TcxGridDBBandedColumn;
    cxView1CFKSRQ: TcxGridDBBandedColumn;
    cxView1J_NO: TcxGridDBBandedColumn;
    cxView1J2_JOB: TcxGridDBBandedColumn;
    cxView1ACOL: TcxGridDBBandedColumn;
    cxView1KHZL1: TcxGridDBBandedColumn;
    cxView1SCQTY: TcxGridDBBandedColumn;
    cxView1JHRS: TcxGridDBBandedColumn;
    cxView1FYFS: TcxGridDBBandedColumn;
    cxView1TSHOP: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1FCCS: TcxGridDBBandedColumn;
    cxView1CWO: TcxGridDBBandedColumn;
    cxView1RWO: TcxGridDBBandedColumn;
    cxView1WL_JHDT: TcxGridDBBandedColumn;
    cxView1WL_JHP: TcxGridDBBandedColumn;
    cxView1WL_WC: TcxGridDBBandedColumn;
    cxView1WL_WCP: TcxGridDBBandedColumn;
    cxView1PB_JHDT: TcxGridDBBandedColumn;
    cxView1LBL_SDT: TcxGridDBBandedColumn;
    cxView1LBL_ADT: TcxGridDBBandedColumn;
    cxView1PRTWO: TcxGridDBBandedColumn;
    cxView1ITEM_FM: TcxGridDBBandedColumn;
    cxView1ITEM_DT: TcxGridDBBandedColumn;
    BitBtn13: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxView1TPLANT: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwl_pb: Tfrmwl_pb;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmwl_pb.BitBtn13Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmwl_pb.BitBtn1Click(Sender: TObject);
begin
  worksheet1.bitbtn2click(self);
end;

procedure Tfrmwl_pb.BitBtn2Click(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select r_qnqr from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if fieldbyname('r_qnqr').value=false then showmessage('沒有權限確認數頁!')
    else showmessage('此數頁已確認!');
  end;
end;

procedure Tfrmwl_pb.BitBtn4Click(Sender: TObject);
var
  cust,pline,tshop,cstyle,tplant:string;
begin
  screen.cursor:=crSQLWait;
  try
    cust:=worksheet1.edit1.text;
    pline:=worksheet1.edit2.text;
    tshop:=worksheet1.edit4.text;
    cstyle:=worksheet1.edit5.text;
    if worksheet1.edit6.text<>'ALL' then begin
      if worksheet1.edit6.text<>'CN' then
      tplant:=worksheet1.edit6.text else tplant:='';
    end else tplant:='';

    with clientdataset3 do begin
      close;
      params.clear;
      commandtext:='select * from tblshedule where khzl1=1 and prtwo=0 and tshop not in (''PPW'',''SC1'')';
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
      if worksheet1.combobox1.text>'' then commandtext:=commandtext+' and grp='''+worksheet1.combobox1.text+'''';
      if worksheet1.edit7.text>'' then commandtext:=commandtext+' and j_no like '''+worksheet1.edit7.text+'%''';
      if worksheet1.combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+worksheet1.combobox2.text+'%''';
      if worksheet1.combobox3.text>'' then commandtext:=commandtext+' and flag6='''+worksheet1.combobox3.text+'''';
      if worksheet1.combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+worksheet1.combobox4.text+'''';
      if worksheet1.edit3.text>'' then commandtext:=commandtext+' and acol='''+worksheet1.edit3.text+'''';
      if worksheet1.edit9.text>'' then commandtext:=commandtext+' and j2_job='''+worksheet1.edit9.text+'''';
      if worksheet1.combobox5.text>'' then commandtext:=commandtext+' and flag2='''+worksheet1.combobox5.text+'''';
      if worksheet1.chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NSS'',''RSS'',''SB'')) '
                                       +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if worksheet1.chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if worksheet1.chk13.Checked then commandtext:=commandtext+' and flag4 in (''A'') and tshop not in (''NSB'',''RSB'',''PPW'')';//+formatdatetime('yyyy-MM-dd',date+20);
      if worksheet1.chk8.Checked then commandtext:=commandtext+' and yzh=1';
      if worksheet1.chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
      if worksheet1.chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
      if worksheet1.edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+worksheet1.edit8.text+'%''';
      if (worksheet1.chk1.Checked or worksheet1.chk2.Checked or worksheet1.chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
      if worksheet1.dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit1.date)+'''';
      if worksheet1.dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit2.date)+'''';
      if worksheet1.combobox6.text>'' then commandtext:=commandtext+' and flag1='''+worksheet1.combobox6.text+'''';
      if worksheet1.chk11.checked then commandtext:=commandtext+' and ((rqxc<qrxc and rqxc<0) or (rqxc>qrxc and rqxc>0 and ((rqxc>=15 and qrxc<=0) or (qrxc>0)))) and tshop not in (''PPW'')';
      if worksheet1.combobox7.text>'' then commandtext:=commandtext+' and qrxc'+worksheet1.combobox7.text;
      commandtext:=commandtext+' order by tplant,tshop,pline,seq';
      open;
      if not fieldbyname('seq').isnull then begin
        dtperiod001.caption:=formatdatetime('yyyy-MM-dd',worksheet1.dateedit1.date)+' ~ '+formatdatetime('yyyy-MM-dd',worksheet1.dateedit2.date);
        ppReport1.print;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmwl_pb.BitBtn5Click(Sender: TObject);
var
  cust,pline,tshop,cstyle,tplant:string;
  str1:string;
begin
  screen.cursor:=crSQLWait;
  try
    if application.messagebox('確定已完成列印？','提示信息',mb_iconquestion+mb_yesno)=idyes then begin
      cust:=worksheet1.edit1.text;
      pline:=worksheet1.edit2.text;
      tshop:=worksheet1.edit4.text;
      cstyle:=worksheet1.edit5.text;
      if worksheet1.edit6.text<>'ALL' then begin
        if worksheet1.edit6.text<>'CN' then
        tplant:=worksheet1.edit6.text else tplant:='';
      end else tplant:='';

      str1:='update tblshedule set prtwo=1 where khzl1=1 and prtwo=0';
      if pline>'' then str1:=str1+' and upper(pline)='''+pline+'''';
      if cust>'' then str1:=str1+' and j_no='''+cust+'''';
      if tshop>'' then str1:=str1+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then str1:=str1+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then str1:=str1+' and tplant='''+tplant+'''';
      if worksheet1.combobox1.text>'' then str1:=str1+' and grp='''+worksheet1.combobox1.text+'''';
      if worksheet1.edit7.text>'' then str1:=str1+' and j_no like '''+worksheet1.edit7.text+'%''';
      if worksheet1.combobox2.text>'' then str1:=str1+' and flag6 like '''+worksheet1.combobox2.text+'%''';
      if worksheet1.combobox3.text>'' then str1:=str1+' and flag6='''+worksheet1.combobox3.text+'''';
      if worksheet1.combobox4.text>'' then str1:=str1+' and dbzs='''+worksheet1.combobox4.text+'''';
      if worksheet1.edit3.text>'' then str1:=str1+' and acol='''+worksheet1.edit3.text+'''';
      if worksheet1.edit9.text>'' then str1:=str1+' and j2_job='''+worksheet1.edit9.text+'''';
      if worksheet1.combobox5.text>'' then str1:=str1+' and flag2='''+worksheet1.combobox5.text+'''';
      if worksheet1.chk1.Checked then str1:=str1+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NSS'',''RSS'',''SB'')) '
                                       +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if worksheet1.chk2.Checked then str1:=str1+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if worksheet1.chk13.Checked then str1:=str1+' and flag4 in (''A'') and tshop not in (''NSB'',''RSB'',''PPW'')';
      if worksheet1.chk8.Checked then str1:=str1+' and yzh=1';
      if worksheet1.chk5.Checked then str1:=str1+' and pline like ''%SB%''';
      if worksheet1.chk6.Checked then str1:=str1+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
      if worksheet1.edit8.text>'' then str1:=str1+' and upper(jhrs) like '''+worksheet1.edit8.text+'%''';
      if (worksheet1.chk1.Checked or worksheet1.chk2.Checked or worksheet1.chk4.Checked) then str1:=str1+' and pline not in (''T056F'',''T057F'')';
      if worksheet1.dateedit1.date>0 then str1:=str1+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit1.date)+'''';
      if worksheet1.dateedit2.date>0 then str1:=str1+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit2.date)+'''';
      if worksheet1.combobox6.text>'' then str1:=str1+' and flag1='''+worksheet1.combobox6.text+'''';
      if worksheet1.chk11.checked then str1:=str1+' and ((rqxc<qrxc and rqxc<0) or (rqxc>qrxc and rqxc>0 and ((rqxc>=15 and qrxc<=0) or (qrxc>0)))) and tshop not in (''PPW'')';
      if worksheet1.combobox7.text>'' then str1:=str1+' and qrxc'+worksheet1.combobox7.text;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      worksheet1.speedbutton1click(self);
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmwl_pb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwl_pb:=nil;
end;

procedure Tfrmwl_pb.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmwl_pb.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
