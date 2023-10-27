unit coretechscheduleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, GridsEh, DBGridEh, Mask, rxToolEdit,
  DB, DBClient;

type
  Tfrmcoretechschedule = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure show_coretechdata;
  public
    { Public declarations }
  end;

var
  frmcoretechschedule: Tfrmcoretechschedule;

implementation

uses mainformu, coretechformu;

{$R *.dfm}

procedure Tfrmcoretechschedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcoretechschedule:=nil;
end;

procedure Tfrmcoretechschedule.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcoretechschedule.Edit1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tblshedule where tplant=''SL'' and yzh=0 and iecls1 in (''2'',''5'') and cfksrq>=:x1';
    if edit1.text>'' then commandtext:=commandtext+' and tshop='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and pline='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    commandtext:=commandtext+' order by cfksrq,pline,seq';
    params[0].asdate:=date;
    open;
  end;
end;

procedure Tfrmcoretechschedule.SpeedButton1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    if query1.active=true then begin
      if not query1.fieldbyname('pline').isnull then begin
        if dateedit1.date>0 then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdate,'x3',ptinput);
            commandtext:='execute procedure sp_gen_coretech_d_new(:x1,:x2,:x3)';
            params[0].asstring:=query1.fieldbyname('pline').value;
            params[1].asinteger:=query1.fieldbyname('seq').value;
            params[2].asdate:=dateedit1.date;
            execute;
          end;
          show_coretechdata;
        end else showmessage('Please select a core tech start date!');
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcoretechschedule.SpeedButton2Click(Sender: TObject);
begin
  if not query2.fieldbyname('pline').isnull then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select pline from tbl_coretech_d where pline=:x1 and seq=:x2 and sjcl>0';
      params[0].asstring:=query2.fieldbyname('pline').value;
      params[1].asinteger:=query2.fieldbyname('seq').value;
      open;
      if not fieldbyname('pline').IsNull then
        showmessage('Can not delete it!')
      else begin
        if application.MessageBox('Delete this QN?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='delete from tbl_coretech_d where pline=:x1 and seq=:x2';
            params[0].asstring:=query2.fieldbyname('pline').value;
            params[1].asinteger:=query2.fieldbyname('seq').value;
            execute;
          end;
          show_coretechdata;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcoretechschedule.show_coretechdata;
begin
  if dateedit1.date>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct pline,seq,cline,dt,j_no,j2_job,acol,rwo,fccs,cstyle,qty,exfty from tbl_coretech_d where dt=:x1';
      params[0].asdate:=dateedit1.date;
      open;
    end;
  end;
end;

end.
