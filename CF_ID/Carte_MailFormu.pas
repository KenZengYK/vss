unit Carte_MailFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, DB, DBClient, IdAttachmentFile, IdText, ADODB, RzBckgnd,
  RxRichEd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo,
  cxRichEdit, ComCtrls, RzEdit, EncdDecd, StrUtils, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmCarte_Mail = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Memo1: TMemo;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    Label7: TLabel;
    OpenDialog1: TOpenDialog;
    Query2: TADOQuery;
    Query3: TADOQuery;
    RzBackground1: TRzBackground;
    Label9: TLabel;
    cxCheckComboBox1: TcxCheckComboBox;
    cxCheckComboBox2: TcxCheckComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckComboBox1PropertiesChange(Sender: TObject);
    procedure cxCheckComboBox2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure gettolist;
    procedure getcclist;
    procedure StrtoStrlist(Sign: string; Str: string; var Strlist: TStringList);
    procedure savetocclist;
  public
    { Public declarations }
    function   CheckTxt(const   src:   string):   string;
    function acc_filename(const filepath:string):string;
    function ReversePos(SubStr, S: String): Integer;
  end;

var
  frmCarte_Mail: TfrmCarte_Mail;

implementation

uses mainu, frnformu, jhmjfxformu, cmpl_actionlog1formu;

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
    savetocclist;

    IdMessage1.Subject:=Edit5.Text;

    idbody:=TIdText.Create(IdMessage1.MessageParts,IdMessage1.Body);
    idbody.CharSet:='utf-8';
    idbody.ContentType:='text/plain';
    idbody.ContentTransfer:='base64';
    idbody.Body.Add(memo1.Text);

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

procedure TfrmCarte_Mail.cxCheckComboBox1PropertiesChange(Sender: TObject);
begin
  if cxcheckcombobox1.text>'' then edit3.text:=cxcheckcombobox1.text;
end;

procedure TfrmCarte_Mail.cxCheckComboBox2PropertiesChange(Sender: TObject);
begin
  if cxcheckcombobox2.text>'' then edit4.text:=cxcheckcombobox2.text;
end;

procedure TfrmCarte_Mail.Edit3KeyPress(Sender: TObject; var Key: Char);
var
  s1,s2:string;
  i,j:integer;
begin
  if key=#13 then begin
    if edit3.text>'' then begin
      i:=ReversePos(',',edit3.text);
      s1:=copy(edit3.text,i+1,20);
      with query3 do begin
        close;
        sql.text:='select mail from phdb..tbl_carte_user where mail like '''+trim(s1)+'%''';
        open;
        if not fieldbyname('mail').isnull then s2:=fieldbyname('mail').value
        else s2:=s1;
        for j := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do begin
          if cxCheckComboBox1.Properties.Items[j].Description=s2 then
            cxCheckComboBox1.States[j]:=cbsChecked;
        end;
      end;
      edit3.text:=copy(edit3.text,1,i)+s2+',';
      edit3.selstart:=length(edit3.text);
    end;
  end;end;

procedure TfrmCarte_Mail.Edit4KeyPress(Sender: TObject; var Key: Char);
var
  s1,s2:string;
  i,j:integer;
begin
  if key=#13 then begin
    if edit4.text>'' then begin
      i:=ReversePos(',',edit4.text);
      s1:=copy(edit4.text,i+1,20);
      with query3 do begin
        close;
        sql.text:='select mail from phdb..tbl_carte_user where mail like '''+trim(s1)+'%''';
        open;
        if not fieldbyname('mail').isnull then s2:=fieldbyname('mail').value
        else s2:=s1;
        for j := 0 to cxCheckComboBox2.Properties.Items.Count - 1 do begin
          if cxCheckComboBox2.Properties.Items[j].Description=s2 then
            cxCheckComboBox2.States[j]:=cbsChecked;
        end;
      end;
      edit4.text:=copy(edit4.text,1,i)+s2+',';
      edit4.selstart:=length(edit4.text);
    end;
  end;
end;

procedure TfrmCarte_Mail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Mail:=nil;
end;

procedure TfrmCarte_Mail.FormShow(Sender: TObject);
begin
  listbox1.visible:=false;
  listbox1.items.clear;
  cxcheckcombobox1.properties.items.clear;
  cxcheckcombobox2.properties.items.clear;
  //cxCheckComboBox1.Properties.Items.AddCheckItem()
  with query2 do begin
    close;
    sql.text:='select distinct mail from phdb..tbl_carte_user where mail>''''';
    open;
    first;
    while not eof do begin
      listbox1.items.add(fieldbyname('mail').value);
      cxcheckcombobox1.properties.items.add.Description:=fieldbyname('mail').value;
      cxcheckcombobox2.properties.items.add.Description:=fieldbyname('mail').value;
      application.processmessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    sql.text:='select smtphost from phdb..tbl_carte_mailserver';
    open;
    if not fieldbyname('smtphost').isnull then
    idsmtp1.host:=fieldbyname('smtphost').value
    else idsmtp1.host:='10.1.1.236';
  end;
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
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
  if pos(',',mal)>0 then begin
    s1:=copy(mal,1,pos(',',mal)-1);
    mal:=copy(mal,length(s1)+2,length(mal));
  end else begin
    s1:=mal;
    mal:='';
  end;
  if s1>'' then IdMessage1.CCList.Add.Address:=s1;
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

procedure TfrmCarte_Mail.ListBox1Click(Sender: TObject);
begin
  if label7.caption='TO' then begin
    if pos(listbox1.items[listbox1.itemindex],edit3.text)=0 then begin
      if edit3.text>'' then
      edit3.text:=trim(edit3.text)+listbox1.items[listbox1.itemindex]+','
      else edit3.text:=listbox1.items[listbox1.itemindex]+',';
    end;
  end else if label7.caption='CC' then begin
    if pos(listbox1.items[listbox1.itemindex],edit4.text)=0 then begin
      if edit4.text>'' then
      edit4.text:=trim(edit4.text)+listbox1.items[listbox1.itemindex]+','
      else edit4.text:=listbox1.items[listbox1.itemindex]+',';
    end;
  end;
end;

function TfrmCarte_Mail.ReversePos(SubStr, S: String): Integer;
var
  i : Integer;
begin
  i := Pos(ReverseString(SubStr), ReverseString(S));
  if i > 0 then i := Length(S) - i - Length(SubStr) + 2;
  Result := i;
end;

procedure TfrmCarte_Mail.savetocclist;
begin
  {
  if label9.caption='Request' then begin
    frmCarte_Requestaction.adodataset1.edit;
    frmCarte_Requestaction.adodataset1.fieldbyname('tolist').value:=edit3.text;
    frmCarte_Requestaction.adodataset1.fieldbyname('cclist').value:=edit4.text;
    frmCarte_Requestaction.adodataset1.post;
  end else if label9.caption='Group' then begin
    frmCarte_Groupaction.adodataset1.edit;
    frmCarte_Groupaction.adodataset1.fieldbyname('tolist').value:=edit3.text;
    frmCarte_Groupaction.adodataset1.fieldbyname('cclist').value:=edit4.text;
    frmCarte_Groupaction.adodataset1.post;
  end;
  }
  if label9.Caption='Action1' then begin
    with frmcmpl_actionlog1.ADODataSet1 do begin
      edit;
      FieldByName('tolist').Value:=edit3.Text;
      FieldByName('cclist').Value:=Edit4.Text;
      post;
    end;
  end;
end;

procedure TfrmCarte_Mail.SpeedButton1Click(Sender: TObject);
begin
  {
  listbox1.visible:=false;
  listbox1.visible:=true;
  label7.caption:='TO';
  }

end;

procedure TfrmCarte_Mail.SpeedButton2Click(Sender: TObject);
begin
  {
  listbox1.visible:=false;
  listbox1.visible:=true;
  label7.caption:='CC';
  }
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
