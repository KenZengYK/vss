unit Prdprogressformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, StdCtrls, DBClient, Buttons, cxCurrencyEdit, Spin, cxGridExportLink,
  Menus, DateUtils, cxMRUEdit;

type
  Tfrmprdprogress = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxView1: TcxGridDBBandedTableView;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    cxView1CMB: TcxGridDBBandedColumn;
    cxView1FTY: TcxGridDBBandedColumn;
    cxView1FLAG60: TcxGridDBBandedColumn;
    cxView1CUST: TcxGridDBBandedColumn;
    cxView1TTL: TcxGridDBBandedColumn;
    cxView1SAH: TcxGridDBBandedColumn;
    cxView1O1: TcxGridDBBandedColumn;
    cxView1O2: TcxGridDBBandedColumn;
    cxView1O3: TcxGridDBBandedColumn;
    cxView1O4: TcxGridDBBandedColumn;
    cxView1O5: TcxGridDBBandedColumn;
    cxView1O6: TcxGridDBBandedColumn;
    cxView1O7: TcxGridDBBandedColumn;
    cxView1EXQTY: TcxGridDBBandedColumn;
    cxView1SMPL: TcxGridDBBandedColumn;
    cxView1DEFECT: TcxGridDBBandedColumn;
    cxView1LOST: TcxGridDBBandedColumn;
    cxView1HQTY: TcxGridDBBandedColumn;
    cxView1OQTY: TcxGridDBBandedColumn;
    cxView1AT3QTY: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    se1: TSpinEdit;
    Label3: TLabel;
    se2: TSpinEdit;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxView1Column1: TcxGridDBBandedColumn;
    t3seq: TcxGridDBBandedColumn;
    pm1: TPopupMenu;
    Detail1: TMenuItem;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    cxGrid2DBTableView1FTY: TcxGridDBColumn;
    cxGrid2DBTableView1FLAG60: TcxGridDBColumn;
    cxGrid2DBTableView1CUST: TcxGridDBColumn;
    cxGrid2DBTableView1PLINE: TcxGridDBColumn;
    cxGrid2DBTableView1J_NO: TcxGridDBColumn;
    cxGrid2DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid2DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid2DBTableView1ACOL: TcxGridDBColumn;
    cxGrid2DBTableView1T3_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1T3_ADJ: TcxGridDBColumn;
    cxGrid2DBTableView1EXDT: TcxGridDBColumn;
    cxGrid2DBTableView1DUEDAYS: TcxGridDBColumn;
    cxGrid2DBTableView1LWO_QTY: TcxGridDBColumn;
    cxGrid2DBTableView1SHIPPED: TcxGridDBColumn;
    cxGrid2DBTableView1FCCS: TcxGridDBColumn;
    cxView1C_NEQTY: TcxGridDBBandedColumn;
    cxGrid2DBTableView1PK_QTY: TcxGridDBColumn;
    cxGrid2DBTableView1Q_850: TcxGridDBColumn;
    cxGrid2DBTableView1Q_915: TcxGridDBColumn;
    cxGrid2DBTableView1Q_T2: TcxGridDBColumn;
    cxView1t3qty: TcxGridDBBandedColumn;
    cxView1TTL_D1: TcxGridDBBandedColumn;
    cxView1TTL_D2: TcxGridDBBandedColumn;
    cxGrid2DBTableView1Q_T3: TcxGridDBColumn;
    cxView1Ws: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxView1O5P: TcxGridDBBandedColumn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Detail1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprdprogress: Tfrmprdprogress;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmprdprogress.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmprdprogress.BitBtn3Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLwait;
  tm:=now;
  try
    with query2 do begin
      close;
      params.clear;
      if (combobox1.text<>'CN') and (combobox1.text<>'GX') then
      params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if (combobox1.text<>'CN') and (combobox1.text<>'GX') then
      commandtext:='execute procedure sp_swpm_t3progress_ws(:x0,:x1,:x2,:x3)'
      else if combobox1.text='GX' then
      commandtext:='execute procedure sp_swpm_t3progress_gx_ws(:x1,:x2,:x3)'
      else if combobox1.text='CN' then
      commandtext:='execute procedure sp_swpm_t3progress_cn_ws(:x1,:x2,:x3)';
      if (combobox1.text<>'CN') and (combobox1.text<>'GX') then begin
        params[0].asstring:=combobox1.text;
        params[1].asinteger:=se1.value;
        params[2].asinteger:=se2.value;
        params[3].asdatetime:=tm;
      end else if (combobox1.text='CN') or (combobox1.text='GX') then begin
        params[0].asinteger:=se1.value;
        params[1].asinteger:=se2.value;
        params[2].asdatetime:=tm;
      end;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from t3_temp where tm=:x1 order by ttl_seq,fty,ws,t3seq,flag60,cust';
      params[0].asdatetime:=tm;
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprdprogress.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str,str1,str2,str3:string;
  set1,set2:set of 1..100;
  seqi:integer;
begin
  //set1:=[11,21,31,50];
  set1:=[11,21,31];
  set2:=[40];
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('t3seq').index];
  if (seqi in set1) then begin
    acanvas.Canvas.Brush.Color:=$00CDFCFB;//clMoneyGreen;//$00CDFCFB;
    acanvas.Canvas.Font.Color:=clBlack;
  end else if (seqi in set2) then begin
    acanvas.Canvas.Brush.Color:=$00E0BCB4;//clSkyBlue;//$00E0BCB4;
    acanvas.Canvas.Font.Color:=clBlack;
  end;

  //  -- Only determine red data for single prdn fty
  //if (combobox1.text<>'CN') then begin
  if ((seqi in set1) or (seqi in set2)) then begin
    str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1ttl_d1.Index],   varString));
    str2:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1ttl_d2.Index],   varString));
    str3:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1ttl.Index],   varString));

    if ((strtoint(str1)>0) and (strtoint(str2)>0) and (strtoint(str1)-strtoint(str2)>0)) then begin
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O2.Index],   varString));
      if (AViewInfo.Item = cxview1O2) then begin
        if str='' then str:='0';
        if strtoint(str)>strtoint(str3)/strtoint(str1)*(strtoint(str1)-strtoint(str2)) then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;

      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O3.Index],   varString));
      if (AViewInfo.Item = cxview1O3) then begin
        if str='' then str:='0';
        if strtoint(str)>strtoint(str3)/strtoint(str1)*(strtoint(str1)-strtoint(str2)) then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;

      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O4.Index],   varString));
      if (AViewInfo.Item = cxview1O4) then begin
        if str='' then str:='0';
        if strtoint(str)>strtoint(str3)/strtoint(str1)*(strtoint(str1)-strtoint(str2)) then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
      //  -- 915 balance qty > 3 days' average qty, remind with red data
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O5.Index],   varString));
      if (AViewInfo.Item = cxview1O5) then begin
        if str='' then str:='0';
        //  3 days output for T2
        if strtoint(str)>strtoint(str3)/strtoint(str1)*3 then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
      //  -- 915 balance qty > 3 days' average qty (percentage > 0), remind with red data
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O5P.Index],   varString));
      if (AViewInfo.Item = cxview1O5P) then begin
        if str='' then str:='0.00';
        //  3 days output for T2
        if strtofloat(str)>0.00 then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
      //  -- T3 qty < average qty * prdn days, remind with red data
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1t3qty.Index],   varString));
      if (AViewInfo.Item = cxview1t3qty) then begin
        if str='' then str:='0';
        if (strtoint(str)>0) and (strtoint(str)<strtoint(str3)/strtoint(str1)*strtoint(str2)) then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
      //  -- T2 balance ttl > 3 days' average qty, remind with red data
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1O6.Index],   varString));
      if (AViewInfo.Item = cxview1O6) then begin
        if str='' then str:='0';
        if strtoint(str)>strtoint(str3)/strtoint(str1)*3 then
        ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
      //  -- Last month prdn ttl qty not exfty >0, remind with red data
      str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1c_neqty.Index],   varString));
      if (AViewInfo.Item = cxview1c_neqty) then begin
        if str='' then str:='0';
        if strtoint(str)>0 then ACanvas.canvas.Font.Color:=clRed
        else ACanvas.Canvas.Font.Color:=clBlack;
      end;
    end;
  end;
  //end;
end;

procedure Tfrmprdprogress.Detail1Click(Sender: TObject);
var
  dt1,dt2:string;
begin
  screen.cursor:=crSQLWait;
  try
    dt1:=inttostr(se1.value)+'-'+copy('0'+inttostr(se2.value),length('0'+inttostr(se2.value))-1,2)+'-01';
    if se2.value=12 then dt2:=inttostr(se1.value+1)+'-01-01'
    else dt2:=inttostr(se1.value)+'-'+copy('0'+inttostr(se2.value+1),length('0'+inttostr(se2.value+1))-1,2)+'-01';
    //showmessage(dt1+' / '+dt2);
    with query4 do begin
      close;
      params.clear;
      commandtext:='select distinct fty,flag60,cust,pline,j_no,j2_job,cstyle,acol,exdt,fccs,'
                   +'case when at3dt is not null then at3dt else t3dt end as t3_date,'
                   +'case when at3dt is not null then ''Y'' else ''N'' end as t3_adj,'
                   +'exdt-case when at3dt is not null then at3dt else t3dt end as duedays,'
                   +'max(case when yzh=0 then ''-'' else ''Y'' end) as shipped,'
                   +'sum(qn_qty) as lwo_qty,sum(pk_qty) as pk_qty,sum(q_850) as q_850,sum(q_915) as q_915,sum(q_t2) as q_t2,sum(q_t3) as q_t3 '
                   +'from v_swpm_prdflow_cust_new a';
      commandtext:=commandtext+' where case when at3dt is not null then at3dt else t3dt end>='''+dt1+'''';
      commandtext:=commandtext+' and case when at3dt is not null then at3dt else t3dt end<'''+dt2+'''';
      if combobox1.text='GX' then commandtext:=commandtext+' and fty in (''GG'',''RX'')'
      else if combobox1.text='CN' then commandtext:=commandtext+' and fty in (''SL'',''GG'',''RX'')'
      else commandtext:=commandtext+' and fty='''+combobox1.text+'''';
      commandtext:=commandtext+' group by fty,cust,flag60,cstyle,pline,j_no,j2_job,acol,at3dt,t3dt,exdt,fccs';
      commandtext:=commandtext+' order by fty,pline,flag60,cust,j_no,j2_job,acol';
      //showmessage(commandtext);
      open;
    end;
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid2,false,true,false,'xls');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprdprogress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmprdprogress:=nil;
end;

procedure Tfrmprdprogress.FormShow(Sender: TObject);
begin
  se1.value:=yearof(date);
  se2.value:=monthof(date);
end;

end.
