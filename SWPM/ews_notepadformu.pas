unit ews_notepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, DBClient;

type
  Tfrmews_notepad = class(TForm)
    memo1: TMemo;
    BitBtn1: TBitBtn;
    Label52: TLabel;
    DBText2: TDBText;
    Label51: TLabel;
    DBText1: TDBText;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmews_notepad: Tfrmews_notepad;

implementation

uses mainformu, EWsGAIFormu, EWsGAI_DetailFormu;

{$R *.dfm}

procedure Tfrmews_notepad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmews_notepad:=nil;
end;

procedure Tfrmews_notepad.FormShow(Sender: TObject);
begin
  memo1.lines.clear;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select dt1,fl_zb,yy_zb,fl,fl_e,yy_desc,yy_desc_e,yy_desc_t,oth from tbl_e915_remarks1 where pline=:x1 and seq=:x2 and sdt1=:x3 and sdt2=:x4 and chk=1 and cmp1=0 order by fl_zb,yy_zb';
    params[0].asstring:=frmewsgai_detail.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmewsgai_detail.query1.fieldbyname('seq').value;
    params[2].asdate:=frmewsgai.dtedit1.date;
    params[3].asdate:=frmewsgai.dtedit2.date;
    open;
    first;
    while not eof do begin
      {
      memo1.lines.add(formatdatetime('MM/dd',fieldbyname('dt1').value)+' '+fieldbyname('fl_zb').value+fieldbyname('yy_zb').value+') '+fieldbyname('yy_desc_t').value);
      if not fieldbyname('oth').isnull then begin
        if fieldbyname('oth').value>'' then
          memo1.lines.add('  ~ '+fieldbyname('oth').value);
      end;
      }
      //{
      memo1.lines.add(formatdatetime('MM/dd',fieldbyname('dt1').value));
      memo1.lines.add(fieldbyname('fl_zb').value+') '+fieldbyname('fl').value+'  '+fieldbyname('fl_e').value);
      memo1.lines.add(fieldbyname('yy_zb').value+') '+fieldbyname('yy_desc').value+'  '+fieldbyname('yy_desc_e').value);
      if not fieldbyname('oth').isnull then begin
        if fieldbyname('oth').value>'' then
          memo1.lines.add('  ~ '+fieldbyname('oth').value);
      end;
      //}
      next;
    end;
  end;
end;

end.
