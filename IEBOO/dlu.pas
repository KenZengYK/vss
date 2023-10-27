unit dlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, ADODB, DBClient, MConnect, SConnect,Variants,
  ComCtrls, ScktComp;
  function GetSeq(TableName:string;fieldname:string):integer;
  procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1);  
type
  Tfrmxtdl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    SocketConnection1: TSocketConnection;
    ClientDataSet: TClientDataSet;
    query1: TClientDataSet;
    query2: TClientDataSet;
    DateTimePicker1: TDateTimePicker;
    SocketConnection2: TSocketConnection;
    ComboBox2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxtdl: Tfrmxtdl;

implementation

uses mainu, scgxu, scgxdyu;

{$R *.DFM}
function GetSeq(TableName:string;fieldname:string):integer;
begin
  with frmxtdl.ClientDataset do begin
    close;
    params.Clear;
    commandtext:='select max('+fieldname+') as seq from '+TableName;
    open;
    if FieldByName('seq').isnull then
      GetSeq:=1
    Else GetSeq:=FieldByName('seq').asinteger+1;
  end;
end;

procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1);
var
  i,j,temppos: integer;
  str1,str2,strtemp,Table,strwhere: string;
  SavedParams: TParams;
begin
//  if (DataSet as tclientdataset).applyupdates(0)>0 then begin
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
        if (i=key1) or (i=key2) or (i=key3) or (i=key4) then begin
          strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
          case DataSet.Fields[i].DataType of
            ftSmallint,ftinteger,ftAutoInc: SavedParams.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
            ftstring,ftMemo:                SavedParams.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
            ftfloat:                        SavedParams.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
            //ftDate:                         SavedParams.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
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
      with frmxtdl.ClientDataSet do begin
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
            if (i=key1) or (i=key2) or (i=key3) or (i=key4) then
            else begin
              case DataSet.Fields[i].DataType of
                ftSmallint,ftinteger,ftAutoInc: params.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
                ftstring,ftMemo:                params.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
                ftfloat:                        params.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
                ftDate:                         params.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
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
//          showmessage(str1);
          commandtext:=str1;
          {str1:='';
          for i:=0 to DataSet.FieldCount-1 do begin
            case params[i].DataType of
              ftinteger:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asinteger=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asinteger='+params[i].asstring;
              end;
              ftfloat:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asfloat=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asfloat='+params[i].asstring;
              end;
              ftstring,ftmemo:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asstring=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asstring='+params[i].asstring;
              end;
              ftdate:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asdate=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asdate='+params[i].asstring;
              end;
              ftDateTime:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asDateTime=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asDateTime='+params[i].asstring;
              end;
              ftboolean:
              begin
                if params[i].isnull then str1:=str1+'params['+inttostr(i)+'].asBoolean=NULL'
                else  str1:=str1+'params['+inttostr(i)+'].asBoolean='+params[i].asstring;
              end;
            else
              showmessage('note: Unknown FieldType!');
            end;
          end;
          showmessage(str1);}
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
              ftDateTime:                       params.createparam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
              ftstring,ftMemo:                  params.createparam(ftString,DataSet.Fields[i].FieldName,ptinput);
              ftfloat:                          params.createparam(ftFloat,DataSet.Fields[i].FieldName,ptinput);
              ftBoolean:                        params.createparam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
            else
              showmessage('note: Unknown FieldType!');
            end;
            str1:=str1+':'+DataSet.fields[i].fieldname+',';
            str2:=str2+DataSet.fields[i].fieldname+',';
            if DataSet.Fields[i].IsNull then begin
              if DataSet.Fields[i].DataType=ftBoolean then params.ParamByName(DataSet.Fields[i].FieldName).value:=False
              else if DataSet.Fields[i].DataType=ftString then params.ParamByName(DataSet.Fields[i].FieldName).Value:=' ';
            end else begin
              params.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].value;
            end;
          end;
          str1:=copy(str1,1,length(str1)-1);
          str2:=copy(str2,1,length(str2)-1);
//          showmessage(str2+')'+str1+')');
          commandtext:=str2+')'+str1+')';
          execute;
        end;
      end;
    finally
      SavedParams.Free;
      Screen.Cursor:=crDefault;
    end;
  //end;
end;

procedure Tfrmxtdl.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct nam from ie_yh';
    open;
    while not eof do
    begin
      combobox1.items.add(fieldbyname('nam').value);
      next;
    end;
  end;
  if frmmain=nil then frmmain:=tfrmmain.create(self);
  frmmain.show;
  frmmain.SendToBack;
  frmmain.enabled:=false;
end;

procedure Tfrmxtdl.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit1.setfocus;
end;

procedure Tfrmxtdl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1click(self);
end;

procedure Tfrmxtdl.Button1Click(Sender: TObject);
var
  ws1:TClientWinSocket;
begin
  if combobox1.text<>'' then
  begin
     query2.close;
     query2.params.clear;
     query2.params.CreateParam(ftstring,'nam',ptinput);
     query2.commandtext:='select passwrd from IE_yh where upper(nam)=:nam';
     query2.params[0].value:=uppercase(combobox1.text);
     query2.open;
     if query2.recordcount>0 then
     begin
       if not query2.fieldbyname('passwrd').isnull then begin
         if uppercase(edit1.text)=uppercase(query2.fieldbyname('passwrd').value) then begin
            ws1:=TClientWinSocket.Create(0);
            DateTimePicker1.DateTime:=now;
          //finally
          //  ws1.Disconnect(0);
          //end;
           frmmain.enabled:=true;
           frmxtdl.hide;
         end
         else begin
           application.messagebox('非法用戶!','提示信息',mb_ok+mb_iconinformation);
           combobox1.setfocus;
         end;
       end
       else begin
         if edit1.text='' then begin
            ws1:=TClientWinSocket.Create(0);
            DateTimePicker1.DateTime:=now;
          //finally
          //  ws1.Disconnect(0);
          //end;
           frmmain.enabled:=true;
           frmxtdl.hide;
         end
         else begin
           application.messagebox('非法用戶!','提示信息',mb_ok+mb_iconinformation);
           combobox1.setfocus;
         end;
       end;
     end;
  end;
end;

procedure Tfrmxtdl.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxtdl.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text='中文' then begin
    label1.Caption:='用戶名:';
    label2.Caption:='密    碼:';
    button1.Caption:='確定';
    button2.Caption:='取消';
    frmxtdl.Caption:='系統登錄';
    //
    frmmain.N1.Caption:='基本資料';
    frmmain.N5.Caption:='IE 工序單及規格指引';
    frmmain.N16.Caption:='工序統計表 - 產品類別';
    //
    frmscgxdy.op1.Caption:='中文';
    frmscgxdy.op2.Caption:='英文';
    frmscgxdy.xh1.Caption:='工序單未分類';
    frmscgxdy.xh2.Caption:='工序單組合類別';
    frmscgxdy.chk2.Caption:='工序單組合類別';
  end else if combobox2.text='ENGLISH' then begin
    label1.Caption:='User ID';
    label2.Caption:='Password';
    button1.Caption:='OK';
    button2.Caption:='Cancel';
    frmxtdl.Caption:='Sign On';
    frmmain.N1.Caption:='Basic Information';
    frmmain.N5.Caption:='IE - BOO && Spec Instruction';
    frmmain.N16.Caption:='OPT Summary - Product Code';
    frmscgxdy.op1.Caption:='Chinese';
    frmscgxdy.op2.Caption:='English';
    frmscgxdy.xh1.Caption:='Unclassified';
    frmscgxdy.xh2.Caption:='Classified';
    frmscgxdy.chk2.Caption:='IEBOO Classified';
  end;
end;

end.
