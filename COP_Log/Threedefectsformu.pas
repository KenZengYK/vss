unit Threedefectsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, RzSpnEdt, Mask,
  RzEdit, ExtCtrls, DBClient, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, cxGridExportLink, DateUtils, Spin, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  Tfrm3defects = class(TForm)
    Panel1: TPanel;
    xh1: TCheckBox;
    Label1: TLabel;
    DateEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    DateEdit2: TRzDateTimeEdit;
    xh2: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    cxView1: TcxGridDBBandedTableView;
    cxView1DT: TcxGridDBBandedColumn;
    cxView1FTY: TcxGridDBBandedColumn;
    cxView1WS: TcxGridDBBandedColumn;
    cxView1D1QTY: TcxGridDBBandedColumn;
    cxView1D2QTY: TcxGridDBBandedColumn;
    cxView1D3QTY: TcxGridDBBandedColumn;
    cxView1D1R: TcxGridDBBandedColumn;
    cxView1D2R: TcxGridDBBandedColumn;
    cxView1D3R: TcxGridDBBandedColumn;
    cxView1D1B: TcxGridDBBandedColumn;
    cxView1D2B: TcxGridDBBandedColumn;
    cxView1D3B: TcxGridDBBandedColumn;
    SaveDialog1: TSaveDialog;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    cxView1WK: TcxGridDBBandedColumn;
    Label5: TLabel;
    Label6: TLabel;
    xh3: TCheckBox;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    cxView1Qty: TcxGridDBBandedColumn;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    Edit1: TEdit;
    cxView1TDEF: TcxGridDBBandedColumn;
    cxView1D4QTY: TcxGridDBBandedColumn;
    cxView1D4B: TcxGridDBBandedColumn;
    cxView1D4R: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxView1FTYCompareRowValuesForCellMerging(Sender: TcxGridColumn;
      ARow1: TcxGridDataRow; AProperties1: TcxCustomEditProperties;
      const AValue1: Variant; ARow2: TcxGridDataRow;
      AProperties2: TcxCustomEditProperties; const AValue2: Variant;
      var AAreEqual: Boolean);
    procedure xh3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm3defects: Tfrm3defects;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrm3defects.BitBtn1Click(Sender: TObject);
var
  tm,dt1,dt2:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    if xh1.checked then begin
      dt1:=dateedit1.date;
      dt2:=dateedit2.date;
    end else if xh2.checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit1.value;
        params[1].asinteger:=spinedit2.value;
        open;
        if not fieldbyname('dt1').isnull then dt1:=fieldbyname('dt1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit3.value;
        params[1].asinteger:=spinedit4.value;
        open;
        if not fieldbyname('dt1').isnull then dt2:=fieldbyname('dt1').value;
      end;
    end else if xh3.checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit5.value;
        params[1].asinteger:=spinedit6.value;
        open;
        if not fieldbyname('dt1').isnull then dt1:=fieldbyname('dt1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit7.value;
        params[1].asinteger:=spinedit8.value;
        open;
        if not fieldbyname('dt1').isnull then dt2:=fieldbyname('dt1').value;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      if edit1.text='' then begin
        commandtext:='execute procedure sp_aql_3def(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        if xh1.checked then params[3].asstring:='D'
        else if xh2.checked then params[3].asstring:='W'
        else if xh3.checked then params[3].asstring:='M';
      end else begin
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_aql_3def_cust(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        if xh1.checked then params[3].asstring:='D'
        else if xh2.checked then params[3].asstring:='W'
        else if xh3.checked then params[3].asstring:='M';
        params[4].asstring:=edit1.text;
      end;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct xh,xh1,xh2,dt,wk,fty,ws,d1qty,d1r,d1b,d2qty,d2r,d2b,d3qty,d3r,d3b,qty,tdef from tbl_aql_temp_3def where tm=:x1 order by xh,dt desc,xh1,xh2,fty,ws';
      params[0].asdatetime:=tm;
      open;
    end;
    if xh1.checked then begin
      cxview1.bands[0].caption:='Date';
      cxview1.bands[1].visible:=true;
      cxview1wk.visible:=true;
      cxview1.bands[3].visible:=true;
      cxview1ws.visible:=true;
    end else if xh2.checked then begin
      cxview1.bands[0].caption:='Week';
      cxview1.bands[1].visible:=false;
      cxview1wk.visible:=false;
      cxview1.bands[3].visible:=true;
      cxview1ws.visible:=true;
    end else if xh3.checked then begin
      cxview1.bands[0].caption:='Month';
      cxview1.bands[1].visible:=false;
      cxview1wk.visible:=false;
      cxview1.bands[3].visible:=false;
      cxview1ws.visible:=false;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrm3defects.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.execute then begin
    exportgridtoexcel(savedialog1.filename,cxgrid1,false,true,false,'xls');
  end;
end;

procedure Tfrm3defects.BitBtn4Click(Sender: TObject);
var
  tm,dt1,dt2:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    if xh1.checked then begin
      dt1:=dateedit1.date;
      dt2:=dateedit2.date;
    end else if xh2.checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit1.value;
        params[1].asinteger:=spinedit2.value;
        open;
        if not fieldbyname('dt1').isnull then dt1:=fieldbyname('dt1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit3.value;
        params[1].asinteger:=spinedit4.value;
        open;
        if not fieldbyname('dt1').isnull then dt2:=fieldbyname('dt1').value;
      end;
    end else if xh3.checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit5.value;
        params[1].asinteger:=spinedit6.value;
        open;
        if not fieldbyname('dt1').isnull then dt1:=fieldbyname('dt1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as dt1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit7.value;
        params[1].asinteger:=spinedit8.value;
        open;
        if not fieldbyname('dt1').isnull then dt2:=fieldbyname('dt1').value;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_aql_3def_bak(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      if xh1.checked then params[3].asstring:='D'
      else if xh2.checked then params[3].asstring:='W'
      else if xh3.checked then params[3].asstring:='M';
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct xh,xh1,dt,wk,fty,ws,d1qty,d1r,d1b,d2qty,d2r,d2b,d3qty,d3r,d3b,qty,tdef from tbl_aql_temp_3def where tm=:x1 order by xh,dt desc,xh1,fty,ws';
      params[0].asdatetime:=tm;
      open;
    end;
    if xh1.checked then begin
      cxview1.bands[0].caption:='Date';
      cxview1.bands[1].visible:=true;
      cxview1wk.visible:=true;
      cxview1.bands[3].visible:=true;
      cxview1ws.visible:=true;
    end else if xh2.checked then begin
      cxview1.bands[0].caption:='Week';
      cxview1.bands[1].visible:=false;
      cxview1wk.visible:=false;
      cxview1.bands[3].visible:=true;
      cxview1ws.visible:=true;
    end else if xh3.checked then begin
      cxview1.bands[0].caption:='Month';
      cxview1.bands[1].visible:=false;
      cxview1wk.visible:=false;
      cxview1.bands[3].visible:=false;
      cxview1ws.visible:=false;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrm3defects.cxView1FTYCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if (ARow1.Values[cxView1dt.Index] = ARow2.Values[cxView1dt.Index]) and (ARow1.Values[cxView1fty.Index] = ARow2.Values[cxView1fty.Index]) then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrm3defects.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frm3defects:=nil;
end;

procedure Tfrm3defects.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
  spinedit1.value:=yearof(date);
  spinedit2.value:=weekof(date);
  spinedit3.value:=yearof(date);
  spinedit4.value:=weekof(date);
  spinedit5.value:=yearof(date);
  spinedit6.value:=monthof(date);
  spinedit7.value:=yearof(date);
  spinedit8.value:=monthof(date);
  xh1.checked:=true;
  xh2.checked:=false;
  xh3.checked:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select seq,d1c,d1e from tbl_aql_temp_3def0 order by seq';
    open;
    first;
    while not eof do begin
      if fieldbyname('seq').value=1 then cxview1.bands[6].caption:=fieldbyname('d1c').value+' - '+fieldbyname('d1e').value
      else if fieldbyname('seq').value=2 then cxview1.bands[7].caption:=fieldbyname('d1c').value+' - '+fieldbyname('d1e').value
      else if fieldbyname('seq').value=3 then cxview1.bands[8].caption:=fieldbyname('d1c').value+' - '+fieldbyname('d1e').value
      else if fieldbyname('seq').value=4 then cxview1.bands[9].caption:=fieldbyname('d1c').value+' - '+fieldbyname('d1e').value;
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tfrm3defects.xh1Click(Sender: TObject);
begin
  if xh1.checked then begin
    xh2.checked:=false;
    xh3.checked:=false;
  end;
end;

procedure Tfrm3defects.xh2Click(Sender: TObject);
begin
  if xh2.checked then begin
    xh1.checked:=false;
    xh3.checked:=false;
  end;
end;

procedure Tfrm3defects.xh3Click(Sender: TObject);
begin
  if xh3.checked then begin
    xh1.checked:=false;
    xh2.checked:=false;
  end;
end;

end.
