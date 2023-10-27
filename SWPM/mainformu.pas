unit mainformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, TB97Ctls, TB97, TB97Tlbr, ImgList, Db, DBClient, MConnect,
  SConnect, ComCtrls, StdCtrls, jpeg, Buttons, shellapi, dxsbar, ExtCtrls,
  ADODB, Spin, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IniFiles, siComp, uROClient, uROSynapseSuperTCPChannel, uRODataSnapConnection,
  uROBinMessage, PH_Library_Intf, uROBaseSuperChannel, uROBaseSuperTCPChannel,
  ToolWin, DBTables, MD5Unit, RzBckgnd;
  procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);

type
  Tfrmmain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Dock971: TDock97;
    tbar1: TToolbar97;
    tbn1: TToolbarButton97;
    tbn2: TToolbarButton97;
    tbn3: TToolbarButton97;
    tbn4: TToolbarButton97;
    tbs1: TToolbarSep97;
    tbn5: TToolbarButton97;
    tbs2: TToolbarSep97;
    tbn7: TToolbarButton97;
    tbs4: TToolbarSep97;
    tbn12: TToolbarButton97;
    ImageList1: TImageList;
    N9: TMenuItem;
    tbn6: TToolbarButton97;
    tbn8: TToolbarButton97;
    tbn9: TToolbarButton97;
    tbn11: TToolbarButton97;
    tbn10: TToolbarButton97;
    tbn17: TToolbarButton97;
    N8: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    tbn13: TToolbarButton97;
    tbs3: TToolbarSep97;
    tbn14: TToolbarButton97;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    N14: TMenuItem;
    tbn15: TToolbarButton97;
    tbn16: TToolbarButton97;
    N15: TMenuItem;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    N16: TMenuItem;
    N17: TMenuItem;
    ToolbarButton973: TToolbarButton97;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Connection2: TSocketConnection;
    Memo1: TMemo;
    n23: TMenuItem;
    tbn19: TToolbarButton97;
    N22: TMenuItem;
    tbn20: TToolbarButton97;
    tbn18: TToolbarButton97;
    N24: TMenuItem;
    tbn21: TToolbarButton97;
    Shift1: TMenuItem;
    ToolbarButton974: TToolbarButton97;
    AnalysisReports1: TMenuItem;
    LWPMGoachievement1: TMenuItem;
    CapacityPlanning1: TMenuItem;
    SocketConnection2: TSocketConnection;
    CurrentLineWorkCalendar1: TMenuItem;
    M1: TMenuItem;
    dxSideBarStore1: TdxSideBarStore;
    dxSideBarStore1Item1: TdxStoredSideItem;
    dxSideBarStore1Item2: TdxStoredSideItem;
    dxSideBarStore1Item3: TdxStoredSideItem;
    dxSideBarStore1Item4: TdxStoredSideItem;
    dxSideBarStore1Item5: TdxStoredSideItem;
    dxSideBarStore1Item6: TdxStoredSideItem;
    dxSideBarStore1Item7: TdxStoredSideItem;
    dxSideBarStore1Item8: TdxStoredSideItem;
    dxSideBarStore1Item9: TdxStoredSideItem;
    dxSideBarStore1Item10: TdxStoredSideItem;
    dxSideBarStore1Item11: TdxStoredSideItem;
    dxSideBarStore1Item12: TdxStoredSideItem;
    dxSideBarStore1Item13: TdxStoredSideItem;
    dxSideBarStore1Item14: TdxStoredSideItem;
    dxSideBarStore1Item15: TdxStoredSideItem;
    McPool1: TMenuItem;
    LendBorrowSWF1: TMenuItem;
    StationedWorkforcePoolProfile1: TMenuItem;
    tbn01: TToolbarButton97;
    tbn02: TToolbarButton97;
    tbn03: TToolbarButton97;
    tbn04: TToolbarButton97;
    tbn08: TToolbarButton97;
    tbn07: TToolbarButton97;
    tbn06: TToolbarButton97;
    HKOfficeFactoryCalendar1: TMenuItem;
    tbn05: TToolbarButton97;
    LWPMPHDispatchNote1: TMenuItem;
    tbn09: TToolbarButton97;
    AQLFlowSetting1: TMenuItem;
    ToolbarButton975: TToolbarButton97;
    DailyOperation1: TMenuItem;
    MouldforSLOA1: TMenuItem;
    ModuleforMaintenance1: TMenuItem;
    ADOConn1: TADOConnection;
    ProjectedLineWorkCalendar1: TMenuItem;
    tbn30: TToolbarButton97;
    ClientDataSet: TClientDataSet;
    DataReplicationEnquiry1: TMenuItem;
    PackingPlan1: TMenuItem;
    ENGCHNVERSION1: TMenuItem;
    eng_chn01: TRadioGroup;
    Query10: TClientDataSet;
    CreateNewUser1: TMenuItem;
    OperationforPackingPlan1: TMenuItem;
    SpinEdit1: TSpinEdit;
    ViewLogging1: TMenuItem;
    Logging1: TMenuItem;
    CapacityPlanningNew1: TMenuItem;
    ADOConnection1: TADOConnection;
    DataSet2: TADOQuery;
    Cart1: TMenuItem;
    tbncart1: TToolbarButton97;
    Memo2: TMemo;
    ADOQuery1: TADOQuery;
    fullyreleased1: TToolbarButton97;
    BinMessage: TROBinMessage;
    ROConnection: TRODataSnapConnection;
    TCPChannel: TROSynapseSuperTCPChannel;
    siLang1: TsiLang;
    Label1: TLabel;
    ModuleforLineLeader1: TMenuItem;
    ModuleforSewing1: TMenuItem;
    Lineleader1: TMenuItem;
    WsSupervisor1: TMenuItem;
    WsSI1: TMenuItem;
    Mechan1: TMenuItem;
    ModuleforPMC1: TMenuItem;
    ModuleforIE1: TMenuItem;
    ModuleforCutting1: TMenuItem;
    ModuleforPacking1: TMenuItem;
    ModuleforLogistics1: TMenuItem;
    ModuleforQC1: TMenuItem;
    ModuleforMolding1: TMenuItem;
    FtyManager1: TMenuItem;
    Assembly1: TMenuItem;
    AssemblySpecific1: TMenuItem;
    sp_connect1: TRODataSnapConnection;
    SocketConnection1: TRODataSnapConnection;
    LWPMPDNCARTE1: TMenuItem;
    tbn091: TToolbarButton97;
    tbn092: TToolbarButton97;
    LWPMPDNOCEN1: TMenuItem;
    ReportforShelley1: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Database1: TDatabase;
    Qry_ERP: TQuery;
    fullyreleased2: TMenuItem;
    N28: TMenuItem;
    ComboBox2: TComboBox;
    RzBackground1: TRzBackground;
    tbn9701: TToolbarButton97;
    tbn9702: TToolbarButton97;
    N915GAI1: TMenuItem;
    Prdnprogress1: TMenuItem;
    N915GAI2: TMenuItem;
    N99: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure tbn12Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbn6Click(Sender: TObject);
    procedure tbn7Click(Sender: TObject);
    procedure tbn9Click(Sender: TObject);
    procedure tbn8Click(Sender: TObject);
    procedure tbn10Click(Sender: TObject);
    procedure tbn11Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure tbn15Click(Sender: TObject);
    procedure tbn16Click(Sender: TObject);
    procedure tbn17Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure ToolbarButton972Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure appexception(Sender: TObject; E: Exception);
    procedure tbn19Click(Sender: TObject);
    procedure tbn20Click(Sender: TObject);
    procedure tbn18Click(Sender: TObject);
    procedure tbn21Click(Sender: TObject);
    procedure Shift1Click(Sender: TObject);
    procedure AnalysisReports1Click(Sender: TObject);
    procedure LWPMGoachievement1Click(Sender: TObject);
    procedure CapacityPlanning1Click(Sender: TObject);
    procedure CurrentLineWorkCalendar1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure McPool1Click(Sender: TObject);
    procedure LendBorrowSWF1Click(Sender: TObject);
    procedure StationedWorkforcePoolProfile1Click(Sender: TObject);
    procedure tbn09Click(Sender: TObject);
    procedure AQLFlowSetting1Click(Sender: TObject);
    procedure DailyOperationReportsTopManagement1Click(Sender: TObject);
    procedure MouldforSLOA1Click(Sender: TObject);
    procedure ModuleforMaintenance1Click(Sender: TObject);
    procedure ProjectedLineWorkCalendar1Click(Sender: TObject);
    procedure DataReplicationEnquiry1Click(Sender: TObject);
    procedure PackingPlan1Click(Sender: TObject);
    procedure ENGCHNVERSION1Click(Sender: TObject);
    procedure CreateNewUser1Click(Sender: TObject);
    procedure OperationforPackingPlan1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ViewLogging1Click(Sender: TObject);
    procedure Logging1Click(Sender: TObject);
    procedure CapacityPlanningNew1Click(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Cart1Click(Sender: TObject);
    procedure LWPMCoreTech1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ModuleforLineLeader1Click(Sender: TObject);
    procedure AssemblySpecific1Click(Sender: TObject);
    procedure AssemblySpecific2Click(Sender: TObject);
    procedure Assembly1Click(Sender: TObject);
    procedure Assembly2Click(Sender: TObject);
    procedure ShoulderStrapmaker1Click(Sender: TObject);
    procedure Bonding1Click(Sender: TObject);
    procedure Sewing1Click(Sender: TObject);
    procedure PPBonding1Click(Sender: TObject);
    procedure PPShoulderStrapMaking1Click(Sender: TObject);
    procedure PPPadPrintandWeldingTeam1Click(Sender: TObject);
    procedure FrontOpts1Click(Sender: TObject);
    procedure ModuleforPMC1Click(Sender: TObject);
    procedure tbn091Click(Sender: TObject);
    procedure tbn092Click(Sender: TObject);
    procedure ReportforShelley1Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure dWFDeployBoard1Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tbn9701Click(Sender: TObject);
    procedure tbn9702Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure fullyreleased1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PHService: IPHService;
    function weekno(const dt: tdatetime): integer;
    function fact(const n: Integer):integer;
  end;

var
  frmmain: Tfrmmain;
  seq:integer;

implementation

uses calendarformu, worderformu, lineinfou, itemlistu, worksheetu, sopinfou,
  worksheet, matchform, xgslu, calcscheduleu, mmwhu, qxglu, memform1u,
  memformu, selectioninfou, finished, mematchformu, machcapacityformu,
  matmatchu, helpu, wl1itemformu, psitemformu, pbitemformu, chcxformu,
  gsdtmuformu, custformu, ftycalendarformu, rwoformu, lineshiftformu,
  analysisformu, achievingformu, capformu, currcalformu, mwfformu,
  mcpoolformu, loanformu, swfpoolformu, pdnformu, aqlflowformu, allmcformu,
  dailyreportformu, sloaformu, maintenanceformu, dailyreport1formu,
  wfpoolformu, prjcalformu, db_repformu, packingplanformu, ver_engchnformu,
  packoptformu, loggingformu, lwoformu, newcapformu, packplanformu,
  oamoduleformu, cartonmeasurementformu, coretechformu,
  worksheetsortingformu, lineleaderformu, otherqnformu, pmcmoduleformu,
  ShelleyDataFormu, effsetupformu, ftylearnformu, wscalendarformu,
  dWFDeployBoardformu, pdn_destformu, Prdprogressformu, EWsGAIFormu, fullyreleasedformu;

{$R *.DFM}

procedure Tfrmmain.N4Click(Sender: TObject);
begin
  if frmcalendar=nil then frmcalendar:=tfrmcalendar.create(application);
  frmcalendar.BringToFront;
  frmcalendar.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmcalendar.Caption:=frmcalendar.Caption+' - Test';
end;

procedure Tfrmmain.tbn12Click(Sender: TObject);
begin
  if mdichildcount>0 then begin
    activemdichild.close;
  end
  else close;
end;

procedure Tfrmmain.N2Click(Sender: TObject);
begin
  if frmsopinfo=nil then frmsopinfo:=tfrmsopinfo.create(application);
  frmsopinfo.BringToFront;
  frmsopinfo.left:=0;
  frmsopinfo.top:=0;
  frmsopinfo.width:=737;
  frmsopinfo.height:=469;
  frmsopinfo.WindowState:=wsnormal;
end;

procedure Tfrmmain.N3Click(Sender: TObject);
begin
  if frmlineinfo=nil then frmlineinfo:=tfrmlineinfo.create(application);
  frmlineinfo.bringtofront;
  //frmlineinfo.left:=0;
  //frmlineinfo.top:=0;
  //frmlineinfo.width:=553;
  //frmlineinfo.height:=436;
  //frmlineinfo.WindowState:=wsnormal;
  frmlineinfo.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmlineinfo.Caption:=frmlineinfo.Caption+' - Test';
end;

procedure Tfrmmain.N5Click(Sender: TObject);
begin
  if frmitemlist=nil then frmitemlist:=tfrmitemlist.create(application);
  frmitemlist.bringtofront;
  frmitemlist.left:=0;
  frmitemlist.top:=0;
  frmitemlist.width:=641;
  frmitemlist.height:=493;
  frmitemlist.WindowState:=wsnormal;
end;

procedure Tfrmmain.N7Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  worksheet1.speedbutton1.Visible:=true;
  //worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  //worksheet1.Caption:='計劃與排程(主板) - 應用程式';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
  worksheet1.lbl850.Caption:='';
end;

procedure Tfrmmain.N99Click(Sender: TObject);
begin
  if frmwscalendar=nil then frmwscalendar:=tfrmwscalendar.create(application);
  frmwscalendar.bringtofront;
  frmwscalendar.caption:='Workshop Calendar - End phase (915) Ws';
  frmwscalendar.dbgrideh1.columns[14].visible:=true;
  frmwscalendar.dbgrideh1.columns[15].visible:=true;
  frmwscalendar.dbgrideh1.columns[16].visible:=true;
  frmwscalendar.dbgrideh1.columns[17].visible:=true;
  frmwscalendar.WindowState:=wsMaximized;
end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  //if fileexists('c:\temp\rwoprint.exe') then deletefile('c:\temp\rwoprint.exe');
  //if not fileexists('c:\temp\rwoprint.exe') then begin
  //  shellexecute(0,'open',pchar(extractfilepath(application.ExeName)+'dotnet\rwo.bat'),nil,pchar(extractfilepath(application.ExeName)+'dotnet'),sw_show);
  //end;
  {
  memo1.Lines.Clear;
  if pos('test',application.ExeName)>0 then begin
    memo1.Lines.LoadFromFile(extractfilepath(application.ExeName)+'conip_test.ini');
    frmmain.Caption:=frmmain.Caption+' - Test';
  end else memo1.Lines.LoadFromFile(extractfilepath(application.ExeName)+'conip.ini');
  socketconnection1.Address:=memo1.Lines.Strings[0];
  socketconnection1.ServerName:=memo1.Lines.Strings[2];
  connection2.Address:=memo1.Lines.Strings[0];
  }
  memo2.Lines.Clear;
  memo2.Lines.LoadFromFile(extractfilepath(application.ExeName)+'phplatformpath.ini');
  //showmessage(memo2.lines.strings[0]);
  tbar1.Visible:=false;
  n1.visible:=false;
  n6.visible:=false;
  n10.visible:=false;
  dailyoperation1.Visible:=false;
  combobox1.items.Clear;

  //showmessage('1 - '+tcpchannel.host+':'+inttostr(tcpchannel.port));

  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select usr from tbluser';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('usr').value);
      next;
    end;
  end;
  combobox1.setfocus;
  groupbox1.Left:=(screen.Width-groupbox1.Width) div 2;
  groupbox1.top:=(screen.height-groupbox1.Height) div 2;
  combobox2.text:='English';
  combobox2change(self);
  //showmessage(memo2.Text);
end;

procedure Tfrmmain.FrontOpts1Click(Sender: TObject);
begin
  if frmotherqn=nil then frmotherqn:=tfrmotherqn.create(application);
  frmotherqn.tblshedule.active:=false;
  frmotherqn.combobox1.text:='PP - Front Phase Stitching Team';
  frmotherqn.combobox1.enabled:=false;
  frmotherqn.caption:='PP - Front Phase Stitching Team';
  frmotherqn.BringToFront;
  frmotherqn.WindowState:=wsMaximized;
end;

procedure Tfrmmain.fullyreleased1Click(Sender: TObject);
var
  r14:boolean;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r3 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if not fieldbyname('r3').isnull then r14:=fieldbyname('r3').value else r14:=false;
  end;
  if frmfullyreleased=nil then frmfullyreleased:=tfrmfullyreleased.create(application);
  frmfullyreleased.BringToFront;
  if r14 then frmfullyreleased.cxfullyreleased.options.editing:=true
  else frmfullyreleased.cxfullyreleased.options.editing:=false;
  frmfullyreleased.WindowState:=wsMaximized;
end;

procedure Tfrmmain.tbn6Click(Sender: TObject);
begin
  if frmmatch=nil then frmmatch:=tfrmmatch.create(application);
  frmmatch.bringtofront;
  frmmatch.WindowState:=wsmaximized;
end;

procedure Tfrmmain.tbn7Click(Sender: TObject);
begin
  if activemdichild=worksheet1 then begin
    //if worksheet1.Edit2.text>'' then begin
    if ((worksheet1.Edit6.text>'') and (worksheet1.edit6.text<>'CN')) or (worksheet1.Edit2.text>'') then begin
      if worksheet1.tblshedule.active=true then begin
        if frmworder=nil then frmworder:=tfrmworder.Create(self);
        if pos('test',application.ExeName)>0 then frmworder.Caption:=frmworder.Caption+' - Test';
        frmworder.show;
      end;
    end;
  end;
end;

procedure Tfrmmain.tbn9701Click(Sender: TObject);
begin
  if frmewsgai=nil then frmewsgai:=tfrmewsgai.create(nil);
  frmewsgai.show;
end;

procedure Tfrmmain.tbn9702Click(Sender: TObject);
begin
  if frmprdprogress=nil then frmprdprogress:=tfrmprdprogress.create(nil);
  frmprdprogress.show;
end;

procedure Tfrmmain.tbn9Click(Sender: TObject);
var
  seq1:integer;
  pline:string;
  //j_no:string;
  pstr:string;
begin
  if activemdichild=worksheet1 then begin
    if worksheet1.tblshedule.active=true then begin
      if not worksheet1.tblshedule.Fieldbyname('seq').isnull then begin
        if ((worksheet1.tblshedule.fieldbyname('flag3').value='') or (worksheet1.tblshedule.fieldbyname('flag3').isnull)) then begin
          if application.messagebox('Need revise this QN?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
            seq1:=worksheet1.tblshedule.fieldbyname('seq').value;
            pline:=uppercase(worksheet1.tblshedule.fieldbyname('pline').value);
            if (trim(uppercase(worksheet1.tblshedule.fieldbyname('flag4').value))='A') or (trim(uppercase(worksheet1.tblshedule.fieldbyname('flag4').value))='B') then begin
              with clientdataset1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'x1',ptinput);
                params.createparam(ftinteger,'x2',ptinput);
                commandtext:='execute procedure sp_dltqn(:x1,:x2)';
                params[0].asstring:=pline;
                params[1].asinteger:=seq1;
                execute;
              end;
              worksheet1.tblshedule.delete;
              showmessage('Already deleted the QN!');
            end else showmessage('Can not revise this QN!');
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmmain.tbn8Click(Sender: TObject);
var
  r14:boolean;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r14 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if not fieldbyname('r14').isnull then r14:=fieldbyname('r14').value else r14:=false;
  end;
  if r14 then begin
    if activemdichild=worksheet1 then begin
    //if (worksheet1.edit2.text<>'') or (worksheet1.edit1.text<>'') then begin
      if ((worksheet1.tblshedule.fieldbyname('flag3').value='') or (worksheet1.tblshedule.fieldbyname('flag3').isnull)) or (worksheet1.tblshedule.fieldbyname('flag3').value='h1') or (worksheet1.tblshedule.fieldbyname('flag3').value='!h1') then begin
        if not worksheet1.tblshedule.fieldbyname('seq').isnull then begin
          if frmxgsl=nil then frmxgsl:=tfrmxgsl.create(self);
          frmxgsl.edit1.text:=worksheet1.tblshedule.fieldbyname('scqty').asstring;
          if pos('test',application.ExeName)>0 then frmxgsl.Caption:=frmxgsl.Caption+' - Test';
          frmxgsl.show;
        end;
      end;
    //end;
    end;
  end else showmessage('You have no right!');
end;

procedure Tfrmmain.tbn10Click(Sender: TObject);
begin
  if activemdichild=worksheet1 then begin
    if worksheet1.edit2.text<>'' then begin
      if not worksheet1.tblshedule.fieldbyname('seq').isnull then begin
        if frmcalcschedule=nil then frmcalcschedule:=tfrmcalcschedule.create(self);
        frmcalcschedule.dateedit1.date:=date;
        frmcalcschedule.spinedit1.value:=1;
        if pos('test',application.ExeName)>0 then frmcalcschedule.Caption:=frmcalcschedule.Caption+' - Test';
        frmcalcschedule.show;
      end;
    end;
  end;
end;

procedure Tfrmmain.tbn11Click(Sender: TObject);
begin
  if activemdichild=worksheet1 then begin
    if worksheet1.edit2.text<>'' then begin
      if not worksheet1.tblshedule.fieldbyname('seq').isnull then begin
        worksheet1.label3.caption:=worksheet1.tblshedule.fieldbyname('seq').asstring;
      end;
    end;
  end;
end;

procedure Tfrmmain.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmain.Bonding1Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  //worksheet1.cxView1.Bands[19].Visible:=true;
  worksheet1.speedbutton1.Visible:=true;
  worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  worksheet1.Caption:='Front Opts Ws -> Bonding';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
end;

procedure Tfrmmain.BitBtn1Click(Sender: TObject);
var
  md5: TMD5Digest;
  md5pwd: string;
begin
  if combobox1.text<>'' then begin
    MD5String(edit1.text, @md5);
    md5pwd:=LowerCase(MD5DigestToStr(md5));

    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      params.createparam(ftstring,'pwd',ptinput);
      //commandtext:='select * from tbluser where upper(usr)=:usr and upper(passwrd)=:pwd';
      commandtext:='select * from tbluser where usr=:usr and pwd=:pwd';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=md5pwd;//edit1.text;
      open;
      if not fieldbyname('usr').isnull then begin
        groupbox1.Visible:=false;
        n1.visible:=true;
        n6.visible:=true;
        n10.visible:=true;
        //dailyoperation1.Visible:=true;
        tbar1.Visible:=true;
        if fieldbyname('rsscap').Value=true then begin
          n1.enabled:=false;
          //dailyoperation1.enabled:=false;
          n10.enabled:=false;
          n24.enabled:=false;
          n7.Enabled:=false;
          //lwpmcoretech1.Enabled:=false;
          lwpmgoachievement1.enabled:=false;
          lwpmphdispatchnote1.Enabled:=false;
          analysisreports1.Enabled:=false;
          tbn2.Enabled:=false;
          toolbarbutton974.Enabled:=false;
          tbn18.Enabled:=false;
          tbn3.Enabled:=false;
          tbn30.Enabled:=false;
          tbn5.Enabled:=false;
          //tbn20.Enabled:=false;
          toolbarbutton975.Enabled:=false;
          tbncart1.Enabled:=false;
          tbn21.enabled:=false;
          tbn05.Enabled:=false;
          tbn06.enabled:=false;
          //toolbarbutton976.Enabled:=false;
          tbn08.Enabled:=false;
          tbn09.Enabled:=false;
          toolbarbutton973.Enabled:=false;
        end;

        if fieldbyname('r13').value=true then begin
          n12.Enabled:=true;
          tbn14.Enabled:=true;
        end else begin
          n12.Enabled:=false;
          tbn14.Enabled:=false;
        end;
        {
        if fieldbyname('r58').value=true then begin
          cart1.Visible:=true;
          tbncart1.Visible:=true;
        end else begin
          cart1.Visible:=false;
          tbncart1.Visible:=false;
        end;
        }
          tbn01.Visible:=false;
          tbn03.Visible:=false;
        if fieldbyname('rchn').value=true then begin
          if eng_chn01.ItemIndex=0 then eng_chn01.ItemIndex:=1;
        end;
        with clientdataset2 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as q1 from tbl_logging';
          open;
          if not fieldbyname('q1').isnull then spinedit1.value:=fieldbyname('q1').value+1
          else spinedit1.value:=1;
        end;
        seq:=spinedit1.value;
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='SWPM - Sign On';
          parameters[1].value:=combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
      end else begin
        application.MessageBox('Wrong User!','Warning',mb_iconwarning+mb_ok);
        edit1.setfocus;
      end;
    end;
  end;
end;

procedure Tfrmmain.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then bitbtn1click(self)
  //Not allowed copy (Ctrl + C)
  else if key=#3 then begin
    key:=#0;
    showmessage('Not allow to copy!');
  end
end;

procedure Tfrmmain.N14Click(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to mdichildcount-1 do begin
    mdichildren[i].close;
  end;
  n1.Visible:=false;
  n6.visible:=false;
  n10.visible:=false;
  dailyoperation1.Visible:=false;
  tbar1.Visible:=false;
  groupbox1.Visible:=true;
  combobox1.text:='';
  edit1.text:='';
  combobox1.setfocus;
  //log off
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and enddt is null';
          params[0].AsDateTime:=now;
          params[1].asinteger:=spinedit1.Value;
          execute;
        end;
  }
end;

procedure Tfrmmain.N11Click(Sender: TObject);
begin
  if frmmm=nil then frmmm:=tfrmmm.create(application);
  frmmm.bringtofront;
  frmmm.Top:=0;
  frmmm.left:=0;
  frmmm.width:=273;
  frmmm.height:=260;
  frmmm.WindowState:=wsnormal;
  if pos('test',application.ExeName)>0 then frmmm.Caption:=frmmm.Caption+' - Test';
end;

procedure Tfrmmain.N12Click(Sender: TObject);
begin
  if frmqxgl=nil then frmqxgl:=tfrmqxgl.create(application);
  frmqxgl.bringtofront;
  frmqxgl.Top:=0;
  frmqxgl.left:=0;
  frmqxgl.width:=449;
  frmqxgl.height:=372;
  frmqxgl.WindowState:=wsnormal;
  if pos('test',application.ExeName)>0 then frmqxgl.Caption:=frmqxgl.Caption+' - Test';
end;

procedure Tfrmmain.tbn15Click(Sender: TObject);
begin
  if worksheet1.tblshedule.active=true then begin
    if worksheet1.tblshedule.RecordCount>0 then begin
      if frmmem1=nil then frmmem1:=tfrmmem1.create(self);
      frmmem1.show;
    end;
  end;
end;

procedure Tfrmmain.tbn16Click(Sender: TObject);
begin
  if worksheet1.tblshedule.active=true then begin
    if worksheet1.tblshedule.RecordCount>0 then begin
      if frmmem=nil then frmmem:=tfrmmem.create(self);
      frmmem.show;
    end;
  end;
end;

procedure Tfrmmain.tbn17Click(Sender: TObject);
begin
  if frmselection=nil then frmselection:=tfrmselection.create(application);
  frmselection.BringToFront;
  frmselection.top:=0;
  frmselection.left:=0;
  frmselection.Width:=385;
  frmselection.Height:=340;
  frmselection.WindowState:=wsnormal;
end;

procedure Tfrmmain.N15Click(Sender: TObject);
begin
  //if frmfinished=nil then frmfinished:=tfrmfinished.create(application);
  //frmfinished.bringtofront;
  //frmfinished.windowstate:=wsmaximized;
  //if pos('test',application.ExeName)>0 then frmfinished.Caption:=frmfinished.Caption+' - Test';
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  //worksheet1.cxView1.Bands[19].Visible:=false;
  worksheet1.speedbutton1.Visible:=false;
  worksheet1.SpeedButton4.Visible:=true;
  worksheet1.bringtofront;
  worksheet1.Caption:='Shipped Records';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
end;

procedure Tfrmmain.ToolbarButton971Click(Sender: TObject);
begin
  if frmmematch=nil then frmmematch:=tfrmmematch.create(application);
  frmmematch.bringtofront;
  frmmematch.windowstate:=wsmaximized;
end;

procedure Tfrmmain.ToolbarButton972Click(Sender: TObject);
begin
  if frmmachcapacity=nil then frmmachcapacity:=tfrmmachcapacity.create(application);
  frmmachcapacity.bringtofront;
  frmmachcapacity.windowstate:=wsmaximized;
end;

procedure Tfrmmain.N16Click(Sender: TObject);
begin
  if frmmatmatch=nil then frmmatmatch:=tfrmmatmatch.create(application);
  frmmatmatch.bringtofront;
  frmmatmatch.windowstate:=wsmaximized;
end;

procedure Tfrmmain.N17Click(Sender: TObject);
begin
  //winexec(pchar(extractfilepath(application.ExeName)+'pshelp.htm'),sw_showmaximized);
  if frmhelp=nil then frmhelp:=tfrmhelp.create(nil);
  frmhelp.show;
end;

procedure Tfrmmain.N18Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmwl1item=nil then frmwl1item:=tfrmwl1item.create(application);
  frmwl1item.BringToFront;
  frmwl1item.Left:=0;
  frmwl1item.Top:=0;
  frmwl1item.Width:=417;
  frmwl1item.Height:=348;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N19Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmpsitem=nil then frmpsitem:=tfrmpsitem.create(application);
  frmpsitem.BringToFront;
  frmpsitem.Left:=0;
  frmpsitem.Top:=0;
  frmpsitem.Width:=417;
  frmpsitem.Height:=348;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N20Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmpbitem=nil then frmpbitem:=tfrmpbitem.create(application);
  frmpbitem.BringToFront;
  frmpbitem.Left:=0;
  frmpbitem.Top:=0;
  frmpbitem.Width:=417;
  frmpbitem.Height:=348;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N21Click(Sender: TObject);
begin
  if frmchcx=nil then frmchcx:=tfrmchcx.Create(application);
  frmchcx.BringToFront;
  frmchcx.WindowState:=wsMaximized;
end;

procedure Tfrmmain.FormActivate(Sender: TObject);
begin
  combobox2.text:='English';
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
var
  s1:string;
begin
  memo1.Lines.clear;
  if pos('test',lowercase(application.ExeName))>0 then begin
    memo1.Lines.LoadFromFile(extractfilepath(application.ExeName)+'conip_test.ini');
    frmmain.Caption:=frmmain.Caption+' - Test';
  end else memo1.Lines.LoadFromFile(extractfilepath(application.ExeName)+'conip.ini');
  s1:=memo1.Lines.Strings[0];
  if pos(' ',s1)>0 then s1:=copy(s1,1,pos(' ',s1)-1);
  if (s1='10.2.1.7') or (s1='10.4.1.7') or (s1='10.2.1.240') then
  TCPChannel.Host:=s1 else TCPChannel.Host:='10.2.1.7';

  TCPChannel.AckWaitTimeout:=60000000;
  TCPChannel.ConnectionWaitTimeout:=60000000;
  TCPChannel.ConnectTimeout:=60000000;
  TCPChannel.ProbeFrequency:=60000000;
  TCPChannel.ReconnectDelay:=5000;
  TCPChannel.RequestTimeout:=60000000;

  memo2.Lines.Clear;
  memo2.Lines.LoadFromFile(extractfilepath(application.ExeName)+'phplatformpath.ini');
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);

  PHService := coPHService.Create(BinMessage,TCPChannel);
end;

procedure Tfrmmain.appexception(Sender: TObject; E: Exception);
begin
  //socketconnection1.Address:='10.4.1.7';
  //socketconnection1.ServerName:='IB_CONN.ccn_IB';
  //socketconnection1.Connected;
  {
  groupbox1.Left:=(frmmain.Width-groupbox1.Width) div 2;
  groupbox1.top:=(frmmain.height-groupbox1.Height) div 2;
  tbar1.Visible:=false;
  n1.visible:=false;
  n6.visible:=false;
  n10.visible:=false;
  combobox1.items.Clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select usr from tbluser';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('usr').value);
      next;
    end;
  end;
  combobox1.setfocus;
  }
end;

procedure Tfrmmain.tbn19Click(Sender: TObject);
begin
  if frmgsdtmu=nil then frmgsdtmu:=tfrmgsdtmu.Create(application);
  frmgsdtmu.BringToFront;
  frmgsdtmu.PageControl1.ActivePageIndex:=2;
  frmgsdtmu.combobox1.SetFocus;
  frmgsdtmu.WindowState:=wsMaximized;
end;

procedure Tfrmmain.tbn20Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    if frmcustomer=nil then frmcustomer:=tfrmcustomer.Create(application);
    {
    with frmcustomer.query1 do begin
      close;
      params.clear;
      commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
      open;
    end;
    }
    with frmcustomer.query2 do begin
      close;
      params.clear;
      commandtext:='select * from cust_exfty where act=1';
      open;
    end;
    frmcustomer.BringToFront;
    frmcustomer.PageControl1.ActivePageIndex:=0;
    frmcustomer.WindowState:=wsMaximized;
    if pos('test',application.ExeName)>0 then frmcustomer.Caption:=frmcustomer.Caption+' - Test';
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmmain.tbn18Click(Sender: TObject);
begin
  if frmftycalendar=nil then frmftycalendar:=tfrmftycalendar.create(application);
  frmftycalendar.BringToFront;
  //frmftycalendar.Left:=0;
  //frmftycalendar.top:=0;
  //frmftycalendar.Width:=666;
  //frmftycalendar.Height:=555;
  //frmftycalendar.windowstate:=wsnormal;
  frmftycalendar.windowstate:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmftycalendar.Caption:=frmftycalendar.Caption+' - Test';
end;

procedure Tfrmmain.tbn21Click(Sender: TObject);
begin
  if frmrwo=nil then frmrwo:=tfrmrwo.create(application);
  frmrwo.bringtofront;
  frmrwo.WindowState:=wsMaximized;
end;

procedure Tfrmmain.Sewing1Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  //worksheet1.cxView1.Bands[19].Visible:=true;
  worksheet1.speedbutton1.Visible:=true;
  worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  worksheet1.Caption:='Front Opts Ws -> Stitching (Core-tech)';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
end;

procedure Tfrmmain.Shift1Click(Sender: TObject);
begin
  if frmshift=nil then frmshift:=tfrmshift.create(application);
  with frmshift.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_shift';// where tplant=''SL''';
    open;
  end;
  {
  with frmshift.query4 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_shift where tplant=''GG''';
    open;
  end;
  with frmshift.query5 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_shift where tplant=''CS''';
    open;
  end;
  }
  frmshift.bringtofront;
  frmshift.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmshift.Caption:=frmshift.Caption+' - Test';
end;

procedure Tfrmmain.ShoulderStrapmaker1Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  //worksheet1.cxView1.Bands[19].Visible:=true;
  worksheet1.speedbutton1.Visible:=true;
  worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  worksheet1.Caption:='Front Opts Ws -> PP (ShoulderStrap Making)';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
end;

procedure Tfrmmain.AnalysisReports1Click(Sender: TObject);
begin
  if frmanalysis=nil then frmanalysis:=tfrmanalysis.create(nil);
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select rshp_acc from tbluser where usr='''+combobox1.text+'''';
    open;
    frmanalysis.bitbtn24.visible:=fieldbyname('rshp_acc').value;
    frmanalysis.bitbtn25.visible:=fieldbyname('rshp_acc').value;
  end;
  }
  frmanalysis.show;
end;

procedure Tfrmmain.LWPMGoachievement1Click(Sender: TObject);
begin
  if frmachieving=nil then frmachieving:=tfrmachieving.create(application);
  {
  if (frmmain.eng_chn01.ItemIndex=1) then begin
    frmachieving.opt1.Items.Clear;
    with query10 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_ver_engchn where f_mod=''GAI'' and f_frm=''WGAI'' order by f_lbl_grd,f_xh';
      open;
      first;
      while not eof do begin
        if (fieldbyname('f_lbl_grd').value='LABEL') then begin
          if fieldbyname('f_xh').value=0 then frmachieving.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=1 then frmachieving.label4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmachieving.label1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmachieving.label3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.label2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=6 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=7 then frmachieving.bitbtn1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmachieving.bitbtn2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.bitbtn3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.bitbtn4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.bitbtn5.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.bitbtn6.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.bitbtn7.Caption:=fieldbyname('f_chn').value;
        end else if (fieldbyname('f_lbl_grd').value='GRID') then begin
          if fieldbyname('f_xh').value=1 then frmachieving.DBGridEh1.Columns[0].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=2 then frmachieving.DBGridEh1.Columns[1].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=3 then frmachieving.DBGridEh1.Columns[2].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.DBGridEh1.Columns[3].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=5 then frmachieving.DBGridEh1.Columns[4].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=6 then frmachieving.DBGridEh1.Columns[5].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=7 then frmachieving.DBGridEh1.Columns[6].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=8 then frmachieving.DBGridEh1.Columns[7].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.DBGridEh1.Columns[8].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.DBGridEh1.Columns[9].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.DBGridEh1.Columns[10].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.DBGridEh1.Columns[11].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.DBGridEh1.Columns[12].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=14 then frmachieving.DBGridEh1.Columns[13].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=15 then frmachieving.DBGridEh1.Columns[14].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=16 then frmachieving.DBGridEh1.Columns[15].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=17 then frmachieving.DBGridEh1.Columns[16].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=18 then frmachieving.DBGridEh1.Columns[17].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=19 then frmachieving.DBGridEh1.Columns[18].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=20 then frmachieving.DBGridEh1.Columns[19].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=21 then frmachieving.DBGridEh1.Columns[20].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=22 then frmachieving.DBGridEh1.Columns[21].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=23 then frmachieving.DBGridEh1.Columns[22].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=24 then frmachieving.DBGridEh1.Columns[23].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=25 then frmachieving.DBGridEh1.Columns[24].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=26 then frmachieving.DBGridEh1.Columns[25].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=27 then frmachieving.DBGridEh1.Columns[26].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=28 then frmachieving.DBGridEh1.Columns[27].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=29 then frmachieving.DBGridEh1.Columns[28].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=30 then frmachieving.DBGridEh1.Columns[29].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=31 then frmachieving.DBGridEh1.Columns[30].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=32 then frmachieving.DBGridEh1.Columns[31].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=33 then frmachieving.DBGridEh1.Columns[32].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=34 then frmachieving.DBGridEh1.Columns[35].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=35 then frmachieving.DBGridEh1.Columns[36].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=36 then frmachieving.DBGridEh1.Columns[37].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=37 then frmachieving.DBGridEh1.Columns[38].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=38 then frmachieving.DBGridEh1.Columns[39].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=39 then frmachieving.DBGridEh1.Columns[40].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=40 then frmachieving.DBGridEh1.Columns[41].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=41 then frmachieving.DBGridEh1.Columns[42].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=42 then frmachieving.DBGridEh1.Columns[43].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=43 then frmachieving.DBGridEh1.Columns[44].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=44 then frmachieving.DBGridEh1.Columns[45].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=45 then frmachieving.DBGridEh1.Columns[46].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=46 then frmachieving.DBGridEh1.Columns[47].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=47 then frmachieving.DBGridEh1.Columns[48].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=48 then frmachieving.DBGridEh1.Columns[49].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=49 then frmachieving.DBGridEh1.Columns[50].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=50 then frmachieving.DBGridEh1.Columns[33].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=51 then frmachieving.DBGridEh1.Columns[34].Title.caption:=fieldbyname('f_chn').value;
        end;
        //application.ProcessMessages;
        next;
      end;
    end;
  end;
  }
  //frmachieving.opt1.ItemIndex:=0;
  frmachieving.bringtofront;
  frmachieving.WindowState:=wsMaximized;
  //if pos('test',application.ExeName)>0 then frmachieving.Caption:=frmachieving.Caption+' - Test';
  frmachieving.lbl850.Caption:='';
  frmachieving.Caption:='915 GAI - EWs';//'達標 (GA) - 應用程式';
  frmachieving.dbgrideh1.Columns[15].FieldName:='MPSECT';
  frmachieving.dbgrideh1.Columns[19].FieldName:='EOT';
  frmachieving.dbgrideh1.Columns[20].FieldName:='CSECT';
  frmachieving.dbgrideh1.Columns[22].FieldName:='GSL1';
  frmachieving.dbgrideh1.Columns[34].FieldName:='PRJ1';
  frmachieving.dbgrideh1.Columns[35].FieldName:='AQTY';
  frmachieving.dbgrideh1.Columns[36].FieldName:='DBL';
  frmachieving.dbgrideh1.Columns[49].FieldName:='XLBX';
  frmachieving.dbgrideh1.Columns[50].FieldName:='XLBX_LJ1';
  frmachieving.dbgrideh1.Columns[51].FieldName:='XLBX_LJ';
  frmachieving.dbgrideh1.Columns[52].FieldName:='YCBX';
  frmachieving.dbgrideh1.Columns[53].FieldName:='YCBX_LJ1';
  frmachieving.dbgrideh1.Columns[54].FieldName:='YCBX_LJ';
  frmachieving.dbgrideh1.Columns[55].FieldName:='ZYCBX';
  frmachieving.dbgrideh1.Columns[56].FieldName:='ZYCBX_LJ1';
  frmachieving.dbgrideh1.Columns[57].FieldName:='ZYCBX_LJ';
  frmachieving.dbgrideh1.Columns[71].FieldName:='EFF2';
  frmachieving.dbgrideh1.Columns[73].FieldName:='EFF3';
end;

procedure Tfrmmain.CapacityPlanning1Click(Sender: TObject);
begin
  if frmcap=nil then frmcap:=tfrmcap.create(nil);
  frmcap.Show;
  if pos('test',application.ExeName)>0 then frmcap.Caption:=frmcap.Caption+' - Test';
end;

procedure Tfrmmain.CurrentLineWorkCalendar1Click(Sender: TObject);
begin
  if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.create(application);
  frmcurrcal.BringToFront;
  frmcurrcal.windowstate:=wsmaximized;
  if pos('test',application.ExeName)>0 then frmcurrcal.Caption:=frmcurrcal.Caption+' - Test';
end;

procedure Tfrmmain.M1Click(Sender: TObject);
begin
  if frmmwf=nil then frmmwf:=tfrmmwf.create(application);
  frmmwf.BringToFront;
  frmmwf.windowstate:=wsmaximized;
  if pos('test',application.ExeName)>0 then frmmwf.Caption:=frmmwf.Caption+' - Test';
end;

procedure Tfrmmain.McPool1Click(Sender: TObject);
begin
  if frmallmc=nil then frmallmc:=tfrmallmc.create(nil);
  frmallmc.show;
  //if frmmcpool=nil then frmmcpool:=tfrmmcpool.create(nil);
  //frmmcpool.show;
end;

procedure Tfrmmain.LendBorrowSWF1Click(Sender: TObject);
begin
  if frmloan=nil then frmloan:=tfrmloan.create(nil);
  frmloan.show;
end;

procedure Tfrmmain.StationedWorkforcePoolProfile1Click(Sender: TObject);
begin
  if frmswfpool=nil then frmswfpool:=tfrmswfpool.create(nil);
  frmswfpool.show;
  //if frmwfpool=nil then frmwfpool:=tfrmwfpool.create(nil);
  //frmwfpool.show;
end;

procedure Tfrmmain.tbn091Click(Sender: TObject);
begin
  if frmpdn<>nil then begin
    if pos('CARTE',frmpdn.caption)=0 then frmpdn.close;
  end;
  if frmpdn=nil then frmpdn:=tfrmpdn.create(application);
  frmpdn.BringToFront;
  frmpdn.windowstate:=wsmaximized;
  frmpdn.caption:='SWPM - PDN for CARTE';
  if pos('test',application.ExeName)>0 then frmpdn.Caption:=frmpdn.Caption+' - Test';
  frmpdn.dbgrideh2.columns[11].visible:=false;
end;

procedure Tfrmmain.tbn092Click(Sender: TObject);
begin
  if frmpdn<>nil then begin
    if pos('OCEN',frmpdn.caption)=0 then frmpdn.close;
  end;
  if frmpdn=nil then frmpdn:=tfrmpdn.create(application);
  frmpdn.BringToFront;
  frmpdn.windowstate:=wsmaximized;
  frmpdn.caption:='SWPM - PDN for OCEN';
  if pos('test',application.ExeName)>0 then frmpdn.Caption:=frmpdn.Caption+' - Test';
  frmpdn.dbgrideh2.columns[11].visible:=false;
end;

procedure Tfrmmain.tbn09Click(Sender: TObject);
begin
  if frmpdn<>nil then begin
    if pos('CARTE',frmpdn.caption)>0 then frmpdn.close
    else if pos('OCEN',frmpdn.caption)>0 then frmpdn.close;
  end;
  if frmpdn=nil then frmpdn:=tfrmpdn.create(application);
  frmpdn.BringToFront;
  frmpdn.windowstate:=wsmaximized;
  frmpdn.caption:='SWPM - PDN 出貨通知單';
  if pos('test',application.ExeName)>0 then frmpdn.Caption:=frmpdn.Caption+' - Test';
  frmpdn.dbgrideh2.columns[11].visible:=true;
end;

procedure Tfrmmain.AQLFlowSetting1Click(Sender: TObject);
begin
  if frmaqlflow=nil then frmaqlflow:=tfrmaqlflow.create(nil);
  frmaqlflow.show;
end;

procedure Tfrmmain.DailyOperationReportsTopManagement1Click(
  Sender: TObject);
begin
  //if frmdailyreport=nil then frmdailyreport:=tfrmdailyreport.Create(nil);
  //frmdailyreport.ComboBox1.Text:='';
  //frmdailyreport.ComboBox2.Text:='';
  //frmdailyreport.Edit1.Text:='';
  //frmdailyreport.DateEdit1.date:=date-2;
  //frmdailyreport.Show;
  if frmdailyreport1=nil then frmdailyreport1:=tfrmdailyreport1.Create(nil);
  frmdailyreport1.ComboBox1.Text:='';
  frmdailyreport1.ComboBox2.Text:='';
  frmdailyreport1.Edit1.Text:='';
  frmdailyreport1.DateEdit1.date:=date-2;
  frmdailyreport1.Show;
end;

procedure Tfrmmain.MouldforSLOA1Click(Sender: TObject);
begin
  {
  if frm_sloa=nil then frm_sloa:=tfrm_sloa.Create(application);
  frm_sloa.ComboBox1.Text:='SL';
  frm_sloa.ComboBox2.Text:='C';
  frm_sloa.ComboBox3.Text:='TAMA';
  frm_sloa.Edit1.Text:='';
  frm_sloa.DateEdit1.date:=date-2;
  frm_sloa.DateEdit2.date:=date-2;
  frm_sloa.bringtofront;
  frm_sloa.WindowState:=wsNormal;
  }
  if frmoamodule=nil then frmoamodule:=tfrmoamodule.create(application);
  frmoamodule.ComboBox1.Text:='SL';
  frmoamodule.ComboBox2.Text:='C';
  frmoamodule.ComboBox3.Text:='TAMA';
  frmoamodule.DateEdit1.Date:=date-2;
  frmoamodule.DateEdit2.Date:=date-2;
  frmoamodule.bringtofront;
  frmoamodule.windowstate:=wsMaximized;
end;

procedure Tfrmmain.ModuleforMaintenance1Click(Sender: TObject);
begin
  if frmmaintenance=nil then frmmaintenance:=tfrmmaintenance.Create(application);
  frmmaintenance.BringToFront;
  frmmaintenance.WindowState:=wsNormal;
end;

procedure Tfrmmain.ModuleforPMC1Click(Sender: TObject);
begin
  if frmpmcmodule=nil then frmpmcmodule:=tfrmpmcmodule.create(application);
  frmpmcmodule.BringToFront;
  frmpmcmodule.WindowState:=wsMaximized;
end;

procedure Tfrmmain.ProjectedLineWorkCalendar1Click(Sender: TObject);
begin
  if frmprjcal=nil then frmprjcal:=tfrmprjcal.create(application);
  frmprjcal.BringToFront;
  frmprjcal.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmprjcal.Caption:=frmprjcal.Caption+' - Test';
end;

procedure Tfrmmain.ReportforShelley1Click(Sender: TObject);
begin
  if frmshelleydata=nil then frmshelleydata:=tfrmshelleydata.create(nil);
  frmshelleydata.show;
end;

procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);
var
  i,j,temppos: integer;
  str1,str2,strtemp,Table,strwhere: string;
  SavedParams: TParams;
  //strupd:string;
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
          ftstring,ftMemo,ftwidestring:                SavedParams.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
          ftfloat,ftcurrency:                        SavedParams.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
          ftDate:                         SavedParams.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
          ftTime:                         SavedParams.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
          ftDateTime,fttimestamp:                     SavedParams.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
          ftBoolean:                      SavedParams.CreateParam(ftboolean,DataSet.Fields[i].FieldName,ptinput);
        else
          showmessage('note: Unknown FieldType!');
        end;
        SavedParams.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].Value;
      end;
    end;
    setlength(strwhere,length(strwhere)-5);
    Screen.Cursor:=crHourGlass;
    with frmmain.ClientDataSet do begin
      close;
      params.clear;
      commandtext:='select * from '+Table+strwhere;
      params.Assign(SavedParams);
      SavedParams.AssignValues(Params);
      open;
      if Recordcount>0 then begin
        strwhere:='  where ';
        for i:=0 to DataSet.FieldCount-1 do begin
          if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then begin
            {
            strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc: SavedParams.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
              ftstring,ftMemo:                SavedParams.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
              ftfloat:                        SavedParams.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
              ftDate:                         SavedParams.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
              ftTime:                         SavedParams.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
              ftDateTime:                     SavedParams.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
              ftBoolean:                      SavedParams.CreateParam(ftboolean,DataSet.Fields[i].FieldName,ptinput);
            else
              showmessage('note: Unknown FieldType!');
            end;
            SavedParams.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].Value;
            }
            case DataSet.Fields[i].DataType of
              ftsmallint,ftinteger,ftautoinc,ftfloat,ftcurrency:
              strwhere:=strwhere+dataset.Fields[i].FieldName+'='+dataset.Fields[i].AsString+' and ';
              ftboolean:
              if dataset.Fields[i].Value=true then
              strwhere:=strwhere+dataset.Fields[i].FieldName+'=1 and '
              else strwhere:=strwhere+dataset.Fields[i].FieldName+'=0 and ';
              ftstring,ftwidestring,ftmemo:
              strwhere:=strwhere+dataset.Fields[i].FieldName+'='''+dataset.Fields[i].value+''' and ';
              ftdate,ftdatetime:
              strwhere:=strwhere+dataset.Fields[i].FieldName+'='''+formatdatetime('yyyy-MM-dd',dataset.Fields[i].value)+''' and ';
              fttime:
              strwhere:=strwhere+dataset.Fields[i].FieldName+'='''+formatdatetime('hh:nn:ss',dataset.Fields[i].value)+''' and ';
            else begin
              //showmessage(dataset.Fields[i].FieldName);
              showmessage('note: Unknown FieldType!');
            end;
            end;
          end;
        end;
        setlength(strwhere,length(strwhere)-5);
        //close;
        //params.clear;
        str1:='update '+Table+' set ';
        j:=0;
        for i:=0 to DataSet.FieldCount-1 do begin
          if DataSet.Fields[i].FieldKind=fkLookup then continue;
          if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then
          else begin
            case DataSet.Fields[i].DataType of
              {
              ftSmallint,ftinteger,ftAutoInc: params.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
              ftstring,ftMemo:                params.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
              ftfloat:                        params.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
              ftDate:                         params.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
              ftTime:                         params.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
              ftDateTime:                     params.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
              ftBoolean:                      params.CreateParam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
              }
              ftsmallint,ftinteger,ftautoinc,ftfloat,ftcurrency,ftBCD:
              if dataset.Fields[i].IsNull then
              str1:=str1+dataset.Fields[i].FieldName+'=0,'
              else str1:=str1+dataset.Fields[i].FieldName+'='+dataset.Fields[i].AsString+',';
              ftboolean:
              if dataset.Fields[i].isnull then
              str1:=str1+dataset.Fields[i].FieldName+'=0,'
              else begin
              if dataset.Fields[i].Value=true then
              str1:=str1+dataset.Fields[i].FieldName+'=1,'
              else str1:=str1+dataset.fields[i].FieldName+'=0,';
              end;
              ftstring,ftwidestring,ftmemo:
              if dataset.Fields[i].IsNull then
              str1:=str1+dataset.Fields[i].FieldName+'='''','
              else begin
                if pos('''s',dataset.Fields[i].value)>0 then
                str1:=str1+dataset.Fields[i].FieldName+'='''+copy(dataset.Fields[i].value,1,pos('''s',dataset.Fields[i].value)-1)+'''''s'+copy(dataset.Fields[i].value,pos('''s',dataset.Fields[i].value)+2,length(dataset.Fields[i].value)-pos('''s',dataset.Fields[i].value))+''','
                else str1:=str1+dataset.Fields[i].FieldName+'='''+dataset.Fields[i].value+''',';
              end;
              ftdate,ftdatetime,fttimestamp:
              if dataset.Fields[i].IsNull then
              str1:=str1+dataset.Fields[i].FieldName+'=null,'
              else str1:=str1+dataset.Fields[i].FieldName+'='''+formatdatetime('yyyy-MM-dd',dataset.Fields[i].value)+''',';
              fttime:
              if dataset.Fields[i].IsNull then
              str1:=str1+dataset.Fields[i].FieldName+'=null,'
              else str1:=str1+dataset.Fields[i].FieldName+'='''+formatdatetime('hh:nn:ss',dataset.Fields[i].value)+''',';
            else
              showmessage('note: Unknown FieldType!');
            end;
            {
            if DataSet.Fields[i].IsNull then begin
              if DataSet.Fields[i].DataType=ftBoolean then params[j].value:=False;
            end else begin
              params[j].value:=DataSet.Fields[i].value;
            end;
            str1:=str1+DataSet.fields[i].fieldname+'=:';
            str1:=str1+DataSet.Fields[i].FieldName+',';
            }
            j:=j+1;
          end;
        end;
        {
        for i:=0 to SavedParams.Count-1 do begin
          params.CreateParam(SavedParams[i].DataType,SavedParams[i].Name,ptinput);
          params[j+i].value:=SavedParams[i].Value;
        end;
        str1:=copy(str1,1,length(str1)-1)+' '+strwhere;
        commandtext:=str1;
        execute;}
        str1:=copy(str1,1,length(str1)-1)+' '+strwhere;
        //showmessage(str1);
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
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
            ftDateTime,fttimestamp:                       params.createparam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
            ftstring,ftMemo,ftwidestring:                  params.createparam(ftString,DataSet.Fields[i].FieldName,ptinput);
            ftfloat,ftcurrency,ftBCD:                          params.createparam(ftFloat,DataSet.Fields[i].FieldName,ptinput);
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
        commandtext:=str2+')'+str1+')';
        execute;
      end;
    end;
  finally
    SavedParams.Free;
    Screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmmain.DataReplicationEnquiry1Click(Sender: TObject);
begin
  if frmdb_rep=nil then frmdb_rep:=tfrmdb_rep.create(nil);
  with frmdb_rep.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_replication';
    open;
  end;
  frmdb_rep.DateEdit1.Date:=date;
  frmdb_rep.Show;
end;

procedure Tfrmmain.dWFDeployBoard1Click(Sender: TObject);
begin
  if frmdWFDeployBoard=nil then frmdWFDeployBoard:=TfrmdWFDeployBoard.create(application);
  frmdWFDeployBoard.bringtofront;
  frmdWFDeployBoard.Dateedit1.Date:=date;
  frmdWFDeployBoard.windowstate:=wsMaximized;
end;

procedure Tfrmmain.PackingPlan1Click(Sender: TObject);
begin
  {
  if frmpackingplan=nil then frmpackingplan:=tfrmpackingplan.create(application);
  frmpackingplan.BringToFront;
  frmpackingplan.WindowState:=wsMaximized;
  frmpackingplan.DateEdit1.Date:=date;
  }
  if frmpackplan=nil then frmpackplan:=tfrmpackplan.create(application);
  frmpackplan.bringtofront;
  frmpackplan.windowstate:=wsMaximized;
end;

procedure Tfrmmain.PPBonding1Click(Sender: TObject);
begin
  if frmotherqn=nil then frmotherqn:=tfrmotherqn.create(application);
  frmotherqn.tblshedule.active:=false;
  frmotherqn.combobox1.text:='PP - Front Phase Bonding Team';
  frmotherqn.combobox1.enabled:=false;
  frmotherqn.caption:='PP - Front Phase Bonding Team';
  frmotherqn.BringToFront;
  frmotherqn.WindowState:=wsMaximized;
end;

procedure Tfrmmain.PPPadPrintandWeldingTeam1Click(Sender: TObject);
begin
  if frmotherqn=nil then frmotherqn:=tfrmotherqn.create(application);
  frmotherqn.tblshedule.active:=false;
  frmotherqn.combobox1.text:='PP - Pad Print and Welding Team';
  frmotherqn.combobox1.enabled:=false;
  frmotherqn.caption:='PP - Pad Print and Welding Team';
  frmotherqn.BringToFront;
  frmotherqn.WindowState:=wsMaximized;
end;

procedure Tfrmmain.PPShoulderStrapMaking1Click(Sender: TObject);
begin
  if frmotherqn=nil then frmotherqn:=tfrmotherqn.create(application);
  frmotherqn.tblshedule.active:=false;
  frmotherqn.combobox1.text:='PP - Strap Making Team';
  frmotherqn.combobox1.enabled:=false;
  frmotherqn.caption:='PP - Strap Making Team';
  frmotherqn.BringToFront;
  frmotherqn.WindowState:=wsMaximized;
end;

procedure Tfrmmain.ENGCHNVERSION1Click(Sender: TObject);
begin
  if frmver_engchn=nil then frmver_engchn:=tfrmver_engchn.Create(application);
  frmver_engchn.BringToFront;
  frmver_engchn.WindowState:=wsMaximized;
  frmver_engchn.ComboBox1.Text:='GAI';
end;

function Tfrmmain.fact(const n: Integer): integer;
begin
  if n=1 then result:=n
  else if n>1 then result:=n*fact(n-1)
  else result:=-1;
end;

procedure Tfrmmain.CreateNewUser1Click(Sender: TObject);
var
  md5: TMD5Digest;
  md5pwd,s1,s2,s3,s4:string;
begin
  s1:=inputbox('Create New User ID:','Please input user id:','');
  if s1>'' then begin
    s2:=s1;
    s4:=inputbox('Create New User ID:','Please input user''s dept:','');
    s3:='123';
    MD5String(s3, @md5);
    md5pwd:=LowerCase(MD5DigestToStr(md5));
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='insert into tbluser(usr,passwrd,pwd,dept) values(:x1,:x2,:x3,:x4)';
      params[0].asstring:=uppercase(trim(s2));
      params[1].asstring:=s3;
      params[2].asstring:=md5pwd;
      params[3].asstring:=s4;
      execute;
    end;
    showmessage('Created new user, default password is "123"!');
  end;
end;

procedure Tfrmmain.OperationforPackingPlan1Click(Sender: TObject);
begin
  if frmpackopt=nil then frmpackopt:=tfrmpackopt.Create(application);
  frmpackopt.BringToFront;
  frmpackopt.WindowState:=wsMaximized;
  frmpackopt.Pagecontrol1.ActivePageIndex:=0;
end;

procedure Tfrmmain.FormDestroy(Sender: TObject);
begin
  //log off
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and enddt is null';
          params[0].AsDateTime:=now;
          params[1].asinteger:=spinedit1.Value;
          execute;
        end;
  }
end;

procedure Tfrmmain.ViewLogging1Click(Sender: TObject);
begin
  if frmlogging=nil then frmlogging:=tfrmlogging.create(nil);
  frmlogging.show;
end;

function Tfrmmain.weekno(const dt: tdatetime): integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1=:x1';
    params[0].asdate:=dt;
    open;
    result:=fieldbyname('wkno').value;
  end;
end;

procedure Tfrmmain.Logging1Click(Sender: TObject);
begin
  if frmlogging=nil then frmlogging:=tfrmlogging.create(nil);
  frmlogging.show;
end;

procedure Tfrmmain.CapacityPlanningNew1Click(Sender: TObject);
begin
  if frmnewcap=nil then frmnewcap:=tfrmnewcap.create(nil);
  frmnewcap.caption:='Capacity Planning - Application';
  frmnewcap.show;
  if pos('test',application.ExeName)>0 then frmnewcap.Caption:=frmnewcap.Caption+' - Test';
end;

procedure Tfrmmain.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString:='FILE NAME='+extractfilepath(application.ExeName)+'SQL_CONN.udl';
end;

procedure Tfrmmain.N24Click(Sender: TObject);
begin
  tbn21click(self);
end;

procedure Tfrmmain.N25Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if frmeffsetup=nil then frmeffsetup:=tfrmeffsetup.create(application);
  with frmeffsetup.tbleffmaster do begin
    close;
    params.clear;
    commandtext:='select * from tbl_eff_master where fty_seq<10';
    open;
  end;
  with frmeffsetup.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_eff_master_marks';
    open;
  end;
  frmeffsetup.BringToFront;
  frmeffsetup.WindowState:=wsMaximized;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmmain.N26Click(Sender: TObject);
begin
  //
  if frmftylearn=nil then frmftylearn:=tfrmftylearn.create(application);
  //frmftylearn.combobox1.text:='SL';
  frmftylearn.bringtofront;
  frmftylearn.WindowState:=wsMaximized;
end;

procedure Tfrmmain.N27Click(Sender: TObject);
begin
  if frmwscalendar=nil then frmwscalendar:=tfrmwscalendar.create(application);
  frmwscalendar.bringtofront;
  frmwscalendar.caption:='Workshop Calendar';
  frmwscalendar.dbgrideh1.columns[14].visible:=false;
  frmwscalendar.dbgrideh1.columns[15].visible:=false;
  frmwscalendar.dbgrideh1.columns[16].visible:=false;
  frmwscalendar.dbgrideh1.columns[17].visible:=false;
  frmwscalendar.WindowState:=wsMaximized;
end;

procedure Tfrmmain.N28Click(Sender: TObject);
begin
  if frmpdn_dest=nil then frmpdn_dest:=tfrmpdn_dest.create(application);
  with frmpdn_dest.ADODataSet1 do begin
    close;
    commandtext:='select * from phdb..tbl_pdn_dest';
    open;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    params.createparam(ftstring,'pwd',ptinput);
    commandtext:='select r58 from tbluser where upper(usr)=:usr and upper(passwrd)=:pwd';
    params[0].asstring:=combobox1.text;
    params[1].asstring:=edit1.text;
    open;
    if fieldbyname('r58').value=true then begin
      frmpdn_dest.dbgrideh1.readonly:=false;
      frmpdn_dest.bitbtn1.enabled:=true;
      frmpdn_dest.bitbtn2.enabled:=true;
      frmpdn_dest.bitbtn3.enabled:=true;
    end else begin
      frmpdn_dest.dbgrideh1.readonly:=true;
      frmpdn_dest.bitbtn1.enabled:=false;
      frmpdn_dest.bitbtn2.enabled:=false;
      frmpdn_dest.bitbtn3.enabled:=false;
    end;
  end;
  frmpdn_dest.bringtofront;
  frmpdn_dest.WindowState:=wsMaximized;
end;

procedure Tfrmmain.Cart1Click(Sender: TObject);
begin
  if frmcartonmeasurement=nil then frmcartonmeasurement:=tfrmcartonmeasurement.Create(nil);
  with frmcartonmeasurement.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_cbm';
    open;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    params.createparam(ftstring,'pwd',ptinput);
    commandtext:='select r58 from tbluser where upper(usr)=:usr and upper(passwrd)=:pwd';
    params[0].asstring:=combobox1.text;
    params[1].asstring:=edit1.text;
    open;
    if fieldbyname('r58').value=true then begin
      frmcartonmeasurement.dbgrideh1.readonly:=false;
      frmcartonmeasurement.bitbtn1.enabled:=true;
      frmcartonmeasurement.bitbtn3.enabled:=true;
      frmcartonmeasurement.bitbtn4.enabled:=true;
    end else begin
      frmcartonmeasurement.dbgrideh1.readonly:=true;
      frmcartonmeasurement.bitbtn1.enabled:=false;
      frmcartonmeasurement.bitbtn3.enabled:=false;
      frmcartonmeasurement.bitbtn4.enabled:=false;
    end;
  end;
  frmcartonmeasurement.Show;
end;

procedure Tfrmmain.LWPMCoreTech1Click(Sender: TObject);
begin
  if frmcoretech=nil then frmcoretech:=tfrmcoretech.Create(application);
  frmcoretech.BringToFront;
  frmcoretech.WindowState:=wsMaximized;
end;

procedure Tfrmmain.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then siLang1.Language:=combobox2.text;
end;

procedure Tfrmmain.ModuleforLineLeader1Click(Sender: TObject);
begin
  if frmlineleader=nil then frmlineleader:=tfrmlineleader.create(nil);
  frmlineleader.show;
end;

procedure Tfrmmain.AssemblySpecific1Click(Sender: TObject);
begin
  N7Click(self);
end;

procedure Tfrmmain.AssemblySpecific2Click(Sender: TObject);
begin
  LWPMGoachievement1Click(self);
end;

procedure Tfrmmain.Assembly1Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  worksheet1.speedbutton1.Visible:=true;
  //worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  //worksheet1.Caption:='計劃與排程(主板) - 應用程式';
  worksheet1.Caption:=worksheet1.caption+' - AL Ws';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
  worksheet1.lbl850.Caption:='SPE';
  //worksheet1.Caption:=worksheet1.Caption+' - Assembly';
end;

procedure Tfrmmain.Assembly2Click(Sender: TObject);
begin
  if frmachieving=nil then frmachieving:=tfrmachieving.create(application);
  {
  if (frmmain.eng_chn01.ItemIndex=1) then begin
    frmachieving.opt1.Items.Clear;
    with query10 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_ver_engchn where f_mod=''GAI'' and f_frm=''WGAI'' order by f_lbl_grd,f_xh';
      open;
      first;
      while not eof do begin
        if (fieldbyname('f_lbl_grd').value='LABEL') then begin
          if fieldbyname('f_xh').value=0 then frmachieving.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=1 then frmachieving.label4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmachieving.label1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmachieving.label3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.label2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=6 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=7 then frmachieving.bitbtn1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmachieving.bitbtn2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.bitbtn3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.bitbtn4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.bitbtn5.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.bitbtn6.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.bitbtn7.Caption:=fieldbyname('f_chn').value;
        end else if (fieldbyname('f_lbl_grd').value='GRID') then begin
          if fieldbyname('f_xh').value=1 then frmachieving.DBGridEh1.Columns[0].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=2 then frmachieving.DBGridEh1.Columns[1].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=3 then frmachieving.DBGridEh1.Columns[2].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.DBGridEh1.Columns[3].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=5 then frmachieving.DBGridEh1.Columns[4].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=6 then frmachieving.DBGridEh1.Columns[5].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=7 then frmachieving.DBGridEh1.Columns[6].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=8 then frmachieving.DBGridEh1.Columns[7].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.DBGridEh1.Columns[8].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.DBGridEh1.Columns[9].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.DBGridEh1.Columns[10].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.DBGridEh1.Columns[11].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.DBGridEh1.Columns[12].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=14 then frmachieving.DBGridEh1.Columns[13].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=15 then frmachieving.DBGridEh1.Columns[14].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=16 then frmachieving.DBGridEh1.Columns[15].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=17 then frmachieving.DBGridEh1.Columns[16].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=18 then frmachieving.DBGridEh1.Columns[17].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=19 then frmachieving.DBGridEh1.Columns[18].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=20 then frmachieving.DBGridEh1.Columns[19].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=21 then frmachieving.DBGridEh1.Columns[20].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=22 then frmachieving.DBGridEh1.Columns[21].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=23 then frmachieving.DBGridEh1.Columns[22].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=24 then frmachieving.DBGridEh1.Columns[23].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=25 then frmachieving.DBGridEh1.Columns[24].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=26 then frmachieving.DBGridEh1.Columns[25].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=27 then frmachieving.DBGridEh1.Columns[26].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=28 then frmachieving.DBGridEh1.Columns[27].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=29 then frmachieving.DBGridEh1.Columns[28].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=30 then frmachieving.DBGridEh1.Columns[29].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=31 then frmachieving.DBGridEh1.Columns[30].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=32 then frmachieving.DBGridEh1.Columns[31].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=33 then frmachieving.DBGridEh1.Columns[32].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=34 then frmachieving.DBGridEh1.Columns[35].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=35 then frmachieving.DBGridEh1.Columns[36].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=36 then frmachieving.DBGridEh1.Columns[37].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=37 then frmachieving.DBGridEh1.Columns[38].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=38 then frmachieving.DBGridEh1.Columns[39].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=39 then frmachieving.DBGridEh1.Columns[40].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=40 then frmachieving.DBGridEh1.Columns[41].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=41 then frmachieving.DBGridEh1.Columns[42].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=42 then frmachieving.DBGridEh1.Columns[43].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=43 then frmachieving.DBGridEh1.Columns[44].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=44 then frmachieving.DBGridEh1.Columns[45].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=45 then frmachieving.DBGridEh1.Columns[46].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=46 then frmachieving.DBGridEh1.Columns[47].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=47 then frmachieving.DBGridEh1.Columns[48].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=48 then frmachieving.DBGridEh1.Columns[49].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=49 then frmachieving.DBGridEh1.Columns[50].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=50 then frmachieving.DBGridEh1.Columns[33].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=51 then frmachieving.DBGridEh1.Columns[34].Title.caption:=fieldbyname('f_chn').value;
        end;
        //application.ProcessMessages;
        next;
      end;
    end;
  end;
  }
  //frmachieving.opt1.ItemIndex:=0;
  frmachieving.bringtofront;
  frmachieving.WindowState:=wsMaximized;
  //if pos('test',application.ExeName)>0 then frmachieving.Caption:=frmachieving.Caption+' - Test';
  frmachieving.lbl850.Caption:='SPE';
  //frmachieving.Caption:='達標 (GA) - 應用程式 - AL工場';
  {
  if not clientdataset1.fieldbyname('r_ppw').isnull then begin
    if clientdataset1.fieldbyname('r_ppw').value=true then frmachieving.label12.caption:='1'
    else frmachieving.label12.caption:='0';
  end;
  }
  frmachieving.Caption:='850 GAI - AL Ws';//frmachieving.caption+'850 GAI - AL Ws';
  frmachieving.dbgrideh1.Columns[15].FieldName:='MPSECT_SP';
  frmachieving.dbgrideh1.Columns[18].FieldName:='D_SECT_SP';
  frmachieving.dbgrideh1.Columns[19].FieldName:='EOT_SP';
  frmachieving.dbgrideh1.Columns[20].FieldName:='CSECT_SP';
  frmachieving.dbgrideh1.Columns[22].FieldName:='GSL1_SP';
  frmachieving.dbgrideh1.Columns[33].FieldName:='D_SECT';
  frmachieving.dbgrideh1.Columns[34].FieldName:='PRJ1_SP';
  frmachieving.dbgrideh1.Columns[35].FieldName:='AQTY_SP';
  frmachieving.dbgrideh1.Columns[36].FieldName:='DBL_SP';
  frmachieving.dbgrideh1.Columns[49].FieldName:='XLBX_SP';
  frmachieving.dbgrideh1.Columns[50].FieldName:='XLBX_LJ1_SP';
  frmachieving.dbgrideh1.Columns[51].FieldName:='XLBX_LJ_SP';
  frmachieving.dbgrideh1.Columns[52].FieldName:='YCBX_SP';
  frmachieving.dbgrideh1.Columns[53].FieldName:='YCBX_LJ1_SP';
  frmachieving.dbgrideh1.Columns[54].FieldName:='YCBX_LJ_SP';
  frmachieving.dbgrideh1.Columns[55].FieldName:='ZYCBX_SP';
  frmachieving.dbgrideh1.Columns[56].FieldName:='ZYCBX_LJ1_SP';
  frmachieving.dbgrideh1.Columns[57].FieldName:='ZYCBX_LJ_SP';
  frmachieving.dbgrideh1.Columns[71].FieldName:='EFF2_SP';
  frmachieving.dbgrideh1.Columns[73].FieldName:='EFF3_SP';
end;

end.
