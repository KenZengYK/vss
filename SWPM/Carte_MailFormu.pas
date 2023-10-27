unit Carte_MailFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, DB, DBClient, IdAttachmentFile, IdText, ADODB, RzBckgnd,
  RxRichEd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo,
  cxRichEdit, ComCtrls, RzEdit;

type
  TfrmCarte_Mail = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Memo1: TMemo;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Query2: TADOQuery;
    Query3: TADOQuery;
    RzBackground1: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure gettolist;
    procedure getcclist;
    procedure StrtoStrlist(Sign: string; Str: string; var Strlist: TStringList);
  public
    { Public declarations }
    function   CheckTxt(const   src:   string):   string;
    function acc_filename(const filepath:string):string;
  end;

var
  frmCarte_Mail: TfrmCarte_Mail;

implementation

uses mainformu;

{$R *.dfm}

function TfrmCarte_Mail.acc_filename(const filepath: string): string;
var
  filep1:string;
begin
  if pos('\',filepath)>0 then filep1:=copy(filepath,pos('\',filepath)+1,200)
  else filep1:=filepath;
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  if pos('\',filep1)>0 then filep1:=copy(filep1,pos('\',filep1)+1,200);
  result:=filep1;
end;

procedure TfrmCarte_Mail.BitBtn1Click(Sender: TObject);
var
  s1,s2:string;
  i:integer;
  idatt: TIdAttachmentFile;
  idbody: TIdText;
begin
  IdSMTP1.Username:=Edit1.Text;
  IdSMTP1.Password:=Edit2.Text;
  try
    IdSMTP1.Connect;
    IdMessage1.From.Address:=Edit1.Text;

    gettolist;
    getcclist;

    IdMessage1.Subject:=Edit5.Text;

    idbody:=TIdText.Create(IdMessage1.MessageParts,IdMessage1.Body);
    idbody.CharSet:='utf-8';
    idbody.ContentType:='text/plain';
    idbody.ContentTransfer:='base64';
    idbody.Body.Add(memo1.Text);
    //idbody.Body:=cEdit1.Lines;

    if edit6.Text>'' then begin
      if fileexists(edit6.Text) then
      idatt:=TIdAttachmentFile.Create(IdMessage1.MessageParts,edit6.Text);
    end;
    IdSMTP1.Send(IdMessage1);
    Showmessage('Sent successfully, pls check your mail!');
  finally
    IdSMTP1.Disconnect(true);
    close;
  end;
end;

function TfrmCarte_Mail.CheckTxt(const src: string): string;
var
    i,pos1,pos2,pos3:integer;
    post:string;
    srclist:TStringList;

    function   Decoder(const   s: string): string;
    var
        s1,s2,s3:   integer;
        t,v:   string;
        Encoding:   char;
        hex,step:   integer;
        a1:   array[1..4]   of   byte;
        b1:   array[1..3]   of   byte;
        j:     integer;
        byte_ptr,real_bytes:   integer;
        tempedit:TEdit;
    begin
        s1:=Pos('=?',s);
        s2:=   1   ;
        hex:=   0   ;
        if   s1>0   then
              for   s2:=Length(s)-1   downto   1   do
                  if   Copy(s,s2,2)='?='   then   Break;
        if   (s1=0)   or   (s2=1)   then
              begin
                  Result:=s;
                  Exit;
              end;
        t:=Copy(s,s1+2,s2-2-s1);
        s3:=Pos('?',t);
        Delete(t,1,s3);
        If (t='') then
            Begin
                Result:=   s;
                Exit   ;
            end   ;
        Encoding:=t[1];
        Delete(t,1,2);
        v:='';
        step:=0;
        case   Encoding   of
          'Q':
            while   t<>''   do
                begin
                    case   step   of
                        0:
                          begin
                              case   t[1]   of
                                  '_':   v:=v+'   ';
                                  '=':   step:=1;
                              else   v:=v+t[1];
                              end;
                          end;
                    1:
                        begin
                            if   t[1]<='9'   then   hex:=(Ord(t[1])-Ord('0'))*16
                            else   hex:=(Ord(t[1])-55)*16;
                            step:=2;
                        end;
                    2:
                        begin
                            if   t[1]<='9'   then   hex:=hex+(Ord(t[1])-Ord('0'))
                            else   hex:=hex+Ord(t[1])-55;
                            v:=v+Chr(hex);
                            step:=0;
                        end;
                    end;
                    Delete(t,1,1);
                end;
          'B':
            begin
                byte_ptr:=0;
                for   j:=1   to   Length(t)   do
                    begin
                        Inc(byte_ptr);
                        case   t[j]   of
                            'A'..'Z':   a1[byte_ptr]:=Ord(t[j])-65;
                            'a'..'z':   a1[byte_ptr]:=Ord(t[j])-71;
                            '0'..'9':   a1[byte_ptr]:=Ord(t[j])+4;
                            '+':   a1[byte_ptr]:=62;
                            '/':   a1[byte_ptr]:=63;
                            '=':   a1[byte_ptr]:=64;
                        end;
                        if   byte_ptr=4   then
                              begin
                                  byte_ptr:=0;
                                  real_bytes:=3;
                                  if   a1[1]=64   then   real_bytes:=0;
                                  if   a1[3]=64   then
                                        begin
                                            a1[3]:=0;
                                            a1[4]:=0;
                                            real_bytes:=1;
                                        end;
                                  if   a1[4]=64   then
                                        begin
                                            a1[4]:=0;
                                            real_bytes:=2;
                                        end;
                                  b1[1]:=a1[1]*4+(a1[2]   div   16);
                                  b1[2]:=(a1[2]   mod   16)*16+(a1[3]div   4);
                                  b1[3]:=(a1[3]   mod   4)*64   +a1[4];
                                  if   (real_bytes>0)   then
                                        v:=   v   +   chr(b1[1])   ;
                                  if   (real_bytes>1)   then
                                        v:=   v   +   chr(b1[2])   ;
                                  if   (real_bytes>2)   then
                                        v:=   v   +   chr(b1[3])   ;
                              end;
                    end;
            end;
        end;
        Result:=Copy(s,1,s1-1)+v+Copy(s,s2+2,999);

        tempedit:=TEdit.Create(nil);
        try
            tempedit.Width:=0;
            tempedit.Height:=0;
            tempedit.Visible:=True;
            tempedit.Text:=Result;
            Result:=tempedit.Text;
        finally
            FreeAndNil(tempedit);
        end;
        if   Pos('***SPAM***',Result)>0   then
              result:=copy(result,pos('-',result)+1,length(result)-pos('-',result));
    end;
begin
    pos1:=Pos('=?',src);
    pos2:=   1   ;
    if   pos1>0   then
          for   pos2:=Length(src)-1   downto   1   do
              if   Copy(src,pos2,2)='?='   then   Break;
    if   (pos1=0)   or   (pos2=1)   then
          begin
              Result:=src;
              Exit;
          end;

    post:=Copy(src,pos1+2,pos2-2-pos1);
    pos3:=Pos('?',post);
    Delete(post,1,pos3);
    if (post='') then
        begin
            Result:=src;
            Exit   ;
        end   ;

    srclist:=TStringList.Create;
    try
        srclist.Clear;
        StrtoStrlist('   ',src,srclist);
        Result:='';
        for   i:=0   to   srclist.Count-1   do
            Begin
                post:=srclist.Strings[i];
                Result:=Result+Decoder(post);
            end;
    finally
        srclist.Free;
    end;
end;

procedure TfrmCarte_Mail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Mail:=nil;
end;

procedure TfrmCarte_Mail.FormShow(Sender: TObject);
begin
  edit6.Text:='';
  {
  with query2 do begin
    close;
    sql.text:='select smtphost from phdb..tbl_carte_mailserver';
    open;
    if not fieldbyname('smtphost').isnull then
    idsmtp1.host:=fieldbyname('smtphost').value
    else idsmtp1.host:='10.2.1.236';
  end;
  }
end;

procedure TfrmCarte_Mail.getcclist;
var
  s1,mal:string;
begin
  mal:=edit4.text;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  //if s1>'' then showmessage(s1);
end;

procedure TfrmCarte_Mail.gettolist;
var
  s1,mal:string;
begin
  mal:=edit3.text;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.Recipients.Add.Address:=s1;
end;

procedure TfrmCarte_Mail.SpeedButton3Click(Sender: TObject);
begin
  if opendialog1.Execute then
    edit6.Text:=opendialog1.FileName;
end;

procedure TfrmCarte_Mail.StrtoStrlist(Sign, Str: string;
  var Strlist: TStringList);
var
  temp: string;
begin
  Strlist.Text:='';
  while pos(Sign, str)> 0 do
  begin
    temp:= copy(Str,1, pos(Sign, Str)-1);
    Delete(str, 1, pos(Sign, str)+length(Sign)-1);
    Strlist.Add(temp);
  end;
  if Length(Str)> 0 then
  Strlist.Add(Str);
end;

end.
