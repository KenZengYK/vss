unit newcap_1stchoice_dtlpastformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, rxToolEdit, Buttons, GridsEh, DBGridEh, DB,
  DBClient;

type
  Tfrmnewcap_1stchoice_dtlpast = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    xh1: TRadioButton;
    xh2: TRadioButton;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_1stchoice_dtlpast: Tfrmnewcap_1stchoice_dtlpast;

implementation

uses mainformu, newcap_1stchoice_detailformu;

{$R *.dfm}

procedure Tfrmnewcap_1stchoice_dtlpast.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    tm:=now;
    screen.cursor:=crSQLWait;
    try
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        commandtext:='execute procedure sp_cap_pastbyline(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asstring:=label2.caption;
        params[2].asdate:=dateedit1.date;
        params[3].asdate:=dateedit2.date;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        if xh1.checked then
          commandtext:='select distinct cust,flag6,sum(wf1*sah)/sum(sah) as wf1,sum(wf*sah)/sum(sah) as wf,sum(eff*sah)/sum(sah) as eff,sum(gsd*sah)/sum(sah) as gsd '
                      +'from tbl_cap_pastbyline where tm=:x1 group by cust,flag6 order by cust,flag6'
        else if xh2.checked then
          commandtext:='select distinct ''All'' as cust,flag6,sum(wf1*sah)/sum(sah) as wf1,sum(wf*sah)/sum(sah) as wf,sum(eff*sah)/sum(sah) as eff,sum(gsd*sah)/sum(sah) as gsd '
                      +'from tbl_cap_pastbyline where tm=:x1 group by flag6 order by flag6';
        params[0].asdatetime:=tm;
        open;
      end;
    finally
      screen.cursor:=crDefault;
    end;
    {
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      if xh1.checked then
        commandtext:='select distinct cust,flag6,sum(wf1*sah)/sum(sah) as wf1,sum(wf*sah)/sum(sah) as wf,sum(eff*sah)/sum(sah) as eff,sum(gsd*sah)/sum(sah) as gsd '
                    +'from view_pline_flag6_effsah_new where pline=:x1 and dt1>=:x2 and dt1<=:x3 group by cust,flag6 order by cust,flag6'
      else if xh2.checked then
        commandtext:='select distinct ''All'' as cust,flag6,sum(wf1*sah)/sum(sah) as wf1,sum(wf*sah)/sum(sah) as wf,sum(eff*sah)/sum(sah) as eff,sum(gsd*sah)/sum(sah) as gsd '
                    +'from view_pline_flag6_effsah_new where pline=:x1 and dt1>=:x2 and dt1<=:x3 group by flag6 order by flag6';
      params[0].asstring:=label2.caption;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      open;
    end;
    }
  end;
end;

procedure Tfrmnewcap_1stchoice_dtlpast.BitBtn2Click(Sender: TObject);
begin
  if xh2.checked then begin
    if application.messagebox('Apply to this week?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with frmnewcap_1stchoice_dtl.query1 do begin
        edit;
        fieldbyname('eff').value:=query1.fieldbyname('eff').value;
        fieldbyname('sah').value:=query1.fieldbyname('gsd').value;
        post;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_1stchoice_dtlpast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_1stchoice_dtlpast:=nil;
end;

procedure Tfrmnewcap_1stchoice_dtlpast.FormShow(Sender: TObject);
var
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if m=1 then begin
    dateedit1.date:=encodedate(y-1,12,1);
    dateedit2.date:=encodedate(y-1,12,31);
  end else begin
    dateedit1.date:=encodedate(y,m-1,1);
    dateedit2.date:=encodedate(y,m,1)-1;
  end;
  bitbtn1click(self);
end;

end.
