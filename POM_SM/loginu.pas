unit loginu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, MConnect, SConnect, variants;
  procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);

type
  Tfrmlogin = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SocketConnection1: TSocketConnection;
    ClientDataSet: TClientDataSet;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function GetSeq(TableName:string;fieldname:string):integer;
  //procedure DataSetAfterPost(DataSet: TDataSet;keycount1: integer=0;keycount2: integer=-1;keycount3: integer=0);
  procedure DataSetBeforeDelete(DataSet: TDataSet;keycount: integer=0);
var
  frmlogin: Tfrmlogin;

implementation
uses mainu;
{$R *.DFM}

function GetSeq(TableName:string;fieldname:string):integer;
begin
  with frmlogin.ClientDataSet do begin
    close;
    params.Clear;
    commandtext:='select max('+fieldname+') as seq from '+TableName;
    open;
    if FieldByName('seq').isnull then
      GetSeq:=1
    Else GetSeq:=FieldByName('seq').asinteger+1;
  end;
end;

procedure DataSetBeforeDelete(DataSet: TDataSet;keycount: integer=0);
var
  i,j,temppos: integer;
  strtemp,Table,strwhere: string;
begin
    try
      Screen.cursor:=crHourGlass;
      strtemp:=(DataSet as TClientDataSet).Commandtext;
      strtemp:=copy(strtemp,pos('from',strtemp)+5,length(strtemp));
      temppos:= pos('where',strtemp);
      if temppos>0 then begin
        Table:=copy(strtemp,1,temppos-1);
      end else begin
        Table:=copy(strtemp,1,15);
      end;
      strwhere:='  where ';
      //得到where子句
      i:=0;
      if keycount>0 then begin
        for i:=0 to keycount-1 do begin
          strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
        end;
      end;
      strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName;
      with frmlogin.ClientDataSet do begin
        close;
        params.clear;
        for i:=0 to keycount do begin
          //建立參數
          Case DataSet.Fields[i].DataType of
            ftSmallint,ftinteger,ftAutoInc: params.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
            ftstring,ftMemo:                params.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
            ftfloat:                        params.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
            ftDate:                         params.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
            ftTime:                         params.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
            ftDateTime:                     params.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
            ftBoolean:                      params.CreateParam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
          else
            showmessage('note: Unknown FieldType!');
          end;
          //params.createparam(ftvariant,'field'+inttostr(i),ptinput);
          //給參數賦值
          if DataSet.Fields[i].IsNull then exit
          else begin
            Case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc:           params[i].asinteger:=DataSet.Fields[i].Value;
              ftString,ftMemo:               params[i].asstring:=DataSet.Fields[i].value;
              ftFloat:                       params[i].AsFloat:=DataSet.Fields[i].Value;
              ftDate:                        params[i].AsDate:=DataSet.Fields[i].Value;
              ftDateTime:                    params[i].AsDateTime:=DataSet.Fields[i].Value;
            else
              showmessage('NOTE:  Unknown FieldType!please checked!   Table:--'+Table+'--');
            end;//end case
          end;
        end;
        //給commandtext賦值
        commandtext:='delete from '+Table+strwhere;
        Execute;
      end;
    finally
      Screen.Cursor:=crDefault;
    end;
end;

procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);
var
  i,j,temppos: integer;
  str1,str2,strtemp,Table,strwhere: string;
  SavedParams: TParams;
begin
    SavedParams := TParams.Create;
    try
      strtemp:=(DataSet as TClientDataSet).Commandtext;
      strtemp:=copy(strtemp,pos('from',strtemp)+5,length(strtemp));
      temppos:= pos('where',strtemp);
      if temppos>0 then begin
        Table:=copy(strtemp,1,temppos-1);
      end else begin
        Table:=copy(strtemp,1,15);
      end;
      strwhere:='  where ';
      for i:=0 to DataSet.FieldCount-1 do begin
        if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then begin
          strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
          case DataSet.Fields[i].DataType of
            ftSmallint,ftinteger,ftAutoInc: SavedParams.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
            ftstring,ftMemo,ftwidestring:   SavedParams.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
            ftfloat:                        SavedParams.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
            ftDate:                         SavedParams.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
            ftTime:                         SavedParams.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
            ftDateTime:                     SavedParams.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
            ftBoolean:                      SavedParams.CreateParam(ftboolean,DataSet.Fields[i].FieldName,ptinput);
          else
            showmessage('note: Unknown FieldType!');
          end;
          SavedParams.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].Value;
        end;
      end;
      setlength(strwhere,length(strwhere)-5);
      Screen.Cursor:=crHourGlass;
      with frmlogin.ClientDataSet do begin
        close;
        params.clear;
        commandtext:='select * from '+Table+strwhere;
        params.Assign(SavedParams);
        SavedParams.AssignValues(Params);
        open;
        if Recordcount>0 then begin
          close;
          params.clear;
          str1:='update '+Table+' set ';
          j:=0;
          for i:=0 to DataSet.FieldCount-1 do begin
            if DataSet.Fields[i].FieldKind=fkLookup then continue;
            if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then
            else begin
              case DataSet.Fields[i].DataType of
                ftSmallint,ftinteger,ftAutoInc: params.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
                ftstring,ftMemo,ftwidestring:   params.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
                ftfloat:                        params.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
                ftDate:                         params.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
                ftTime:                         params.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
                ftDateTime:                     params.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
                ftBoolean:                      params.CreateParam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
              else
                showmessage('note: Unknown FieldType!');
              end;
              if DataSet.Fields[i].IsNull then begin
                if DataSet.Fields[i].DataType=ftBoolean then params[j].value:=False;
              end else begin
                params[j].value:=DataSet.Fields[i].value;
              end;
              str1:=str1+DataSet.fields[i].fieldname+'=:';
              str1:=str1+DataSet.Fields[i].FieldName+',';
              j:=j+1;
            end;
          end;
          for i:=0 to SavedParams.Count-1 do begin
            params.CreateParam(SavedParams[i].DataType,SavedParams[i].Name,ptinput);
            params[j+i].value:=SavedParams[i].Value;
          end;
          str1:=copy(str1,1,length(str1)-1)+' '+strwhere;
          commandtext:=str1;
          execute;
        end else begin
          close;
          params.clear;
          str1:=' values(';
          str2:='insert into '+ Table+'(';
          for i:=0 to DataSet.FieldCount-1 do begin
            if DataSet.Fields[i].FieldKind=fkLookup then continue;
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc:   params.createparam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
              ftDate:                           params.createparam(ftDate,DataSet.Fields[i].FieldName,ptinput);
              ftTime:                           params.createparam(ftTime,DataSet.Fields[i].FieldName,ptinput);
              ftDateTime:                       params.createparam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
              ftstring,ftMemo,ftwidestring:     params.createparam(ftString,DataSet.Fields[i].FieldName,ptinput);
              ftfloat:                          params.createparam(ftFloat,DataSet.Fields[i].FieldName,ptinput);
              ftBoolean:                        params.createparam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
            else
              showmessage('note: Unknown FieldType!');
            end;
            str1:=str1+':'+DataSet.fields[i].fieldname+',';
            str2:=str2+DataSet.fields[i].fieldname+',';
            if DataSet.Fields[i].IsNull then begin
              if DataSet.Fields[i].DataType=ftBoolean then params.ParamByName(DataSet.Fields[i].FieldName).value:=False;
              //else if DataSet.Fields[i].DataType=ftString then params.ParamByName(DataSet.Fields[i].FieldName).Value:='';
            end else begin
              params.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].value;
            end;
          end;
          str1:=copy(str1,1,length(str1)-1);
          str2:=copy(str2,1,length(str2)-1);
          commandtext:=str2+')'+str1+')';
          execute;
        end;
      end;
    finally
      SavedParams.Free;
      Screen.Cursor:=crDefault;
    end;
end;

procedure Tfrmlogin.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlogin.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit1.setfocus;
end;

procedure Tfrmlogin.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text<>'' then
  begin
    query2.close;
    query2.params.clear;
    query2.params.createparam(ftstring,'usr',ptinput);    
    query2.commandtext:='select * from SZ_usrtbl where usr=:usr';
//    query2.prepare;
    query2.params[0].asstring:=combobox1.text;
    query2.open;
    if query2.recordcount>0 then
    begin
      if not query2.fieldbyname('pswrd').isnull then
      begin
        if (edit1.text<>'') and (edit1.text=query2.fieldbyname('pswrd').value) then
        begin
          if frmmain=nil then frmmain:=tfrmmain.create(self);
          frmlogin.Hide;
          frmmain.show;
        end
        else
        begin
          application.messagebox('密碼錯誤!','提示信息',mb_iconinformation+mb_ok);
          edit1.setfocus;
        end;
      end
      else
      begin
        if edit1.text='' then
        begin
          if frmmain=nil then frmmain:=tfrmmain.create(self);
          frmlogin.hide;
          frmmain.show;
        end
        else
        begin
          application.messagebox('密碼錯誤!','提示信息',mb_iconinformation+mb_ok);
          edit1.setfocus;
        end;
      end;
    end
    else
    begin
      if (combobox1.text='system') and (edit1.text='admin') then
      begin
        if frmmain=nil then frmmain:=tfrmmain.create(self);
        frmlogin.hide;
        frmmain.show;
      end
      else
      begin
        application.messagebox('非法用戶!','提示信息',mb_iconinformation+mb_ok);
        combobox1.setfocus;
      end;
    end;
  end;
end;

procedure Tfrmlogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then bitbtn1click(self);
end;

procedure Tfrmlogin.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  query1.close;
  query1.open;
  query1.first;
  while not query1.eof do
  begin
    combobox1.items.add(query1.fieldbyname('usr').value);
    query1.next;
  end;
end;

end.
