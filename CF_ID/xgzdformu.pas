unit xgzdformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient;

type
  Tfrmxgzd = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgzd: Tfrmxgzd;

implementation
uses dlu;
{$R *.DFM}

procedure Tfrmxgzd.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct prjno from fcjy3';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
end;

procedure Tfrmxgzd.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct zdh from fcjy3 where prjno=:prjno';
      params[0].asstring:=combobox1.text;
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('zdh').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmxgzd.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgzd.BitBtn1Click(Sender: TObject);
var
  gch:string;
begin
  if combobox1.text>'' then begin
    if combobox2.text>'' then begin
      if edit1.text>'' then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          commandtext:='select distinct gch from fcjy3 where prjno=:prjno and zdh=:zdh';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
          if not fieldbyname('gch').isnull then gch:=fieldbyname('gch').value
          else gch:='';
        end;
        if gch>'' then begin
         with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update lbjh2 set zdh=:zdh where prjno=:prjno and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update fcjy2 set zdh=:zdh where prjno=:prjno and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update lbtz set zdh=:zdh where prjno=:prjno and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update fcjy3 set zdh=:zdh where prjno=:prjno and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update fczd1 set zdh=:zdh where gch=:gch and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=gch;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update fczd2 set zdh=:zdh where gch=:gch and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=gch;
          params[2].asstring:=combobox2.text;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh1',ptinput);
          commandtext:='update fcwl set zdh=:zdh where gch=:gch and zdh=:zdh1';
          params[0].asstring:=edit1.text;
          params[1].asstring:=gch;
          params[2].asstring:=combobox2.text;
          execute;
         end;
         showmessage('OK!');
        end
        else begin
          showmessage('此工程不存在!');
        end;
      end;
    end;
  end;
  close;
end;

end.
