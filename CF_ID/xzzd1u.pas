unit xzzd1u;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGridEh, Buttons, StdCtrls, DBClient, Menus;

type
  Tfrmxzzd1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    SpeedButton5: TSpeedButton;
    DBGridEh3: TDBGridEh;
    Label3: TLabel;
    dsgch: TDataSource;
    dszdh: TDataSource;
    dsxzzd: TDataSource;
    SpeedButton6: TSpeedButton;
    query2: TClientDataSet;
    query1: TClientDataSet;
    query3: TClientDataSet;
    query4: TClientDataSet;
    gch: TClientDataSet;
    zdh: TClientDataSet;
    xzzd: TClientDataSet;
    Edit1: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure dsgchDataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzzd1: Tfrmxzzd1;

implementation
uses mainu, fllru;
{$R *.DFM}

procedure Tfrmxzzd1.SpeedButton1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then
  begin
    query1.close;
    query1.params.clear;
    query1.params.createparam(ftstring,'gch',ptinput);
    query1.params.createparam(ftstring,'zdh',ptinput);
    query1.params.createparam(ftstring,'kh',ptinput);
    query1.params.createparam(ftstring,'sh',ptinput);
    query1.params.createparam(ftstring,'prjno',ptinput);
    query1.commandtext:='select * from cut_fljh where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and prjno=:prjno';
    query1.params[0].asstring:=zdh.fieldbyname('gch').value;
    query1.params[1].asstring:=dbgrideh1.fields[0].value;
    query1.params[2].asstring:=dbgrideh1.fields[1].value;
    query1.params[3].asstring:=dbgrideh1.fields[2].value;
    query1.params[4].asstring:=frmfllr.edit1.text;
    query1.open;
    if query1.recordcount=0 then
    begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'zds',ptinput);
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='insert into cut_fljh(gch,zdh,kh,sh,zds,prjno) values(:gch,:zdh,:kh,:sh,:zds,:prjno)';
        params[0].asstring:=zdh.fieldbyname('gch').value;
        params[1].asstring:=zdh.fieldbyname('zdh').value;
        params[2].asstring:=zdh.fieldbyname('kh').value;
        params[3].asstring:=zdh.fieldbyname('sh').value;
        params[4].asinteger:=zdh.fieldbyname('zds').value;
        params[5].asstring:=frmfllr.edit1.text;
        execute;
      end;
      xzzd.append;
      xzzd.fieldbyname('prjno').value:=frmfllr.edit1.text;
      xzzd.fieldbyname('gch').value:=zdh.fieldbyname('gch').value;
      xzzd.fieldbyname('zdh').value:=zdh.fieldbyname('zdh').value;
      xzzd.fieldbyname('kh').value:=zdh.fieldbyname('kh').value;
      xzzd.fieldbyname('sh').value:=zdh.fieldbyname('sh').value;
      xzzd.fieldbyname('zds').value:=zdh.fieldbyname('zds').value;
      xzzd.post;
    end;
  end;
end;

procedure Tfrmxzzd1.SpeedButton2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  query2.close;
  query2.params.clear;
  query2.params.createparam(ftstring,'gch',ptinput);
  query2.commandtext:='select * from cut_fczd1 where gch=:gch';
  query2.params[0].asstring:=gch.fieldbyname('gch').value;
  query2.open;
  if query2.recordcount>0 then
  begin
    query2.first;
    while not query2.eof do
    begin
      query3.close;
      query3.params.clear;
      query3.params.createparam(ftstring,'gch',ptinput);
      query3.params.createparam(ftstring,'zdh',ptinput);
      query3.params.createparam(ftstring,'kh',ptinput);
      query3.params.createparam(ftstring,'sh',ptinput);
      query3.params.createparam(ftstring,'prjno',ptinput);
      query3.commandtext:='select * from cut_fljh where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and prjno=:prjno';
      query3.params[0].asstring:=gch.fieldbyname('gch').value;
      query3.params[1].asstring:=query2.fieldbyname('zdh').value;
      query3.params[2].asstring:=query2.fieldbyname('kh').value;
      query3.params[3].asstring:=query2.fieldbyname('sh').value;
      query3.params[4].asstring:=frmfllr.edit1.text;
      query3.open;
      if query3.recordcount=0 then
      begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftinteger,'zds',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          commandtext:='insert into cut_fljh(gch,zdh,kh,sh,zds,prjno) values(:gch,:zdh,:kh,:sh,:zds,:prjno)';
          params[0].asstring:=gch.fieldbyname('gch').value;
          params[1].asstring:=query2.fieldbyname('zdh').value;
          params[2].asstring:=query2.fieldbyname('kh').value;
          params[3].asstring:=query2.fieldbyname('sh').value;
          params[4].asinteger:=query2.fieldbyname('zds').value;
          params[5].asstring:=frmfllr.edit1.text;
          execute;
        end;
        xzzd.append;
        xzzd.fieldbyname('prjno').value:=frmfllr.edit1.text;
        xzzd.fieldbyname('gch').value:=gch.fieldbyname('gch').value;
        xzzd.fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
        xzzd.fieldbyname('kh').value:=query2.fieldbyname('kh').value;
        xzzd.fieldbyname('sh').value:=query2.fieldbyname('sh').value;
        xzzd.fieldbyname('zds').value:=query2.fieldbyname('zds').value;
        xzzd.post;
      end;
      query2.next;
    end;
    xzzd.applyupdates(0);
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmxzzd1.SpeedButton3Click(Sender: TObject);
begin
  if not dbgrideh2.fields[0].isnull then
  begin
    if application.messagebox('要移除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='delete from cut_fljh where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asstring:=xzzd.fieldbyname('prjno').value;
        params[1].asstring:=xzzd.fieldbyname('gch').value;
        params[2].asstring:=xzzd.fieldbyname('zdh').value;
        params[3].asstring:=xzzd.fieldbyname('kh').value;
        params[4].asstring:=xzzd.fieldbyname('sh').value;
        execute;
      end;
      xzzd.delete;
    end;
  end;
end;

procedure Tfrmxzzd1.SpeedButton4Click(Sender: TObject);
begin
  if not dbgrideh2.fields[0].isnull then
  begin
    if application.messagebox('要全部移除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      query1.close;
      query1.params.clear;
      query1.params.createparam(ftstring,'prjno',ptinput);
      query1.commandtext:='delete from cut_fljh where prjno=:prjno';
      query1.params[0].asstring:=frmfllr.Edit1.text;
      query1.execute;
      with xzzd do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_fljh where prjno=:prjno';
        params[0].asstring:=frmfllr.Edit1.text;
        open;
      end;
    end;
  end;
end;

procedure Tfrmxzzd1.FormShow(Sender: TObject);
begin
  gch.close;
  gch.params.clear;
  gch.commandtext:='select distinct gch from cut_fczd1';
  gch.open;
end;

procedure Tfrmxzzd1.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxzzd1.SpeedButton6Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_fljh where prjno=:prjno';
    params[0].asstring:=frmfllr.edit1.text;
    open;
    if recordcount>0 then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_fljy3 where prjno=:prjno';
        params[0].asstring:=frmfllr.edit1.text;
        open;
        if recordcount=0 then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            commandtext:='execute cut_jsfljy :prjno';
            params[0].asstring:=frmfllr.edit1.text;
            execute;
          end;
        end
        else showmessage('This project has existed!');
      end;
    end;
  end;
  with frmfllr.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_fljy1 where prjno=:prjno';
    params[0].asstring:=frmfllr.edit1.text;
    open;
  end;
  close;
  screen.cursor:=crDefault;
end;

procedure Tfrmxzzd1.dsgchDataChange(Sender: TObject; Field: TField);
begin
  with zdh do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    commandtext:='select distinct gch,zdh,kh,sh,zds from cut_fczd1 where gch=:gch';
    params[0].asstring:=gch.fieldbyname('gch').value;
    open;
  end;
end;

procedure Tfrmxzzd1.Edit1Change(Sender: TObject);
begin
  gch.FindNearest([edit1.text]);
end;

procedure Tfrmxzzd1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxzzd1:=nil;
end;

end.
