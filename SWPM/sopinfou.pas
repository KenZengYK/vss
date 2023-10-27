unit sopinfou;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, ExtCtrls, DBCtrls, Grids,
  DBGridEh, Menus, Mask, rxToolEdit, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport,
  ppVar, ppViewr, GridsEh, ppParameter;

type
  Tfrmsopinfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGridEh1: TDBGridEh;
    DBNavigator1: TDBNavigator;
    tbljobno: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    PopupMenu1: TPopupMenu;
    UpdateProjectNo1: TMenuItem;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    UpdateDTSO1: TMenuItem;
    SpeedButton4: TSpeedButton;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    Label4: TLabel;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    Edit3: TEdit;
    DateEdit2: TDateEdit;
    N1: TMenuItem;
    SpeedButton6: TSpeedButton;
    RetrieveRWO1: TMenuItem;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tbljobnoAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure UpdateProjectNo1Click(Sender: TObject);
    procedure UpdateDTSO1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RetrieveRWO1Click(Sender: TObject);
  private
    procedure GETPHISDATA(const jno:string;jdate:tdate);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsopinfo: Tfrmsopinfo;

implementation
uses mainformu;
{$R *.DFM}

procedure Tfrmsopinfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsopinfo:=nil;
end;

procedure Tfrmsopinfo.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsopinfo.SpeedButton3Click(Sender: TObject);
var
  cust,sopno:string;
  y1,m1,d1:word;
  s1,s2,s3:string;
begin
  screen.cursor:=crSQLWait;
  if edit1.text<>'' then cust:=edit1.text else cust:='';
  if edit2.text<>'' then sopno:=copy('000000'+edit2.text,length('000000'+edit2.text)-6,7)
  else sopno:='';
  if (cust>'') or (sopno>'') then begin
    if frmmain.SocketConnection1.connected=false then frmmain.socketconnection1.Connected:=true;
    frmmain.SocketConnection1.AppServer.getdata1(cust,sopno);
    with tbljobno do begin
      close;
      params.clear;
      if sopno>'' then begin
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        commandtext:='select * from tbljobno where sopno=:sopno and flag1=:flag1';
        params[0].asstring:=sopno;
        params[1].asstring:='0';
      end
      else begin
        params.createparam(ftstring,'cust',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        commandtext:='select * from tbljobno where j2_job like :cust and flag1=:flag1';
        params[0].asstring:=cust+'%';
        params[1].asstring:='0';
      end;
      open;
    end;
  end
  else begin
    if dateedit1.date>0 then begin
      decodedate(dateedit1.date,y1,m1,d1);
      s1:=copy('0'+inttostr(m1),length('0'+inttostr(m1))-1,2);
      s2:=copy('0'+inttostr(d1),length('0'+inttostr(d1))-1,2);
      s3:=inttostr(y1)+s1+s2;
      frmmain.SocketConnection1.AppServer.geterpdata(dateedit1.date);
      with tbljobno do begin
        close;
        params.clear;
        params.createparam(ftinteger,'dtso',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        commandtext:='select * from tbljobno where dtso=:dtso and flag1=:flag1';
        params[0].asinteger:=strtoint(s3)-19000000;
        params[1].asstring:='0';
        open;
      end;
    end
    else begin
      with tbljobno do begin
        close;
        params.clear;
        commandtext:='select * from tbljobno';
        open;
      end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmsopinfo.tbljobnoAfterPost(DataSet: TDataSet);
var
  finished:boolean;
begin
  screen.cursor:=crhourglass;
  //if tbljobno.changecount>0 then begin
    {if not tbljobno.fieldbyname('jobno').isnull then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        commandtext:='update tblsop set j2_job=:j2_job where sopno=:sopno and ordline=:ordline';
        params[0].asstring:=tbljobno.fieldbyname('jobno').value;
        params[1].asstring:=tbljobno.fieldbyname('sopno').value;
        params[2].asinteger:=tbljobno.fieldbyname('ordno').value;
        execute;
      end;
    end;
    if tbljobno.fieldbyname('mb').value=true then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        commandtext:='select * from tblsop where sopno=:sopno and ordline=:ordline and flag1=:flag1';
        params[0].asstring:=tbljobno.fieldbyname('sopno').value;
        params[1].asinteger:=tbljobno.fieldbyname('ordno').value;
        params[2].asstring:='0';
        open;
        first;
        while not eof do begin
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            commandtext:='select yzh from tblshedule where sopno=:sopno and ordline=:ordline and acol=:acol and yzh=true';
            params[0].asstring:=clientdataset1.fieldbyname('sopno').value;
            params[1].asinteger:=clientdataset1.fieldbyname('ordline').value;
            params[2].asstring:=clientdataset1.fieldbyname('acol').value;
            open;
            if recordcount>0 then finished:=true else finished:=false;
          end;
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            commandtext:='select * from projass5 where sopno=:sopno and ordline=:ordline and acol=:acol';
            params[0].asstring:=clientdataset1.fieldbyname('sopno').value;
            params[1].asinteger:=clientdataset1.fieldbyname('ordline').value;
            params[2].asstring:=clientdataset1.fieldbyname('acol').value;
            open;
            if recordcount=0 then begin
              with clientdataset3 do begin
                close;
                params.clear;
                params.createparam(ftstring,'sopno',ptinput);
                params.createparam(ftinteger,'ordline',ptinput);
                params.createparam(ftstring,'j_no',ptinput);
                params.createparam(ftstring,'j2_job',ptinput);
                params.createparam(ftstring,'artno',ptinput);
                params.createparam(ftstring,'acol',ptinput);
                params.createparam(ftinteger,'qty',ptinput);
                params.createparam(ftinteger,'aqty',ptinput);
                params.createparam(ftstring,'customer',ptinput);
                params.createparam(ftboolean,'finished',ptinput);
                commandtext:='insert into projass5(sopno,ordline,j_no,j2_job,artno,acol,qty,aqty,customer,finished) values(:sopno,:ordline,:j_no,:j2_job,:artno,:acol,:qty,:aqty,:customer,:finished)';
                params[0].asstring:=clientdataset1.fieldbyname('sopno').value;
                params[1].asinteger:=clientdataset1.fieldbyname('ordline').value;
                params[2].asstring:=clientdataset1.fieldbyname('j_no').value;
                if not clientdataset1.fieldbyname('j2_job').isnull then
                params[3].asstring:=clientdataset1.fieldbyname('j2_job').value;
                params[4].asstring:=clientdataset1.fieldbyname('artno').value;
                params[5].asstring:=clientdataset1.fieldbyname('acol').value;
                params[6].asinteger:=clientdataset1.fieldbyname('qty').value;
                params[7].asinteger:=clientdataset1.fieldbyname('qty').value;
                params[8].asstring:=clientdataset1.fieldbyname('customer').value;
                params[9].asboolean:=finished;
                execute;
              end;
            end
            else begin
              with clientdataset3 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'aqty',ptinput);
                params.createparam(ftinteger,'qty',ptinput);
                params.createparam(ftstring,'j2_job',ptinput);
                params.createparam(ftboolean,'finished',ptinput);
                params.createparam(ftstring,'sopno',ptinput);
                params.createparam(ftinteger,'ordline',ptinput);
                params.createparam(ftstring,'acol',ptinput);
                commandtext:='update projass5 set aqty=:aqty,qty=:qty,j2_job=:j2_job,finished=:finished where sopno=:sopno and ordline=:ordline and acol=:acol';
                params[0].asinteger:=clientdataset2.fieldbyname('aqty').value-(clientdataset1.fieldbyname('qty').value-clientdataset2.fieldbyname('qty').value);
                params[1].asinteger:=clientdataset1.fieldbyname('qty').value;
                if not clientdataset1.fieldbyname('j2_job').isnull then
                params[2].asstring:=clientdataset1.fieldbyname('j2_job').value
                else params[2].asstring:='';
                params[3].asboolean:=finished;
                params[4].asstring:=clientdataset1.fieldbyname('sopno').value;
                params[5].asinteger:=clientdataset1.fieldbyname('ordline').value;
                params[6].asstring:=clientdataset1.fieldbyname('acol').value;
                execute;
              end;
            end;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    //tbljobno.ApplyUpdates(0);}
    if tbljobno.ApplyUpdates(-1)>0 then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'jobref',ptinput);
        params.createparam(ftboolean,'mb',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordno',ptinput);
        PARAMS.CREATEPARAM(FTSTRING,'JOBNO',PTINPUT);
        commandtext:='update tbljobno set jobref=:jobref,mb=:mb where sopno=:sopno and ordno=:ordno AND JOBNO=:JOBNO';
        if not tbljobno.fieldbyname('jobref').isnull then
        params[0].asstring:=tbljobno.fieldbyname('jobref').value
        else params[0].asstring:='';
        if not tbljobno.fieldbyname('mb').isnull then
        params[1].asboolean:=tbljobno.fieldbyname('mb').value
        else params[1].asboolean:=false;
        params[2].asstring:=tbljobno.fieldbyname('sopno').value;
        params[3].asinteger:=tbljobno.fieldbyname('ordno').value;
        PARAMS[4].ASSTRING:=TBLJOBNO.FIELDBYNAME('JOBNO').VALUE;
        execute;
      end;
    end;
  //end;
  screen.cursor:=crdefault;
end;

procedure Tfrmsopinfo.SpeedButton1Click(Sender: TObject);
begin
  if tbljobno.state=dsedit then tbljobno.post;
end;

procedure Tfrmsopinfo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton3click(self);
end;

procedure Tfrmsopinfo.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if dbgrideh1.selectedindex=4 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      commandtext:='select r7 from tbluser where upper(usr)=:usr';
      params[0].asstring:=uppercase(frmmain.combobox1.text);
      open;
      if (fieldbyname('r7').value=false) or (fieldbyname('r7').isnull) then key:=#0;
    end;
  end;
end;

procedure Tfrmsopinfo.DBGridEh1CellClick(Column: TColumnEh);
begin
  if dbgrideh1.selectedindex=9 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      commandtext:='select r9 from tbluser where upper(usr)=:usr';
      params[0].asstring:=uppercase(frmmain.combobox1.text);
      open;
      if (fieldbyname('r9').value=false) or (fieldbyname('r9').isnull) then
        dbgrideh1.Fields[9].ReadOnly:=true
      else dbgrideh1.fields[9].readonly:=false;
    end;
  end;
end;

procedure Tfrmsopinfo.UpdateProjectNo1Click(Sender: TObject);
var
  nj_no,sopno:string;
begin
 screen.cursor:=crHourglass;
 if edit2.text<>'' then begin
  sopno:=copy('000000'+edit2.text,length('000000'+edit2.text)-6,7);
  nj_no:=inputbox('Amend the project No.','Please input a new project no.:','');
  if nj_no>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'j2_job',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      commandtext:='update tbljobno set j2_job=:j2_job where sopno=:sopno';
      params[0].asstring:=nj_no;
      params[1].asstring:=sopno;
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'j_no',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      commandtext:='update tblsop set j_no=:j_no where sopno=:sopno';
      params[0].asstring:=nj_no;
      params[1].asstring:=sopno;
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'j_no',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      commandtext:='update tblshedule set j_no=:j_no where sopno=:sopno';
      params[0].asstring:=nj_no;
      params[1].asstring:=sopno;
      execute;
    end;
  end;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmsopinfo.UpdateDTSO1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  //frmmain.SocketConnection1.AppServer.updatedtso;
  {
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblshedule where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblsop where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tbljobno where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblmatmatch where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
  end;
  }
  showmessage('OK!');
  screen.cursor:=crDefault;
end;

procedure Tfrmsopinfo.SpeedButton4Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if tbljobno.active=true then begin
    if tbljobno.recordcount>0 then ppreport1.print;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmsopinfo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmsopinfo.SpeedButton5Click(Sender: TObject);
VAR
  JNO:STRING;
  JDATE:TDATE;
begin
  JNO:=EDIT3.TEXT;
  JDATE:=DATEEDIT2.DATE;
  IF NOT FRMMAIN.SocketConnection1.Connected THEN
  FRMMAIN.SocketConnection1.Connected:=TRUE;
  FRMMAIN.SocketConnection1.AppServer.GETPHISDATA(JNO,JDATE);
  GETPHISDATA(JNO,JDATE);
  IF EDIT3.TEXT>'' THEN BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      PARAMS.CREATEPARAM(FTSTRING,'SOPNO',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1 AND SOPNO=:SOPNO';
      PARAMS[0].ASSTRING:='0';
      PARAMS[1].ASSTRING:=JNO;
      OPEN;
    END;
  END ELSE IF DATEEDIT2.DATE>0 THEN BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      PARAMS.CREATEPARAM(FTDATE,'DTSO1',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1 AND DTSO1=:DTSO1';
      PARAMS[0].ASSTRING:='0';
      PARAMS[1].ASDATE:=JDATE;
      OPEN;
    END;
  END ELSE BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1';
      PARAMS[0].ASSTRING:='0';
      OPEN;
    END;
  END;
end;

procedure Tfrmsopinfo.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY=#13 THEN SPEEDBUTTON6CLICK(SELF);
end;

procedure Tfrmsopinfo.GETPHISDATA(const jno: string; jdate: tdate);
begin
  if jno>'' then begin
  end else if jdate>0 then begin
  end else begin
  end;
end;

procedure Tfrmsopinfo.N1Click(Sender: TObject);
begin
  Screen.cursor:=crHourglass;
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblshedule where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblsop where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tbljobno where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'sopno',ptinput);
    commandtext:='delete from tblmatmatch where sopno=:sopno';
    params[0].asstring:=edit3.Text;
    execute;
  end;
  Speedbutton5click(self);
  Screen.cursor:=crDefault;
end;

procedure Tfrmsopinfo.SpeedButton6Click(Sender: TObject);
VAR
  JNO:STRING;
  JDATE:TDATE;
begin
  JNO:=EDIT3.TEXT;
  JDATE:=DATEEDIT2.DATE;
  IF NOT FRMMAIN.SocketConnection1.Connected THEN
  FRMMAIN.SocketConnection1.Connected:=TRUE;
  FRMMAIN.SocketConnection1.AppServer.GETERPDATA(JNO,JDATE);
  //GETPHISDATA(JNO,JDATE);
  IF EDIT3.TEXT>'' THEN BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      PARAMS.CREATEPARAM(FTSTRING,'SOPNO',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1 AND SOPNO=:SOPNO';
      PARAMS[0].ASSTRING:='0';
      PARAMS[1].ASSTRING:=JNO;
      OPEN;
    END;
  END ELSE IF DATEEDIT2.DATE>0 THEN BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      PARAMS.CREATEPARAM(FTDATE,'DTSO1',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1 AND DTSO1=:DTSO1';
      PARAMS[0].ASSTRING:='0';
      PARAMS[1].ASDATE:=JDATE;
      OPEN;
    END;
  END ELSE BEGIN
    WITH TBLJOBNO DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      PARAMS.CREATEPARAM(FTSTRING,'FLAG1',PTINPUT);
      COMMANDTEXT:='SELECT * FROM TBLJOBNO WHERE FLAG1=:FLAG1';
      PARAMS[0].ASSTRING:='0';
      OPEN;
    END;
  END;
end;

procedure Tfrmsopinfo.RetrieveRWO1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='delete from rwo_detail';
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct a.company,a.salesorderno,a.orderline,a.wororderno,a.swono,a.swoid,a.projectno,a.productionstartdate,a.exftydate,a.styleno,b.colorcode,sum(b.qty) as qty '
                +'from s99vf403.phgdb_test.dbo.opc_swom a,s99vf403.phgdb_test.dbo.opc_swod b '
                +'where a.company=b.company and a.salesorderno=b.salesorderno and a.orderline=b.orderline and a.swoid=b.swoid '
                +'group by a.company,a.salesorderno,a.orderline,a.wororderno,a.swono,a.swoid,a.projectno,a.productionstartdate,a.exftydate,a.styleno,b.colorcode';
    open;
    first;
    while not eof do begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftdate,'x8',ptinput);
        params.createparam(ftdate,'x9',ptinput);
        params.createparam(ftstring,'x10',ptinput);
        params.createparam(ftinteger,'x11',ptinput);
        params.createparam(ftstring,'x12',ptinput);
        commandtext:='insert into rwo_detail(cono,ordn,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,artno) '
                    +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12)';
        params[0].asstring:=query1.fieldbyname('company').value;
        params[1].asstring:=query1.fieldbyname('salesorderno').value;
        params[2].asinteger:=query1.fieldbyname('orderline').value;
        params[3].asstring:=query1.fieldbyname('wororderno').value;
        params[4].asstring:=query1.fieldbyname('swono').value;
        params[5].asinteger:=query1.fieldbyname('swoid').value;
        params[6].asstring:=query1.fieldbyname('projectno').value;
        if not query1.fieldbyname('productionstartdate').isnull then
        params[7].asdate:=query1.fieldbyname('productionstartdate').value
        else params[7].AsDate:=encodedate(1899,12,30);
        if not query1.fieldbyname('exftydate').isnull then
        params[8].asdate:=query1.fieldbyname('exftydate').value
        else params[8].asdate:=encodedate(1899,12,30);
        params[9].asstring:=query1.fieldbyname('colorcode').value;
        params[10].asinteger:=query1.fieldbyname('qty').value;
        if not query1.fieldbyname('styleno').isnull then
        params[11].asstring:=query1.fieldbyname('styleno').value
        else params[11].asstring:=' ';
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  showmessage('OK!');
end;

end.
