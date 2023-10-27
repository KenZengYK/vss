unit loginform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, MConnect, SConnect, Menus;
  procedure DataSetAfterPost(DataSet: TDataSet;keycount1: integer=0;keycount2: integer=-1);
type
  Tfrmlogin = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SocketConnection1: TSocketConnection;
    ClientDataSet1: TClientDataSet;
    PopupMenu1: TPopupMenu;
    AddUsers1: TMenuItem;
    ClientDataSet: TClientDataSet;
    SocketConnection2: TSocketConnection;
    SocketConnection3: TSocketConnection;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure AddUsers1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation
uses idoform, frmmmyz;
{$R *.DFM}

procedure DataSetAfterPost(DataSet: TDataSet;keycount1: integer=0;keycount2: integer=-1);
var
  i,j,temppos: integer;
  str1,str2,strtemp,Table,strwhere: string;
begin
  if (DataSet as tclientdataset).applyupdates(-1)>0 then begin//if applyupdate failed!
    //眔tablename
    strtemp:=(DataSet as TClientDataSet).Commandtext;
    strtemp:=copy(strtemp,pos('from',strtemp)+5,length(strtemp));
    temppos:= pos('where',strtemp);
    if temppos>0 then begin
      Table:=copy(strtemp,1,temppos-1);
    end else begin
      Table:=copy(strtemp,1,15);
    end;
    strwhere:='  where ';
    //眔where
    i:=0;
    if keycount1>0 then begin
      for i:=0 to keycount1-1 do begin
        strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
      end;
    end;
    strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName;

    Screen.Cursor:=crHourGlass;
    //耞琌update临琌insert
    with frmlogin.ClientDataSet do begin
      close;
      params.clear;
      for i:=0 to keycount1 do begin
        //ミ把计
        params.createparam(ftvariant,'field'+inttostr(i),ptinput);
        //倒把计结
        if DataSet.Fields[i].IsNull then exit
        else begin
          Case DataSet.Fields[i].DataType of
            ftinteger,ftAutoInc:           params[i].asinteger:=DataSet.Fields[i].Value;
            ftString,ftMemo:               params[i].asstring:=DataSet.Fields[i].value;
            ftFloat:                       params[i].AsFloat:=DataSet.Fields[i].Value;
            ftDate:                        params[i].AsDate:=DataSet.Fields[i].Value;
            ftDateTime:                    params[i].AsDateTime:=DataSet.Fields[i].Value;
          else
            showmessage('NOTE:  Unknown FieldType!please checked!   Table:--'+Table+'--');
          end;//end case
        end;
      end;
      //倒commandtext结
      commandtext:='select * from '+Table+strwhere;
      open;
      //璝 update
      if Recordcount>0 then begin
        close;
        params.clear;
        str1:='update '+Table+' set ';
        for i:=0 to DataSet.FieldCount-1 do begin
          if i<=keycount1 then continue;//璝key玥竚sql粂程
          //modified by RongSon in 2002.8.15
          if (DataSet.Fields[i].DataType=ftdate) or (DataSet.Fields[i].DataType=ftdatetime) then begin
            if DataSet.Fields[i].IsNull then continue;
          end;
          params.CreateParam(ftvariant,'field'+inttostr(i),ptinput); //ミ把计
          //舱sql 粂
          str1:=str1+DataSet.fields[i].fieldname+'=';
          str1:=str1+':field'+inttostr(i)+',';
          //倒把计结
          if DataSet.Fields[i].IsNull then begin
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc: params[j].asinteger:=0;
              ftstring,ftMemo:                params[j].AsString:='';
              ftfloat:                        params[j].AsFloat:=0;
              ftdate,ftDateTime:              showmessage('date is null!');
              ftBoolean:                      params[j].AsBoolean:=False;
            else
              showmessage('note: Unknown FieldType!');
            end; //end case
          end else begin
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc: params[j].asinteger:=DataSet.Fields[i].Value;
              ftdate:                         params[j].asdate:=DataSet.Fields[i].Value;
              ftDateTime:                     params[j].asdatetime:=DataSet.Fields[i].Value;
              ftstring,ftMemo:                params[j].AsString:=DataSet.Fields[i].Value;
              ftfloat:                        params[j].AsFloat:=DataSet.Fields[i].Value;
              ftBoolean:                      params[j].AsBoolean:=DataSet.Fields[i].Value;
            else
              showmessage('note: Unknown FieldType!');
            end;//end case
          end; //end if
          j:=j+1;
        end;
        //舱where把计
        for i:=0 to keycount1 do begin
          params.createparam(ftvariant,'field'+inttostr(i),ptinput);
          if DataSet.Fields[i].IsNull then exit//璝舱Θkeyfield玥ぃぉ矪瞶
          else begin
            Case DataSet.Fields[i].DataType of
              ftinteger,ftAutoInc:           params[j].asinteger:=DataSet.Fields[i].Value;
              ftString,ftMemo:               params[j].asstring:=DataSet.Fields[i].value;
              ftFloat:                       params[j].AsFloat:=DataSet.Fields[i].Value;
              ftDate:                        params[j].AsDate:=DataSet.Fields[i].Value;
              ftDateTime:                    params[j].AsDatetime:=DataSet.Fields[i].Value;
            else
              showmessage('NOTE:  Unknown FieldType!please checked!   Table:--'+Table+'--');
            end;//end case
            j:=j+1;
          end;
        end;
        str1:=copy(str1,1,length(str1)-1)+' '+strwhere;
        //showmessage(str1);
        commandtext:=str1;
        execute;
      end else begin  //璝insert
        close;
        params.clear;
        str1:=' values(';
        str2:='insert into '+ Table+'(';
        j:=0;
        for i:=0 to DataSet.FieldCount-1 do begin
          //modified by RongSon in 2002.8.15
          if (DataSet.Fields[i].DataType=ftdate) or (DataSet.Fields[i].DataType=ftdatetime) then begin
            if DataSet.Fields[i].IsNull then continue;
          end;
          params.createparam(ftvariant,'field'+inttostr(i),ptinput);
          str1:=str1+':field'+inttostr(i)+',';
          str2:=str2+DataSet.fields[i].fieldname+',';
          if DataSet.Fields[i].IsNull then begin
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc: params[j].asinteger:=0;
              ftstring,ftMemo:                params[j].AsString:='';
              ftfloat:                        params[j].AsFloat:=0;
              ftdate,ftDateTime:              showmessage('date is null!');
              ftBoolean:                      params[j].AsBoolean:=False;
            else
              showmessage('note: Unknown FieldType!');
            end; //end case
          end else begin
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc: params[j].asinteger:=DataSet.Fields[i].Value;
              ftdate:                         params[j].asdate:=DataSet.Fields[i].Value;
              ftDateTime:                     params[j].asdatetime:=DataSet.Fields[i].Value;
              ftstring,ftMemo:                params[j].AsString:=DataSet.Fields[i].Value;
              ftfloat:                        params[j].AsFloat:=DataSet.Fields[i].Value;
              ftBoolean:                      params[j].AsBoolean:=DataSet.Fields[i].Value;
            else
              showmessage('note: Unknown FieldType!');
            end;//end case
          end; //end if
          j:=j+1;
        end;
        str1:=copy(str1,1,length(str1)-1);
        str2:=copy(str2,1,length(str2)-1);
        //showmessage(str2+')'+str1+')');
        commandtext:=str2+')'+str1+')';
        execute;
      end;
    end;
    //update false;(vc)
    if keycount2<>-1 then begin
      strwhere:='  where ';
      //眔where
      i:=0;
      if keycount2>0 then begin
        for i:=0 to keycount2-1 do begin
          strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
        end;
      end;
      strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName;
      //get params
      with frmlogin.clientdataset do begin
        close;
        params.clear;
        for i:=0 to keycount2 do begin
          //ミ把计
          params.createparam(ftvariant,'field'+inttostr(i),ptinput);
          //倒把计结
          if DataSet.Fields[i].IsNull then exit
          else begin
            Case DataSet.Fields[i].DataType of
              ftinteger,ftAutoInc:           params[i].asinteger:=DataSet.Fields[i].Value;
              ftString,ftMemo:               params[i].asstring:=DataSet.Fields[i].value;
              ftFloat:                       params[i].AsFloat:=DataSet.Fields[i].Value;
              ftDate:                        params[i].AsDate:=DataSet.Fields[i].Value;
              ftDateTime:                    params[i].AsDateTime:=DataSet.Fields[i].Value;
            else
              showmessage('NOTE:  Unknown FieldType!please checked!   Table:--'+Table+'--');
            end;//end case
          end;
        end;
      end;
      with (DataSet as tclientdataset) do begin
        close;
        params.clear;
        for i:=0 to keycount2 do begin
          //ミ把计
          params.createparam(ftvariant,'field'+inttostr(i),ptinput);
        end;
        //倒把计结
        params.AssignValues(frmlogin.clientdataset.params);
        //倒commandtext结
        commandtext:='select * from '+Table+strwhere;
        open;
      end;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlogin.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlogin.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if edit1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      commandtext:='select * from idou where upper(usr)=:usr';
      params[0].asstring:=uppercase(edit1.text);
      open;
      if recordcount=0 then begin
        application.MessageBox('獶猭ノめ!','牡',mb_iconwarning+mb_ok);
        edit1.setfocus;
      end
      else begin
        if fieldbyname('passwrd').isnull then begin
          if edit2.text='' then begin
            if frmido=nil then frmido:=tfrmido.create(self);
            if fieldbyname('r1').value=true then begin
              frmido.bitbtn1.enabled:=true;
            end
            else begin
              frmido.bitbtn1.enabled:=false;
            end;
            if fieldbyname('r2').value=true then begin
              frmido.bitbtn5.enabled:=true;
            end
            else begin
              frmido.bitbtn5.enabled:=false;
            end;
            frmido.show;
            frmlogin.hide;
          end
          else begin
            application.MessageBox('獶猭ノめ!','牡',mb_iconwarning+mb_ok);
            edit1.setfocus;
          end;
        end
        else begin
          if edit2.text=uppercase(fieldbyname('passwrd').value) then begin
            if frmido=nil then frmido:=tfrmido.create(self);
            if fieldbyname('r1').value=true then begin
              frmido.bitbtn1.enabled:=true;
            end
            else begin
              frmido.bitbtn1.enabled:=false;
            end;
            if fieldbyname('r2').value<>true then begin
              frmido.bitbtn5.enabled:=false;
            end;
            frmido.show;
            frmlogin.hide;
          end
          else begin
            application.MessageBox('獶猭ノめ!','牡',mb_iconwarning+mb_ok);
            edit1.setfocus;
          end;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then bitbtn1click(self);
end;

procedure Tfrmlogin.AddUsers1Click(Sender: TObject);
begin
  if edit1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      commandtext:='select usr,r4 from idou where upper(usr)=:usr';
      params[0].asstring:=uppercase(edit1.text);
      open;
      if recordcount>0 then begin
        if fieldbyname('r4').value=true then begin
          if frmmm=nil then frmmm:=tfrmmm.create(self);
          frmmm.edit1.text:='';
          frmmm.show;
        end;
      end;
    end;
  end;
end;

procedure Tfrmlogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=13) or (key=vk_down) then edit2.setfocus;
end;

procedure Tfrmlogin.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_up then edit1.setfocus;
end;

end.
