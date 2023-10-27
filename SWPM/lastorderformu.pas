unit lastorderformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, Db, QExport4, QExport4XLS, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, DBClient, cxGridExportLink;

type
  Tfrmlastorders = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    xls1: TQExport4XLS;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1PLINE: TcxGridDBBandedColumn;
    cxView1FLAG1: TcxGridDBBandedColumn;
    cxView1J_NO: TcxGridDBBandedColumn;
    cxView1J2_JOB: TcxGridDBBandedColumn;
    cxView1CWO: TcxGridDBBandedColumn;
    cxView1RWO: TcxGridDBBandedColumn;
    cxView1FCCS: TcxGridDBBandedColumn;
    cxView1FLAG6: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1JHRS: TcxGridDBBandedColumn;
    cxView1QTY: TcxGridDBBandedColumn;
    cxView1ACOL: TcxGridDBBandedColumn;
    cxView1DBZS: TcxGridDBBandedColumn;
    cxView1FLAG4: TcxGridDBBandedColumn;
    cxView1SCQTY: TcxGridDBBandedColumn;
    cxView1LSTRS: TcxGridDBBandedColumn;
    cxView1SJRS: TcxGridDBBandedColumn;
    cxView1TRS: TcxGridDBBandedColumn;
    cxView1SJYC: TcxGridDBBandedColumn;
    cxView1TBU: TcxGridDBBandedColumn;
    cxView1FLAG2: TcxGridDBBandedColumn;
    cxView1TMU: TcxGridDBBandedColumn;
    cxView1JXJS: TcxGridDBBandedColumn;
    cxView1PHISZJS: TcxGridDBBandedColumn;
    cxView1FLAG7: TcxGridDBBandedColumn;
    cxView1LFLAG: TcxGridDBBandedColumn;
    cxView1SHJS: TcxGridDBBandedColumn;
    cxView1ZJS: TcxGridDBBandedColumn;
    cxView1PLAN_DATE: TcxGridDBBandedColumn;
    cxView1CPLAN: TcxGridDBBandedColumn;
    cxView1XC4: TcxGridDBBandedColumn;
    cxView1FYFS: TcxGridDBBandedColumn;
    cxView1UNBAL: TcxGridDBBandedColumn;
    cxView1XC1: TcxGridDBBandedColumn;
    cxView1WEEK: TcxGridDBBandedColumn;
    cxView1FLAG3: TcxGridDBBandedColumn;
    cxView1CFKSRQ: TcxGridDBBandedColumn;
    cxView1CFKSJS: TcxGridDBBandedColumn;
    cxView1ZKTD: TcxGridDBBandedColumn;
    cxView1SCLHJS: TcxGridDBBandedColumn;
    cxView1QYJS: TcxGridDBBandedColumn;
    cxView1ZHJS: TcxGridDBBandedColumn;
    cxView1BCJS: TcxGridDBBandedColumn;
    cxView1DBXL: TcxGridDBBandedColumn;
    cxView1CFWCRQ: TcxGridDBBandedColumn;
    cxView1CKJS: TcxGridDBBandedColumn;
    cxView1NSHJS: TcxGridDBBandedColumn;
    cxView1KDJS: TcxGridDBBandedColumn;
    cxView1BZJS: TcxGridDBBandedColumn;
    cxView1TZLCRQ: TcxGridDBBandedColumn;
    cxView1YQLCRQ: TcxGridDBBandedColumn;
    cxView1RQXC: TcxGridDBBandedColumn;
    cxView1FLAG5: TcxGridDBBandedColumn;
    cxView1QRXC: TcxGridDBBandedColumn;
    cxView1XC2: TcxGridDBBandedColumn;
    cxView1XC3: TcxGridDBBandedColumn;
    cxView1YSJHL: TcxGridDBBandedColumn;
    cxView1JHL: TcxGridDBBandedColumn;
    cxView1YZH: TcxGridDBBandedColumn;
    cxView1PD8: TcxGridDBBandedColumn;
    cxView1KHZL1: TcxGridDBBandedColumn;
    cxView1IECLS: TcxGridDBBandedColumn;
    cxView1IECLS1: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    tblshedule: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure tblsheduleAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlastorders: Tfrmlastorders;

implementation

uses worksheet, printform3u, printform4u;

{$R *.dfm}

procedure Tfrmlastorders.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmprint3<>nil then frmprint3:=nil;
  if frmprint4<>nil then frmprint4:=nil;
  action:=cafree;
  frmlastorders:=nil;
end;

procedure Tfrmlastorders.tblsheduleAfterOpen(DataSet: TDataSet);
begin
  (tblshedule.fieldbyname('phiszjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zktd') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sclhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('shjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('qyjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('jxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('sjrs') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sjyc') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('tbu') as tfloatfield).displayformat:='#0.00';
  (tblshedule.fieldbyname('jhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('ckjs') as tfloatfield).DisplayFormat:='#0.0;;''';
  (tblshedule.fieldbyname('ysjhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('tmu') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('cfksjs') as tfloatfield).DisplayFormat:='#0.0';
end;

procedure Tfrmlastorders.BitBtn1Click(Sender: TObject);
var
  str1,str2,str3,str4,str5,str00:string;
  dt1:tdatetime;
begin
  screen.cursor:=crhourglass;
  dt1:=date;
    str1:=' order by a.pline,a.seq,a.j_no,a.j2_job,a.artno,a.acol';
    str1:=' order by hc';
    with worksheet1.clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updweekday';
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      if (frmlastorders.Caption='Last Order(s) Print') then
        commandtext:='execute procedure sp_genzzz1(:x1,:x2,:x3,:x4,:x5)'
      else commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=worksheet1.edit2.text;
      params[1].asstring:=worksheet1.edit6.text;
      params[2].asdate:=dt1;
      params[3].asstring:=worksheet1.edit4.text;
      params[4].asinteger:=spinedit1.value;
      execute;
    end;
      with worksheet1.clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        params[0].asstring:='1';
        execute;
      end;
      with worksheet1.clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select distinct a.*,substr(a.j_no,1,4) as cust from tempshedule1 a where yzh=0'+str1;
        open;
      end;
    if worksheet1.Edit6.text>'' then str2:=' / '+worksheet1.Edit6.text else str2:='';

    with worksheet1.clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,'
                  +'count(distinct substr(j_no,1,4)) as cnt3,count(distinct j_no) as cnt4 from tempshedule1 where yzh=0';
      open;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of styles: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of lines: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customers: '+fieldbyname('cnt3').asstring+'      Ttl # of projects: '+fieldbyname('cnt4').asstring
      else str5:='';
    end;

    if (frmlastorders.Caption='Last Order(s) Print') then begin
      str00:='Last '+inttostr(spinedit1.value)+' Order(s)';

      if frmprint3=nil then frmprint3:=tfrmprint3.create(nil);
      frmprint3.wks004.Caption:=worksheet1.Edit4.text;
      frmprint3.ppBDEPipeline1.DataSource:=worksheet1.datasource2;
      frmprint3.project1.text:=uppercase(worksheet1.edit1.text);
      frmprint3.pline.text:=worksheet1.edit2.text;
      frmprint3.artno2.Caption:='Cust Style';
      frmprint3.artno1.DataField:='cstyle';
      frmprint3.xdhq.Visible:=true;
      frmprint3.xdhq.Caption:=str00+'(Line Work Start Date'+str2+')';
      frmprint3.pttl1.Caption:=str4;
      frmprint3.pttl2.Caption:=str3;
      frmprint3.pttl3.Caption:=str5;
      frmprint3.ppreport1.print;
    end else begin
      str00:='Next '+inttostr(spinedit1.value)+' Order(s)';
      if frmprint4=nil then frmprint4:=tfrmprint4.create(nil);
      frmprint4.wks005.Caption:=worksheet1.Edit4.text;
      frmprint4.ppBDEPipeline1.DataSource:=worksheet1.datasource2;
      frmprint4.project1.text:=uppercase(worksheet1.edit1.text);
      frmprint4.pline.text:=worksheet1.edit2.text;
      frmprint4.artno2.Caption:='Cust Style';
      frmprint4.artno1.DataField:='cstyle';
      frmprint4.xdhq.Visible:=true;
      frmprint4.xdhq.Caption:=str00+'(Line Work Start Date'+str2+')';
      frmprint4.pttl1.Caption:=str4;
      frmprint4.pttl2.Caption:=str3;
      frmprint4.pttl3.Caption:=str5;
      frmprint4.ppreport1.print;
    end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlastorders.BitBtn2Click(Sender: TObject);
var
  dt1:tdatetime;
begin
  screen.cursor:=crhourglass;
  try
  dt1:=date;
    with worksheet1.clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updweekday';
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      if (frmlastorders.Caption='Last Order(s) Print') then
        commandtext:='execute procedure sp_genzzz1(:x1,:x2,:x3,:x4,:x5)'
      else commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      //commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=worksheet1.edit2.text;
      params[1].asstring:=worksheet1.edit6.text;
      params[2].asdate:=dt1;
      params[3].asstring:=worksheet1.edit4.text;
      params[4].asinteger:=spinedit1.value;
      execute;
    end;
    with worksheet1.clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updhc(:x1)';
      params[0].asstring:='1';
      execute;
    end;
    with tblshedule do begin
      close;
      params.clear;
      commandtext:='select distinct a.*,substr(a.j_no,1,4) as cust from tempshedule1 a where yzh=0 order by hc';
      open;
    end;
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
    end;
  {
  with worksheet1.ClientDataSet4 do begin
    close;
    params.clear;
    commandtext:='select distinct pline as Line,j_no as Project,j2_job as WO,rwo as RWO,fccs as QN,cstyle as "Cust Style",qty as "RWO Qty",acol as "Clr Code",'
                +'sum(scqty) as "QN Qty",lstr as "Def WF",tbu as "LBU %",tmu as "SAH (W/A)",jxjs as "Each Sect O/P",yqlcrq as Delivery_date,sum(scqty) as Quantity from tempshedule1 '
                +'group by pline,j_no,j2_job,cstyle,rwo,acol,yqlcrq';
    open;
    if SaveDialog1.Execute then
    xls1.FileName:=SaveDialog1.FileName;
    xls1.Execute;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
