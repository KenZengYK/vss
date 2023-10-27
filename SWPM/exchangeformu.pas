unit exchangeformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBClient, DBCtrls, StdCtrls,
  Spin, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  Tfrmexchange = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    DBGridEh2: TDBGridEh;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    SpinEdit1: TSpinEdit;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    query6: TClientDataSet;
    DataSource3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Query5AfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure query6AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmexchange: Tfrmexchange;
  tm:tdatetime;
  pline0:string;
  seq0:integer;

implementation

uses mainformu, lwoformu, worksheet, achievingformu, skunoteformu;

{$R *.dfm}

procedure Tfrmexchange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmexchange:=nil;
end;

procedure Tfrmexchange.SpeedButton2Click(Sender: TObject);
var
  usr:string;
begin
  screen.cursor:=crSQLWait;
  try
  if spinedit1.Value>0 then begin
    if spinedit1.Value>(query1.fieldbyname('pqty').value-query1.fieldbyname('tsqty').value) then begin
      showmessage('Exchange quantity > non-sewn quantity!');
      exit;
    end;
    usr:=frmmain.ComboBox1.Text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftdatetime,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      commandtext:='execute procedure sp_skuexchange_01(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:=query5.fieldbyname('pline').value;
      params[3].asinteger:=query5.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('did').value;
      params[5].asinteger:=spinedit1.value;
      params[6].asdatetime:=tm;
      params[7].asstring:=usr;
      execute;
    end;
    with Query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                  +'and pline=:x1 and b.seq=:x2';
      params[0].asstring:=pline0;//frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=seq0;//frmlwo.query1.fieldbyname('seq').value;
      open;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmexchange.SpeedButton1Click(Sender: TObject);
var
  usr:string;
begin
  screen.cursor:=crSQLWait;
  try
  if spinedit1.Value>0 then begin
    if spinedit1.Value>(query5.fieldbyname('pqty').value-query5.fieldbyname('tsqty').value) then begin
      showmessage('Exchange quantity > non-sewn quantity!');
      exit;
    end;
    usr:=frmmain.ComboBox1.Text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftdatetime,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      commandtext:='execute procedure sp_skuexchange_01(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      params[0].asstring:=query5.fieldbyname('pline').value;
      params[1].asinteger:=query5.fieldbyname('seq').value;
      params[2].asstring:=query1.fieldbyname('pline').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query5.fieldbyname('did').value;
      params[5].asinteger:=spinedit1.value;
      params[6].asdatetime:=tm;
      params[7].asstring:=usr;
      execute;
    end;
    with Query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                  +'and pline=:x1 and b.seq=:x2';
      params[0].asstring:=pline0;//frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=seq0;//frmlwo.query1.fieldbyname('seq').value;
      open;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmexchange.Query1AfterScroll(DataSet: TDataSet);
begin
  spinedit1.Value:=query1.fieldbyname('tqty').value;
end;

procedure Tfrmexchange.Query5AfterScroll(DataSet: TDataSet);
begin
  spinedit1.Value:=query5.fieldbyname('tqty').value;
end;

procedure Tfrmexchange.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmexchange.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq from tbl_exchangenotepad where tm=:x1 and usr='''+frmmain.combobox1.text+'''';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value
    else begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select max(seq) as q1 from tbl_exchangenotepad';
        open;
        if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='insert into tbl_exchangenotepad(seq,tm,usr) values(:x1,:x2,:x3)';
        params[0].asinteger:=seq;
        params[1].asdatetime:=tm;
        params[2].asstring:=frmmain.ComboBox1.text;
        execute;
      end;
    end;
  end;
  if frmskunote=nil then frmskunote:=tfrmskunote.Create(nil);
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_exchangenotepad where seq=:x1';
    params[0].asinteger:=seq;
    open;
  end;
  frmskunote.Show;
end;

procedure Tfrmexchange.FormShow(Sender: TObject);
begin
  pline0:=query5.fieldbyname('pline').value;
  seq0:=query5.fieldbyname('seq').value;
  tm:=now;
end;

procedure Tfrmexchange.query6AfterPost(DataSet: TDataSet);
var
  str1:string;
  marks:string;
begin
  {
  if query6.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_exchangenotepad set marks=:x1 where seq=:x2';
      if not query6.fieldbyname('marks').isnull then
      params[0].asstring:=query6.fieldbyname('marks').value
      else params[0].asstring:='';
      params[1].asinteger:=query6.fieldbyname('seq').value;
      execute;
    end;
  end;
  }
  if not query6.fieldbyname('marks').isnull then
  marks:=query6.fieldbyname('marks').value
  else marks:='';
  str1:='update tbl_exchangenotepad set marks='''+marks+''' where seq='+query6.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  
end;

end.
