unit szapprformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmszappr = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    lbllvl: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure appr(const stylelist,lvl,usr_cn:string);
    procedure sendmail(const sub,lvl:string);
  end;

var
  frmszappr: Tfrmszappr;

implementation

uses mainu, siztblu, pdn_mailformu;

{$R *.dfm}

procedure Tfrmszappr.appr(const stylelist, lvl, usr_cn: string);
var
  sub,sub1:string;
begin
  sub:='尺寸表中的款號 "'+stylelist+'" 需要你確認， 請登錄系統進行確認。[發送者: '+usr_cn+']';
  sub1:='尺寸表中的款號 "'+stylelist+'" 已完成確認， 可以保存為PDF文件。[發送者: '+usr_cn+']';
  if lvl<'6' then sendmail(sub,lvl)
  else sendmail(sub1,lvl);
end;

procedure Tfrmszappr.BitBtn1Click(Sender: TObject);
var
  i:integer;
  stylelist,lvl,usr_cn:string;
begin
  if query1.State=dsedit then query1.Post;
  stylelist:='';
  lvl:=lbllvl.Caption;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from sz_usrappr where usr='''+frmmain.combobox1.text+'''';
    open;
    usr_cn:=fieldbyname('usr_cn').value;
  end;
  for i:=0 to dbgrideh1.RowCount-1 do begin
    if dbgrideh1.Fields[7].Value=true then begin
      if stylelist>'' then stylelist:=stylelist+','+dbgrideh1.Fields[0].value
      else stylelist:=dbgrideh1.Fields[0].Value;
      with query2 do begin
        close;
        params.clear;
        if lvl='2' then
          commandtext:='update sz_lappr set user2='''+usr_cn+''' where stylno='''+dbgrideh1.Fields[0].value+''''
        else if lvl='3' then
          commandtext:='update sz_lappr set user3='''+usr_cn+''' where stylno='''+dbgrideh1.Fields[0].value+''''
        else if lvl='4' then
          commandtext:='update sz_lappr set user4='''+usr_cn+''' where stylno='''+dbgrideh1.Fields[0].value+''''
        else if lvl='5' then
          commandtext:='update sz_lappr set user5='''+usr_cn+''' where stylno='''+dbgrideh1.Fields[0].value+''''
        else if lvl='6' then
          commandtext:='update sz_lappr set user6='''+usr_cn+''' where stylno='''+dbgrideh1.Fields[0].value+'''';
        execute;
      end;
    end;
  end;
  if stylelist>'' then begin
    appr(stylelist,lvl,usr_cn);
    close;
  end;
end;

procedure Tfrmszappr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmszappr:=nil;
end;

procedure Tfrmszappr.FormShow(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    lbllvl.Caption:='1';
    with query1 do begin
      close;
      params.clear;
      commandtext:='exec sp_sz_apprlist '''+frmmain.combobox1.text+'''';
      open;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from sz_usrappr where usr='''+frmmain.combobox1.text+'''';
      open;
      if not fieldbyname('r1').isnull then begin
        if fieldbyname('r1').value=true then dbgrideh1.readonly:=true
        else dbgrideh1.readonly:=false;
      end else dbgrideh1.readonly:=true;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmszappr.Query1AfterPost(DataSet: TDataSet);
var
  i:integer;
begin
  lbllvl.Caption:='1';
  for i := 0 to dbgrideh1.RowCount - 1 do begin
    if dbgrideh1.Fields[7].Value=true then begin
      if dbgrideh1.Fields[2].isnull then lbllvl.Caption:='2'
      else if dbgrideh1.Fields[3].isnull then lbllvl.Caption:='3'
      else if dbgrideh1.Fields[4].isnull then lbllvl.Caption:='4'
      else if dbgrideh1.Fields[5].isnull then lbllvl.Caption:='5'
      else if dbgrideh1.Fields[6].isnull then lbllvl.Caption:='6';
    end;
  end;
end;

procedure Tfrmszappr.Query1BeforePost(DataSet: TDataSet);
var
  lvl:string;
begin
  lvl:=lbllvl.Caption;
  if lvl<>'1' then begin
    if lvl='2' then begin
      if not dbgrideh1.Fields[2].isnull then query1.Cancel;
    end;
    if lvl='3' then begin
      if dbgrideh1.Fields[2].Isnull then query1.Cancel;
      if not dbgrideh1.Fields[3].isnull then query1.Cancel;
    end;
    if lvl='4' then begin
      if dbgrideh1.Fields[3].Isnull then query1.Cancel;
      if not dbgrideh1.Fields[4].isnull then query1.Cancel;
    end;
    if lvl='5' then begin
      if dbgrideh1.Fields[4].Isnull then query1.Cancel;
      if not dbgrideh1.Fields[5].isnull then query1.Cancel;
    end;
    if lvl='6' then begin
      if dbgrideh1.Fields[5].Isnull then query1.Cancel;
      if not dbgrideh1.Fields[6].isnull then query1.Cancel;
    end;
  end;
end;

procedure Tfrmszappr.sendmail(const sub, lvl: string);
var
  tolist,cclist:string;
begin
  screen.cursor:=crSQLWait;
  try
    tolist:='';
    with query2 do begin
      close;
      commandtext:='select distinct mail from sz_usrappr';
      if lvl='1' then commandtext:=commandtext+' where ((r2=1) or (r3=1))'
      else if lvl='3' then commandtext:=commandtext+' where r4=1'
      else if lvl='4' then commandtext:=commandtext+' where r5=1'
      else if lvl='5' then commandtext:=commandtext+' where r6=1'
      else if lvl='6' then commandtext:=commandtext+' where r1=1';
      open;
      first;
      while not eof do begin
        if tolist>'' then tolist:=tolist+','+fieldbyname('mail').value
        else tolist:=fieldbyname('mail').value;
        application.processmessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      commandtext:='select distinct mail from sz_usrappr where usr='''+frmmain.combobox1.text+'''';
      open;
      cclist:=fieldbyname('mail').value;
    end;
    if frmpdn_mail=nil then frmpdn_mail:=tfrmpdn_mail.create(nil);
    frmpdn_mail.edit3.text:=tolist;
    frmpdn_mail.edit4.text:=cclist;
    frmpdn_mail.edit5.text:=sub;
    frmpdn_mail.memo1.text:='';
    frmpdn_mail.bitbtn1click(self);
    showmessage('已發郵件通知相關人員！');
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
