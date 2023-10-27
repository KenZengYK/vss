unit sewflow1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rxCurrEdit, Mask, rxToolEdit, DB, DBClient;

type
  Tfrmsewflow1 = class(TForm)
    Label1: TLabel;
    xh1: TRadioButton;
    xh2: TRadioButton;
    DateEdit1: TDateEdit;
    Edit1: TCurrencyEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsewflow1: Tfrmsewflow1;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmsewflow1.BitBtn1Click(Sender: TObject);
var
  pline,strupd:string;
  seq,i:integer;
begin
  pline:=worksheet1.tblshedule.fieldbyname('pline').value;
  seq:=worksheet1.tblshedule.fieldbyname('seq').value;
  if xh1.checked then begin
    if dateedit1.date>0 then begin
      if label3.caption='pf' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,pfsta1,pfdt1,pfsect1) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='s';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set pfsta1=''s'',pfdt1='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',pfsect1='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set flag31p=''s'',';
        strupd:=strupd+'f_ksrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',';
        strupd:=strupd+'f_ksjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end else if label3.caption='b' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,bsta1,bdt1,bsect1) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='s';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set bsta1=''s'',bdt1='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',bsect1='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set b_flag31=''s'',';
        strupd:=strupd+'b_ksrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',';
        strupd:=strupd+'b_ksjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end else if label3.caption='e' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,esta1,edt1,esect1) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='s';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set esta1=''s'',edt1='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',esect1='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set flag31e=''s'',';
        strupd:=strupd+'e_aksrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''' ';
        //strupd:=strupd+'e_aksjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end;
      close;
    end;
  end else if xh2.checked then begin
    if dateedit1.date>0 then begin
      if label3.caption='pf' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,pfsta2,pfdt2,pfsect2) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='x';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set pfsta2=''x'',pfdt2='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',pfsect2='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set flag31p=''x'',flag32p=''x'',';
        strupd:=strupd+'f_wcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''' ';
        //strupd:=strupd+'f_wcjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end else if label3.caption='b' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,bsta2,bdt2,bsect2) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='x';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set bsta2=''x'',bdt2='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',bsect2='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set b_flag31=''x'',';
        strupd:=strupd+'b_wcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''' ';
        //strupd:=strupd+'b_wcjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end else if label3.caption='e' then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            commandtext:='insert into tbl_schstatus(pline,seq,esta2,edt2,esect2) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='x';
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          strupd:='update tbl_schstatus set esta2=''x'',edt2='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',esect2='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        strupd:='update tblshedule set flag32e=''x'',';
        strupd:=strupd+'e_awcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',';
        strupd:=strupd+'e_awcjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end;
      close;
    end;
  end;
end;

procedure Tfrmsewflow1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsewflow1:=nil;
end;

end.