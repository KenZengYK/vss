unit custtransformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, ExtCtrls, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, myChkBox, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmcusttrans = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    opt1: TRadioGroup;
    gb1: TGroupBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport3: TppReport;
    ppHeaderBand4: TppHeaderBand;
    title001: TppLabel;
    title003: TppLabel;
    ppLabel138: TppLabel;
    ppDBText69: TppDBText;
    ppLabel139: TppLabel;
    ppLabel142: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel143: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppShape7: TppShape;
    ppLabel144: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLine156: TppLine;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape8: TppShape;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine190: TppLine;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel195: TppLabel;
    ts001: TppDBCalc;
    ppShape9: TppShape;
    ppMemo3: TppMemo;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppDBText76: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    cust001: TppLabel;
    gb01: TppLabel;
    dt001: TppLabel;
    ppLabel3: TppLabel;
    dt002: TppLabel;
    opt01: TCheckBox;
    opt02: TCheckBox;
    x002: TppLabel;
    x001: TppLabel;
    cmp001: TmyCheckBox;
    cmp002: TmyCheckBox;
    cmp201: TmyCheckBox;
    cmp302: TmyCheckBox;
    cmp400: TmyCheckBox;
    cmp401: TmyCheckBox;
    cmp402: TmyCheckBox;
    cmps01: TmyCheckBox;
    cmps02: TmyCheckBox;
    cmps03: TmyCheckBox;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine111: TppLine;
    ppLine127: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel104: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine3: TppLine;
    ppLine126: TppLine;
    ppLine128: TppLine;
    ppLine130: TppLine;
    ppLine134: TppLine;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLine19: TppLine;
    ppLine4: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine33: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine90: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure opt1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcusttrans: Tfrmcusttrans;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmcusttrans.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  try
  if (combobox1.Text>'') or (combobox2.Text>'') then begin
    tm:=now;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      commandtext:='execute procedure sp_gen_tmptransit_cust1(:x0,:x1,:x2,:x3,:x4)';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=combobox2.text;
      params[2].asdate:=dateedit1.date;
      params[3].asdate:=dateedit2.date;
      params[4].asdatetime:=tm;
      execute;
    end;
    if opt1.ItemIndex=0 then begin
      //pass - complete
      if opt01.Checked then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit_1 where tm=:x1';
        commandtext:=commandtext+' and cmp=1 and cmp1=1 and cmp2=1 and cmp3=1 and cmp4=1 and cmps=1 and cmpi=1';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        commandtext:=commandtext+' order by tplant,j_no,j2_job';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Tracking of Transit Flow Pass Performance  ';
          title003.Caption:=' - '+opt01.Caption;
          cust001.Caption:=combobox2.text;
          gb01.Caption:=gb1.Caption+' from ';
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if pos('test',application.ExeName)>0 then title003.Caption:=title003.caption+' -Test';
          //else title003.Caption:='';
          x001.Caption:='(Actual) ';
          x002.Caption:='(Actual) ';
          ppReport3.Print;
        end;
      end;
      end;
      //pass - mishandling
      if opt02.Checked then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit_1 where tm=:x1';
        commandtext:=commandtext+' and cmpi=1 and (cmp=0 or cmp1=0 or cmps=0 or cmp2=0 or cmp3=0 or cmp4=0)';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        commandtext:=commandtext+' order by tplant,j_no,j2_job';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Tracking of Transit Flow Pass Performance  ';
          title003.Caption:=' - '+opt02.Caption;
          cust001.Caption:=combobox2.text;
          gb01.Caption:=gb1.Caption+' from ';
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if pos('test',application.ExeName)>0 then title003.Caption:=title003.caption+' -Test';
          //else title003.Caption:='';
          x001.Caption:='(Actual) ';
          x002.Caption:='(Actual) ';
          ppReport3.Print;
        end;
      end;
      end;
    end else if opt1.ItemIndex=1 then begin
      //present - incomplete
      if opt01.Checked then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit_1 where tm=:x1';
        commandtext:=commandtext+' and ((cmp=0 and cmp1=0 and cmps=0 and cmp2=0 and cmp3=0 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=0 and cmps=0 and cmp2=0 and cmp3=0 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=1 and cmps=0 and cmp2=0 and cmp3=0 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=1 and cmps=1 and cmp2=0 and cmp3=0 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=1 and cmps=1 and cmp2=1 and cmp3=0 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=1 and cmps=1 and cmp2=1 and cmp3=1 and cmp4=0 and cmpi=0)';
        commandtext:=commandtext+' or (cmp=1 and cmp1=1 and cmps=1 and cmp2=1 and cmp3=1 and cmp4=1 and cmpi=0))';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        commandtext:=commandtext+' order by tplant,j_no,j2_job';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Tracking of Transit Flow Present Performance  ';
          title003.Caption:=' - '+opt01.caption;
          cust001.Caption:=combobox2.text;
          gb01.Caption:=gb1.Caption+' from ';
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if pos('test',application.ExeName)>0 then title003.Caption:=title003.caption+' -Test';
          //else title003.Caption:='';
          x001.Caption:='(Curr) ';
          x002.Caption:='(Proj.) ';
          ppReport3.Print;
        end;
      end;
      end;
      //present - mishandling
      if opt02.Checked then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit_1 where tm=:x1';
        commandtext:=commandtext+' and cmpi=0 and (((cmp=0 or cmp1=0 or cmps=0 or cmp2=0 or cmp3=0) and cmp4=1)';
        commandtext:=commandtext+' or ((cmp=0 or cmp1=0 or cmps=0 or cmp2=0) and cmp3=1)';
        commandtext:=commandtext+' or ((cmp=0 or cmp1=0 or cmps=0) and cmp2=1)';
        commandtext:=commandtext+' or ((cmp=0 or cmp1=0) and cmps=1)';
        commandtext:=commandtext+' or (cmp=0 and cmp1=1))';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        commandtext:=commandtext+' order by tplant,j_no,j2_job';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Tracking of Transit Flow Present Performance  ';
          title003.Caption:=' - '+opt02.caption;
          cust001.Caption:=combobox2.text;
          gb01.Caption:=gb1.Caption+' from ';
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if pos('test',application.ExeName)>0 then title003.Caption:=title003.caption+' -Test';
          //else title003.Caption:='';
          x001.Caption:='(Curr) ';
          x002.Caption:='(Proj.) ';
          ppReport3.Print;
        end;
      end;
      end;
    end;
  end else begin
    showmessage('Please select factory or customer!');
    combobox1.SetFocus;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcusttrans.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcusttrans.opt1Click(Sender: TObject);
begin
  if opt1.ItemIndex=0 then begin
    //opt01.Enabled:=false;
    //opt02.Enabled:=false;
    gb1.Caption:='Invoiced Period';
    opt01.Caption:='Complete';
    opt02.Caption:='Mishandling';
  end else if (opt1.ItemIndex=1) then begin
    gb1.Caption:='Projected Ex-fty Period';
    opt01.Caption:='Incomplete';
    opt02.Caption:='Mishandling';
    //opt01.Enabled:=true;
    //opt02.Enabled:=true;
  end;
  opt01.Checked:=true;
  opt02.Checked:=true;
end;

procedure Tfrmcusttrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcusttrans:=nil;
end;

procedure Tfrmcusttrans.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct substr(j_no,1,4) as cust from tblshedule where cfksrq>=:x1 and j_no not like ''ANFF%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox1.text='SL' then params[0].asdate:=encodedate(2007,8,27)
    else if combobox1.Text='KB' then params[0].asdate:=encodedate(2007,10,29);
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcusttrans.ComboBox1Change(Sender: TObject);
begin
  if (combobox1.text='') or (combobox1.text='SL') then begin
    if dateedit1.date<encodedate(2007,8,27) then
    dateedit1.Date:=encodedate(2007,8,27);
  end else if combobox1.text='KB' then begin
    if dateedit1.date<encodedate(2007,10,29) then
    dateedit1.Date:=encodedate(2007,10,29);
  end;
end;

procedure Tfrmcusttrans.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  {
  if s001.value>ts001.Value then s001.Font.Color:=clGreen
  else if s001.value<ts001.Value then s001.Font.Color:=clRed
  else s001.Font.Color:=clBlack;
  if s002.value>s001.Value then s002.Font.Color:=clGreen
  else if s002.value<s001.Value then s002.Font.Color:=clRed
  else s002.Font.Color:=clBlack;
  if s003.value>s002.Value then s003.Font.Color:=clGreen
  else if s003.value<s002.Value then s003.Font.Color:=clRed
  else s003.Font.Color:=clBlack;
  if s004.value>s003.Value then s004.Font.Color:=clGreen
  else if s004.value<s003.Value then s004.Font.Color:=clRed
  else s004.Font.Color:=clBlack;
  if s005.value>s004.Value then s005.Font.Color:=clGreen
  else if s005.value<s004.Value then s005.Font.Color:=clRed
  else s005.Font.Color:=clBlack;
  if s006.value>s005.Value then s006.Font.Color:=clGreen
  else if s006.value<s005.Value then s006.Font.Color:=clRed
  else s006.Font.Color:=clBlack;
  if s007.value>s006.Value then s007.Font.Color:=clGreen
  else if s007.value<s006.Value then s007.Font.Color:=clRed
  else s007.Font.Color:=clBlack;
  }
end;

procedure Tfrmcusttrans.ppDetailBand4BeforePrint(Sender: TObject);
begin
  {
  if query3.fieldbyname('tqty').value>query3.fieldbyname('pqty').value then q001.Font.Color:=clGreen
  else if query3.fieldbyname('tqty').value<query3.fieldbyname('pqty').value then q001.Font.Color:=clRed
  else q001.Font.color:=clBlack;
  if query3.fieldbyname('ttqty').value>query3.fieldbyname('tqty').value then q002.Font.Color:=clGreen
  else if query3.fieldbyname('ttqty').value<query3.fieldbyname('tqty').value then q002.Font.Color:=clRed
  else q002.Font.color:=clBlack;
  if query3.fieldbyname('tsqty').value>query3.fieldbyname('ttqty').value then q003.Font.Color:=clGreen
  else if query3.fieldbyname('tsqty').value<query3.fieldbyname('ttqty').value then q003.Font.Color:=clRed
  else q003.Font.color:=clBlack;
  if query3.fieldbyname('tpqty').value>query3.fieldbyname('tsqty').value then q004.Font.Color:=clGreen
  else if query3.fieldbyname('tpqty').value<query3.fieldbyname('tsqty').value then q004.Font.Color:=clRed
  else q004.Font.color:=clBlack;
  if query3.fieldbyname('tfqty').value>query3.fieldbyname('tpqty').value then q005.Font.Color:=clGreen
  else if query3.fieldbyname('tfqty').value<query3.fieldbyname('tpqty').value then q005.Font.Color:=clRed
  else q005.Font.color:=clBlack;
  if query3.fieldbyname('teqty').value>query3.fieldbyname('tfqty').value then q006.Font.Color:=clGreen
  else if query3.fieldbyname('teqty').value<query3.fieldbyname('tfqty').value then q006.Font.Color:=clRed
  else q006.Font.color:=clBlack;
  if query3.fieldbyname('tiqty').value>query3.fieldbyname('teqty').value then q007.Font.Color:=clGreen
  else if query3.fieldbyname('tiqty').value<query3.fieldbyname('teqty').value then q007.Font.Color:=clRed
  else q007.Font.color:=clBlack;
  }
  cmp001.checked:=query3.fieldbyname('cmp').value;
  cmp002.checked:=query3.fieldbyname('cmp1').value;
  cmps03.checked:=query3.fieldbyname('cmps').value;
  cmp201.checked:=query3.fieldbyname('cmp2').value;
  cmp302.checked:=query3.fieldbyname('cmp3').value;
  cmp400.checked:=query3.fieldbyname('cmp4').value;
  cmp401.checked:=query3.fieldbyname('cmp4').value;
  cmp402.checked:=query3.fieldbyname('cmpi').value;
end;

end.
