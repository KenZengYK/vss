unit fcjhformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ADODB, DB, siComp;

type
  Tfrmfcjh = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit14: TDBEdit;
    fcjy1: TADODataSet;
    dsfcjy1: TDataSource;
    AQuery1: TADOQuery;
    BitBtn3: TBitBtn;
    siLang1: TsiLang;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfcjh: Tfrmfcjh;
  ifrn:string;

implementation

uses mainu, xzzdu, FRN_ChooseFormu;

{$R *.dfm}

procedure Tfrmfcjh.BitBtn1Click(Sender: TObject);
begin
  if ifrn='0' then begin
  if edit1.text='' then
  begin
    application.messagebox('Please input CF_ID# �п�J���{�ѧO�X','Prompt',mb_iconinformation+mb_ok);
    edit1.visible:=true;
    edit1.setfocus;
  end
  else
  begin
    if frmxzzd=nil then frmxzzd:=tfrmxzzd.create(self);
    aquery1.close;
    aquery1.sql.text:='delete from cut_fcjh where prjno='''+edit1.text+'''';
    //aquery1.parameters[0].value:=edit1.text;
    aquery1.execsql;

    with aquery1 do begin
      close;
      sql.text:='insert into cut_fcjh(prjno,gch,zdh,kh,sh,zds) select distinct prjno,gch,zdh,kh,sh,zds from cut_fcjy3 where prjno='''+edit1.text+'''';
      //parameters[0].value:=edit1.text;
      execsql;
    end;
    with frmxzzd.xzzd do begin
      close;
      params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_fcjh where prjno='''+edit1.text+'''';
      //params[0].asstring:=edit1.text;
      open;
    end;
    frmxzzd.Label5.Caption:='jh';
    frmxzzd.show;
  end;
  end else if ifrn='1' then begin
    if frmFRN_Choose=nil then frmFRN_Choose:=TfrmFRN_Choose.create(nil);
    frmFRN_Choose.show;
  end;
end;

procedure Tfrmfcjh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfcjh:=nil;
end;

procedure Tfrmfcjh.FormShow(Sender: TObject);
begin
  //silang1.LoadAllFromFile('cutplan.sil',false);
  silang1.ActiveLanguage:=frmmain.SpinEdit1.value;
  ifrn:='0';
end;

end.