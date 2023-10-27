unit lineshiftformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, DBClient, StdCtrls, Buttons,
  GridsEh, siComp, DBGridEh2Excel_Joe;

type
  Tfrmshift = class(TForm)
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    Query1SEQ: TIntegerField;
    Query1SFT: TWideStringField;
    Query1SFTC: TWideStringField;
    Query1ST01: TTimeField;
    Query1ET01: TTimeField;
    Query1TT01: TFloatField;
    Query1LTS01: TTimeField;
    Query1LTE01: TTimeField;
    Query1LTT01: TFloatField;
    Query1ST02: TTimeField;
    Query1ET02: TTimeField;
    Query1TT02: TFloatField;
    Query1LTS02: TTimeField;
    Query1LTE02: TTimeField;
    Query1LTT02: TFloatField;
    Query1ST03: TTimeField;
    Query1ET03: TTimeField;
    Query1TT03: TFloatField;
    Query1ST04: TTimeField;
    Query1ET04: TTimeField;
    Query1TT04: TFloatField;
    Query1TT: TFloatField;
    Query1LTT: TFloatField;
    Query1TPLANT: TWideStringField;
    Query1LTS03: TTimeField;
    Query1LTE03: TTimeField;
    Query1LTT03: TFloatField;
    Query1LTS04: TTimeField;
    Query1LTE04: TTimeField;
    Query1LTT04: TFloatField;
    Query4SEQ: TIntegerField;
    Query4SFT: TWideStringField;
    Query4SFTC: TWideStringField;
    Query4ST01: TTimeField;
    Query4ET01: TTimeField;
    Query4TT01: TFloatField;
    Query4LTS01: TTimeField;
    Query4LTE01: TTimeField;
    Query4LTT01: TFloatField;
    Query4ST02: TTimeField;
    Query4ET02: TTimeField;
    Query4TT02: TFloatField;
    Query4LTS02: TTimeField;
    Query4LTE02: TTimeField;
    Query4LTT02: TFloatField;
    Query4ST03: TTimeField;
    Query4ET03: TTimeField;
    Query4TT03: TFloatField;
    Query4ST04: TTimeField;
    Query4ET04: TTimeField;
    Query4TT04: TFloatField;
    Query4TT: TFloatField;
    Query4LTT: TFloatField;
    Query4TPLANT: TWideStringField;
    Query4LTS03: TTimeField;
    Query4LTE03: TTimeField;
    Query4LTT03: TFloatField;
    Query4LTS04: TTimeField;
    Query4LTE04: TTimeField;
    Query4LTT04: TFloatField;
    Query5SEQ: TIntegerField;
    Query5SFT: TWideStringField;
    Query5SFTC: TWideStringField;
    Query5ST01: TTimeField;
    Query5ET01: TTimeField;
    Query5TT01: TFloatField;
    Query5LTS01: TTimeField;
    Query5LTE01: TTimeField;
    Query5LTT01: TFloatField;
    Query5ST02: TTimeField;
    Query5ET02: TTimeField;
    Query5TT02: TFloatField;
    Query5LTS02: TTimeField;
    Query5LTE02: TTimeField;
    Query5LTT02: TFloatField;
    Query5ST03: TTimeField;
    Query5ET03: TTimeField;
    Query5TT03: TFloatField;
    Query5ST04: TTimeField;
    Query5ET04: TTimeField;
    Query5TT04: TFloatField;
    Query5TT: TFloatField;
    Query5LTT: TFloatField;
    Query5TPLANT: TWideStringField;
    Query5LTS03: TTimeField;
    Query5LTE03: TTimeField;
    Query5LTT03: TFloatField;
    Query5LTS04: TTimeField;
    Query5LTE04: TTimeField;
    Query5LTT04: TFloatField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1ST05: TTimeField;
    Query1ET05: TTimeField;
    Query1TT05: TFloatField;
    Query1EFROM: TWideStringField;
    Query1EEND: TWideStringField;
    Query1RMK: TWideStringField;
    Query1EFM: TDateField;
    Query1EED: TDateField;
    SaveDialog1: TSaveDialog;
    siLang1: TsiLang;
    Query1WRK_DAY: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1ST01Change(Sender: TField);
    procedure Query1ST02Change(Sender: TField);
    procedure Query1ST03Change(Sender: TField);
    procedure Query1ST04Change(Sender: TField);
    procedure Query1TT01Change(Sender: TField);
    procedure Query1LTT01Change(Sender: TField);
    procedure Query4ST01Change(Sender: TField);
    procedure Query4LTS01Change(Sender: TField);
    procedure Query4ST02Change(Sender: TField);
    procedure Query4LTS02Change(Sender: TField);
    procedure Query4ST03Change(Sender: TField);
    procedure Query4ST04Change(Sender: TField);
    procedure Query4TT01Change(Sender: TField);
    procedure Query4LTT01Change(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query4NewRecord(DataSet: TDataSet);
    procedure Query4AfterPost(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Query5ST01Change(Sender: TField);
    procedure Query5LTS01Change(Sender: TField);
    procedure Query5ST02Change(Sender: TField);
    procedure Query5LTS02Change(Sender: TField);
    procedure Query5ST03Change(Sender: TField);
    procedure Query5ST04Change(Sender: TField);
    procedure Query5TT01Change(Sender: TField);
    procedure Query5LTT01Change(Sender: TField);
    procedure Query5LTS03Change(Sender: TField);
    procedure Query5LTS04Change(Sender: TField);
    procedure Query5AfterPost(DataSet: TDataSet);
    procedure Query5NewRecord(DataSet: TDataSet);
    procedure Query1ST05Change(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshift: Tfrmshift;
  logseq:integer;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmshift.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmshift:=nil;
end;

procedure Tfrmshift.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmshift.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
  if (query4.state=dsinsert) or (query4.state=dsedit) then query4.post;
  if (query5.state=dsinsert) or (query5.state=dsedit) then query5.post;
end;

procedure Tfrmshift.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select seq from tbl_shift where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(fttime,'x24',ptinput);
          params.createparam(fttime,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(fttime,'x27',ptinput);
          params.createparam(fttime,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update tbl_shift set sft=:x1,sftc=:x2,st01=:x3,et01=:x4,tt01=:x5,lts01=:x6,lte01=:x7,ltt01=:x8,'
                      +'st02=:x9,et02=:x10,tt02=:x11,lts02=:x12,lte02=:x13,ltt02=:x14,st03=:x15,et03=:x16,tt03=:x17,'
                      +'st04=:x18,et04=:x19,tt04=:x20,tt=:x21,ltt=:x22,tplant=:x23,lts03=:x24,lte03=:x25,ltt03=:x26,'
                      +'lts04=:x7,lte04=:x8,ltt04=:x29 where seq=:seq';

          if not query1.fieldbyname('sft').isnull then
          params[0].asstring:=query1.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query1.fieldbyname('sftc').isnull then
          params[1].asstring:=query1.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query1.fieldbyname('st01').isnull then
          params[2].astime:=query1.fieldbyname('st01').value;
          if not query1.fieldbyname('et01').isnull then
          params[3].astime:=query1.fieldbyname('et01').value;
          if not query1.fieldbyname('tt01').isnull then
          params[4].asfloat:=query1.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('lts01').isnull then
          params[5].astime:=query1.fieldbyname('lts01').value;
          if not query1.fieldbyname('lte01').isnull then
          params[6].astime:=query1.fieldbyname('lte01').value;
          if not query1.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query1.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('st02').isnull then
          params[8].astime:=query1.fieldbyname('st02').value;
          if not query1.fieldbyname('et02').isnull then
          params[9].astime:=query1.fieldbyname('et02').value;
          if not query1.fieldbyname('tt02').isnull then
          params[10].asfloat:=query1.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('lts02').isnull then
          params[11].astime:=query1.fieldbyname('lts02').value;
          if not query1.fieldbyname('lte02').isnull then
          params[12].astime:=query1.fieldbyname('lte02').value;
          if not query1.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query1.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('st03').isnull then
          params[14].astime:=query1.fieldbyname('st03').value;
          if not query1.fieldbyname('et03').isnull then
          params[15].astime:=query1.fieldbyname('et03').value;
          if not query1.fieldbyname('tt03').isnull then
          params[16].asfloat:=query1.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('st04').isnull then
          params[17].astime:=query1.fieldbyname('st04').value;
          if not query1.fieldbyname('et04').isnull then
          params[18].astime:=query1.fieldbyname('et04').value;
          if not query1.fieldbyname('tt04').isnull then
          params[19].asfloat:=query1.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('tt').isnull then
          params[20].asfloat:=query1.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('ltt').isnull then
          params[21].asfloat:=query1.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asstring:=query1.fieldbyname('tplant').value;
          if not query1.fieldbyname('lts03').isnull then
          params[23].astime:=query1.fieldbyname('lts03').value;
          if not query1.fieldbyname('lte03').isnull then
          params[24].astime:=query1.fieldbyname('lte03').value;
          if not query1.fieldbyname('ltt03').isnull then
          params[25].asfloat:=query1.fieldbyname('ltt03').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('lts04').isnull then
          params[26].astime:=query1.fieldbyname('lts04').value;
          if not query1.fieldbyname('lte04').isnull then
          params[27].astime:=query1.fieldbyname('lte04').value;
          if not query1.fieldbyname('ltt04').isnull then
          params[28].asfloat:=query1.fieldbyname('ltt04').value
          else params[28].asfloat:=0;
          params[29].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_shift set ';
          if not query1.fieldbyname('sft').isnull then
          str1:=str1+'sft='''+query1.fieldbyname('sft').value+''','
          else str1:=str1+'sft='''',';
          if not query1.fieldbyname('sftc').isnull then
          str1:=str1+'sftc='''+query1.fieldbyname('sftc').value+''','
          else str1:=str1+'sftc='''',';
          if not query1.fieldbyname('st01').isnull then
          str1:=str1+'st01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st01').value)+''','
          else str1:=str1+'st01=null,';
          if not query1.fieldbyname('et01').isnull then
          str1:=str1+'et01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et01').value)+''','
          else str1:=str1+'et01=null,';
          if not query1.fieldbyname('tt01').isnull then
          str1:=str1+'tt01='+query1.fieldbyname('tt01').asstring+','
          else str1:=str1+'tt01=0,';
          if not query1.fieldbyname('lts01').isnull then
          str1:=str1+'lts01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts01').value)+''','
          else str1:=str1+'lts01=null,';
          if not query1.fieldbyname('lte01').isnull then
          str1:=str1+'lte01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte01').value)+''','
          else str1:=str1+'lte01=null,';
          if not query1.fieldbyname('ltt01').isnull then
          str1:=str1+'ltt01='+query1.fieldbyname('ltt01').asstring+','
          else str1:=str1+'ltt01=0,';
          if not query1.fieldbyname('st02').isnull then
          str1:=str1+'st02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st02').value)+''','
          else str1:=str1+'st02=null,';
          if not query1.fieldbyname('et02').isnull then
          str1:=str1+'et02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et02').value)+''','
          else str1:=str1+'et02=null,';
          if not query1.fieldbyname('tt02').isnull then
          str1:=str1+'tt02='+query1.fieldbyname('tt02').asstring+','
          else str1:=str1+'tt02=0,';
          if not query1.fieldbyname('lts02').isnull then
          str1:=str1+'lts02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts02').value)+''','
          else str1:=str1+'lts02=null,';
          if not query1.fieldbyname('lte02').isnull then
          str1:=str1+'lte02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte02').value)+''','
          else str1:=str1+'lte02=null,';
          if not query1.fieldbyname('ltt02').isnull then
          str1:=str1+'ltt02='+query1.fieldbyname('ltt02').asstring+','
          else str1:=str1+'ltt02=0,';
          if not query1.fieldbyname('st03').isnull then
          str1:=str1+'st03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st03').value)+''','
          else str1:=str1+'st03=null,';
          if not query1.fieldbyname('et03').isnull then
          str1:=str1+'et03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et03').value)+''','
          else str1:=str1+'et03=null,';
          if not query1.fieldbyname('tt03').isnull then
          str1:=str1+'tt03='+query1.fieldbyname('tt03').asstring+','
          else str1:=str1+'tt03=0,';
          if not query1.fieldbyname('st04').isnull then
          str1:=str1+'st04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st04').value)+''','
          else str1:=str1+'st04=null,';
          if not query1.fieldbyname('et04').isnull then
          str1:=str1+'et04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et04').value)+''','
          else str1:=str1+'et04=null,';
          if not query1.fieldbyname('tt04').isnull then
          str1:=str1+'tt04='+query1.fieldbyname('tt04').asstring+','
          else str1:=str1+'tt04=0,';
          if not query1.fieldbyname('st05').isnull then
          str1:=str1+'st05='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st05').value)+''','
          else str1:=str1+'st05=null,';
          if not query1.fieldbyname('et05').isnull then
          str1:=str1+'et05='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et05').value)+''','
          else str1:=str1+'et05=null,';
          if not query1.fieldbyname('tt05').isnull then
          str1:=str1+'tt05='+query1.fieldbyname('tt05').asstring+','
          else str1:=str1+'tt05=0,';
          if not query1.fieldbyname('tt').isnull then
          str1:=str1+'tt='+query1.fieldbyname('tt').asstring+','
          else str1:=str1+'tt=0,';
          if not query1.fieldbyname('ltt').isnull then
          str1:=str1+'ltt='+query1.fieldbyname('ltt').asstring+','
          else str1:=str1+'ltt=0,';
          if not query1.fieldbyname('tplant').isnull then
          str1:=str1+'tplant='''+query1.fieldbyname('tplant').value+''','
          else str1:=str1+'tplant='''',';

          if not query1.fieldbyname('efrom').isnull then
          str1:=str1+'efrom='''+query1.fieldbyname('efrom').value+''','
          else str1:=str1+'efrom=''- -'',';
          if not query1.fieldbyname('eend').isnull then
          str1:=str1+'eend='''+query1.fieldbyname('eend').value+''','
          else str1:=str1+'eend=''- -'',';
          if not query1.fieldbyname('rmk').isnull then
          str1:=str1+'rmk='''+query1.fieldbyname('rmk').value+''','
          else str1:=str1+'rmk='''',';
          if not query1.fieldbyname('efm').isnull then
          str1:=str1+'efm='''+formatdatetime('yyyy/MM/dd',query1.fieldbyname('efm').value)+''','
          else str1:=str1+'efm=null,';
          if not query1.fieldbyname('eed').isnull then
          str1:=str1+'eed='''+formatdatetime('yyyy/MM/dd',query1.fieldbyname('eed').value)+''','
          else str1:=str1+'eed=null,';
          if not query1.fieldbyname('wrk_day').isnull then
          str1:=str1+'wrk_day='+query1.fieldbyname('wrk_day').asstring+','
          else str1:=str1+'wrk_day=null,';

          if not query1.fieldbyname('lts03').isnull then
          str1:=str1+'lts03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts03').value)+''','
          else str1:=str1+'lts03=null,';
          if not query1.fieldbyname('lte03').isnull then
          str1:=str1+'lte03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte03').value)+''','
          else str1:=str1+'lte03=null,';
          if not query1.fieldbyname('ltt03').isnull then
          str1:=str1+'ltt03='+query1.fieldbyname('ltt03').asstring+','
          else str1:=str1+'ltt03=0,';
          if not query1.fieldbyname('lts04').isnull then
          str1:=str1+'lts04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts04').value)+''','
          else str1:=str1+'lts04=null,';
          if not query1.fieldbyname('lte04').isnull then
          str1:=str1+'lte04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte04').value)+''','
          else str1:=str1+'lte04=null,';
          if not query1.fieldbyname('ltt04').isnull then
          str1:=str1+'ltt04='+query1.fieldbyname('ltt04').asstring+' '
          else str1:=str1+'ltt04=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          //showmessage(str1);
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(fttime,'x24',ptinput);
          params.createparam(fttime,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(fttime,'x27',ptinput);
          params.createparam(fttime,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(fttime,'x30',ptinput);
          params.createparam(fttime,'x31',ptinput);
          params.createparam(ftfloat,'x32',ptinput);
          params.createparam(ftstring,'x33',ptinput);
          params.createparam(ftstring,'x34',ptinput);
          params.createparam(ftstring,'x35',ptinput);
          params.createparam(ftdate,'x36',ptinput);
          params.createparam(ftdate,'x37',ptinput);
          params.createparam(ftinteger,'38',ptinput);
          commandtext:='insert into tbl_shift(sft,sftc,st01,et01,tt01,lts01,lte01,ltt01,'
                      +'st02,et02,tt02,lts02,lte02,ltt02,st03,et03,tt03,'
                      +'st04,et04,tt04,tt,ltt,seq,tplant,lts03,lte03,ltt03,lts04,lte04,ltt04,st05,et05,tt05,efrom,eend,rmk,efm,eed,wrk_day) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,'
                      +':x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,'
                      +':x18,:x19,:x20,:x21,:x22,:seq,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33,:x34,:x35,:x36,:x37,:x38)';
          if not query1.fieldbyname('sft').isnull then
          params[0].asstring:=query1.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query1.fieldbyname('sftc').isnull then
          params[1].asstring:=query1.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query1.fieldbyname('st01').isnull then
          params[2].astime:=query1.fieldbyname('st01').value;
          if not query1.fieldbyname('et01').isnull then
          params[3].astime:=query1.fieldbyname('et01').value;
          if not query1.fieldbyname('tt01').isnull then
          params[4].asfloat:=query1.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('lts01').isnull then
          params[5].astime:=query1.fieldbyname('lts01').value;
          if not query1.fieldbyname('lte01').isnull then
          params[6].astime:=query1.fieldbyname('lte01').value;
          if not query1.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query1.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('st02').isnull then
          params[8].astime:=query1.fieldbyname('st02').value;
          if not query1.fieldbyname('et02').isnull then
          params[9].astime:=query1.fieldbyname('et02').value;
          if not query1.fieldbyname('tt02').isnull then
          params[10].asfloat:=query1.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('lts02').isnull then
          params[11].astime:=query1.fieldbyname('lts02').value;
          if not query1.fieldbyname('lte02').isnull then
          params[12].astime:=query1.fieldbyname('lte02').value;
          if not query1.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query1.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('st03').isnull then
          params[14].astime:=query1.fieldbyname('st03').value;
          if not query1.fieldbyname('et03').isnull then
          params[15].astime:=query1.fieldbyname('et03').value;
          if not query1.fieldbyname('tt03').isnull then
          params[16].asfloat:=query1.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('st04').isnull then
          params[17].astime:=query1.fieldbyname('st04').value;
          if not query1.fieldbyname('et04').isnull then
          params[18].astime:=query1.fieldbyname('et04').value;
          if not query1.fieldbyname('tt04').isnull then
          params[19].asfloat:=query1.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('tt').isnull then
          params[20].asfloat:=query1.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('ltt').isnull then
          params[21].asfloat:=query1.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('tplant').isnull then
          params[23].asstring:=query1.fieldbyname('tplant').value
          else params[23].asstring:='';
          if not query1.fieldbyname('lts03').isnull then
          params[24].astime:=query1.fieldbyname('lts03').value;
          if not query1.fieldbyname('lte03').isnull then
          params[25].astime:=query1.fieldbyname('lte03').value;
          if not query1.fieldbyname('ltt03').isnull then
          params[26].asfloat:=query1.fieldbyname('ltt03').value
          else params[26].asfloat:=0;
          if not query1.fieldbyname('lts04').isnull then
          params[27].astime:=query1.fieldbyname('lts04').value;
          if not query1.fieldbyname('lte04').isnull then
          params[28].astime:=query1.fieldbyname('lte04').value;
          if not query1.fieldbyname('ltt04').isnull then
          params[29].asfloat:=query1.fieldbyname('ltt04').value
          else params[29].asfloat:=0;
          if not query1.fieldbyname('st05').isnull then
          params[30].astime:=query1.fieldbyname('st05').value;
          if not query1.fieldbyname('et05').isnull then
          params[31].astime:=query1.fieldbyname('et05').value;
          if not query1.fieldbyname('tt05').isnull then
          params[32].asfloat:=query1.fieldbyname('tt05').value
          else params[32].asfloat:=0;
          if not query1.fieldbyname('efrom').isnull then
          params[33].asstring:=query1.fieldbyname('efrom').value
          else params[33].asstring:='- -';
          if not query1.fieldbyname('eend').isnull then
          params[34].asstring:=query1.fieldbyname('eend').value
          else params[34].asstring:='- -';
          if not query1.fieldbyname('rmk').isnull then
          params[35].asstring:=query1.fieldbyname('rmk').value
          else params[35].asstring:='';
          if not query1.fieldbyname('efm').isnull then
          params[36].asdate:=query1.fieldbyname('efm').value;
          if not query1.fieldbyname('eed').isnull then
          params[37].asdate:=query1.fieldbyname('eed').value;
          if not query1.fieldbyname('wrk_day').isnull then
          params[38].asfloat:=query1.fieldbyname('wrk_day').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmshift.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_shift';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  //query1.fieldbyname('tplant').value:='SL';
end;

procedure Tfrmshift.Query1ST01Change(Sender: TField);
begin
  if not query1.fieldbyname('st01').isnull then begin
    if not query1.fieldbyname('et01').isnull then
    query1.fieldbyname('tt01').value:=query1.fieldbyname('et01').value*24.0-query1.fieldbyname('st01').value*24.0;
  end;
end;

procedure Tfrmshift.Query1ST02Change(Sender: TField);
begin
  if not query1.fieldbyname('st02').isnull then begin
    if not query1.fieldbyname('et02').isnull then
    query1.fieldbyname('tt02').value:=query1.fieldbyname('et02').value*24.0-query1.fieldbyname('st02').value*24.0;
  end;
end;

procedure Tfrmshift.Query1ST03Change(Sender: TField);
begin
  if not query1.fieldbyname('st03').isnull then begin
    if not query1.fieldbyname('et03').isnull then
    query1.fieldbyname('tt03').value:=query1.fieldbyname('et03').value*24.0-query1.fieldbyname('st03').value*24.0;
  end;
end;

procedure Tfrmshift.Query1ST04Change(Sender: TField);
begin
  if not query1.fieldbyname('st04').isnull then begin
    if not query1.fieldbyname('et04').isnull then
    query1.fieldbyname('tt04').value:=query1.fieldbyname('et04').value*24.0-query1.fieldbyname('st04').value*24.0;
  end;
end;

procedure Tfrmshift.Query1ST05Change(Sender: TField);
begin
  if not query1.fieldbyname('st05').isnull then begin
    if not query1.fieldbyname('et05').isnull then
    query1.fieldbyname('tt05').value:=query1.fieldbyname('et05').value*24.0-query1.fieldbyname('st05').value*24.0;
  end;
end;

procedure Tfrmshift.Query1TT01Change(Sender: TField);
var
  tx01,tx02,tx03,tx04:double;
begin
  tx01:=0; tx02:=0; tx03:=0; tx04:=0;
  if (not query1.fieldbyname('lts01').isnull) and (not query1.fieldbyname('et01').isnull) then begin
    if query1.fieldbyname('lts01').value<query1.fieldbyname('et01').value then tx01:=query1.fieldbyname('ltt01').value;
  end;
  if (not query1.fieldbyname('lts02').isnull) and (not query1.fieldbyname('et02').isnull) then begin
    if query1.fieldbyname('lts02').value<query1.fieldbyname('et02').value then tx02:=query1.fieldbyname('ltt02').value;
  end;
  if (not query1.fieldbyname('lts03').isnull) and (not query1.fieldbyname('et03').isnull) then begin
    if query1.fieldbyname('lts03').value<query1.fieldbyname('et03').value then tx03:=query1.fieldbyname('ltt03').value;
  end;
  if (not query1.fieldbyname('lts04').isnull) and (not query1.fieldbyname('et04').isnull) then begin
    if query1.fieldbyname('lts04').value<query1.fieldbyname('et04').value then tx04:=query1.fieldbyname('ltt04').value;
  end;
  query1.fieldbyname('tt').value:=query1.fieldbyname('tt01').value+query1.fieldbyname('tt02').value+query1.fieldbyname('tt03').value+query1.fieldbyname('tt04').value+query1.fieldbyname('tt05').value-tx01-tx02-tx03-tx04;
end;

procedure Tfrmshift.Query1LTT01Change(Sender: TField);
begin
  query1.fieldbyname('ltt').value:=query1.fieldbyname('ltt01').value+query1.fieldbyname('ltt02').value+query1.fieldbyname('ltt03').value+query1.fieldbyname('ltt04').value;
end;

procedure Tfrmshift.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this shift?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_shift where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmshift.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmshift.BitBtn4Click(Sender: TObject);
begin
  try
  if savedialog1.execute then begin
    if ExptoExcel(DBGridEh1,'Shift','')=true then showmessage('OK');
  end;
  finally
    //showmessage('succeeded!');
  end;
end;

procedure Tfrmshift.Query4NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_shift';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query4.fieldbyname('seq').value:=seq;
  query4.fieldbyname('tplant').value:='KB';
end;

procedure Tfrmshift.Query4AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query4.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select seq from tbl_shift where seq=:x1';
      params[0].asinteger:=query4.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update tbl_shift set sft=:x1,sftc=:x2,st01=:x3,et01=:x4,tt01=:x5,lts01=:x6,lte01=:x7,ltt01=:x8,'
                      +'st02=:x9,et02=:x10,tt02=:x11,lts02=:x12,lte02=:x13,ltt02=:x14,st03=:x15,et03=:x16,tt03=:x17,'
                      +'st04=:x18,et04=:x19,tt04=:x20,tt=:x21,ltt=:x22,tplant=:x23 where seq=:seq';
          if not query4.fieldbyname('sft').isnull then
          params[0].asstring:=query4.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query4.fieldbyname('sftc').isnull then
          params[1].asstring:=query4.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query4.fieldbyname('st01').isnull then
          params[2].astime:=query4.fieldbyname('st01').value;
          if not query4.fieldbyname('et01').isnull then
          params[3].astime:=query4.fieldbyname('et01').value;
          if not query4.fieldbyname('tt01').isnull then
          params[4].asfloat:=query4.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query4.fieldbyname('lts01').isnull then
          params[5].astime:=query4.fieldbyname('lts01').value;
          if not query4.fieldbyname('lte01').isnull then
          params[6].astime:=query4.fieldbyname('lte01').value;
          if not query4.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query4.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query4.fieldbyname('st02').isnull then
          params[8].astime:=query4.fieldbyname('st02').value;
          if not query4.fieldbyname('et02').isnull then
          params[9].astime:=query4.fieldbyname('et02').value;
          if not query4.fieldbyname('tt02').isnull then
          params[10].asfloat:=query4.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query4.fieldbyname('lts02').isnull then
          params[11].astime:=query4.fieldbyname('lts02').value;
          if not query4.fieldbyname('lte02').isnull then
          params[12].astime:=query4.fieldbyname('lte02').value;
          if not query4.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query4.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query4.fieldbyname('st03').isnull then
          params[14].astime:=query4.fieldbyname('st03').value;
          if not query4.fieldbyname('et03').isnull then
          params[15].astime:=query4.fieldbyname('et03').value;
          if not query4.fieldbyname('tt03').isnull then
          params[16].asfloat:=query4.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query4.fieldbyname('st04').isnull then
          params[17].astime:=query4.fieldbyname('st04').value;
          if not query4.fieldbyname('et04').isnull then
          params[18].astime:=query4.fieldbyname('et04').value;
          if not query4.fieldbyname('tt04').isnull then
          params[19].asfloat:=query4.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query4.fieldbyname('tt').isnull then
          params[20].asfloat:=query4.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query4.fieldbyname('ltt').isnull then
          params[21].asfloat:=query4.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asstring:=query4.fieldbyname('tplant').value;
          params[23].asinteger:=query4.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_shift set ';
          if not query1.fieldbyname('sft').isnull then
          str1:=str1+'sft='''+query1.fieldbyname('sft').value+''','
          else str1:=str1+'sft='''',';
          if not query1.fieldbyname('sftc').isnull then
          str1:=str1+'sftc='''+query1.fieldbyname('sftc').value+''','
          else str1:=str1+'sftc='''',';
          if not query1.fieldbyname('st01').isnull then
          str1:=str1+'st01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st01').value)+''','
          else str1:=str1+'st01=null,';
          if not query1.fieldbyname('et01').isnull then
          str1:=str1+'et01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et01').value)+''','
          else str1:=str1+'et01=null,';
          if not query1.fieldbyname('tt01').isnull then
          str1:=str1+'tt01='+query1.fieldbyname('tt01').asstring+','
          else str1:=str1+'tt01=0,';
          if not query1.fieldbyname('lts01').isnull then
          str1:=str1+'lts01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts01').value)+''','
          else str1:=str1+'lts01=null,';
          if not query1.fieldbyname('lte01').isnull then
          str1:=str1+'lte01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte01').value)+''','
          else str1:=str1+'lte01=null,';
          if not query1.fieldbyname('ltt01').isnull then
          str1:=str1+'ltt01='+query1.fieldbyname('ltt01').asstring+','
          else str1:=str1+'ltt01=0,';
          if not query1.fieldbyname('st02').isnull then
          str1:=str1+'st02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st02').value)+''','
          else str1:=str1+'st02=null,';
          if not query1.fieldbyname('et02').isnull then
          str1:=str1+'et02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et02').value)+''','
          else str1:=str1+'et02=null,';
          if not query1.fieldbyname('tt02').isnull then
          str1:=str1+'tt02='+query1.fieldbyname('tt02').asstring+','
          else str1:=str1+'tt02=0,';
          if not query1.fieldbyname('lts02').isnull then
          str1:=str1+'lts02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts02').value)+''','
          else str1:=str1+'lts02=null,';
          if not query1.fieldbyname('lte02').isnull then
          str1:=str1+'lte02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte02').value)+''','
          else str1:=str1+'lte02=null,';
          if not query1.fieldbyname('ltt02').isnull then
          str1:=str1+'ltt02='+query1.fieldbyname('ltt02').asstring+','
          else str1:=str1+'ltt02=0,';
          if not query1.fieldbyname('st03').isnull then
          str1:=str1+'st03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st03').value)+''','
          else str1:=str1+'st03=null,';
          if not query1.fieldbyname('et03').isnull then
          str1:=str1+'et03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et03').value)+''','
          else str1:=str1+'et03=null,';
          if not query1.fieldbyname('tt03').isnull then
          str1:=str1+'tt03='+query1.fieldbyname('tt03').asstring+','
          else str1:=str1+'tt03=0,';
          if not query1.fieldbyname('st04').isnull then
          str1:=str1+'st04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st04').value)+''','
          else str1:=str1+'st04=null,';
          if not query1.fieldbyname('et04').isnull then
          str1:=str1+'et04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et04').value)+''','
          else str1:=str1+'et04=null,';
          if not query1.fieldbyname('tt04').isnull then
          str1:=str1+'tt04='+query1.fieldbyname('tt04').asstring+','
          else str1:=str1+'tt04=0,';
          if not query1.fieldbyname('tt').isnull then
          str1:=str1+'tt='+query1.fieldbyname('tt').asstring+','
          else str1:=str1+'tt=0,';
          if not query1.fieldbyname('ltt').isnull then
          str1:=str1+'ltt='+query1.fieldbyname('ltt').asstring+','
          else str1:=str1+'ltt=0,';
          str1:=str1+'tplant='''+query1.fieldbyname('tplant').value+''',';
          if not query1.fieldbyname('lts03').isnull then
          str1:=str1+'lts03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts03').value)+''','
          else str1:=str1+'lts03=null,';
          if not query1.fieldbyname('lte03').isnull then
          str1:=str1+'lte03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte03').value)+''','
          else str1:=str1+'lte03=null,';
          if not query1.fieldbyname('ltt03').isnull then
          str1:=str1+'ltt03='+query1.fieldbyname('ltt03').asstring+','
          else str1:=str1+'ltt03=0,';
          if not query1.fieldbyname('lts04').isnull then
          str1:=str1+'lts04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts04').value)+''','
          else str1:=str1+'lts04=null,';
          if not query1.fieldbyname('lte04').isnull then
          str1:=str1+'lte04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte04').value)+''','
          else str1:=str1+'lte04=null,';
          if not query1.fieldbyname('ltt04').isnull then
          str1:=str1+'ltt04='+query1.fieldbyname('ltt04').asstring+' '
          else str1:=str1+'ltt04=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          commandtext:='insert into tbl_shift(sft,sftc,st01,et01,tt01,lts01,lte01,ltt01,'
                      +'st02,et02,tt02,lts02,lte02,ltt02,st03,et03,tt03,'
                      +'st04,et04,tt04,tt,ltt,seq,tplant) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,'
                      +':x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,'
                      +':x18,:x19,:x20,:x21,:x22,:seq,:x23)';
          if not query4.fieldbyname('sft').isnull then
          params[0].asstring:=query4.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query4.fieldbyname('sftc').isnull then
          params[1].asstring:=query4.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query4.fieldbyname('st01').isnull then
          params[2].astime:=query4.fieldbyname('st01').value;
          if not query4.fieldbyname('et01').isnull then
          params[3].astime:=query4.fieldbyname('et01').value;
          if not query4.fieldbyname('tt01').isnull then
          params[4].asfloat:=query4.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query4.fieldbyname('lts01').isnull then
          params[5].astime:=query4.fieldbyname('lts01').value;
          if not query4.fieldbyname('lte01').isnull then
          params[6].astime:=query4.fieldbyname('lte01').value;
          if not query4.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query4.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query4.fieldbyname('st02').isnull then
          params[8].astime:=query4.fieldbyname('st02').value;
          if not query4.fieldbyname('et02').isnull then
          params[9].astime:=query4.fieldbyname('et02').value;
          if not query4.fieldbyname('tt02').isnull then
          params[10].asfloat:=query4.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query4.fieldbyname('lts02').isnull then
          params[11].astime:=query4.fieldbyname('lts02').value;
          if not query4.fieldbyname('lte02').isnull then
          params[12].astime:=query4.fieldbyname('lte02').value;
          if not query4.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query4.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query4.fieldbyname('st03').isnull then
          params[14].astime:=query4.fieldbyname('st03').value;
          if not query4.fieldbyname('et03').isnull then
          params[15].astime:=query4.fieldbyname('et03').value;
          if not query4.fieldbyname('tt03').isnull then
          params[16].asfloat:=query4.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query4.fieldbyname('st04').isnull then
          params[17].astime:=query4.fieldbyname('st04').value;
          if not query4.fieldbyname('et04').isnull then
          params[18].astime:=query4.fieldbyname('et04').value;
          if not query4.fieldbyname('tt04').isnull then
          params[19].asfloat:=query4.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query4.fieldbyname('tt').isnull then
          params[20].asfloat:=query4.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query4.fieldbyname('ltt').isnull then
          params[21].asfloat:=query4.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asinteger:=query4.fieldbyname('seq').value;
          params[23].asstring:=query4.fieldbyname('tplant').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmshift.Query4ST01Change(Sender: TField);
begin
  if not query4.fieldbyname('st01').isnull then begin
    if not query4.fieldbyname('et01').isnull then
    query4.fieldbyname('tt01').value:=query4.fieldbyname('et01').value*24.0-query4.fieldbyname('st01').value*24.0;
  end;
end;

procedure Tfrmshift.Query4LTS01Change(Sender: TField);
begin
  if not query4.fieldbyname('lts01').isnull then begin
    if not query4.fieldbyname('lte01').isnull then
    query4.fieldbyname('ltt01').value:=query4.fieldbyname('lte01').value*24.0-query4.fieldbyname('lts01').value*24.0;
  end;
end;

procedure Tfrmshift.Query4ST02Change(Sender: TField);
begin
  if not query4.fieldbyname('st02').isnull then begin
    if not query4.fieldbyname('et02').isnull then
    query4.fieldbyname('tt02').value:=query4.fieldbyname('et02').value*24.0-query4.fieldbyname('st02').value*24.0;
  end;
end;

procedure Tfrmshift.Query4LTS02Change(Sender: TField);
begin
  if not query4.fieldbyname('lts02').isnull then begin
    if not query4.fieldbyname('lte02').isnull then
    query4.fieldbyname('ltt02').value:=query4.fieldbyname('lte02').value*24.0-query4.fieldbyname('lts02').value*24.0;
  end;
end;

procedure Tfrmshift.Query4ST03Change(Sender: TField);
begin
  if not query4.fieldbyname('st03').isnull then begin
    if not query4.fieldbyname('et03').isnull then
    query4.fieldbyname('tt03').value:=query4.fieldbyname('et03').value*24.0-query4.fieldbyname('st03').value*24.0;
  end;
end;

procedure Tfrmshift.Query4ST04Change(Sender: TField);
begin
  if not query4.fieldbyname('st04').isnull then begin
    if not query4.fieldbyname('et04').isnull then
    query4.fieldbyname('tt04').value:=query4.fieldbyname('et04').value*24.0-query4.fieldbyname('st04').value*24.0;
  end;
end;

procedure Tfrmshift.Query4TT01Change(Sender: TField);
begin
  query4.fieldbyname('tt').value:=query4.fieldbyname('tt01').value+query4.fieldbyname('tt02').value+query4.fieldbyname('tt03').value+query4.fieldbyname('tt04').value;
end;

procedure Tfrmshift.Query4LTT01Change(Sender: TField);
begin
  query4.fieldbyname('ltt').value:=query4.fieldbyname('ltt01').value+query4.fieldbyname('ltt02').value;
end;

procedure Tfrmshift.BitBtn7Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this shift?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_shift where seq=:x1';
      params[0].asinteger:=query4.fieldbyname('seq').value;
      execute;
    end;
    query4.delete;
  end;
end;

procedure Tfrmshift.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;

        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='Line Shift';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
end;

procedure Tfrmshift.FormDestroy(Sender: TObject);
begin
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
  }
end;

procedure Tfrmshift.BitBtn9Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this shift?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_shift where seq=:x1';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      execute;
    end;
    query5.delete;
  end;
end;

procedure Tfrmshift.Query5LTS01Change(Sender: TField);
begin
  if not query5.fieldbyname('lts01').isnull then begin
    if not query5.fieldbyname('lte01').isnull then
    query5.fieldbyname('ltt01').value:=query5.fieldbyname('lte01').value*24.0-query5.fieldbyname('lts01').value*24.0;
  end;
end;

procedure Tfrmshift.Query5LTS02Change(Sender: TField);
begin
  if not query5.fieldbyname('lts02').isnull then begin
    if not query5.fieldbyname('lte02').isnull then
    query5.fieldbyname('ltt02').value:=query5.fieldbyname('lte02').value*24.0-query5.fieldbyname('lts02').value*24.0;
  end;
end;

procedure Tfrmshift.Query5LTT01Change(Sender: TField);
begin
  query5.fieldbyname('ltt').value:=query5.fieldbyname('ltt01').value+query5.fieldbyname('ltt02').value+query5.fieldbyname('ltt03').value+query5.fieldbyname('ltt04').value;
end;

procedure Tfrmshift.Query5ST01Change(Sender: TField);
begin
  if not query5.fieldbyname('st01').isnull then begin
    if not query5.fieldbyname('et01').isnull then
    query5.fieldbyname('tt01').value:=query5.fieldbyname('et01').value*24.0-query5.fieldbyname('st01').value*24.0;
  end;
end;

procedure Tfrmshift.Query5ST02Change(Sender: TField);
begin
  if not query5.fieldbyname('st02').isnull then begin
    if not query5.fieldbyname('et02').isnull then
    query5.fieldbyname('tt02').value:=query5.fieldbyname('et02').value*24.0-query5.fieldbyname('st02').value*24.0;
  end;
end;

procedure Tfrmshift.Query5ST03Change(Sender: TField);
begin
  if not query5.fieldbyname('st03').isnull then begin
    if not query5.fieldbyname('et03').isnull then
    query5.fieldbyname('tt03').value:=query5.fieldbyname('et03').value*24.0-query5.fieldbyname('st03').value*24.0;
  end;
end;

procedure Tfrmshift.Query5ST04Change(Sender: TField);
begin
  if not query5.fieldbyname('st04').isnull then begin
    if not query5.fieldbyname('et04').isnull then
    query5.fieldbyname('tt04').value:=query5.fieldbyname('et04').value*24.0-query5.fieldbyname('st04').value*24.0;
  end;
end;

procedure Tfrmshift.Query5TT01Change(Sender: TField);
var
  tx01,tx02,tx03,tx04:double;
begin
  tx01:=0;tx02:=0;tx03:=0;tx04:=0;
  if (not query5.fieldbyname('lts01').isnull) and (not query5.fieldbyname('et01').isnull) then begin
    if query5.fieldbyname('lts01').value<query5.fieldbyname('et01').value then tx01:=query5.fieldbyname('ltt01').value;
  end;
  if (not query5.fieldbyname('lts02').isnull) and (not query5.fieldbyname('et02').isnull) then begin
    if query5.fieldbyname('lts02').value<query5.fieldbyname('et02').value then tx02:=query5.fieldbyname('ltt02').value;
  end;
  if (not query5.fieldbyname('lts03').isnull) and (not query5.fieldbyname('et03').isnull) then begin
    if query5.fieldbyname('lts03').value<query5.fieldbyname('et03').value then tx03:=query5.fieldbyname('ltt03').value;
  end;
  if (not query5.fieldbyname('lts04').isnull) and (not query5.fieldbyname('et04').isnull) then begin
    if query5.fieldbyname('lts04').value<query5.fieldbyname('et04').value then tx04:=query5.fieldbyname('ltt04').value;
  end;
  query5.fieldbyname('tt').value:=query5.fieldbyname('tt01').value+query5.fieldbyname('tt02').value+query5.fieldbyname('tt03').value+query5.fieldbyname('tt04').value-tx01-tx02-tx03-tx04;
end;

procedure Tfrmshift.Query5LTS03Change(Sender: TField);
begin
  if not query5.fieldbyname('lts03').isnull then begin
    if not query5.fieldbyname('lte03').isnull then
    query5.fieldbyname('ltt03').value:=query5.fieldbyname('lte03').value*24.0-query5.fieldbyname('lts03').value*24.0;
  end;
end;

procedure Tfrmshift.Query5LTS04Change(Sender: TField);
begin
  if not query5.fieldbyname('lts04').isnull then begin
    if not query5.fieldbyname('lte04').isnull then
    query5.fieldbyname('ltt04').value:=query5.fieldbyname('lte04').value*24.0-query5.fieldbyname('lts04').value*24.0;
  end;
end;

procedure Tfrmshift.Query5AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query5.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select seq from tbl_shift where seq=:x1';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(fttime,'x24',ptinput);
          params.createparam(fttime,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(fttime,'x27',ptinput);
          params.createparam(fttime,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update tbl_shift set sft=:x1,sftc=:x2,st01=:x3,et01=:x4,tt01=:x5,lts01=:x6,lte01=:x7,ltt01=:x8,'
                      +'st02=:x9,et02=:x10,tt02=:x11,lts02=:x12,lte02=:x13,ltt02=:x14,st03=:x15,et03=:x16,tt03=:x17,'
                      +'st04=:x18,et04=:x19,tt04=:x20,tt=:x21,ltt=:x22,tplant=:x23,lts03=:x24,lte03=:x25,ltt03=:x26,'
                      +'lts04=:x7,lte04=:x8,ltt04=:x29 where seq=:seq';
          if not query5.fieldbyname('sft').isnull then
          params[0].asstring:=query5.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query5.fieldbyname('sftc').isnull then
          params[1].asstring:=query5.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query5.fieldbyname('st01').isnull then
          params[2].astime:=query5.fieldbyname('st01').value;
          if not query5.fieldbyname('et01').isnull then
          params[3].astime:=query5.fieldbyname('et01').value;
          if not query5.fieldbyname('tt01').isnull then
          params[4].asfloat:=query5.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query5.fieldbyname('lts01').isnull then
          params[5].astime:=query5.fieldbyname('lts01').value;
          if not query5.fieldbyname('lte01').isnull then
          params[6].astime:=query5.fieldbyname('lte01').value;
          if not query5.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query5.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query5.fieldbyname('st02').isnull then
          params[8].astime:=query5.fieldbyname('st02').value;
          if not query5.fieldbyname('et02').isnull then
          params[9].astime:=query5.fieldbyname('et02').value;
          if not query5.fieldbyname('tt02').isnull then
          params[10].asfloat:=query5.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query5.fieldbyname('lts02').isnull then
          params[11].astime:=query5.fieldbyname('lts02').value;
          if not query5.fieldbyname('lte02').isnull then
          params[12].astime:=query5.fieldbyname('lte02').value;
          if not query5.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query5.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query5.fieldbyname('st03').isnull then
          params[14].astime:=query5.fieldbyname('st03').value;
          if not query5.fieldbyname('et03').isnull then
          params[15].astime:=query5.fieldbyname('et03').value;
          if not query5.fieldbyname('tt03').isnull then
          params[16].asfloat:=query5.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query5.fieldbyname('st04').isnull then
          params[17].astime:=query5.fieldbyname('st04').value;
          if not query5.fieldbyname('et04').isnull then
          params[18].astime:=query5.fieldbyname('et04').value;
          if not query5.fieldbyname('tt04').isnull then
          params[19].asfloat:=query5.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query5.fieldbyname('tt').isnull then
          params[20].asfloat:=query5.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query5.fieldbyname('ltt').isnull then
          params[21].asfloat:=query5.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asstring:=query5.fieldbyname('tplant').value;
          if not query5.fieldbyname('lts03').isnull then
          params[23].astime:=query5.fieldbyname('lts03').value;
          if not query5.fieldbyname('lte03').isnull then
          params[24].astime:=query5.fieldbyname('lte03').value;
          if not query5.fieldbyname('ltt03').isnull then
          params[25].asfloat:=query5.fieldbyname('ltt03').value
          else params[25].asfloat:=0;
          if not query5.fieldbyname('lts04').isnull then
          params[26].astime:=query5.fieldbyname('lts04').value;
          if not query5.fieldbyname('lte04').isnull then
          params[27].astime:=query5.fieldbyname('lte04').value;
          if not query5.fieldbyname('ltt04').isnull then
          params[28].asfloat:=query5.fieldbyname('ltt04').value
          else params[28].asfloat:=0;
          params[29].asinteger:=query5.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_shift set ';
          if not query1.fieldbyname('sft').isnull then
          str1:=str1+'sft='''+query1.fieldbyname('sft').value+''','
          else str1:=str1+'sft='''',';
          if not query1.fieldbyname('sftc').isnull then
          str1:=str1+'sftc='''+query1.fieldbyname('sftc').value+''','
          else str1:=str1+'sftc='''',';
          if not query1.fieldbyname('st01').isnull then
          str1:=str1+'st01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st01').value)+''','
          else str1:=str1+'st01=null,';
          if not query1.fieldbyname('et01').isnull then
          str1:=str1+'et01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et01').value)+''','
          else str1:=str1+'et01=null,';
          if not query1.fieldbyname('tt01').isnull then
          str1:=str1+'tt01='+query1.fieldbyname('tt01').asstring+','
          else str1:=str1+'tt01=0,';
          if not query1.fieldbyname('lts01').isnull then
          str1:=str1+'lts01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts01').value)+''','
          else str1:=str1+'lts01=null,';
          if not query1.fieldbyname('lte01').isnull then
          str1:=str1+'lte01='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte01').value)+''','
          else str1:=str1+'lte01=null,';
          if not query1.fieldbyname('ltt01').isnull then
          str1:=str1+'ltt01='+query1.fieldbyname('ltt01').asstring+','
          else str1:=str1+'ltt01=0,';
          if not query1.fieldbyname('st02').isnull then
          str1:=str1+'st02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st02').value)+''','
          else str1:=str1+'st02=null,';
          if not query1.fieldbyname('et02').isnull then
          str1:=str1+'et02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et02').value)+''','
          else str1:=str1+'et02=null,';
          if not query1.fieldbyname('tt02').isnull then
          str1:=str1+'tt02='+query1.fieldbyname('tt02').asstring+','
          else str1:=str1+'tt02=0,';
          if not query1.fieldbyname('lts02').isnull then
          str1:=str1+'lts02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts02').value)+''','
          else str1:=str1+'lts02=null,';
          if not query1.fieldbyname('lte02').isnull then
          str1:=str1+'lte02='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte02').value)+''','
          else str1:=str1+'lte02=null,';
          if not query1.fieldbyname('ltt02').isnull then
          str1:=str1+'ltt02='+query1.fieldbyname('ltt02').asstring+','
          else str1:=str1+'ltt02=0,';
          if not query1.fieldbyname('st03').isnull then
          str1:=str1+'st03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st03').value)+''','
          else str1:=str1+'st03=null,';
          if not query1.fieldbyname('et03').isnull then
          str1:=str1+'et03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et03').value)+''','
          else str1:=str1+'et03=null,';
          if not query1.fieldbyname('tt03').isnull then
          str1:=str1+'tt03='+query1.fieldbyname('tt03').asstring+','
          else str1:=str1+'tt03=0,';
          if not query1.fieldbyname('st04').isnull then
          str1:=str1+'st04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('st04').value)+''','
          else str1:=str1+'st04=null,';
          if not query1.fieldbyname('et04').isnull then
          str1:=str1+'et04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('et04').value)+''','
          else str1:=str1+'et04=null,';
          if not query1.fieldbyname('tt04').isnull then
          str1:=str1+'tt04='+query1.fieldbyname('tt04').asstring+','
          else str1:=str1+'tt04=0,';
          if not query1.fieldbyname('tt').isnull then
          str1:=str1+'tt='+query1.fieldbyname('tt').asstring+','
          else str1:=str1+'tt=0,';
          if not query1.fieldbyname('ltt').isnull then
          str1:=str1+'ltt='+query1.fieldbyname('ltt').asstring+','
          else str1:=str1+'ltt=0,';
          str1:=str1+'tplant='''+query1.fieldbyname('tplant').value+''',';
          if not query1.fieldbyname('lts03').isnull then
          str1:=str1+'lts03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts03').value)+''','
          else str1:=str1+'lts03=null,';
          if not query1.fieldbyname('lte03').isnull then
          str1:=str1+'lte03='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte03').value)+''','
          else str1:=str1+'lte03=null,';
          if not query1.fieldbyname('ltt03').isnull then
          str1:=str1+'ltt03='+query1.fieldbyname('ltt03').asstring+','
          else str1:=str1+'ltt03=0,';
          if not query1.fieldbyname('lts04').isnull then
          str1:=str1+'lts04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lts04').value)+''','
          else str1:=str1+'lts04=null,';
          if not query1.fieldbyname('lte04').isnull then
          str1:=str1+'lte04='''+formatdatetime('hh:nn:ss',query1.fieldbyname('lte04').value)+''','
          else str1:=str1+'lte04=null,';
          if not query1.fieldbyname('ltt04').isnull then
          str1:=str1+'ltt04='+query1.fieldbyname('ltt04').asstring+' '
          else str1:=str1+'ltt04=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(fttime,'x3',ptinput);
          params.createparam(fttime,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(fttime,'x6',ptinput);
          params.createparam(fttime,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(fttime,'x9',ptinput);
          params.createparam(fttime,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(fttime,'x12',ptinput);
          params.createparam(fttime,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(fttime,'x15',ptinput);
          params.createparam(fttime,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(fttime,'x18',ptinput);
          params.createparam(fttime,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftfloat,'x22',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(fttime,'x24',ptinput);
          params.createparam(fttime,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(fttime,'x27',ptinput);
          params.createparam(fttime,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          commandtext:='insert into tbl_shift(sft,sftc,st01,et01,tt01,lts01,lte01,ltt01,'
                      +'st02,et02,tt02,lts02,lte02,ltt02,st03,et03,tt03,'
                      +'st04,et04,tt04,tt,ltt,seq,tplant,lts03,lte03,ltt03,lts04,lte04,ltt04) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,'
                      +':x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,'
                      +':x18,:x19,:x20,:x21,:x22,:seq,:x23,:x24,:x25,:x26,:x27,:x28,:x29)';
          if not query5.fieldbyname('sft').isnull then
          params[0].asstring:=query5.fieldbyname('sft').value
          else params[0].asstring:='';
          if not query5.fieldbyname('sftc').isnull then
          params[1].asstring:=query5.fieldbyname('sftc').value
          else params[1].asstring:='';
          if not query5.fieldbyname('st01').isnull then
          params[2].astime:=query5.fieldbyname('st01').value;
          if not query5.fieldbyname('et01').isnull then
          params[3].astime:=query5.fieldbyname('et01').value;
          if not query5.fieldbyname('tt01').isnull then
          params[4].asfloat:=query5.fieldbyname('tt01').value
          else params[4].asfloat:=0;
          if not query5.fieldbyname('lts01').isnull then
          params[5].astime:=query5.fieldbyname('lts01').value;
          if not query5.fieldbyname('lte01').isnull then
          params[6].astime:=query5.fieldbyname('lte01').value;
          if not query5.fieldbyname('ltt01').isnull then
          params[7].asfloat:=query5.fieldbyname('ltt01').value
          else params[7].asfloat:=0;
          if not query5.fieldbyname('st02').isnull then
          params[8].astime:=query5.fieldbyname('st02').value;
          if not query5.fieldbyname('et02').isnull then
          params[9].astime:=query5.fieldbyname('et02').value;
          if not query5.fieldbyname('tt02').isnull then
          params[10].asfloat:=query5.fieldbyname('tt02').value
          else params[10].asfloat:=0;
          if not query5.fieldbyname('lts02').isnull then
          params[11].astime:=query5.fieldbyname('lts02').value;
          if not query5.fieldbyname('lte02').isnull then
          params[12].astime:=query5.fieldbyname('lte02').value;
          if not query5.fieldbyname('ltt02').isnull then
          params[13].asfloat:=query5.fieldbyname('ltt02').value
          else params[13].asfloat:=0;
          if not query5.fieldbyname('st03').isnull then
          params[14].astime:=query5.fieldbyname('st03').value;
          if not query5.fieldbyname('et03').isnull then
          params[15].astime:=query5.fieldbyname('et03').value;
          if not query5.fieldbyname('tt03').isnull then
          params[16].asfloat:=query5.fieldbyname('tt03').value
          else params[16].asfloat:=0;
          if not query5.fieldbyname('st04').isnull then
          params[17].astime:=query5.fieldbyname('st04').value;
          if not query5.fieldbyname('et04').isnull then
          params[18].astime:=query5.fieldbyname('et04').value;
          if not query5.fieldbyname('tt04').isnull then
          params[19].asfloat:=query5.fieldbyname('tt04').value
          else params[19].asfloat:=0;
          if not query5.fieldbyname('tt').isnull then
          params[20].asfloat:=query5.fieldbyname('tt').value
          else params[20].asfloat:=0;
          if not query5.fieldbyname('ltt').isnull then
          params[21].asfloat:=query5.fieldbyname('ltt').value
          else params[21].asfloat:=0;
          params[22].asinteger:=query5.fieldbyname('seq').value;
          params[23].asstring:=query5.fieldbyname('tplant').value;
          if not query5.fieldbyname('lts03').isnull then
          params[24].astime:=query5.fieldbyname('lts03').value;
          if not query5.fieldbyname('lte03').isnull then
          params[25].astime:=query5.fieldbyname('lte03').value;
          if not query5.fieldbyname('ltt03').isnull then
          params[26].asfloat:=query5.fieldbyname('ltt03').value
          else params[26].asfloat:=0;
          if not query5.fieldbyname('lts04').isnull then
          params[27].astime:=query5.fieldbyname('lts04').value;
          if not query5.fieldbyname('lte04').isnull then
          params[28].astime:=query5.fieldbyname('lte04').value;
          if not query5.fieldbyname('ltt04').isnull then
          params[29].asfloat:=query5.fieldbyname('ltt04').value
          else params[29].asfloat:=0;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmshift.Query5NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_shift';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query5.fieldbyname('seq').value:=seq;
  query5.fieldbyname('tplant').value:='FJ';
end;

end.
