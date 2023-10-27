unit schedule_ganttformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, phGant, DB, DBClient, StdCtrls, Buttons, phGanttPrinting,
  Printers, Mask, ToolEdit, phDataEntityPack, rxToolEdit;

type
  Tfrmschedule_gantt = class(TForm)
    Panel1: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PrintDialog1: TPrintDialog;
    tblshedule: TClientDataSet;
    DataSource1: TDataSource;
    DateEdit1: TDateEdit;
    Query4: TClientDataSet;
    DateEdit2: TDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure phGant1DblClickGantArea(theGant: TphGant_ComBasic;
      theDataEntity: TphDataEntity_GantTime);
    procedure phGant1PrintToHdcNewPage(theGant: TphGant_ComBasic;
      aPageNo: Integer; var pageHeight, pageWidht: Integer; var goahead,
      render: Boolean);
    procedure phGant1HintInfo(theObject: TObject; theStart, theStop,
      theLength: TDateTime);
    procedure phGant1TimeChangeRow(theGant: TphGant_ComBasic;
      theDataEntity: TphDataEntity_GantTime; theRow, theNewRow: TGantRow;
      theStartDate, theStopDate: TDateTime);
    procedure phGant1ValueChanged_GantTime(Caller: TObject;
      theDataEntity: TphDataEntity);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DataListSort(DataList: TphDataList; theDescending: boolean);
    function SortCompareDataEntity(the1, the2: TphDataEntity): Integer;
    procedure showgantt;
    procedure showgantt1(const pline:string; const i:integer);
  end;

var
  frmschedule_gantt: Tfrmschedule_gantt;
  vs0:string;

implementation

uses mainformu, worksheet, zktdformu;

{$R *.dfm}

procedure Tfrmschedule_gantt.FormShow(Sender: TObject);
begin
  showgantt;
  vs0:='';
end;

procedure Tfrmschedule_gantt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmschedule_gantt:=nil;
end;

procedure Tfrmschedule_gantt.BitBtn1Click(Sender: TObject);
var
  usedwidth, usedHeight: integer;
begin
  with PrintDialog1 do
  begin
    if Execute then
    begin
      Printer.Orientation:=poLandscape;
      Printer.BeginDoc;
      Printer.Handle;
      TphPrintGantt.PrintWithGrid(phGant1, Printer.Handle, 10, 100, 7, 7, phGant1.TreeWidth, nil, -1,
        True, phGant1.Start, phGant1.Stop, phGant1.Width - phGant1.TreeWidth, phGant1.ScalerHeight, usedwidth, usedHeight, -1, -1, nil);
      Printer.EndDoc;
    end;
  end;
end;

procedure Tfrmschedule_gantt.phGant1DblClickGantArea(
  theGant: TphGant_ComBasic; theDataEntity: TphDataEntity_GantTime);
var
  dt1:tdate;
  tm:tdatetime;
  r12,r36:boolean;
  s,s1:string;
begin
  if theDataEntity<>nil then begin
    s:=theDataEntity.UserVariantReference;
    s1:=copy(s,1,pos(';',s)-1);
    s:=trim(copy(s,pos(';',s)+1,6));
    with tblshedule do begin
      close;
      params.clear;
      commandtext:='select * from tblshedule where pline='''+s1+''' and seq='+s;
      open;
    end;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').isnull then r12:=false else r12:=fieldbyname('r12').value;
    if fieldbyname('r36').isnull then r36:=false else r36:=fieldbyname('r36').value;
  end;
  if r36=true then begin
      tm:=now;

    if not tblshedule.fieldbyname('cfwcrq').isnull then begin
      if ((tblshedule.fieldbyname('flag3').isnull) or (tblshedule.FieldByName('flag3').value<'x')) then begin
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
      end;
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
    end;
        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.ShowModal;
        frmzktd.BringToFront;
  end else begin

  if not tblshedule.fieldbyname('flag3').isnull then begin
      tm:=now;

    if ((tblshedule.fieldbyname('flag3').value<'x') and (tblshedule.fieldbyname('flag3').value>'')) then begin
      if not tblshedule.fieldbyname('cfwcrq').isnull then begin
        if r12=true then begin
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        WITH query3 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        end;
      end;
    end;

        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.ShowModal;
        frmzktd.BringToFront;
  end;
  end;
  end;
end;

procedure Tfrmschedule_gantt.phGant1PrintToHdcNewPage(
  theGant: TphGant_ComBasic; aPageNo: Integer; var pageHeight,
  pageWidht: Integer; var goahead, render: Boolean);
begin
  pageHeight:=Printer.PageHeight;
  pageWidht:=Printer.PageWidth;
  goahead:=true;
  render:=true;
  if aPageNo>1 then Printer.NewPage;
end;

procedure Tfrmschedule_gantt.phGant1HintInfo(theObject: TObject; theStart,
  theStop, theLength: TDateTime);
var
  s,s1,s2:string;
begin
  //showmessage('00');
  if theObject<>nil then begin
    s:=TphDataEntity(theObject).UserVariantReference;
    s1:=copy(s,1,pos(';',s)-1);
    s2:=trim(copy(s,pos(';',s)+1,pos('(',s)-pos(';',s)-1));
    with query3 do begin
      close;
      params.clear;
      commandtext:='select * from tblshedule where pline='''+s1+''' and seq='+s2;
      open;
      label1.Caption:='Project#: '+fieldbyname('j_no').value+'  Style#: '+fieldbyname('cstyle').value;
      if not fieldbyname('cwo').isnull then label1.Caption:=label1.Caption+'  WOc#: '+fieldbyname('cwo').value;
      label1.Caption:=label1.Caption+'  RWO#: '+fieldbyname('rwo').value+'  Color#: '+fieldbyname('acol').value;
      label1.Caption:=label1.Caption+'  QN#: '+fieldbyname('fccs').value+'  QN Qty: '+fieldbyname('scqty').asstring;
      label1.Caption:=label1.Caption+'  Start Date: '+fieldbyname('cfksrq').asstring+' '+formatfloat('0.0',fieldbyname('cfksjs').value);
      label1.caption:=label1.caption+'  Plan Finish Date: '+fieldbyname('cfwcrq').asstring+' '+formatfloat('0.0',fieldbyname('cfwcjs').value);
    end;
  end;
  //showmessage('01');
end;

procedure Tfrmschedule_gantt.phGant1TimeChangeRow(
  theGant: TphGant_ComBasic; theDataEntity: TphDataEntity_GantTime; theRow,
  theNewRow: TGantRow; theStartDate, theStopDate: TDateTime);
var
  alst:TphDataList;
  i1:integer;
  the1:TphDataEntity;
  s,s1,s0,s01:string;
begin
  alst:=theNewRow.DataLists.Items[0];
  theDataEntity.ChangeOwner(alst,0);
  //Re-index
  DataListSort(theDataEntity.OwningDataList, False);

  s:=theDataEntity.UserVariantReference;
  s1:=copy(s,1,pos(';',s)-1);
  s:=trim(copy(s,pos(';',s)+1,pos('(',s)-pos(';',s)-1));

  i1:=theDataEntity.OwningDataList.IndexOf(theDataEntity);
  the1:=theDataEntity.OwningDataList.Items[i1+1];
  if the1<>nil then begin
    s0:=the1.UserVariantReference;
    s01:=copy(s0,1,pos(';',s0)-1);
    s0:=trim(copy(s0,pos(';',s0)+1,pos('(',s0)-pos(';',s0)-1));
  end else begin
    the1:=theDataEntity.OwningDataList.Items[i1-1];
    s0:=the1.UserVariantReference;
    s01:=copy(s0,1,pos(';',s0)-1);
    with query3 do begin
      close;
      params.clear;
      commandtext:='select max(seq) as q from tblshedule where pline='''+s01+'''';
      open;
      if fieldbyname('q').isnull then s0:='1'
      else s0:=inttostr(fieldbyname('q').value+1);
    end;
  end;
  if (s>'0') and (s0>'0') then begin
    //label2.Caption:=formatdatetime('hh:nn:ss:zzz',now);

    //showmessage(s1+':'+s+' - '+s01+':'+s0);

    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_recalc_gantt(:x1,:x2,:x3,:x4)';
      params[0].asstring:=s1;
      params[1].asinteger:=strtoint(s);
      params[2].asstring:=s01;
      params[3].asinteger:=strtoint(s0);
      execute;
    end;

    //showmessage(s1+':'+s+' - '+s01+':'+s0);

    //label3.Caption:=formatdatetime('hh:nn:ss:zzz',now);
    showgantt;
  end;
end;

procedure Tfrmschedule_gantt.DataListSort(DataList: TphDataList;
  theDescending: boolean);
begin
  DataList.ListController.OnSortCompare := SortCompareDataEntity;
  try
    DataList.Sort(theDescending);
  finally
    DataList.ListController.OnSortCompare := nil;
  end;
end;

function Tfrmschedule_gantt.SortCompareDataEntity(the1, the2: TphDataEntity): Integer;
var
  aValue: Double;
begin
  aValue := TphDataEntity_GantTime(the1).Start - TphDataEntity_GantTime(the2).Start;
  if aValue > 0 then
    result := 1
  else if aValue < 0 then
    result := -1
  else
    result := 0;
end;

procedure Tfrmschedule_gantt.phGant1ValueChanged_GantTime(Caller: TObject;
  theDataEntity: TphDataEntity);
var
  i1,i,i2:integer;
  the1:TphDataEntity;
  s,s1,s0,s01:string;
begin
  i:=theDataEntity.OwningDataList.IndexOf(theDataEntity);
  //Re-index
  DataListSort(theDataEntity.OwningDataList, False);

  if phGant1.GetMouseMoveMode=mmMove then begin
    if phGant1.RowList.FindRowFromY(phGant1.GantMousePosition.Y)=TphDataEntity_GantTime(theDataEntity).Row then
    i2:=0 else i2:=-1;
  end;

  i1:=theDataEntity.OwningDataList.IndexOf(theDataEntity);
  if i2>-1 then begin
    s:=theDataEntity.UserVariantReference;
    s1:=copy(s,1,pos(';',s)-1);
    //i2:=strtoint(copy(s,pos('(',s)+1,pos(')',s)-pos('(',s)-1));
    s:=trim(copy(s,pos(';',s)+1,pos('(',s)-pos(';',s)-1)); 

    if i>i1 then begin
      the1:=theDataEntity.OwningDataList.Items[i1+1];
      if the1<>nil then begin
        s0:=the1.UserVariantReference;
        s01:=trim(copy(s0,pos(';',s0)+1,pos('(',s0)-pos(';',s0)-1));
      end;
    end else if i<i1 then begin
      the1:=theDataEntity.OwningDataList.Items[i1-1];
      if the1<>nil then begin
        s0:=the1.UserVariantReference;
        s01:=trim(copy(s0,pos(';',s0)+1,pos('(',s0)-pos(';',s0)-1));
      end;
    end else begin
      s01:='-1';
    end;
    if (s>'0') and (s01>'0') then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_recalc_gantt(:x1,:x2,:x3,:x4)';
        params[0].asstring:=s1;
        params[1].asinteger:=strtoint(s);
        params[2].asstring:=s1;
        params[3].asinteger:=strtoint(s01);
        execute;
      end;
      showgantt;
    end;
  end;
end;

procedure Tfrmschedule_gantt.showgantt;
var
  i,j:integer;
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  try
    phGant1.Grid.GetTree.RootDataEntities.Clear;
    cust:=worksheet1.edit1.text;
    pline:=worksheet1.edit2.text;
    tshop:=worksheet1.edit4.text;
    cstyle:=worksheet1.edit5.text;
    tplant:=worksheet1.edit6.text;
    if dateedit1.Date>0 then phGant1.DateScaler.Start:=dateedit1.date
    else phGant1.DateScaler.Start:=date;
    i:=0;
      with query1 do begin
        close;
        params.clear;
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct tshop,pline from tblshedule where yzh=0';//tplant=''SL'' and yzh=0 and (cfksrq is not null) and (cfwcrq is not null) order by tshop,pline';
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
        if worksheet1.combobox5.text>'' then commandtext:=commandtext+' and flag2='''+worksheet1.combobox5.text+'''';
        if worksheet1.chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^'')) or (dta in (''1'',''5''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
        if worksheet1.chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
        if worksheet1.chk3.Checked then commandtext:=commandtext+' and plan_date is null';
        if worksheet1.chk4.Checked then commandtext:=commandtext+' and dta in (''3'',''4'')';
        if worksheet1.chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
        if worksheet1.chk6.Checked then commandtext:=commandtext+' and substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')';
        if worksheet1.edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+worksheet1.edit8.text+'%''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';
        commandtext:=commandtext+' and (cfksrq is not null) and (cfwcrq is not null) order by tshop,pline';
        if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        open;
        first;
        while not eof do begin
          phGant1.GridNode_Add(nil);
          phGant1.Grid.SetText(phGant1.Grid.Cell[0,i+1],query1.fieldbyname('tshop').value);
          phGant1.Grid.SetText(phGant1.Grid.Cell[1,i+1],query1.fieldbyname('pline').value);
          j:=0;
          with query2 do begin
            close;
            params.clear;
            if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
            if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
            //commandtext:='select distinct pline,seq,j_no,j2_job,cwo,rwo,acol,fccs,scqty,cfksrq,cfksjs,cfwcrq,cfwcjs from tblshedule where yzh=0 and pline='''+query1.fieldbyname('pline').value+'''';
                        //+'where pline='''+query1.fieldbyname('pline').value+''' and yzh=0 and (cfksrq is not null) and (cfwcrq is not null) order by pline,seq';
            commandtext:='select * from tblshedule where yzh=0 and pline='''+query1.fieldbyname('pline').value+'''';
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
            if worksheet1.combobox5.text>'' then commandtext:=commandtext+' and flag2='''+worksheet1.combobox5.text+'''';
            if worksheet1.chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^'')) or (dta in (''1'',''5''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
            if worksheet1.chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
            if worksheet1.chk3.Checked then commandtext:=commandtext+' and plan_date is null';
            if worksheet1.chk4.Checked then commandtext:=commandtext+' and dta in (''3'',''4'')';
            if worksheet1.chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
            if worksheet1.chk6.Checked then commandtext:=commandtext+' and substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')';
            if worksheet1.edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+worksheet1.edit8.text+'%''';
            if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';
            if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';
            commandtext:=commandtext+' and (cfksrq is not null) and (cfwcrq is not null) order by pline,seq';
            if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
            if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
            open;
            first;
            while not eof do begin
              with phGant1.GridNode_AddGantTime(phGant1.RowList.Rows[i].GridTreeNode,0) do
              begin
                Start:=query2.fieldbyname('cfksrq').value+(15.0+query2.fieldbyname('cfksjs').value)/48.0;
                Stop:=query2.fieldbyname('cfwcrq').value+(15.0+query2.fieldbyname('cfwcjs').value)/48.0;
                Style:=gtsPipe;
                Color:=$00A2F1DC+j*$000030A0;
                //Color:=RGB(5+random(250),5+random(250),5+random(250));
                TextCollection.AddText(query2.fieldbyname('j_no').value+'-'+query2.fieldbyname('j2_job').value+'-'+query2.fieldbyname('rwo').value+'-'+query2.fieldbyname('fccs').value+'('+query2.fieldbyname('acol').value+')',0,0);
                UserVariantReference:=query2.fieldbyname('pline').value+';'+inttostr(query2.fieldbyname('seq').value)+'('+inttostr(i)+')';
                if ((query2.fieldbyname('flag3').value>='1s') and (query2.fieldbyname('flag3').value<='99s')) or ((query2.fieldbyname('flag3').value>='x') and (query2.fieldbyname('flag3').value<='x4')) then
                CanEdit:=False else CanEdit:=True;
              end;
              j:=j+1;
              application.ProcessMessages;
              next;
            end;
          end;
          i:=i+1;
          application.ProcessMessages;
          next;
        end;
      end;
    for i:=0 to phGant1.RowList.Count-1 do begin
      phGant1.RowList.Rows[I].TimeItems_CanMove := True; ;
      phGant1.RowList.Rows[I].TimeItems_CanChangeRow := True;
      phGant1.RowList.Rows[I].TimeItems_CanResize := False;
      //phGant1.RowList.Rows[I].CollisionDetection := True;
    end;
    //phGant1.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmschedule_gantt.showgantt1(const pline: string;
  const i: integer);
var
  j,k:integer;
  cust,styleno,tshop,cstyle,tplant:string;
  the1:TphDataEntity;
begin
  //
  screen.Cursor:=crSQLWait;
  try
    //
    {
    for j:=0 to phGant1.RowList.Rows[i].DataLists.Count-1 do begin
      for k:=0 to phGant1.RowList.Rows[i].DataLists.Items[j].Count-1 do begin
        the1:=phGant1.RowList.Rows[i].DataLists.Items[j].Items[k];
        phGant1.RemoveGantTime(TphDataEntity_GantTime(the1));
      end;
    end;
    }

    cust:=worksheet1.edit1.text;
    tshop:=worksheet1.edit4.text;
    cstyle:=worksheet1.edit5.text;
    tplant:=worksheet1.edit6.text;
          j:=0;
          with query2 do begin
            close;
            params.clear;
            if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
            if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
            //commandtext:='select distinct pline,seq,j_no,j2_job,cwo,rwo,acol,fccs,scqty,cfksrq,cfksjs,cfwcrq,cfwcjs from tblshedule where yzh=0 and pline='''+query1.fieldbyname('pline').value+'''';
                        //+'where pline='''+query1.fieldbyname('pline').value+''' and yzh=0 and (cfksrq is not null) and (cfwcrq is not null) order by pline,seq';
            commandtext:='select * from tblshedule where yzh=0 and pline='''+pline+'''';
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
            if worksheet1.combobox5.text>'' then commandtext:=commandtext+' and flag2='''+worksheet1.combobox5.text+'''';
            if worksheet1.chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^'')) or (dta in (''1'',''5''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
            if worksheet1.chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
            if worksheet1.chk3.Checked then commandtext:=commandtext+' and plan_date is null';
            if worksheet1.chk4.Checked then commandtext:=commandtext+' and dta in (''3'',''4'')';
            if worksheet1.chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
            if worksheet1.chk6.Checked then commandtext:=commandtext+' and substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')';
            if worksheet1.edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+worksheet1.edit8.text+'%''';
            if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';
            if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';
            commandtext:=commandtext+' and (cfksrq is not null) and (cfwcrq is not null) order by pline,seq';
            if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
            if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
            open;
            first;
            while not eof do begin
              with phGant1.GridNode_AddGantTime(phGant1.RowList.Rows[i].GridTreeNode,0) do
              begin
                Start:=query2.fieldbyname('cfksrq').value+(15.0+query2.fieldbyname('cfksjs').value)/48.0;
                Stop:=query2.fieldbyname('cfwcrq').value+(15.0+query2.fieldbyname('cfwcjs').value)/48.0;
                Style:=gtsPipe;
                Color:=$00A2F1DC+j*$000030A0;
                TextCollection.AddText(query2.fieldbyname('j_no').value+'-'+query2.fieldbyname('j2_job').value+'-'+query2.fieldbyname('rwo').value+'-'+query2.fieldbyname('fccs').value+'('+query2.fieldbyname('acol').value+')',0,0);
                UserVariantReference:=query2.fieldbyname('pline').value+';'+inttostr(query2.fieldbyname('seq').value)+'('+inttostr(i)+')';
                if ((query2.fieldbyname('flag3').value>='1s') and (query2.fieldbyname('flag3').value<='99s')) or ((query2.fieldbyname('flag3').value>='x') and (query2.fieldbyname('flag3').value<='x4')) then
                CanEdit:=False else CanEdit:=True;
              end;
              j:=j+1;
              application.ProcessMessages;
              next;
            end;
          end;
    //phGant1.RowList.Rows[i].GridTreeNode.Visible:=true;
    //phGant1.RePaint;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
