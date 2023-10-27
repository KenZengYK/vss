unit fullyreleasedformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons, DBClient, ADODB,
  cxCalendar;

type
  Tfrmfullyreleased = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxView1: TcxGridDBBandedTableView;
    cxJ_NO: TcxGridDBBandedColumn;
    cxJ2_JOB: TcxGridDBBandedColumn;
    cxARTNO: TcxGridDBBandedColumn;
    cxSCQTY: TcxGridDBBandedColumn;
    cxSHPQTY: TcxGridDBBandedColumn;
    cxDEDUCTQTY: TcxGridDBBandedColumn;
    cxBALQTY: TcxGridDBBandedColumn;
    cxYQLCRQ: TcxGridDBBandedColumn;
    cxPDN_A: TcxGridDBBandedColumn;
    cxCMPL: TcxGridDBBandedColumn;
    cxFULLYRELEASED: TcxGridDBBandedColumn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    cxFTY: TcxGridDBBandedColumn;
    qry1: TADOQuery;
    qry2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure cxView1DataControllerFilterChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure calc_somettl;
  end;

var
  frmfullyreleased: Tfrmfullyreleased;
  tm:tdatetime;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmfullyreleased.BitBtn1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date-90;//encodedate(2021,7,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftdate,'x6',ptinput);
    params.createparam(ftdate,'x7',ptinput);
    commandtext:='execute procedure sp_swpm_fullyreleased(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    params[0].asdatetime:=tm;
    params[1].asstring:=combobox1.text;
    params[2].asstring:=combobox2.text;
    params[3].asstring:=edit1.text;
    params[4].asstring:=edit2.text;
    params[5].asdate:=dt1;//dateedit1.date;
    params[6].asdate:=dt2;//dateedit2.date;
    //showmessage(commandtext);
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_swpm_fullyreleased where tm=:x1';
    params[0].asdatetime:=tm;
    open;
  end;
  calc_somettl;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmfullyreleased.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmfullyreleased.calc_somettl;
var
  sfilter1:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct j_no) as c1,count(distinct artno) as c2 from tbl_swpm_fullyreleased where tm=:x1';
    if cxview1.DataController.Filter.FilterText>'' then begin
      sfilter1:=stringreplace(cxview1.DataController.Filter.FilterText,'= NULL','IS NULL',[rfReplaceAll]);
      commandtext:=commandtext+' and '+sfilter1;//cxview1.DataController.Filter.FilterText;
    end;
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('c1').isnull then
      cxView1.DataController.Summary.FooterSummaryValues[5]:=fieldbyname('c1').asstring;
    if not fieldbyname('c2').isnull then
      cxView1.DataController.Summary.FooterSummaryValues[6]:=fieldbyname('c2').asstring;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct fullyreleased) as c1 from tbl_swpm_fullyreleased where tm=:x1 and fullyreleased is not null';
    if cxview1.DataController.Filter.FilterText>'' then begin
      sfilter1:=stringreplace(cxview1.DataController.Filter.FilterText,'= NULL','IS NULL',[rfReplaceAll]);
      commandtext:=commandtext+' and '+sfilter1;//cxview1.DataController.Filter.FilterText;
    end;
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('c1').isnull then
      cxView1.DataController.Summary.FooterSummaryValues[7]:=fieldbyname('c1').asstring;
  end;
end;

procedure Tfrmfullyreleased.cxView1DataControllerFilterChanged(Sender: TObject);
begin
  calc_somettl;
end;

procedure Tfrmfullyreleased.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmfullyreleased:=nil;
end;

procedure Tfrmfullyreleased.Query1AfterPost(DataSet: TDataSet);
begin
  if not query1.fieldbyname('fullyreleased').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='execute procedure sp_swpm_updfullyreleased :x1,:x2,:x3';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('artno').value;
      params[2].asdate:=query1.fieldbyname('fullyreleased').value;
      execute;
    end;
    with qry1 do begin
      close;
      sql.text:='delete from phdb..tbl_proj_fullreleased where projectno=:x1 and styleno=:x2';
      parameters[0].value:=query1.fieldbyname('j_no').value;
      parameters[1].value:=query1.fieldbyname('artno').value;
      execsql;
    end;
    with qry1 do begin
      close;
      sql.text:='insert into phdb..tbl_proj_fullreleased(projectno,styleno,released_dt) values(:x1,:x2,:x3)';
      parameters[0].value:=query1.fieldbyname('j_no').value;
      parameters[1].value:=query1.fieldbyname('artno').value;
      parameters[2].value:=query1.fieldbyname('fullyreleased').value;
      execsql;
    end;
  end;
end;

end.
