unit newcap_refformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Mask, rxToolEdit, DBCtrls;

type
  Tfrmnewcap_ref = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    sah001: TLabel;
    Label7: TLabel;
    eff001: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_ref: Tfrmnewcap_ref;
  sah,eff:double;

implementation

uses mainformu, newcap_styleformu, newcap_nostyle_wkformu;

{$R *.dfm}

procedure Tfrmnewcap_ref.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_ref:=nil;
end;

procedure Tfrmnewcap_ref.BitBtn1Click(Sender: TObject);
begin
  if (sah>0) and (eff>0) then begin
    if label2.Visible=true then begin
      if application.MessageBox('Update the SAH & Eff% for this customer?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with frmnewcap_style.Query1 do begin
          edit;
          fieldbyname('sah').value:=sah;
          fieldbyname('e01').value:=eff;
          post;
        end;
      end;
    end else begin
      if application.MessageBox('Update the SAH & Eff% for this style?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with frmnewcap_nostyle_wk.Query1 do begin
          edit;
          fieldbyname('sah').value:=sah;
          fieldbyname('eff').value:=eff;
          post;
        end;
      end;
    end;
  end;
  frmnewcap_ref.close;
end;

procedure Tfrmnewcap_ref.DateEdit1Change(Sender: TObject);
var
  cust,cstyle:string;
begin
  screen.Cursor:=crSQLWait;
  try
  cust:=dbtext1.Caption;
  if label2.Visible=true then begin
    if dbtext2.visible=true then cstyle:=dbtext2.Caption
    else if dbtext3.Visible=true then cstyle:=dbtext3.Caption;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(0.5*lstr/xjs*(csect+ceot))/sum(csect+ceot) as sah,'
                  +'sum(eff2*(csect+ceot))/sum(csect+ceot) as eff from line_shjs '
                  +'where cstyle='''+cstyle+''' and dt1>=:x1 and dt1<=:x2 '
                  +'and (csect+ceot>0) and flag=''0''';// and substr(j_no,1,4)='''+cust+''' and tplant='''+frmnewcap_style.Query1.fieldbyname('tplant').value+'''';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('sah').isnull then sah:=fieldbyname('sah').value else sah:=0;
      if not fieldbyname('eff').isnull then eff:=fieldbyname('eff').value else eff:=0;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(0.5*lstr/xjs*(csect+ceot))/sum(csect+ceot) as sah,'
                  +'sum(eff2*(csect+ceot))/sum(csect+ceot) as eff from line_shjs '
                  +'where substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+''' and dt1>=:x1 and dt1<=:x2 '
                  +'and (csect+ceot>0) and flag=''0''';// and substr(j_no,1,4)='''+cust+''' and tplant='''+frmnewcap_style.Query1.fieldbyname('tplant').value+'''';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('sah').isnull then sah:=fieldbyname('sah').value else sah:=0;
      if not fieldbyname('eff').isnull then eff:=fieldbyname('eff').value else eff:=0;
    end;
  end;
  sah001.Caption:=formatfloat('#0.0000',sah);
  eff001.Caption:=formatfloat('#0.00',eff);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ref.FormShow(Sender: TObject);
begin
  sah:=0; eff:=0;
end;

end.
