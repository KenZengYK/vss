unit newcap_style_adjformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Mask, rxToolEdit, rxCurrEdit, RXSpin,
  Buttons, Spin;

type
  Tfrmnewcap_style_adj = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    cEdit1: TSpinEdit;
    cEdit2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label5: TLabel;
    SpinEdit3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_style_adj: Tfrmnewcap_style_adj;
  strupd:string;

implementation

uses mainformu, newcap_styleformu, newcap_salesbalformu,
  newcap_nostyle_wkformu;

{$R *.dfm}

procedure Tfrmnewcap_style_adj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_style_adj:=nil;
end;

procedure Tfrmnewcap_style_adj.BitBtn1Click(Sender: TObject);
begin
  if cedit1.Enabled=false then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      commandtext:='update tbl_cap_oa_proj set writeoff=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
      params[0].asinteger:=cedit2.value;
      params[1].asstring:=frmnewcap_style.Query1.fieldbyname('tplant').value;
      params[2].asinteger:=frmnewcap_style.query1.fieldbyname('yr').value;
      params[3].asstring:=frmnewcap_style.Query1.fieldbyname('cust').value;
      params[4].asinteger:=strtoint(label4.caption);
      params[5].asstring:=frmnewcap_style.Query1.fieldbyname('flag6').value;
      execute;
    end;
    }
    strupd:='update tbl_cap_oa_proj set ';
    strupd:=strupd+'writeoff='+inttostr(cedit2.value)+' ';
    strupd:=strupd+'where tplant='''+frmnewcap_style.Query1.fieldbyname('tplant').value+''' ';
    strupd:=strupd+'and yr='+frmnewcap_style.Query1.fieldbyname('yr').asstring+' ';
    strupd:=strupd+'and cust='''+frmnewcap_style.Query1.fieldbyname('cust').value+''' ';
    strupd:=strupd+'and m1='+label4.caption+' ';
    strupd:=strupd+'and flag6='''+frmnewcap_style.Query1.fieldbyname('flag6').value+'''';
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

    frmnewcap_style.SpinEdit2Change(self);
  end else if cedit2.Enabled=false then begin
    //with query2 do begin
    //  close;
    //  params.clear;
      if cedit1.Value<>0 then begin
        {
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftinteger,'x8',ptinput);
        params.createparam(ftstring,'x9',ptinput);
        if label5.Caption='1' then
          strupd:='update tbl_cap_oa_proj set a01='+inttostr(cedit1.value)+',ay01='+inttostr(spinedit1.value)+',am01='+inttostr(spinedit2.value)+',aw01='+spinedit3.text+' where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='2' then
          commandtext:='update tbl_cap_oa_proj set a02=:x1,ay02=:x2,am02=:x3,aw02=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='3' then
          commandtext:='update tbl_cap_oa_proj set a03=:x1,ay03=:x2,am03=:x3,aw03=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='4' then
          commandtext:='update tbl_cap_oa_proj set a04=:x1,ay04=:x2,am04=:x3,aw04=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='5' then
          commandtext:='update tbl_cap_oa_proj set a05=:x1,ay05=:x2,am05=:x3,aw05=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='6' then
          commandtext:='update tbl_cap_oa_proj set a06=:x1,ay06=:x2,am06=:x3,aw06=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
        params[0].asinteger:=cedit1.value;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        params[3].asinteger:=strtoint(spinedit3.text);
        params[4].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value;
        params[5].asinteger:=frmnewcap_nostyle_wk.query1.fieldbyname('yr').value;
        params[6].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value;
        params[7].asinteger:=strtoint(label4.caption);
        params[8].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value;
        execute;
        }
        if label5.Caption='1' then begin
          strupd:='update tbl_cap_oa_proj set a01='+inttostr(cedit1.value)+',ay01='+inttostr(spinedit1.value)+',am01='+inttostr(spinedit2.value)+',aw01='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='2' then begin
          strupd:='update tbl_cap_oa_proj set a02='+inttostr(cedit1.value)+',ay02='+inttostr(spinedit1.value)+',am02='+inttostr(spinedit2.value)+',aw02='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='3' then begin
          strupd:='update tbl_cap_oa_proj set a03='+inttostr(cedit1.value)+',ay03='+inttostr(spinedit1.value)+',am03='+inttostr(spinedit2.value)+',aw03='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='4' then begin
          strupd:='update tbl_cap_oa_proj set a04='+inttostr(cedit1.value)+',ay04='+inttostr(spinedit1.value)+',am04='+inttostr(spinedit2.value)+',aw04='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='5' then begin
          strupd:='update tbl_cap_oa_proj set a05='+inttostr(cedit1.value)+',ay05='+inttostr(spinedit1.value)+',am05='+inttostr(spinedit2.value)+',aw05='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='6' then begin
          strupd:='update tbl_cap_oa_proj set a06='+inttostr(cedit1.value)+',ay06='+inttostr(spinedit1.value)+',am06='+inttostr(spinedit2.value)+',aw06='+spinedit3.text;
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end;
      end else begin
        {
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftinteger,'x8',ptinput);
        params.createparam(ftstring,'x9',ptinput);
        if label5.Caption='1' then
          commandtext:='update tbl_cap_oa_proj set a01=:x2,ay01=null,am01=null,aw01=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='2' then
          commandtext:='update tbl_cap_oa_proj set a02=:x2,ay02=null,am02=null,aw02=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='3' then
          commandtext:='update tbl_cap_oa_proj set a03=:x2,ay03=null,am03=null,aw03=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='4' then
          commandtext:='update tbl_cap_oa_proj set a04=:x2,ay04=null,am04=null,aw04=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='5' then
          commandtext:='update tbl_cap_oa_proj set a05=:x2,ay05=null,am05=null,aw05=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
        else if label5.Caption='6' then
          commandtext:='update tbl_cap_oa_proj set a06=:x2,ay06=null,am06=null,aw06=null where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
        params[0].asinteger:=cedit1.value;
        params[1].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value;
        params[2].asinteger:=frmnewcap_nostyle_wk.query1.fieldbyname('yr').value;
        params[3].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value;
        params[4].asinteger:=strtoint(label4.caption);
        params[5].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value;
        execute;
        }
        if label5.Caption='1' then begin
          strupd:='update tbl_cap_oa_proj set a01=0,ay01=null,am01=null,aw01=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='2' then begin
          strupd:='update tbl_cap_oa_proj set a02=0,ay02=null,am02=null,aw02=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='3' then begin
          strupd:='update tbl_cap_oa_proj set a03=0,ay03=null,am03=null,aw03=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='4' then begin
          strupd:='update tbl_cap_oa_proj set a04=0,ay04=null,am04=null,aw04=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='5' then begin
          strupd:='update tbl_cap_oa_proj set a05=0,ay05=null,am05=null,aw05=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end else if label5.Caption='6' then begin
          strupd:='update tbl_cap_oa_proj set a06=0,ay06=null,am06=null,aw06=null';
          strupd:=strupd+' where tplant='''+frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value+''' and yr='+frmnewcap_nostyle_wk.Query1.fieldbyname('yr').asstring;
          strupd:=strupd+' and cust='''+frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value+''' and m1='+label4.caption+' and flag6='''+frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value+'''';
        end;
      end;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
    //end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    if cedit1.Value<>0 then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      commandtext:='update tbl_cap_oa_proj set writeoff=:x1,at3=:x2,at3yr=:x3,at3mn=:x4 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
      params[0].asinteger:=cedit2.value;
      params[1].asinteger:=cedit1.value;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=spinedit2.value;
      params[4].asstring:=frmnewcap_style.Query1.fieldbyname('tplant').value;
      params[5].asinteger:=frmnewcap_style.query1.fieldbyname('yr').value;
      params[6].asstring:=frmnewcap_style.Query1.fieldbyname('cust').value;
      params[7].asinteger:=strtoint(label4.caption);
      params[8].asstring:=frmnewcap_style.Query1.fieldbyname('flag6').value;
      execute;
    end else if cedit2.Value<>0 then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      commandtext:='update tbl_cap_oa_proj set writeoff=:x1 where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
      params[0].asinteger:=cedit2.value;
      params[1].asstring:=frmnewcap_style.Query1.fieldbyname('tplant').value;
      params[2].asinteger:=frmnewcap_style.query1.fieldbyname('yr').value;
      params[3].asstring:=frmnewcap_style.Query1.fieldbyname('cust').value;
      params[4].asinteger:=strtoint(label4.caption);
      params[5].asstring:=frmnewcap_style.Query1.fieldbyname('flag6').value;
      execute;
    end;
  end;
  }
  frmnewcap_style_adj.close;
end;

procedure Tfrmnewcap_style_adj.FormShow(Sender: TObject);
begin
  with query3 do begin
    close;
    params.Clear;
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftinteger,'x8',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    if label5.caption='1' then
    commandtext:='select a01 as at3,ay01 as at3yr,am01 as at3mn,aw01 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
    else if label5.caption='2' then
    commandtext:='select a02 as at3,ay02 as at3yr,am02 as at3mn,aw02 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
    else if label5.caption='3' then
    commandtext:='select a03 as at3,ay03 as at3yr,am03 as at3mn,aw03 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
    else if label5.caption='4' then
    commandtext:='select a04 as at3,ay04 as at3yr,am04 as at3mn,aw04 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
    else if label5.caption='5' then
    commandtext:='select a05 as at3,ay05 as at3yr,am05 as at3mn,aw05 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9'
    else if label5.caption='6' then
    commandtext:='select a06 as at3,ay06 as at3yr,am06 as at3mn,aw06 as at3wk from tbl_cap_oa_proj where tplant=:x5 and yr=:x6 and cust=:x7 and m1=:x8 and flag6=:x9';
    params[0].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('tplant').value;
    params[1].asinteger:=frmnewcap_nostyle_wk.query1.fieldbyname('yr').value;
    params[2].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('cust').value;
    params[3].asinteger:=strtoint(label4.caption);
    params[4].asstring:=frmnewcap_nostyle_wk.Query1.fieldbyname('flag6').value;
    //showmessage(commandtext);
    open;
    if not fieldbyname('at3').isnull then cedit1.value:=fieldbyname('at3').value;
    if not fieldbyname('at3yr').isnull then spinedit1.value:=fieldbyname('at3yr').value;
    if not fieldbyname('at3mn').isnull then spinedit2.value:=fieldbyname('at3mn').value;
    if not fieldbyname('at3wk').isnull then spinedit3.text:=fieldbyname('at3wk').asstring;
  end;
end;

procedure Tfrmnewcap_style_adj.SpinEdit3Enter(Sender: TObject);
begin
  spinedit3.Items.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct wkno from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=spinedit2.value;
    open;
    first;
    while not eof do begin
      spinedit3.items.Add(fieldbyname('wkno').asstring);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
