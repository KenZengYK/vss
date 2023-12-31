unit xzzdu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGridEh, Buttons, StdCtrls, DBClient, Menus,
  GridsEh, ADODB;

type
  Tfrmxzzd = class(TForm)
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
    gch: TClientDataSet;
    zdh: TClientDataSet;
    xzzd: TClientDataSet;
    Edit1: TEdit;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Query3: TADOQuery;
    Query4: TADOQuery;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Label5: TLabel;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzzd: Tfrmxzzd;

implementation
uses mainu, fcjyu, FRN_ReviewFormu, fcjhformu;
{$R *.DFM}

procedure Tfrmxzzd.SpeedButton1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then
  begin
    //showmessage('01');
    query1.close;
    //query1.Parameters.Clear;
    query1.sql.text:='select * from cut_fcjh where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and prjno=:prjno';
    query1.parameters[0].value:=zdh.fieldbyname('gch').value;
    query1.parameters[1].value:=dbgrideh1.fields[0].value;
    query1.parameters[2].value:=dbgrideh1.fields[1].value;
    query1.parameters[3].value:=dbgrideh1.fields[2].value;
    if Label5.Caption='jy' then
    query1.parameters[4].value:=frmfcjy.edit1.text
    else if label5.Caption='jh' then
    query1.parameters[4].value:=frmfcjh.edit1.text;
    query1.open;
    //showmessage('02');
    if query1.recordcount=0 then
    begin
      with query2 do begin
        close;
        //Parameters.Clear;
        sql.text:='insert into cut_fcjh(gch,zdh,kh,sh,zds,prjno) values(:gch,:zdh,:kh,:sh,:zds,:prjno)';
        parameters[0].value:=zdh.fieldbyname('gch').value;
        parameters[1].value:=zdh.fieldbyname('zdh').value;
        parameters[2].value:=zdh.fieldbyname('kh').value;
        parameters[3].value:=zdh.fieldbyname('sh').value;
        parameters[4].value:=zdh.fieldbyname('zds').value;
        if Label5.Caption='jy' then
        parameters[5].value:=frmfcjy.edit1.text
        else if label5.Caption='jh' then
        parameters[5].value:=frmfcjh.edit1.text;
        execsql;
      end;
      xzzd.append;
      if Label5.Caption='jy' then
      xzzd.fieldbyname('prjno').value:=frmfcjy.edit1.text
      else if label5.Caption='jh' then
      xzzd.fieldbyname('prjno').value:=frmfcjh.edit1.text;
      xzzd.fieldbyname('gch').value:=zdh.fieldbyname('gch').value;
      xzzd.fieldbyname('zdh').value:=zdh.fieldbyname('zdh').value;
      xzzd.fieldbyname('kh').value:=zdh.fieldbyname('kh').value;
      xzzd.fieldbyname('sh').value:=zdh.fieldbyname('sh').value;
      xzzd.fieldbyname('zds').value:=zdh.fieldbyname('zds').value;
      xzzd.post;
    end;
  end;
end;

procedure Tfrmxzzd.SpeedButton2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  query2.close;
  //query2.Parameters.Clear;
  query2.sql.text:='select * from cut_fczd1 where gch='''+gch.fieldbyname('gch').value+'''';
  //query2.parameters[0].value:=gch.fieldbyname('gch').value;
  query2.open;
  if query2.recordcount>0 then
  begin
    query2.first;
    while not query2.eof do
    begin
      query3.close;
      //query3.Parameters.Clear;
      query3.sql.text:='select * from cut_fcjh where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and prjno=:prjno';
      query3.parameters[0].value:=gch.fieldbyname('gch').value;
      query3.parameters[1].value:=query2.fieldbyname('zdh').value;
      query3.parameters[2].value:=query2.fieldbyname('kh').value;
      query3.parameters[3].value:=query2.fieldbyname('sh').value;
      if Label5.Caption='jy' then
      query3.parameters[4].value:=frmfcjy.edit1.text
      else if label5.Caption='jh' then
      query3.parameters[4].value:=frmfcjh.edit1.text;
      query3.open;
      if query3.recordcount=0 then
      begin
        with query4 do begin
          close;
          //Parameters.Clear;
          sql.text:='insert into cut_fcjh(gch,zdh,kh,sh,zds,prjno) values(:gch,:zdh,:kh,:sh,:zds,:prjno)';
          parameters[0].value:=gch.fieldbyname('gch').value;
          parameters[1].value:=query2.fieldbyname('zdh').value;
          parameters[2].value:=query2.fieldbyname('kh').value;
          parameters[3].value:=query2.fieldbyname('sh').value;
          parameters[4].value:=query2.fieldbyname('zds').value;
          if Label5.Caption='jy' then
          parameters[5].value:=frmfcjy.edit1.text
          else if label5.Caption='jh' then
          parameters[5].value:=frmfcjh.edit1.text;
          execsql;
        end;

        xzzd.append;
        if Label5.Caption='jy' then
        xzzd.fieldbyname('prjno').value:=frmfcjy.edit1.text
        else if label5.Caption='jh' then
        xzzd.fieldbyname('prjno').value:=frmfcjh.edit1.text;
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

procedure Tfrmxzzd.SpeedButton3Click(Sender: TObject);
begin
  if not dbgrideh2.fields[0].isnull then
  begin
    if application.messagebox('要移除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      //showmessage('11');
      with query1 do begin
        close;
        //Parameters.Clear;
        sql.text:='delete from cut_fcjh where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        parameters[0].value:=xzzd.fieldbyname('prjno').value;
        parameters[1].value:=xzzd.fieldbyname('gch').value;
        parameters[2].value:=xzzd.fieldbyname('zdh').value;
        parameters[3].value:=xzzd.fieldbyname('kh').value;
        parameters[4].value:=xzzd.fieldbyname('sh').value;
        execsql;
      end;
      //showmessage('12');
      xzzd.delete;
    end;
  end;
end;

procedure Tfrmxzzd.SpeedButton4Click(Sender: TObject);
var
  cf_id:string;
begin
    if Label5.Caption='jy' then
    cf_id:=frmfcjy.edit1.text
    else if label5.Caption='jh' then
    cf_id:=frmfcjh.edit1.text;

  if not dbgrideh2.fields[0].isnull then
  begin
    if application.messagebox('要全部移除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      //showmessage('21');
      query1.close;
      //query1.Parameters.Clear;
      query1.sql.text:='delete from cut_fcjh where prjno='''+cf_id+'''';
      //query1.parameters[0].value:=frmfcjy.Edit1.text;
      query1.execsql;
      //showmessage('22');
      with xzzd do begin
        close;
        params.clear;
        //params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select * from cut_fcjh where prjno='''+cf_id+'''';
        //params[0].asstring:=cf_id;
        open;
      end;
    end;
  end;
end;

procedure Tfrmxzzd.FormShow(Sender: TObject);
begin
  //showmessage('0');
  //{
  gch.close;
  gch.params.clear;
  gch.commandtext:='select distinct gch from cut_fczd1 where ccrq>=''2023-05-01''';
  gch.open;
  //}
  //gch.Close;
  //showmessage('1');
end;

procedure Tfrmxzzd.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxzzd.SpeedButton6Click(Sender: TObject);
var
  cf_id:string;
begin
  screen.cursor:=crHourglass;
  //showmessage('31');
    if Label5.Caption='jy' then
    cf_id:=frmfcjy.edit1.text
    else if label5.Caption='jh' then
    cf_id:=frmfcjh.edit1.text;

  with query1 do begin
    close;
    //Parameters.Clear;
    sql.text:='select * from cut_fcjh where prjno='''+cf_id+'''';
    //parameters[0].value:=frmfcjy.edit1.text;
    open;
    //showmessage('32');
    if recordcount>0 then begin
      with query2 do begin
        close;
        //Parameters.Clear;
        sql.text:='select * from cut_fcjy3 where prjno='''+cf_id+'''';
        //parameters[0].value:=frmfcjy.edit1.text;
        open;
        if recordcount=0 then begin
          with query3 do begin
            close;
            sql.text:='execute cut_jsfcjy '''+cf_id+'''';
            //parameters[0].value:=frmfcjy.edit1.text;
            execsql;
          end;
        end
        else showmessage('This cutting flow id# is existed!');
      end;
    end;
  end;
  if Label5.Caption='jy' then begin
    with frmfcjy.fcjy1 do begin
      close;
      commandtext:='select * from cut_fcjy1 where prjno=:prjno';
      parameters[0].value:=cf_id;
      open;
    end;
  end else if label5.Caption='jh' then begin
    with frmfcjh.fcjy1 do begin
      close;
      commandtext:='select * from cut_fcjy1 where prjno=:prjno';
      parameters[0].value:=cf_id;
      open;
    end;
  end;
  close;

  screen.cursor:=crDefault;
end;

procedure Tfrmxzzd.dsgchDataChange(Sender: TObject; Field: TField);
begin
  with zdh do begin
    close;
    params.clear;
    //params.createparam(ftstring,'gch',ptinput);
    commandtext:='select distinct gch,zdh,kh,sh,zds from cut_fczd1 where gch='''+gch.fieldbyname('gch').value+'''';//:gch';
    //params[0].asstring:=gch.fieldbyname('gch').value;
    open;
  end;
end;

procedure Tfrmxzzd.Edit1Change(Sender: TObject);
begin
  gch.FindNearest([edit1.text]);
end;

procedure Tfrmxzzd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxzzd:=nil;
end;

procedure Tfrmxzzd.BitBtn3Click(Sender: TObject);
begin
  if frmFRN_Review=nil then frmFRN_Review:=tfrmFRN_Review.create(nil);
  frmFRN_Review.Label3.caption:='5';
  frmFRN_Review.show;
end;

procedure Tfrmxzzd.Edit2Change(Sender: TObject);
begin
  if edit2.Text='' then begin
    gch.close;
    gch.params.clear;
    gch.commandtext:='select distinct gch from cut_fczd1';
    gch.open;
  end else begin
    gch.close;
    gch.params.clear;
    gch.commandtext:='select distinct a.gch from cut_fczd1 a,cut_frn_detail b,cut_frn_master c where a.gch=b.prjno and b.frn_id=c.frn_id and c.frn_no='''+edit2.text+'''';
    gch.open;
  end;
end;

end.
