unit sloaformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ADODB;

type
  Tfrm_sloa = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    xh1: TCheckBox;
    xh2: TCheckBox;
    xh3: TCheckBox;
    xh4: TCheckBox;
    xh5: TCheckBox;
    xh6: TCheckBox;
    xh7: TCheckBox;
    xh8: TCheckBox;
    xh9: TCheckBox;
    GroupBox3: TGroupBox;
    xh10: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    xh11: TCheckBox;
    BitBtn7: TBitBtn;
    Label7: TLabel;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sloa: Tfrm_sloa;
  logseq:integer;

implementation

uses mainformu, ftycalendarformu, custformu, capformu, pdnformu, achievingformu,
  rwoformu, qnsumformu, glossaryformu, lwoformu, pjc1formu;

{$R *.dfm}

procedure Tfrm_sloa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmachieving<>nil then frmachieving:=nil;
  if frmrwo<>nil then frmrwo:=nil;
  if frmqnsum<>nil then frmqnsum:=nil;
  if frmlwo<>nil then frmlwo:=nil;
  if frmglossary<>nil then frmglossary:=nil;
  action:=cafree;
  frm_sloa:=nil;
end;

procedure Tfrm_sloa.FormShow(Sender: TObject);
begin
  combobox3.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tbl_erpsop';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox3.Text:='TAMA';
end;

procedure Tfrm_sloa.BitBtn3Click(Sender: TObject);
begin
  if frmftycalendar=nil then frmftycalendar:=tfrmftycalendar.create(application);
  frmftycalendar.BringToFront;
  frmftycalendar.Left:=0;
  frmftycalendar.top:=0;
  frmftycalendar.Width:=625;
  frmftycalendar.Height:=476;
  frmftycalendar.windowstate:=wsnormal;
  if pos('test',application.ExeName)>0 then frmftycalendar.Caption:=frmftycalendar.Caption+' - Test';
end;

procedure Tfrm_sloa.BitBtn4Click(Sender: TObject);
begin
  if frmcustomer=nil then frmcustomer:=tfrmcustomer.Create(application);
  with frmcustomer.query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
    open;
  end;
  with frmcustomer.query2 do begin
    close;
    params.clear;
    commandtext:='select * from cust_exfty';
    open;
  end;
  frmcustomer.BringToFront;
  frmcustomer.PageControl1.ActivePageIndex:=0;
  frmcustomer.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmcustomer.Caption:=frmcustomer.Caption+' - Test';
end;

procedure Tfrm_sloa.BitBtn5Click(Sender: TObject);
begin
  if frmcap=nil then frmcap:=tfrmcap.create(nil);
  frmcap.Show;
  if pos('test',application.ExeName)>0 then frmcap.Caption:=frmcap.Caption+' - Test';
end;

procedure Tfrm_sloa.BitBtn6Click(Sender: TObject);
begin
  if frmpdn=nil then frmpdn:=tfrmpdn.create(application);
  frmpdn.BringToFront;
  frmpdn.windowstate:=wsmaximized;
  if pos('test',application.ExeName)>0 then frmpdn.Caption:=frmpdn.Caption+' - Test';
end;

procedure Tfrm_sloa.BitBtn1Click(Sender: TObject);
var
  cont,cfm:boolean;
  pline:string;
  seq:integer;
begin
  cont:=true;
  if xh1.Checked then begin
    if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
    frmachieving.FormStyle:=fsNormal;
    frmachieving.Hide;
    frmachieving.ComboBox1.text:=combobox1.text;
    frmachieving.ComboBox2.Text:='';//combobox2.Text;
    frmachieving.DateEdit1.date:=dateedit1.Date;
    frmachieving.opt1.ItemIndex:=1;
    frmachieving.bitbtn8click(self);
    frmachieving.temp_flag;
  end;
  if xh1.Checked then begin
    if (xh2.Checked or xh3.Checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
      if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
    end else cont:=false;
  end;
  if cont then begin
    if xh2.Checked then begin
      if frmrwo=nil then frmrwo:=tfrmrwo.Create(nil);
      frmrwo.ComboBox2.text:=combobox1.text;
      frmrwo.SpeedButton5click(self);
      frmrwo.SpeedButton2click(self);
    end;
    if (xh1.checked or xh2.Checked) then begin
      if (xh3.Checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh3.Checked then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:='';//combobox2.Text;
      frmachieving.Edit2.Text:=combobox3.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.DateEdit2.Date:=dateedit2.Date;
      //frmachieving.opt1.ItemIndex:=1;
      frmachieving.WIPStylesImageIllustration1Click(self);
      //frmachieving.bitbtn8click(self);
      //frmachieving.BitBtn5click(self);
    end;
    if (xh1.checked or xh2.Checked or xh3.checked) then begin
      if (xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh4.Checked then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:='';//combobox2.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
      frmachieving.BitBtn5click(self);
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked) then begin
      if (xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh5.Checked then begin
      //
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked) then begin
      if (xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh6.Checked then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:='';//combobox2.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
      frmachieving.BitBtn2click(self);
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked or xh6.Checked) then begin
      if (xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh7.Checked then begin
      if frmqnsum=nil then frmqnsum:=tfrmqnsum.create(nil);
      with frmqnsum.Query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        params[0].asdate:=dateedit1.date;
        open;
        if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
      end;
      with frmqnsum.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select * from line_shjs where tplant='''+combobox1.text+''' and tshop>'''' and dt1=:x1 and flag=''0'' order by pline,seq';
        params[0].asdate:=dateedit1.date;
        open;
        frmqnsum.rpttitle.Caption:='LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)';
        if cfm=false then frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmation - incomplete *'
        else frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmed *';
        frmqnsum.date001.caption:=dateedit1.Text;
        frmqnsum.ppReport1.Print;
      end;
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked) then begin
      if (xh8.Checked or xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh8.Checked then begin
      if frmqnsum=nil then frmqnsum:=tfrmqnsum.create(nil);
      with frmqnsum.Query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        params[0].asdate:=dateedit1.date;
        open;
        if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
      end;
      with frmqnsum.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select * from line_shjs where tplant='''+combobox1.text+''' and tshop>'''' and dt1=:x1 and flag=''0'' order by pline,seq';
        params[0].asdate:=dateedit1.date;
        open;
        frmqnsum.rpttitle.Caption:='LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)';
        if cfm=false then frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmation - incomplete *'
        else frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmed *';
        frmqnsum.date001.caption:=dateedit1.Text;
        frmqnsum.ppReport1.Print;
      end;
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked) then begin
      if (xh9.Checked or xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh9.Checked then begin
      if frmlwo<>nil then frmlwo:=nil;
      if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
      //QN transit summary
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop>'''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;
          with frmlwo.Query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
          end;
          frmlwo.BitBtn3click(self);
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked) then begin
      if (xh10.Checked or xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh10.Checked then begin
      //
    end;
    if (xh1.checked or xh2.Checked or xh3.checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked or xh10.Checked) then begin
      if (xh11.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false
      end else cont:=false;
    end;
  end;
  if cont then begin
    if xh11.Checked then begin
      if frmglossary=nil then frmglossary:=tfrmglossary.Create(nil);
      frmglossary.BitBtn4Click(self);
    end;
  end;
end;

procedure Tfrm_sloa.BitBtn7Click(Sender: TObject);
begin
  if frmpjc1=nil then frmpjc1:=tfrmpjc1.create(nil);
  frmpjc1.Show;
end;

procedure Tfrm_sloa.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='OA Module';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - OA Module';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrm_sloa.FormDestroy(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
end;

end.
