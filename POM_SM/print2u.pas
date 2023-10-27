unit print2u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  myChkBox, ppBands, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass,
  ppProd, ppReport, ppDb, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Db,
  DBTables, StdCtrls, ExtCtrls, Buttons,ppViewr, ppMemo, DBClient;

type
  Tfrmprint2 = class(TForm)
    Label1: TLabel;
    xx1: TCheckBox;
    xx2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppBDEPipeline2: TppBDEPipeline;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprint2: Tfrmprint2;

implementation

uses siztblu, SizeReport1, sampletblu, SampleReport1, SizeReport1_c,
  SampleReport1_c, SizeReport2, SizeReport3, SizeReport4, SizeReport5,
  SampleReport2, SampleReport3, SampleReport4, SampleReport5, SizeReport2_c,
  SizeReport3_c, SizeReport4_c, SizeReport5_c, SampleReport2_c,
  SampleReport3_c, SampleReport4_c, SampleReport5_c;

{$R *.DFM}

procedure Tfrmprint2.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprint2.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmprint2.FormShow(Sender: TObject);
begin
  xx1.checked:=true;
  xx2.checked:=true;
end;

procedure Tfrmprint2.BitBtn1Click(Sender: TObject);
begin
 screen.Cursor:=crHourglass;
 if radiogroup1.ItemIndex=0 then
 begin
  if xx1.checked=true then
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          //中﹐英siztbl
          if frmSizeReport1=nil then frmSizeReport1:=TfrmSizeReport1.create(self);
          with frmsizeReport1 do begin            
            ppline12.visible:=false;
            pplabel129.Visible:=false;
            ppreport1.print;
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);          
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            //中﹐英siztbl
            if frmSizeReport2=nil then frmSizeReport2:=TfrmSizeReport2.create(self);
            with frmsizeReport2 do begin
              ppline12.Visible:=false;
              pplabel129.visible:=false;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            //中﹐英siztbl
            if frmSizeReport3=nil then frmSizeReport3:=TfrmSizeReport3.create(self);
            with frmSizeReport3 do begin
              ppline12.Visible:=false;
              pplabel129.visible:=false;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            //中﹐英siztbl
            if frmSizeReport4=nil then frmSizeReport4:=TfrmSizeReport4.create(self);
            with frmSizeReport4 do begin
              ppline12.Visible:=false;
              pplabel129.visible:=false;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            //中﹐英siztbl
            if frmSizeReport5=nil then frmSizeReport5:=TfrmSizeReport5.create(self);
            with frmSizeReport5 do begin
              ppline12.Visible:=false;
              pplabel129.visible:=false;
              ppreport1.print;
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                     +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1=nil then frmSampleReport1:=TfrmSampleReport1.create(self);
          if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
            frmSampleReport1.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
          if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
            frmSampleReport1.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSamplereport1 do begin
            ppline14.visible:=false;
            pplabel54.Visible:=false;
            ppreport2.print;////中﹐英sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);          
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2=nil then frmSampleReport2:=TfrmSampleReport2.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2 do begin
              ppline14.visible:=false;
              pplabel54.Visible:=false;
              ppreport2.print;////中﹐英sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3=nil then frmSampleReport3:=TfrmSampleReport3.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3 do begin
              ppline14.visible:=false;
              pplabel54.Visible:=false;
              ppreport2.print;////中﹐英sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4=nil then frmSampleReport4:=TfrmSampleReport4.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4 do begin
              ppline14.visible:=false;
              pplabel54.Visible:=false;
              ppreport2.print;////中﹐英sampletbl
            end;
          end;
        end;
      end;
    end
    else
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          if frmSizeReport1_c=nil then frmSizeReport1_c:=TfrmSizeReport1_c.create(self);
          with frmSizeReport1_c do begin
            ppline11.visible:=false;
            pplabel93.Visible:=false;
            ldwz.DataField:='cmeas';
            mthd3.datafield:='methd';
            ppreport3.print;//中sizetbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);          
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            if frmSizeReport2_c=nil then frmSizeReport2_c:=TfrmSizeReport2_c.create(self);
            with frmSizeReport2_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中sizetbl
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            if frmSizeReport3_c=nil then frmSizeReport3_c:=TfrmSizeReport3_c.create(self);
            with frmSizeReport3_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中sizetbl
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            if frmSizeReport4_c=nil then frmSizeReport4_c:=TfrmSizeReport4_c.create(self);
            with frmSizeReport4_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中sizetbl
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            if frmSizeReport5_c=nil then frmSizeReport5_c:=TfrmSizeReport5_c.create(self);
            with frmSizeReport5_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中sizetbl
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                        +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1_c=nil then frmSampleReport1_c:=TfrmSampleReport1_c.create(self);
          if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
            frmSampleReport1_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
          if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
            frmSampleReport1_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSampleReport1_c do begin
            ppline13.visible:=false;
            pplabel98.Visible:=false;
            ldwz1.datafield:='cmeas';
            mthd4.datafield:='methd';
            ppreport4.print;//中sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2_c=nil then frmSampleReport2_c:=TfrmSampleReport2_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3_c=nil then frmSampleReport3_c:=TfrmSampleReport3_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4_c=nil then frmSampleReport4_c:=TfrmSampleReport4_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          if frmSizeReport1_c=nil then frmSizeReport1_c:=TfrmSizeReport1_c.create(self);
          with frmsizeReport1_c do begin
            ppline11.visible:=false;
            pplabel93.Visible:=false;
            ldwz.datafield:='emeas';
            mthd3.datafield:='emethd';
            ppreport3.print;////英﹐siztbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            if frmSizeReport2_c=nil then frmSizeReport2_c:=TfrmSizeReport2_c.create(self);
            with frmSizeReport2_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;////英﹐siztbl
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            if frmSizeReport3_c=nil then frmSizeReport3_c:=TfrmSizeReport3_c.create(self);
            with frmSizeReport3_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;////英﹐siztbl
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            if frmSizeReport4_c=nil then frmSizeReport4_c:=TfrmSizeReport4_c.create(self);
            with frmSizeReport4_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;////英﹐siztbl
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            if frmSizeReport5_c=nil then frmSizeReport5_c:=TfrmSizeReport5_c.create(self);
            with frmSizeReport5_c do begin
              ppline11.visible:=false;
              pplabel93.Visible:=false;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;////英﹐siztbl
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.pprov,a.cprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                         +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1_c=nil then frmSampleReport1_c:=TfrmSampleReport1_c.create(self);
          if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
            frmSampleReport1_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
          if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
            frmSampleReport1_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSampleReport1_c do begin
            ppline13.visible:=false;
            pplabel98.Visible:=false;
            ldwz1.datafield:='emeas';
            mthd4.datafield:='emethd';
            ppreport4.print;//英﹐sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2_c=nil then frmSampleReport2_c:=TfrmSampleReport2_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英﹐sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3_c=nil then frmSampleReport3_c:=TfrmSampleReport3_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英﹐sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4_c=nil then frmSampleReport4_c:=TfrmSampleReport4_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4_c do begin
              ppline13.visible:=false;
              pplabel98.Visible:=false;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英﹐sampletbl
            end;
          end;
        end;
      end;
    end;
  end;
 end
 else  //客戶
 begin
  if xx1.checked=true then
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=1 order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          if frmSizeReport1=nil then frmSizeReport1:=TfrmsizeReport1.create(self);
          with frmSizeReport1 do begin
            ppline12.visible:=true;
            pplabel129.Visible:=true;
            ppreport1.print;
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);          
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            if frmSizeReport2=nil then frmSizeReport2:=TfrmSizeReport2.create(self);
            with frmSizeReport2 do begin
              ppline12.visible:=true;
              pplabel129.Visible:=true;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            if frmSizeReport3=nil then frmSizeReport3:=TfrmSizeReport3.create(self);
            with frmSizeReport3 do begin
              ppline12.visible:=true;
              pplabel129.Visible:=true;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            if frmSizeReport4=nil then frmSizeReport4:=TfrmSizeReport4.create(self);
            with frmSizeReport4 do begin
              ppline12.visible:=true;
              pplabel129.Visible:=true;
              ppreport1.print;
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            if frmSizeReport5=nil then frmSizeReport5:=TfrmSizeReport5.create(self);
            with frmSizeReport5 do begin
              ppline12.visible:=true;
              pplabel129.Visible:=true;
              ppreport1.print;
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                        +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=1 order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1=nil then frmSampleReport1:=TfrmSampleReport1.create(self);
          if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
            frmSampleReport1.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
          if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
            frmSampleReport1.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSampleReport1 do begin
            ppline14.visible:=true;
            pplabel54.Visible:=true;
            ppreport2.print;//中﹐英sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2=nil then frmSampleReport2:=TfrmSampleReport2.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2 do begin
              ppline14.visible:=true;
              pplabel54.Visible:=true;
              ppreport2.print;//中﹐英sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3=nil then frmSampleReport3:=TfrmSampleReport3.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3 do begin
              ppline14.visible:=true;
              pplabel54.Visible:=true;
              ppreport2.print;//中﹐英sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4=nil then frmSampleReport4:=TfrmSampleReport4.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4 do begin
              ppline14.visible:=true;
              pplabel54.Visible:=true;
              ppreport2.print;//中﹐英sampletbl
            end;
          end;
        end;
      end;
    end
    else
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=1 order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          if frmSizeReport1_c=nil then frmSizeReport1_c:=TfrmSizeReport1_c.create(self);
          with frmsizeReport1_c do begin
            ppline11.visible:=true;
            pplabel93.Visible:=true;
            ldwz.DataField:='cmeas';
            mthd3.datafield:='methd';
            ppreport3.print;//中siztbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            if frmSizeReport2_c=nil then frmSizeReport2_c:=TfrmSizeReport2_c.create(self);
            with frmSizeReport2_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中siztbl
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            if frmSizeReport3_c=nil then frmSizeReport3_c:=TfrmSizeReport3_c.create(self);
            with frmSizeReport3_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中siztbl
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            if frmSizeReport4_c=nil then frmSizeReport4_c:=TfrmSizeReport4_c.create(self);
            with frmSizeReport4_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中siztbl
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            if frmSizeReport5_c=nil then frmSizeReport5_c:=TfrmSizeReport5_c.create(self);
            with frmSizeReport5_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.DataField:='cmeas';
              mthd3.datafield:='methd';
              ppreport3.print;//中siztbl
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                        +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=1 order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1_c=nil then frmSampleReport1_c:=TfrmSampleReport1_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport1_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport1_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSampleReport1_c do begin
            ppline13.visible:=true;
            pplabel98.Visible:=true;
            ldwz1.datafield:='cmeas';
            mthd4.datafield:='methd';
            ppreport4.print;//中sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2_c=nil then frmSampleReport2_c:=TfrmSampleReport2_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3_c=nil then frmSampleReport3_c:=TfrmSampleReport3_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4_c=nil then frmSampleReport4_c:=TfrmSampleReport4_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='cmeas';
              mthd4.datafield:='methd';
              ppreport4.print;//中sampletbl
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.params.clear;
        query1.params.createparam(ftstring,'stylno',ptinput);
        query1.commandtext:='select a.cdate,a.mdate,a.mem,b.*,c.* from SZ_lsize a,SZ_lsize1 b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=1 order by b.stylno,b.cde,b.id';
//        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          if frmSizeReport1_c=nil then frmSizeReport1_c:=TfrmSizeReport1_c.create(self);
          with frmSizeReport1_c do begin
            ppline11.visible:=true;
            pplabel93.Visible:=true;
            ldwz.datafield:='emeas';
            mthd3.datafield:='emethd';
            ppreport3.print;//英siztbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);          
          query3.commandtext:='select size9,size17,size25,size33 from SZ_lsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size9').isnull then
          begin
            if frmSizeReport2_c=nil then frmSizeReport2_c:=TfrmSizeReport2_c.create(self);
            with frmSizeReport2_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;//英siztbl
            end;
          end;
          if not query3.fieldbyname('size17').isnull then
          begin
            if frmSizeReport3_c=nil then frmSizeReport3_c:=TfrmSizeReport3_c.create(self);
            with frmSizeReport3_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;//英siztbl
            end;
          end;
          if not query3.fieldbyname('size25').isnull then
          begin
            if frmSizeReport4_c=nil then frmSizeReport4_c:=TfrmSizeReport4_c.create(self);
            with frmSizeReport4_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;//英siztbl
            end;
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            if frmSizeReport5_c=nil then frmSizeReport5_c:=TfrmSizeReport5_c.create(self);
            with frmSizeReport5_c do begin
              ppline11.visible:=true;
              pplabel93.Visible:=true;
              ldwz.datafield:='emeas';
              mthd3.datafield:='emethd';
              ppreport3.print;//英siztbl
            end;
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        query2.params.createparam(ftstring,'stylno',ptinput);
        query2.commandtext:='select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.pprov,a.cprov,a.tpwj1,a.tpwj2,b.*,c.* from SZ_sampsize a,SZ_sampsize1 b,SZ_sampsize2 c '
                        +'where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=1 order by b.stylno,b.cde,b.id';
//        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          if frmSampleReport1_c=nil then frmSampleReport1_c:=TfrmSampleReport1_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport1_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport1_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
          with frmSampleReport1_c do begin
            ppline13.visible:=true;
            pplabel98.Visible:=true;
            ldwz1.datafield:='emeas';
            mthd4.datafield:='emethd';
            ppreport4.print;//英sampletbl
          end;
          query3.close;
          query3.params.clear;
          query3.params.createparam(ftstring,'stylno',ptinput);
          query3.commandtext:='select size10,size19,size28 from SZ_sampsize2 where stylno=:stylno';
//          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size10').isnull then
          begin
            if frmSampleReport2_c=nil then frmSampleReport2_c:=TfrmSampleReport2_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport2_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport2_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport2_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英sampletbl
            end;
          end;
          if not query3.fieldbyname('size19').isnull then
          begin
            if frmSampleReport3_c=nil then frmSampleReport3_c:=TfrmSampleReport3_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport3_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport3_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport3_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英sampletbl
            end;
          end;
          if not query3.fieldbyname('size28').isnull then
          begin
            if frmSampleReport4_c=nil then frmSampleReport4_c:=TfrmSampleReport4_c.create(self);
            if (not Query2.fieldbyname('tpwj1').isnull) and (Query2.fieldbyname('tpwj1').value<>'') then
              frmSampleReport4_c.ppimage1.Picture.LoadfromFile(Query2.fieldbyname('tpwj1').asstring);
            if (not Query2.fieldbyname('tpwj2').isnull) and (Query2.fieldbyname('tpwj2').value<>'') then
              frmSampleReport4_c.ppimage2.Picture.LoadfromFile(Query2.fieldbyname('tpwj2').asstring);
            with frmSampleReport4_c do begin
              ppline13.visible:=true;
              pplabel98.Visible:=true;
              ldwz1.datafield:='emeas';
              mthd4.datafield:='emethd';
              ppreport4.print;//英sampletbl
            end;
          end;
        end;
      end;
    end;
  end;
 end;
 screen.Cursor:=crDefault;
end;

end.
