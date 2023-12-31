unit lbjgu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, Db, DBTables, Buttons, StdCtrls, ExtCtrls, DBClient,
  Variants, ADODB;

type
  Tfrmlbjg = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    op1: TRadioButton;
    Shape1: TShape;
    op2: TRadioButton;
    op3: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    op4: TRadioButton;
    op5: TRadioButton;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    query1: TClientDataSet;
    query2: TClientDataSet;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure op3Click(Sender: TObject);
    procedure op5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure op2Click(Sender: TObject);
    procedure op4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbjg: Tfrmlbjg;

implementation
uses mainu, lbjhu;
{$R *.DFM}

procedure Tfrmlbjg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlbjg:=nil;
end;

procedure Tfrmlbjg.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked=true then
  begin
    checkbox2.checked:=false;
    checkbox3.checked:=false;
    op1.Enabled:=true;
    op2.enabled:=true;
    op3.enabled:=true;
    edit1.Enabled:=false;
    op1.checked:=true;
  end
  else
  begin
    //checkbox2.checked:=true;
    //checkbox3.checked:=false;
    op1.enabled:=false;
    op2.enabled:=false;
    op3.enabled:=false;
    edit1.enabled:=false;
  end;
end;

procedure Tfrmlbjg.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.checked=true then
  begin
    checkbox1.checked:=false;
    checkbox3.checked:=false;
    op4.enabled:=true;
    op5.enabled:=true;
    edit2.enabled:=false;
    op4.checked:=true;
  end
  else
  begin
    //checkbox1.checked:=false;
    //checkbox3.checked:=true;
    op4.enabled:=false;
    op5.enabled:=false;
    edit2.enabled:=false;
  end;
end;

procedure Tfrmlbjg.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.checked=true then
  begin
    checkbox1.checked:=false;
    checkbox2.checked:=false;
    edit3.enabled:=true;
    //edit4.enabled:=true;
  end
  else
  begin
    //checkbox1.checked:=true;
    //checkbox2.checked:=false;
    edit3.enabled:=false;
    //edit4.enabled:=false;
  end;
end;

procedure Tfrmlbjg.op3Click(Sender: TObject);
begin
  if op3.checked=true then
    edit1.enabled:=true
  else edit1.enabled:=false;
end;

procedure Tfrmlbjg.op5Click(Sender: TObject);
begin
  if op5.checked=true then
    edit2.enabled:=true
  else edit2.enabled:=false;
end;

procedure Tfrmlbjg.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlbjg.FormShow(Sender: TObject);
begin
  checkbox1.checked:=true;
  checkbox2.checked:=false;
  checkbox3.checked:=false;
  op4.enabled:=false;
  op5.enabled:=false;
  edit1.text:='';edit2.text:='';edit3.text:='';//edit4.text:='';
  edit1.enabled:=false;
  edit2.enabled:=false;
  edit3.enabled:=false;
  //edit4.enabled:=false;
end;

procedure Tfrmlbjg.op1Click(Sender: TObject);
begin
  if op1.checked=true then edit1.enabled:=false;
end;

procedure Tfrmlbjg.op2Click(Sender: TObject);
begin
  if op2.checked=true then edit1.enabled:=false;
end;

procedure Tfrmlbjg.op4Click(Sender: TObject);
begin
  if op4.checked=true then edit2.enabled:=false;
end;

procedure Tfrmlbjg.BitBtn1Click(Sender: TObject);
var
  jf,jb:integer;
  jyl:double;
  prjno,wl:string;
  xh:integer;
begin
  jf:=1;jb:=1;
  prjno:=frmlbjh.lbjh1.fieldbyname('prjno').value;
  wl:=frmlbjh.lbjh1.fieldbyname('wl').value;
  xh:=frmlbjh.lbjh1.fieldbyname('xh').value;
  if checkbox1.checked=true then
  begin
    if op1.checked=true then
    begin
      {
      query1.close;
      query1.params.clear;
      query1.params.createparam(ftstring,'mjstatus',ptinput);
      query1.params.createparam(ftstring,'prjno',ptinput);
      query1.params.createparam(ftinteger,'xh',ptinput);
      query1.params.createparam(ftstring,'wl',ptinput);
      query1.commandtext:='update cut_lbjh1 set mjyl=mjyl/2,mjzcd=mjzcd/2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
      query1.params[0].asstring:='封度折半';
      query1.params[1].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
      query1.params[2].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
      query1.params[3].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
      query1.execute;
      }
      adoquery1.close;
      adoquery1.SQL.text:='update cut_lbjh1 set mjyl=mjyl/2,mjzcd=mjzcd/2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
      adoquery1.Parameters[0].value:='封度折半';
      adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
      adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
      adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
      adoquery1.execsql;
    end
    else
    begin
      if op2.checked=true then
      begin
        {
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'mjstatus',ptinput);
        query1.params.createparam(ftstring,'prjno',ptinput);
        query1.params.createparam(ftinteger,'xh',ptinput);
        query1.params.createparam(ftstring,'wl',ptinput);
        query1.commandtext:='update cut_lbjh1 set mjyl=mjyl/4,mjzcd=mjzcd/4,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        query1.params[0].asstring:='封度折四';
        query1.params[1].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        query1.params[2].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
        query1.params[3].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
        query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh1 set mjyl=mjyl/4,mjzcd=mjzcd/4,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:='封度折四';
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;
      end
      else
      begin
        if (edit1.text<>'') and (edit1.text<>'0') then
        jf:=strtoint(edit1.text)
        else jf:=1;
        {
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftinteger,'jf1',ptinput);
        query1.params.createparam(ftinteger,'jf2',ptinput);
        query1.params.createparam(ftstring,'mjstatus',ptinput);
        query1.params.createparam(ftstring,'prjno',ptinput);
        query1.params.createparam(ftinteger,'xh',ptinput);
        query1.params.createparam(ftstring,'wl',ptinput);
        query1.commandtext:='update cut_lbjh1 set mjyl=mjyl/:jf1,mjzcd=mjzcd/:jf2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        query1.params[0].asinteger:=jf;
        query1.params[1].asinteger:=jf;
        query1.params[2].asstring:='封度折'+inttostr(jf);//edit1.text;
        query1.params[3].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        query1.params[4].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
        query1.params[5].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
        query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh1 set mjyl=mjyl/:jf1,mjzcd=mjzcd/:jf2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:=jf;
        adoquery1.Parameters[1].value:=jf;
        adoquery1.Parameters[2].value:='封度折'+inttostr(jf);//edit1.text;
        adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[4].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[5].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;
      end;
    end;
  end
  else
  begin
   if checkbox2.checked=true then
   begin
     if op4.checked=true then
     begin
       {
       query1.close;
       query1.params.clear;
       query1.params.createparam(ftstring,'mjstatus',ptinput);
       query1.params.createparam(ftstring,'prjno',ptinput);
       query1.params.createparam(ftinteger,'xh',ptinput);
       query1.params.createparam(ftstring,'wl',ptinput);
       query1.commandtext:='update cut_lbjh1 set lbzs=lbzs/2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
       query1.params[0].asstring:='比例加倍';
       query1.params[1].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
       query1.params[2].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
       query1.params[3].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
       query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh1 set lbzs=lbzs/2,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:='比例加倍';
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;

       {
       query1.close;
       query1.params.clear;
       query1.params.createparam(ftstring,'prjno',ptinput);
       query1.params.createparam(ftinteger,'xh',ptinput);
       query1.params.createparam(ftstring,'wl',ptinput);
       query1.commandtext:='update cut_lbjh2 set mjs=mjs*2 where prjno=:prjno and xh=:xh and wl=:wl';
       query1.params[0].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
       query1.params[1].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
       query1.params[2].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
       query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh2 set mjs=mjs*2 where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;
     end
     else
     begin
       if (edit2.text<>'') and (edit2.text<>'0') then
       jb:=strtoint(edit2.text)
       else jb:=1;
       {
       query1.close;
       query1.params.clear;
       query1.params.createparam(ftinteger,'jb1',ptinput);
       query1.params.createparam(ftstring,'mjstatus',ptinput);
       query1.params.createparam(ftstring,'prjno',ptinput);
       query1.params.createparam(ftinteger,'xh',ptinput);
       query1.params.createparam(ftstring,'wl',ptinput);
       query1.commandtext:='update cut_lbjh1 set lbzs=lbzs/:jb1,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
       query1.params[0].asinteger:=jb;
       query1.params[1].asstring:='比例加:'+inttostr(jb);//edit2.text;
       query1.params[2].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
       query1.params[3].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
       query1.params[4].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
       query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh1 set lbzs=lbzs/:jb1,zp=0,mjstatus=:mjstatus where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:=jb;
        adoquery1.Parameters[1].value:='比例加'+inttostr(jb);//edit1.text;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[4].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;

       {
       query1.close;
       query1.params.clear;
       query1.params.createparam(ftstring,'prjno',ptinput);
       query1.params.createparam(ftinteger,'xh',ptinput);
       query1.params.createparam(ftstring,'wl',ptinput);
       query1.commandtext:='update cut_lbjh2 set mjs=mjs*jb where prjno=:prjno and xh=:xh and wl=:wl';
       query1.params[0].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
       query1.params[1].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
       query1.params[2].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
       query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh2 set mjs=mjs*jb where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;
     end;
   end
   else
   begin
    if checkbox3.checked=true then
    begin
      if (edit3.text<>'') and (edit3.text<>'0') then jyl:=strtofloat(edit3.text)
      else jyl:=0;
      {
      query1.close;
      query1.params.clear;
      query1.params.createparam(ftfloat,'jyl',ptinput);
      query1.params.createparam(ftstring,'prjno',ptinput);
      query1.params.createparam(ftinteger,'xh',ptinput);
      query1.params.createparam(ftstring,'wl',ptinput);
      query1.commandtext:='update cut_lbjh1 set mjyl=:jyl,zp=1 where prjno=:prjno and xh=:xh and wl=:wl';
      query1.params[0].asfloat:=jyl;
      query1.params[1].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
      query1.params[2].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
      query1.params[3].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
      query1.execute;
        }
        adoquery1.close;
        adoquery1.SQL.text:='update cut_lbjh1 set mjyl=:jyl,zp=1 where prjno=:prjno and xh=:xh and wl=:wl';
        adoquery1.Parameters[0].value:=jyl;
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[3].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.execsql;

      {
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        params.createparam(ftinteger,'xh',ptinput);
        params.createparam(ftstring,'mjh',ptinput);
        params.createparam(ftinteger,'jhlbzs',ptinput);
        commandtext:='insert into cut_lbjh3(prjno,wl,xh,mjh,jhlbzs,mjcd,mjfd,ysmjfd,jhcgsj) values(:prjno,:wl,:xh,:mjh,:jhlbzs,0,0,0,0)';
        params[0].asstring:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        params[1].asstring:=frmlbjh.lbjh1.fieldbyname('wl').value;
        params[2].asinteger:=frmlbjh.lbjh1.fieldbyname('xh').value;
        params[3].asstring:=copy(frmlbjh.lbjh1.fieldbyname('wl').value+formatdatetime('mmdd',now),1,20);
        params[4].asinteger:=frmlbjh.lbjh1.fieldbyname('lbzs').value;
        execute;
      end;
      }
        adoquery1.close;
        adoquery1.SQL.text:='insert into cut_lbjh3(prjno,wl,xh,mjh,jhlbzs,mjcd,mjfd,ysmjfd,jhcgsj) values(:prjno,:wl,:xh,:mjh,:jhlbzs,0,0,0,0)';
        adoquery1.Parameters[0].value:=frmlbjh.lbjh1.fieldbyname('prjno').value;
        adoquery1.Parameters[1].value:=frmlbjh.lbjh1.fieldbyname('wl').value;
        adoquery1.Parameters[2].value:=frmlbjh.lbjh1.fieldbyname('xh').value;
        adoquery1.Parameters[3].value:=copy(frmlbjh.lbjh1.fieldbyname('wl').value+formatdatetime('mmdd',now),1,20);
        adoquery1.Parameters[4].value:=frmlbjh.lbjh1.fieldbyname('lbzs').value;
        adoquery1.execsql;

    end;
   end;
  end;
  with frmlbjh.lbjh1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_lbjh1 where prjno=:prjno';
    parameters[0].value:=prjno;
    open;
    locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
  end;
  close;
end;

procedure Tfrmlbjg.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#8,#13,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then
  begin
    key:=#0;
    exit;
  end;
end;

procedure Tfrmlbjg.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#8,#13,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then
  begin
    key:=#0;
    exit;
  end;
end;

end.
