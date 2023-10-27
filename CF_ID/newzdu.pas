unit newzdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DBTables, Db, DBClient, wwdbdatetimepicker, Mask, DBCtrls,
  StdCtrls, Grids, DBGridEh, Buttons, ExtCtrls, ComCtrls, Variants,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib;

type
  Tfrmnewzd = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    lblcpy: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    SpeedButton12: TSpeedButton;
    DBNavigator5: TDBNavigator;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    dsfczd1: TDataSource;
    dsfczd2: TDataSource;
    dsfcwl: TDataSource;
    fcwl: TClientDataSet;
    fcwlgch: TStringField;
    fcwlzdh: TStringField;
    fcwlkh: TStringField;
    fcwlsh: TStringField;
    fcwlwl: TStringField;
    fcwljyl: TFloatField;
    fcwlzds: TIntegerField;
    fcwlcacyl: TFloatField;
    fcwlcut: TBooleanField;
    fcwldxm: TBooleanField;
    fcwlwtype: TStringField;
    fcwlfl: TBooleanField;
    fczd1: TClientDataSet;
    fczd2: TClientDataSet;
    fczd2gch: TStringField;
    fczd2zdh: TStringField;
    fczd2kh: TStringField;
    fczd2sh: TStringField;
    fczd2id: TIntegerField;
    fczd2cup: TStringField;
    fczd2siz1: TIntegerField;
    fczd2cm: TStringField;
    fczd2yzds: TIntegerField;
    fczd2tzs: TIntegerField;
    fczd2zds: TIntegerField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    PopupMenu1: TPopupMenu;
    DeleteOriginalData1: TMenuItem;
    fcwlshl: TFloatField;
    SpeedButton9: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBDATETIMEPICKER1: TdxDBDateEdit;
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2Enter(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure fczd1AfterPost(DataSet: TDataSet);
    procedure fczd2AfterPost(DataSet: TDataSet);
    procedure fcwlAfterPost(DataSet: TDataSet);
    function cvtcm1(cm:string):integer;
    function cvtcm2(cm1:integer):string;
    function cvtcm3(cm:string):integer;
    function cvtcm4(cm1:integer):string;
    function convertsiz2id(var siz: string):string;
    procedure fczd1NewRecord(DataSet: TDataSet);
    procedure fcwlNewRecord(DataSet: TDataSet);
    procedure dsfczd1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure fczd2yzdsChange(Sender: TField);
    procedure fcwljylChange(Sender: TField);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewzd: Tfrmnewzd;
  lckcm:string;

implementation
uses mainu, fcu, zdlru;
{$R *.DFM}

procedure Tfrmnewzd.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh2.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmnewzd.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewzd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fczd1.active=true then begin
    if fczd1.state=dsedit then fczd1.post;
    if fczd2.state=dsedit then fczd2.post;
    if (fcwl.state=dsedit) or (fcwl.state=dsinsert) then fcwl.post;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select gch from cut_fczd1 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
      params[0].asstring:=fczd1.fieldbyname('gch').value;
      params[1].asstring:=fczd1.fieldbyname('zdh').value;
      params[2].asstring:=fczd1.fieldbyname('kh').value;
      params[3].asstring:=fczd1.fieldbyname('sh').value;
      open;
      if fieldbyname('gch').isnull then begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into cut_fczd1 select * from cut_fczd01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into cut_fczd2 select * from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          execute;
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='insert into cut_fcwl select * from cut_fcwl01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          execute;
        end;
      end;
    end;
    with frmfc.fczd1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      commandtext:='select * from cut_fczd1 where gch=:gch';
      params[0].asstring:=fczd1.fieldbyname('gch').value;
      open;
    end;
  end;
  action:=cafree;
  frmnewzd:=nil;
end;

procedure Tfrmnewzd.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmnewzd.DBGridEh2Enter(Sender: TObject);
var
  ocm1,ncm1,ocm2,ncm2:string;
  xj1,i,j,k:integer;
  icm1,icm2:integer;
  str1,str2:string;
begin
 if (fczd1.state=dsedit) or (fczd1.state=dsinsert) then begin
  fczd1.post;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    commandtext:='delete from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
    params[0].asstring:=fczd1.fieldbyname('gch').value;
    params[1].asstring:=fczd1.fieldbyname('zdh').value;
    params[2].asstring:=fczd1.fieldbyname('kh').value;
    params[3].asstring:=fczd1.fieldbyname('sh').value;
    execute;
  end;
  if not fczd1.fieldbyname('cm1').isnull then begin
    if (copy(fczd1.fieldbyname('cm1').value,1,1)<'0') or (copy(fczd1.fieldbyname('cm1').value,1,1)>'9') or (copy(fczd1.fieldbyname('cm1').value,2,2)='XL') then
    begin
      ocm1:=fczd1.fieldbyname('cm1').value;
      ncm1:='';
    end
    else begin
      if (copy(fczd1.fieldbyname('cm1').value,3,1)<'0') or (copy(fczd1.fieldbyname('cm1').value,3,1)>'9') then
      begin
        ocm1:=copy(fczd1.fieldbyname('cm1').value,3,3);
        ncm1:=copy(fczd1.fieldbyname('cm1').value,1,2);
      end
      else begin
        ocm1:=copy(fczd1.fieldbyname('cm1').value,4,2);
        ncm1:=copy(fczd1.fieldbyname('cm1').value,1,3);
      end;
    end;
  end
  else begin
    ocm1:='';
    ncm1:='';
  end;
  if not fczd1.fieldbyname('cm2').isnull then begin
    if (copy(fczd1.fieldbyname('cm2').value,1,1)<'0') or (copy(fczd1.fieldbyname('cm2').value,1,1)>'9') or (copy(fczd1.fieldbyname('cm2').value,2,2)='XL') then
    begin
      ocm2:=fczd1.fieldbyname('cm2').value;
      ncm2:='';
    end
    else begin
      if (copy(fczd1.fieldbyname('cm2').value,3,1)<'0') or (copy(fczd1.fieldbyname('cm2').value,3,1)>'9') then
      begin
        ocm2:=copy(fczd1.fieldbyname('cm2').value,3,3);
        ncm2:=copy(fczd1.fieldbyname('cm2').value,1,2);
      end
      else begin
        ocm2:=copy(fczd1.fieldbyname('cm2').value,4,2);
        ncm2:=copy(fczd1.fieldbyname('cm2').value,1,3);
      end;
    end;
  end
  else begin
    ocm2:='';
    ncm2:='';
  end;

  if (ocm1<'L') and (ocm2<'L') and ((copy(ocm1,2,1)<'L') and (copy(ocm2,2,1)<'L')) then begin
    if ocm1>'' then begin
      if ocm1<ocm2 then begin
        xj1:=strtoint(fczd1.fieldbyname('xj').value);
        icm1:=cvtcm3(ocm1);
        icm2:=cvtcm3(ocm2);
        if xj1=5 then begin
          for i:=0 to icm2-icm1 do begin
            for j:=0 to ((strtoint(ncm2)-strtoint(ncm1)) div 5) do begin
             str2:=inttostr(strtoint(ncm1)+j*5)+cvtcm4(icm1+i);
             str1:=convertsiz2id(str2);
             with clientdataset1 do begin
              close;
              params.clear;
              params.createparam(ftstring,'gch',ptinput);
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'kh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              params.createparam(ftinteger,'id1',ptinput);
              params.createparam(ftstring,'cup',ptinput);
              params.createparam(ftinteger,'siz1',ptinput);
              params.createparam(ftstring,'cm',ptinput);
              commandtext:='insert into cut_fczd02(gch,zdh,kh,sh,id,cup,siz1,cm,yzds,tzs,zds) values(:gch,:zdh,:kh,:sh,:id1,:cup,:siz1,:cm,0,0,0)';
              params[0].asstring:=fczd1.fieldbyname('gch').value;
              params[1].asstring:=fczd1.fieldbyname('zdh').value;
              params[2].asstring:=fczd1.fieldbyname('kh').value;
              params[3].asstring:=fczd1.fieldbyname('sh').value;
              params[4].asinteger:=strtoint(copy(str1,1,pos('::',str1)-1));
              params[5].asstring:=copy(str1,pos('::',str1)+2,pos('|:',str1)-2-pos('::',str1));
              if trim(copy(str1,pos('|:',str1)+2,3))>'' then
              params[6].asinteger:=strtoint(trim(copy(str1,pos('|:',str1)+2,3)))
              else params[6].asinteger:=0;
              params[7].asstring:=str2;//inttostr(strtoint(ncm1)+j*5)+cvtcm4(icm1+i);
              execute;
             end;
            end;
          end;
        end
        else begin
          i:=(strtoint(ncm2)-strtoint(ncm1)) div xj1;
          for k:=0 to icm2-icm1 do begin
            for j:=0 to i do begin
              str2:=inttostr(strtoint(ncm1)+j*xj1)+cvtcm4(icm1+k);
              str1:=convertsiz2id(str2);
              with clientdataset1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftinteger,'id1',ptinput);
                params.createparam(ftstring,'cup',ptinput);
                params.createparam(ftinteger,'siz1',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                commandtext:='insert into cut_fczd02(gch,zdh,kh,sh,id,cup,siz1,cm,yzds,tzs,zds) values(:gch,:zdh,:kh,:sh,:id1,:cup,:siz1,:cm,0,0,0)';
                params[0].asstring:=fczd1.fieldbyname('gch').value;
                params[1].asstring:=fczd1.fieldbyname('zdh').value;
                params[2].asstring:=fczd1.fieldbyname('kh').value;
                params[3].asstring:=fczd1.fieldbyname('sh').value;
                params[4].asinteger:=strtoint(copy(str1,1,pos('::',str1)-1));
                params[5].asstring:=copy(str1,pos('::',str1)+2,pos('|:',str1)-2-pos('::',str1));
                if trim(copy(str1,pos('|:',str1)+2,3))>'' then
                params[6].asinteger:=strtoint(trim(copy(str1,pos('|:',str1)+2,3)))
                else params[6].asinteger:=0;
                params[7].asstring:=str2;//inttostr(strtoint(ncm1)+j*xj1)+cvtcm4(icm1+k);
                execute;
              end;
            end;
          end;
        end;
      end
      else begin
        xj1:=strtoint(fczd1.fieldbyname('xj').value);
        i:=(strtoint(ncm2)-strtoint(ncm1)) div xj1;
        for j:=0 to i do begin
          str2:=inttostr(strtoint(ncm1)+j*xj1)+ocm1;
          str1:=convertsiz2id(str2);
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id1',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftinteger,'siz1',ptinput);
            params.createparam(ftstring,'cm',ptinput);
            commandtext:='insert into cut_fczd02(gch,zdh,kh,sh,id,cup,siz1,cm,yzds,tzs,zds) values(:gch,:zdh,:kh,:sh,:id1,:cup,:siz1,:cm,0,0,0)';
            params[0].asstring:=fczd1.fieldbyname('gch').value;
            params[1].asstring:=fczd1.fieldbyname('zdh').value;
            params[2].asstring:=fczd1.fieldbyname('kh').value;
            params[3].asstring:=fczd1.fieldbyname('sh').value;
            params[4].asinteger:=strtoint(copy(str1,1,pos('::',str1)-1));
            params[5].asstring:=copy(str1,pos('::',str1)+2,pos('|:',str1)-2-pos('::',str1));
            if trim(copy(str1,pos('|:',str1)+2,3))>'' then
            params[6].asinteger:=strtoint(trim(copy(str1,pos('|:',str1)+2,3)))
            else params[6].asinteger:=0;
            params[7].asstring:=str2;//inttostr(strtoint(ncm1)+j*xj1)+ocm1;
            execute;
          end;
        end;
      end;
    end
    else begin
      if ncm1>'' then begin
        xj1:=strtoint(fczd1.fieldbyname('xj').value);
        i:=(strtoint(ncm2)-strtoint(ncm1)) div xj1;
        for j:=0 to i do begin
          str2:=inttostr(strtoint(ncm1)+j*xj1);
          str1:=convertsiz2id(str2);
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'id1',ptinput);
            params.createparam(ftstring,'cup',ptinput);
            params.createparam(ftinteger,'siz1',ptinput);
            params.createparam(ftstring,'cm',ptinput);
            commandtext:='insert into cut_fczd02(gch,zdh,kh,sh,id,cup,siz1,cm,yzds,tzs,zds) values(:gch,:zdh,:kh,:sh,:id1,:cup,:siz1,:cm,0,0,0)';
            params[0].asstring:=fczd1.fieldbyname('gch').value;
            params[1].asstring:=fczd1.fieldbyname('zdh').value;
            params[2].asstring:=fczd1.fieldbyname('kh').value;
            params[3].asstring:=fczd1.fieldbyname('sh').value;
            params[4].asinteger:=strtoint(copy(str1,1,pos('::',str1)-1));
            params[5].asstring:=copy(str1,pos('::',str1)+2,pos('|:',str1)-2-pos('::',str1));
            if trim(copy(str1,pos('|:',str1)+2,3))>'' then
            params[6].asinteger:=strtoint(trim(copy(str1,pos('|:',str1)+2,3)))
            else params[6].asinteger:=0;
            params[7].asstring:=str2;//inttostr(strtoint(ncm1)+j*xj1);
            execute;
          end;
        end;
      end;
    end;
  end
  else begin
    icm1:=cvtcm1(ocm1);
    icm2:=cvtcm1(ocm2);
    for j:=0 to icm2-icm1 do begin
      str2:=cvtcm2(icm1+j);
      str1:=convertsiz2id(str2);
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'id1',ptinput);
        params.createparam(ftstring,'cup',ptinput);
        params.createparam(ftinteger,'siz1',ptinput);
        params.createparam(ftstring,'cm',ptinput);
        commandtext:='insert into cut_fczd02(gch,zdh,kh,sh,id,cup,siz1,cm,yzds,tzs,zds) values(:gch,:zdh,:kh,:sh,:id1,:cup,:siz1,:cm,0,0,0)';
        params[0].asstring:=fczd1.fieldbyname('gch').value;
        params[1].asstring:=fczd1.fieldbyname('zdh').value;
        params[2].asstring:=fczd1.fieldbyname('kh').value;
        params[3].asstring:=fczd1.fieldbyname('sh').value;
        params[4].asinteger:=strtoint(copy(str1,1,pos('::',str1)-1));
        params[5].asstring:=copy(str1,pos('::',str1)+2,pos('|:',str1)-2-pos('::',str1));
        if trim(copy(str1,pos('|:',str1)+2,3))>'' then
        params[6].asinteger:=strtoint(trim(copy(str1,pos('|:',str1)+2,3)))
        else params[6].asinteger:=0;
        params[7].asstring:=str2;
        execute;
      end;
    end;
  end;
  with fczd2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    commandtext:='select * from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
    params[0].asstring:=fczd1.fieldbyname('gch').value;
    params[1].asstring:=fczd1.fieldbyname('zdh').value;
    params[2].asstring:=fczd1.fieldbyname('kh').value;
    params[3].asstring:=fczd1.fieldbyname('sh').value;
    open;
  end;
 end;
end;

procedure Tfrmnewzd.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.activepage=tabsheet3 then begin
    if fczd2.state=dsedit then fczd2.post;
    if fczd1.active=true then begin
      if not fczd1.fieldbyname('gch').isnull then begin
        with fcwl do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from cut_fcwl01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          open;
        end;
      end;
    end;
  end
  else begin
    if fcwl.state=dsedit then fcwl.post;
      if not fczd1.fieldbyname('gch').isnull then begin
        with fczd2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          params[0].asstring:=fczd1.fieldbyname('gch').value;
          params[1].asstring:=fczd1.fieldbyname('zdh').value;
          params[2].asstring:=fczd1.fieldbyname('kh').value;
          params[3].asstring:=fczd1.fieldbyname('sh').value;
          open;
        end;
      end;
  end;
end;

procedure Tfrmnewzd.fczd1AfterPost(DataSet: TDataSet);
begin
  if fczd1.applyupdates(-1)>0 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      commandtext:='select gch from cut_fczd01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
      params[0].asstring:=fczd1.fieldbyname('gch').value;
      params[1].asstring:=fczd1.fieldbyname('zdh').value;
      params[2].asstring:=fczd1.fieldbyname('kh').value;
      params[3].asstring:=fczd1.fieldbyname('sh').value;
      open;
      if not fieldbyname('gch').isnull then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'ccrq',ptinput);
          params.createparam(ftinteger,'zds',ptinput);
          params.createparam(ftstring,'cm1',ptinput);
          params.createparam(ftstring,'cm2',ptinput);
          params.createparam(ftstring,'xj',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='update cut_fczd01 set ccrq=:ccrq,zds=:zds,cm1=:cm1,cm2=:cm2,xj=:xj where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
          if not fczd1.fieldbyname('ccrq').isnull then
          params[0].asdatetime:=fczd1.fieldbyname('ccrq').value;
          params[1].asinteger:=fczd1.fieldbyname('zds').value;
          if not fczd1.fieldbyname('cm1').isnull then
          params[2].asstring:=fczd1.fieldbyname('cm1').value;
          if not fczd1.fieldbyname('cm2').isnull then
          params[3].asstring:=fczd1.fieldbyname('cm2').value;
          if not fczd1.fieldbyname('xj').isnull then
          params[4].asstring:=fczd1.fieldbyname('xj').value;
          params[5].asstring:=fczd1.fieldbyname('gch').value;
          params[6].asstring:=fczd1.fieldbyname('zdh').value;
          params[7].asstring:=fczd1.fieldbyname('kh').value;
          params[8].asstring:=fczd1.fieldbyname('sh').value;
          execute;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'ccrq',ptinput);
          params.createparam(ftinteger,'zds',ptinput);
          params.createparam(ftstring,'cm1',ptinput);
          params.createparam(ftstring,'cm2',ptinput);
          params.createparam(ftstring,'xj',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftdatetime,'accdt',ptinput);
          commandtext:='insert into cut_fczd01(ccrq,zds,cm1,cm2,xj,gch,zdh,kh,sh,accdt) '
                      +'values(:ccrq,:zds,:cm1,:cm2,:xj,:gch,:zdh,:kh,:sh,:accdt)';
          if not fczd1.fieldbyname('ccrq').isnull then
          params[0].asdatetime:=fczd1.fieldbyname('ccrq').value
          else params[0].asdatetime:=date;
          params[1].asinteger:=fczd1.fieldbyname('zds').value;
          if not fczd1.fieldbyname('cm1').isnull then
          params[2].asstring:=fczd1.fieldbyname('cm1').value;
          if not fczd1.fieldbyname('cm2').isnull then
          params[3].asstring:=fczd1.fieldbyname('cm2').value;
          if not fczd1.fieldbyname('xj').isnull then
          params[4].asstring:=fczd1.fieldbyname('xj').value;
          params[5].asstring:=fczd1.fieldbyname('gch').value;
          params[6].asstring:=fczd1.fieldbyname('zdh').value;
          params[7].asstring:=fczd1.fieldbyname('kh').value;
          params[8].asstring:=fczd1.fieldbyname('sh').value;
          params[9].asdatetime:=fczd1.fieldbyname('accdt').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmnewzd.fczd2AfterPost(DataSet: TDataSet);
var
  sl1:integer;
begin
  if fczd2.applyupdates(-1)>0 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'yzds',ptinput);
      params.createparam(ftinteger,'tzs',ptinput);
      params.createparam(ftinteger,'zds',ptinput);
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftstring,'cm',ptinput);
      commandtext:='update cut_fczd02 set yzds=:yzds,tzs=:tzs,zds=:zds where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and cm=:cm';
      params[0].asinteger:=fczd2.fieldbyname('yzds').value;
      params[1].asinteger:=fczd2.fieldbyname('tzs').value;
      params[2].asinteger:=fczd2.fieldbyname('zds').value;
      params[3].asstring:=fczd1.fieldbyname('gch').value;
      params[4].asstring:=fczd1.fieldbyname('zdh').value;
      params[5].asstring:=fczd1.fieldbyname('kh').value;
      params[6].asstring:=fczd1.fieldbyname('sh').value;
      params[7].asstring:=fczd2.fieldbyname('cm').value;
      execute;
    end;
  end;
  lckcm:=fczd2.fieldbyname('cm').value;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    commandtext:='select sum(zds) as sl1 from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
    params[0].asstring:=fczd1.fieldbyname('gch').value;
    params[1].asstring:=fczd1.fieldbyname('zdh').value;
    params[2].asstring:=fczd1.fieldbyname('kh').value;
    params[3].asstring:=fczd1.fieldbyname('sh').value;
    open;
    if not fieldbyname('sl1').isnull then begin
      sl1:=fieldbyname('sl1').value;
      fczd1.edit;
      fczd1.fieldbyname('zds').value:=sl1;
      fczd1.post;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'zds',ptinput);
        params.createparam(ftinteger,'zds1',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='update cut_fcwl01 set zds=:zds,cacyl=jyl*:zds1 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asinteger:=sl1;
        params[1].asinteger:=sl1;
        params[2].asstring:=fczd1.fieldbyname('gch').value;
        params[3].asstring:=fczd1.fieldbyname('zdh').value;
        params[4].asstring:=fczd1.fieldbyname('kh').value;
        params[5].asstring:=fczd1.fieldbyname('sh').value;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmnewzd.fcwlAfterPost(DataSet: TDataSet);
begin
  if fcwl.applyupdates(-1)>0 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftstring,'wtype',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='select wl from cut_fcwl01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and wtype=:wtype and wl=:wl';
      params[0].asstring:=fcwl.fieldbyname('gch').value;
      params[1].asstring:=fcwl.fieldbyname('zdh').value;
      params[2].asstring:=fcwl.fieldbyname('kh').value;
      params[3].asstring:=fcwl.fieldbyname('sh').value;
      params[4].asstring:=fcwl.fieldbyname('wtype').value;
      params[5].asstring:=fcwl.fieldbyname('wl').value;
      open;
      if not fieldbyname('wl').isnull then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftboolean,'cut',ptinput);
          params.createparam(ftboolean,'dxm',ptinput);
          params.createparam(ftfloat,'jyl',ptinput);
          PARAMS.CREATEPARAM(FTFLOAT,'CACYL',PTINPUT);
          params.createparam(ftboolean,'fl',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftstring,'wtype',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          commandtext:='update cut_fcwl01 set cut=:cut,dxm=:dxm,jyl=:jyl,CACYL=:CACYL,fl=:fl where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and wtype=:wtype and wl=:wl';
          params[0].asboolean:=fcwl.fieldbyname('cut').value;
          params[1].asboolean:=fcwl.fieldbyname('dxm').value;
          params[2].asfloat:=fcwl.fieldbyname('jyl').value;
          PARAMS[3].ASFLOAT:=FCWL.FIELDBYNAME('CACYL').VALUE;
          params[4].asboolean:=fcwl.fieldbyname('fl').value;
          params[5].asstring:=fcwl.fieldbyname('gch').value;
          params[6].asstring:=fcwl.fieldbyname('zdh').value;
          params[7].asstring:=fcwl.fieldbyname('kh').value;
          params[8].asstring:=fcwl.fieldbyname('sh').value;
          params[9].asstring:=fcwl.fieldbyname('wtype').value;
          params[10].asstring:=fcwl.fieldbyname('wl').value;
          execute;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftstring,'wtype',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftboolean,'cut',ptinput);
          params.createparam(ftboolean,'dxm',ptinput);
          params.createparam(ftfloat,'jyl',ptinput);
          PARAMS.CREATEPARAM(FTFLOAT,'CACYL',PTINPUT);
          params.createparam(ftboolean,'fl',ptinput);
          params.createparam(ftfloat,'shl',ptinput);
          commandtext:='insert into cut_fcwl01(gch,zdh,kh,sh,wtype,wl,cut,dxm,jyl,cacyl,fl,shl) '
                      +'values(:gch,:zdh,:kh,:s,:wtype,:wl,:cut,:dxm,:jyl,:cacyl,:fl,:shl)';
          params[0].asstring:=fcwl.fieldbyname('gch').value;
          params[1].asstring:=fcwl.fieldbyname('zdh').value;
          params[2].asstring:=fcwl.fieldbyname('kh').value;
          params[3].asstring:=fcwl.fieldbyname('sh').value;
          params[4].asstring:=fcwl.fieldbyname('wtype').value;
          params[5].asstring:=fcwl.fieldbyname('wl').value;
          params[6].asboolean:=fcwl.fieldbyname('cut').value;
          params[7].asboolean:=fcwl.fieldbyname('dxm').value;
          params[8].asfloat:=fcwl.fieldbyname('jyl').value;
          PARAMS[9].ASFLOAT:=FCWL.FIELDBYNAME('CACYL').VALUE;
          params[10].asboolean:=fcwl.fieldbyname('fl').value;
          params[11].asfloat:=fcwl.fieldbyname('shl').value;
          execute;
        end;
      end;
    end;
  end;
end;

function Tfrmnewzd.cvtcm1(cm: string): integer;
begin
  if cm='XS' then result:=10
  else if cm='S' then result:=11
  else if cm='M' then result:=12
  else if cm='L' then result:=13
  else if cm='XL' then result:=14
  else if cm='2XL' then result:=15
  else if cm='3XL' then result:=16
  else if cm='4XL' then result:=17
  else if cm='5XL' then result:=18
  else if cm='6XL' then result:=19
  else if cm='7XL' then result:=20
  else if cm='XXL' then result:=21;
end;

function Tfrmnewzd.cvtcm2(cm1: integer): string;
begin
  if cm1=10 then result:='XS'
  else if cm1=11 then result:='S'
  else if cm1=12 then result:='M'
  else if cm1=13 then result:='L'
  else if cm1=14 then result:='XL'
  else if cm1=15 then result:='2XL'
  else if cm1=16 then result:='3XL'
  else if cm1=17 then result:='4XL'
  else if cm1=18 then result:='5XL'
  else if cm1=19 then result:='6XL'
  else if cm1=20 then result:='7XL'
  else if cm1=21 then result:='XXL';
end;

function Tfrmnewzd.cvtcm3(cm: string): integer;
begin
  if cm='AA' then result:=1
  else if cm='A' then result:=2
  else if cm='B' then result:=3
  else if cm='C' then result:=4
  else if cm='D' then result:=5
  else if cm='DD' then result:=6
  else if cm='E' then result:=7
  else if cm='F' then result:=8
  else if cm='G' then result:=9;
end;

function Tfrmnewzd.cvtcm4(cm1: integer): string;
begin
  if cm1=1 then result:='AA'
  else if cm1=2 then result:='A'
  else if cm1=3 then result:='B'
  else if cm1=4 then result:='C'
  else if cm1=5 then result:='D'
  else if cm1=6 then result:='DD'
  else if cm1=7 then result:='E'
  else if cm1=8 then result:='F'
  else if cm1=9 then result:='G';
end;

function Tfrmnewzd.convertsiz2id(var siz: string): string;
var
  str1,str2,str3:string;
begin
 if length(siz)>=2 then begin
  if (copy(siz,2,1)>='0') and (copy(siz,2,1)<='9') then begin
    if length(siz)>2 then begin
      if (copy(siz,3,1)>='0') and (copy(siz,3,1)<='9') then
      str2:=copy(siz,1,3) else str2:=copy(siz,1,2);
      str1:=copy(siz,length(str2)+1,3);
    end
    else begin
      str2:=siz;
      str1:='';
    end;
    if str1='' then str1:=' ';
    if str1=' ' then str3:='0'
    else if str1='AA' then str3:='1'
    else if str1='A' then str3:='2'
    else if str1='B' then str3:='3'
    else if str1='C' then str3:='4'
    else if str1='D' then str3:='5'
    else if str1='DD' then str3:='6'
    else if str1='E' then str3:='7'
    else if str1='F' then str3:='8'
    else if str1='G' then str3:='9'
    else str3:='99';
    result:=str3+'::'+str1+'|:'+str2;
  end
  else begin
    if siz='XS' then str3:='10'
    else if siz='S' then str3:='11'
    else if siz='M' then str3:='12'
    else if siz='L' then str3:='13'
    else if siz='XL' then str3:='14'
    else if siz='2XL' then str3:='15'
    else if siz='3XL' then str3:='16'
    else if siz='4XL' then str3:='17'
    else if siz='5XL' then str3:='18'
    else if siz='6XL' then str3:='19'
    else if siz='7XL' then str3:='20'
    else if siz='XXL' then str3:='21';
    result:=str3+'::'+siz+'|:';
  end;
 end
 else begin
  if (siz>='0') and (siz<='9') then begin
    str2:=siz;
    str1:='';
    if str1='' then str1:=' ';
    if str1=' ' then str3:='0'
    else if str1='AA' then str3:='1'
    else if str1='A' then str3:='2'
    else if str1='B' then str3:='3'
    else if str1='C' then str3:='4'
    else if str1='D' then str3:='5'
    else if str1='DD' then str3:='6'
    else if str1='E' then str3:='7'
    else if str1='F' then str3:='8'
    else if str1='G' then str3:='9'
    else str3:='99';
    result:=str3+'::'+str1+'|:'+str2;
  end
  else begin
    if siz='S' then str3:='11'
    else if siz='M' then str3:='12'
    else if siz='L' then str3:='13';
    result:=str3+'::'+siz+'|:';
  end;
 end;
end;

procedure Tfrmnewzd.fczd1NewRecord(DataSet: TDataSet);
begin
  fczd1.fieldbyname('ccrq').value:=date;
  fczd1.fieldbyname('zds').value:=0;
  fczd1.fieldbyname('accdt').value:=date;
end;

procedure Tfrmnewzd.fcwlNewRecord(DataSet: TDataSet);
begin
  fcwl.fieldbyname('gch').value:=fczd1.fieldbyname('gch').value;
  fcwl.fieldbyname('zdh').value:=fczd1.fieldbyname('zdh').value;
  fcwl.fieldbyname('kh').value:=fczd1.fieldbyname('kh').value;
  fcwl.fieldbyname('sh').value:=fczd1.fieldbyname('sh').value;
  fcwl.fieldbyname('zds').value:=fczd1.fieldbyname('zds').value;
  fcwl.fieldbyname('cut').value:=1;
  fcwl.fieldbyname('dxm').value:=0;
  fcwl.fieldbyname('fl').value:=0;
  fcwl.fieldbyname('jyl').value:=0;
  fcwl.fieldbyname('cacyl').value:=0;
  fcwl.fieldbyname('shl').value:=0;
  fcwl.fieldbyname('wtype').value:='M';
end;

procedure Tfrmnewzd.dsfczd1DataChange(Sender: TObject; Field: TField);
begin
  if fczd1.state=dsbrowse then begin
    if not fczd1.fieldbyname('gch').isnull then begin
      with fczd2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asstring:=fczd1.fieldbyname('gch').value;
        params[1].asstring:=fczd1.fieldbyname('zdh').value;
        params[2].asstring:=fczd1.fieldbyname('kh').value;
        params[3].asstring:=fczd1.fieldbyname('sh').value;
        open;
      end;
      if lckcm>'' then begin
        fczd2.locate('gch;zdh;kh;sh;cm',vararrayof([fczd1.fieldbyname('gch').value,fczd1.fieldbyname('zdh').value,fczd1.fieldbyname('kh').value,fczd1.fieldbyname('sh').value,lckcm]),[]);
      end;
      with fcwl do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_fcwl01 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asstring:=fczd1.fieldbyname('gch').value;
        params[1].asstring:=fczd1.fieldbyname('zdh').value;
        params[2].asstring:=fczd1.fieldbyname('kh').value;
        params[3].asstring:=fczd1.fieldbyname('sh').value;
        open;
      end;
    end;
  end
  else begin
    if fczd1.state=dsinsert then begin
      fczd2.close;
      fcwl.close;
    end;
  end;
end;

procedure Tfrmnewzd.SpeedButton3Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    params.createparam(ftstring,'zdh',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    params.createparam(ftstring,'sh',ptinput);
    commandtext:='delete from cut_fczd02 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and zds=0';
    params[0].asstring:=fczd2.fieldbyname('gch').value;
    params[1].asstring:=fczd2.fieldbyname('zdh').value;
    params[2].asstring:=fczd2.fieldbyname('kh').value;
    params[3].asstring:=fczd2.fieldbyname('sh').value;
    execute;
  end;
  if fczd2.state=dsedit then fczd2.post;
  pagecontrol1.activepage:=tabsheet3;
end;

procedure Tfrmnewzd.SpeedButton12Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewzd.SpeedButton9Click(Sender: TObject);
begin
  dbedit1.SetFocus;
  if fczd1.active=false then begin
    with fczd1 do begin
      close;
      params.clear;
      commandtext:='select * from cut_fczd01';
      open;
    end;
  end;
  fczd1.append;
end;

procedure Tfrmnewzd.SpeedButton6Click(Sender: TObject);
begin
  if frmzdlr=nil then frmzdlr:=tfrmzdlr.create(self);
  frmzdlr.label4.caption:='find1';
  frmzdlr.show;
end;

procedure Tfrmnewzd.fczd2yzdsChange(Sender: TField);
begin
  if fczd2.fieldbyname('yzds').isnull then fczd2.fieldbyname('yzds').value:=0;
  if fczd2.fieldbyname('tzs').isnull then fczd2.fieldbyname('tzs').value:=0;
  fczd2.fieldbyname('zds').value:=fczd2.fieldbyname('yzds').value+fczd2.fieldbyname('tzs').value; 
end;

procedure Tfrmnewzd.fcwljylChange(Sender: TField);
begin
  if fcwl.fieldbyname('jyl').isnull then fcwl.fieldbyname('jyl').value:=0;
  fcwl.fieldbyname('cacyl').value:=fcwl.fieldbyname('jyl').value*fcwl.fieldbyname('zds').value;
end;

procedure Tfrmnewzd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if edit1.text>'' then begin
      with fczd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select * from cut_fczd01 where gch=:gch';
        params[0].asstring:=edit1.text;
        open;
      end;
    end
    else begin
      fczd2.close;
      fcwl.close;
      fczd1.close;
    end;
  end;
end;

end.
