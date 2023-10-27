unit querenformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient;

type
  Tfrmqueren = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure sendmail(const sub,lvl:string);
  end;

var
  frmqueren: Tfrmqueren;

implementation

uses mainu, siztblu, pdn_mailformu;

{$R *.dfm}

procedure Tfrmqueren.BitBtn1Click(Sender: TObject);
var
  sub,sub1:string;
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from sz_usrappr where usr='''+frmmain.combobox1.text+'''';
    open;
    if not fieldbyname('usr').isnull then begin
      sub:='尺寸表中的款號 "'+frmsiztbl.qry_appr.fieldbyname('stylno').value+'" 需要你確認， 請登錄系統進行確認。[發送者: '+query1.fieldbyname('usr_cn').value+']';
      sub1:='尺寸表中的款號 "'+frmsiztbl.qry_appr.fieldbyname('stylno').value+'" 已完成確認， 可以保存為PDF文件。[發送者: '+query1.fieldbyname('usr_cn').value+']';
      if frmsiztbl.qry_appr.fieldbyname('user1').isnull then begin
        if query1.fieldbyname('r1').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user1').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
          sendmail(sub,'1');
        end else showmessage('無法確認！');
      end else if frmsiztbl.qry_appr.fieldbyname('user2').isnull then begin
        if query1.fieldbyname('r2').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user2').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
        end else showmessage('無法確認！');
      end else if frmsiztbl.qry_appr.fieldbyname('user3').isnull then begin
        if query1.fieldbyname('r3').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user3').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
          sendmail(sub,'3');
        end else showmessage('無法確認！');
      end else if frmsiztbl.qry_appr.fieldbyname('user4').isnull then begin
        if query1.fieldbyname('r4').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user4').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
          sendmail(sub,'4');
        end else showmessage('無法確認！');
      end else if frmsiztbl.qry_appr.fieldbyname('user5').isnull then begin
        if query1.fieldbyname('r5').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user5').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
          sendmail(sub,'5');
        end else showmessage('無法確認！');
      end else if frmsiztbl.qry_appr.fieldbyname('user6').isnull then begin
        if query1.fieldbyname('r6').value=true then begin
          with frmsiztbl.qry_appr do begin
            edit;
            fieldbyname('user6').value:=query1.fieldbyname('usr_cn').value;
            post;
          end;
          sendmail(sub1,'6');
        end else showmessage('無法確認！');
      end;
    end else showmessage('你無權確認！');
  end;
end;

procedure Tfrmqueren.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmpdn_mail<>nil then frmpdn_mail:=nil;
  action:=cafree;
  frmqueren:=nil;
end;

procedure Tfrmqueren.sendmail(const sub, lvl: string);
var
  tolist,cclist:string;
begin
  screen.cursor:=crSQLWait;
  try
    tolist:='';
    with query1 do begin
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
    with query1 do begin
      close;
      commandtext:='select distinct mail from sz_usrappr where usr='''+frmmain.combobox1.text+'''';
      open;
      cclist:=fieldbyname('mail').value;
    end;
    if lvl='6' then begin
      with query1 do begin
        close;
        commandtext:='select distinct mail from sz_usrappr where r7=1';
        open;
        first;
        while not eof do begin
          if cclist>'' then cclist:=cclist+','+fieldbyname('mail').value
          else cclist:=fieldbyname('mail').value;
          application.processmessages;
          next;
        end;
      end;
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
