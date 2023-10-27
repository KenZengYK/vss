unit dailyreportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, Menus, dateutils;

type
  Tfrmdailyreport = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    GroupBox1: TGroupBox;
    xh1: TCheckBox;
    xh2: TCheckBox;
    xh3: TCheckBox;
    xh4: TCheckBox;
    xh5: TCheckBox;
    xh6: TCheckBox;
    xh7: TCheckBox;
    xh8: TCheckBox;
    xh9: TCheckBox;
    xh10: TCheckBox;
    Edit1: TComboBox;
    xh11: TCheckBox;
    xh12: TCheckBox;
    xh13: TCheckBox;
    xh14: TCheckBox;
    PopupMenu1: TPopupMenu;
    BriefingRecord1: TMenuItem;
    xh15: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure BriefingRecord1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyreport: Tfrmdailyreport;
  onpreview:boolean;

implementation

uses mainformu, achievingformu, wkfformu, zktdformu, lwoformu, calendarformu,
  currcalformu, dailyt2formu, dailyt3formu, dailyt4formu, qnsumformu, glossaryformu,
  flow2report1formu;

{$R *.dfm}

procedure Tfrmdailyreport.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  pline:string;
  seq:integer;
  cont,cfm:boolean;
  flag4,j_no,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  cont:=true;
  try
  if (combobox1.text>'') and (combobox2.text>'') and (dateedit1.date>0) then begin
    //Daily Output
    if (xh1.Checked or xh2.Checked or xh3.Checked or xh12.checked or xh13.Checked) then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:=combobox2.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
    end;
    if xh12.checked then frmachieving.temp_flag;
    if (xh12.Checked) then begin
      if (xh3.checked or xh1.Checked or xh2.Checked or xh4.Checked or xh5.Checked or xh9.Checked or xh10.Checked or xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh3.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh3.checked then frmachieving.BitBtn5click(self);
    if (xh12.Checked or xh3.checked) then begin
      if (xh1.Checked or xh2.checked or xh4.Checked or xh5.Checked or xh9.Checked or xh10.Checked or xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh1.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh1.Checked then frmachieving.BitBtn2click(self);
    if (xh12.Checked or xh1.checked or xh3.Checked) then begin
      if (xh2.checked or xh4.Checked or xh5.Checked or xh9.Checked or xh10.Checked or xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh2.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh2.checked then frmachieving.BitBtn4click(self);

    //LB(WF/Mc)
    if (xh4.Checked or xh5.Checked) then begin
      if frmwkf=nil then frmwkf:=tfrmwkf.Create(nil);
      frmwkf.Hide;
      frmwkf.ComboBox1.text:=combobox1.Text;
      frmwkf.ComboBox2.Text:=combobox2.Text;
      frmwkf.xh1.Checked:=true;
      frmwkf.DateEdit1.Date:=dateedit1.date;
      frmwkf.DateEdit2.Date:=dateedit1.date;
      frmwkf.BitBtn1click(self);
    end;
    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked) then begin
      if (xh4.Checked or xh5.Checked or xh9.Checked or xh10.Checked or xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh4.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh4.checked then frmwkf.BitBtn2click(self);
    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked) then begin
      if (xh5.Checked or xh9.Checked or xh10.Checked or xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh5.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh5.checked then frmwkf.BitBtn3click(self);

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked) then begin
      if (xh11.checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh9.Checked or xh10.checked or xh15.Checked) then begin
        if xh11.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    //QN Output
    if xh11.Checked then begin
      if frmqnsum=nil then frmqnsum:=tfrmqnsum.create(nil);
      with frmqnsum.Query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        params[0].asdate:=dateedit1.date;
        open;
        if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
      end;
      with frmqnsum.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        commandtext:='execute procedure sp_pdn_deldashboard(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        params[2].asstring:=combobox2.text;
        params[3].asdate:=dateedit1.date;
        execute;
      end;
      with frmqnsum.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_deldashboard where tm=:x1 order by pline,seq';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmqnsum.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        //params.createparam(ftdate,'x2',ptinput);
        //commandtext:='select a.* from line_shjs a,tblshedule b where b.yzh=0 and b.tplant='''+combobox1.text+''' and b.tshop='''+combobox2.text+''' '
        //            +'and b.flag3>'''' and b.cfksrq<=:x1 and b.cfwcrq>=:x2 and a.pline=b.pline and a.seq=b.seq and a.flag=''0'' and a.tplant=b.tplant and a.tshop=b.tshop order by a.pline,a.seq';
        commandtext:='select * from line_shjs where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and dt1=:x1 and flag=''0'' order by pline,seq';
        params[0].asdate:=dateedit1.date;
        //params[1].asdate:=dateedit1.date;
        open;
        frmqnsum.rpttitle.Caption:='LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)';
        //'LWPM ---- QN Goal Achievement Indicator(Sewing Workshop) Summary - Shipment Control';
        if cfm=false then frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmation - incomplete *'
        else frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmed *';
        frmqnsum.date001.caption:=dateedit1.Text;
        frmqnsum.wk01.Caption:=inttostr(weekof(dateedit1.date));
        frmqnsum.ppReport1.Print;
      end;
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh11.Checked) then begin
      if (xh9.Checked or xh10.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh9.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh9.Checked then begin
      //Default Calendar
      if frmcalendar=nil then frmcalendar:=tfrmcalendar.Create(nil);
      frmcalendar.FormStyle:=fsNormal;
      frmcalendar.Hide;
      frmcalendar.ComboBox1.text:=combobox1.text;
      frmcalendar.ComboBox2.Text:=combobox2.text;
      frmcalendar.DateEdit1.Date:=dateedit1.date;
      frmcalendar.DateEdit2.Date:=dateedit1.date;
      frmcalendar.SpeedButton2click(self);
      frmcalendar.pre_byline_dtl;
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh11.Checked) then begin
      if (xh10.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh10.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh10.Checked then begin
      //Current Calendar
      if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.Create(nil);
      frmcurrcal.FormStyle:=fsNormal;
      frmcurrcal.Hide;
      frmcurrcal.ComboBox1.text:=combobox1.text;
      frmcurrcal.ComboBox2.Text:=combobox2.text;
      frmcurrcal.DateEdit1.Date:=dateedit1.date;
      frmcurrcal.DateEdit2.Date:=dateedit1.date;
      frmcurrcal.SpeedButton2click(self);
      frmcurrcal.pre_byline_dtl;
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh10.checked or xh11.Checked) then begin
      if (xh6.Checked or xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh6.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    //QN Output
    if xh6.Checked then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;
          if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
          frmzktd.hide;
          with frmzktd.query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
          end;
          frmzktd.BitBtn2click(self);
          application.ProcessMessages;
          next;
        end;
      end;
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh10.checked or xh11.Checked or xh6.Checked) then begin
      if (xh7.Checked or xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh7.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh7.Checked then begin
      if frmlwo<>nil then frmlwo:=nil;
      if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
      //QN transit summary
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
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

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh10.checked or xh11.Checked or xh6.Checked or xh7.Checked) then begin
      if (xh8.Checked or xh14.Checked or xh15.Checked) then begin
        if xh8.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    if xh8.Checked then begin
      if frmlwo<>nil then frmlwo:=nil;
      if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
      frmlwo.DateTimePicker1.DateTime:=tm;
      //Transit Flow 1-4
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;

          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4,j_no,tplant from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
            j_no:=fieldbyname('j_no').value;
            tplant:=fieldbyname('tplant').value;
          end;

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
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='1';
            params[3].asdatetime:=tm;
            execute;
          end;
          //frmlwo.previewT1;
          if (copy(uppercase(flag4),1,1)>'A') and (copy(uppercase(flag4),1,1)<'E') then frmlwo.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),1,1)>='E') then frmlwo.title001.caption:=' - Finished'
          else frmlwo.title001.Caption:=' - Planning';
          frmlwo.previewT_1;
          if (pos('TAMA',j_no)>0) and (tplant='SL') then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans_aql(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='2';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmflow2report1=nil then frmflow2report1:=tfrmflow2report1.create(nil);
          with frmflow2report1.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmflow2report1.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmflow2report1.title001.caption:=' - Finished'
          else frmflow2report1.title001.Caption:=' - Planning';
          frmflow2report1.ppReport2.Print;
          end else begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='2';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt2=nil then frmdailyt2:=tfrmdailyt2.create(nil);
          with frmdailyt2.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmdailyt2.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmdailyt2.title001.caption:=' - Finished'
          else frmdailyt2.title001.Caption:=' - Planning';
          frmdailyt2.ppReport2.Print;
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='3';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt3=nil then frmdailyt3:=tfrmdailyt3.create(nil);
          with frmdailyt3.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='3';
            open;
          end;
          if (copy(uppercase(flag4),3,1)>='J') and (copy(uppercase(flag4),3,1)<'L') then frmdailyt3.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),3,1)>='L') then frmdailyt3.title001.caption:=' - Finished'
          else frmdailyt3.title001.Caption:=' - Planning';
          frmdailyt3.ppReport2.Print;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='4';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt4=nil then frmdailyt4:=tfrmdailyt4.create(nil);
          with frmdailyt4.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='4';
            open;
          end;
          if (copy(flag4,4,1)='m') then frmdailyt4.title001.Caption:=' - WIP'
          else if (copy(flag4,4,1)='M') then frmdailyt4.title001.caption:=' - Finished'
          else frmdailyt4.title001.Caption:=' - Planning';
          frmdailyt4.ppReport2.Print;
          application.ProcessMessages;
          next;
        end;
      end;
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh10.checked or xh11.Checked or xh6.Checked or xh7.Checked or xh8.Checked) then begin
      if (xh14.Checked or xh15.Checked) then begin
        if xh15.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    // PDN summary dashboard
    if xh15.Checked then begin
    end;

    if (xh12.Checked or xh1.checked or xh2.checked or xh3.checked or xh4.checked or xh5.checked or xh9.Checked or xh10.checked or xh11.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh15.Checked) then begin
      if xh14.Checked then begin
        if xh14.Checked then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idyes then cont:=true
          else cont:=false;
        end else cont:=true;
      end else cont:=false;
    end else cont:=true;
    if cont then begin
    // Glossary
    if frmglossary=nil then frmglossary:=tfrmglossary.Create(nil);
    frmglossary.BitBtn4Click(self);
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
    end;
  end;
  finally
    onpreview:=false;
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmdailyreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmachieving<>nil then frmachieving:=nil;
  if frmwkf<>nil then frmwkf:=nil;
  if frmqnsum<>nil then frmqnsum:=nil;
  if frmzktd<>nil then frmzktd:=nil;
  if frmlwo<>nil then frmlwo:=nil;
  if frmdailyt2<>nil then frmdailyt2:=nil;
  if frmdailyt3<>nil then frmdailyt3:=nil;
  if frmdailyt4<>nil then frmdailyt4:=nil;
  if frmcalendar<>nil then frmcalendar:=nil;
  if frmcurrcal<>nil then frmcurrcal:=nil;
  action:=cafree;
  frmdailyreport:=nil;
end;

procedure Tfrmdailyreport.FormShow(Sender: TObject);
begin
    combobox2.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' and pline>'''' order by tshop';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    onpreview:=false;
end;

procedure Tfrmdailyreport.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    combobox2.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' and pline>'''' order by tshop';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then combobox2.text:='4B'
    else if combobox1.Text='KB' then combobox2.text:='KB2';
  end;
end;

procedure Tfrmdailyreport.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    edit1.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      edit1.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        edit1.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmdailyreport.Edit1Enter(Sender: TObject);
begin
  if combobox2.text>'' then begin
    edit1.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      first;
      while not eof do begin
        edit1.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmdailyreport.BriefingRecord1Click(Sender: TObject);
begin
  if frmglossary=nil then frmglossary:=tfrmglossary.Create(nil);
  with frmglossary.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_glossary';
    open;
  end;
  frmglossary.Show;
end;

end.
