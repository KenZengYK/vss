unit xgcmu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, Variants;

type
  Tfrmxgcm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    query1: TClientDataSet;
    query2: TClientDataSet;
    query3: TClientDataSet;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgcm: Tfrmxgcm;

implementation
uses mainu, lbjhu;
{$R *.DFM}

procedure Tfrmxgcm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgcm.FormShow(Sender: TObject);
begin
  //combobox1.items.clear;
  //combobox2.items.clear;
  if frmlbjh.lbjh2.active then begin
    frmxgcm.Edit1.text:=frmlbjh.lbjh2.fieldbyname('prjno').value;
    frmxgcm.Edit3.text:=frmlbjh.lbjh2.fieldbyname('kh').value;
    frmxgcm.Edit4.text:=frmlbjh.lbjh2.fieldbyname('cm').value;
  end else begin
    frmxgcm.Edit1.text:='';
    frmxgcm.Edit2.text:='';
    frmxgcm.Edit3.text:='';
  end;
  Edit2.SetFocus;
  //edit1.text:=frmlbjh.lbjh1.fieldbyname('prjno').value;
end;

procedure Tfrmxgcm.BitBtn1Click(Sender: TObject);
var
  prjno,wl:string;
  xh:integer;
begin
  if Edit3.text<>'' then begin
    if Edit4.text<>'' then begin
      if edit2.text<>'' then begin
        if edit2.text<>Edit4.text then begin
          frmlbjh.lbjh2.Edit;
          frmlbjh.lbjh2.FieldByName('cm_cor').value:=edit2.text;
          frmlbjh.lbjh2.FieldByName('cm_pt').value:=edit5.text;
          frmlbjh.lbjh2.Post;
        end;
        {
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'cm',ptinput);
          commandtext:='select cm from cut_lbjh2 where prjno=:prjno and kh=:kh and cm=:cm';
          params[0].asstring:=edit1.text;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=edit2.text;
          open;
          if fieldbyname('cm').isnull then begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'ocm',ptinput);
              params.createparam(ftstring,'ncm',ptinput);
              commandtext:='execute cut_xgcm :prjno,:kh,:ocm,:ncm';
              params[0].asstring:=edit1.text;
              params[1].asstring:=combobox1.text;
              params[2].asstring:=combobox2.text;
              params[3].asstring:=edit2.text;
              execute;
            end;
            prjno:=frmlbjh.lbjh1.fieldbyname('prjno').value;
            wl:=frmlbjh.lbjh1.fieldbyname('wl').value;
            xh:=frmlbjh.lbjh1.fieldbyname('xh').value;
            with frmlbjh.lbjh1 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              commandtext:='select * from cut_lbjh1 where prjno=:prjno';
              params[0].asstring:=prjno;
              open;
              locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
            end;
            showmessage('修改成功!');
          end
          else begin
            application.messagebox('此尺碼已存在!','提示信息',mb_iconwarning+mb_ok);
            edit2.setfocus;
          end;
        end;
        }
      end;
    end;
  end;
end;

procedure Tfrmxgcm.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select distinct kh from cut_lbjh2 where prjno=:prjno';
    params[0].asstring:=edit1.text;
    open;
    first;
    while not eof do begin
      if not fieldbyname('kh').isnull then
      combobox1.items.add(fieldbyname('kh').value);
      next;
    end;
  end;
end;

procedure Tfrmxgcm.ComboBox2Enter(Sender: TObject);
begin
 combobox2.items.clear;
 if combobox1.text<>'' then begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    commandtext:='select distinct cm from cut_lbjh2 where prjno=:prjno and kh=:kh';
    params[0].asstring:=edit1.text;
    params[1].asstring:=combobox1.text;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cm').isnull then
      combobox2.items.add(fieldbyname('cm').value);
      next;
    end;
  end;
 end;
end;

procedure Tfrmxgcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgcm:=nil;
end;

end.
