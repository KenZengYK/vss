unit PH_Library_Intf;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ Do not modify this unit manually, or your changes will be lost when this   }
{ unit is regenerated the next time you compile the project.                 }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {vcl:} Classes, TypInfo,
  {RemObjects:} uROXMLIntf, uROClasses, uROClient, uROTypes, uROClientIntf;

const
  { Library ID }
  LibraryUID = '{DD536D90-100C-44DF-B23D-2126AE68AE82}';
  TargetNamespace = '';

  { Service Interface ID's }
  IPHService_IID : TGUID = '{C74A4CD1-B1E0-498F-A179-422B29C409ED}';

  { Event ID's }

type
  TSeekOrigin = Classes.TSeekOrigin; // fake declaration
  { Forward declarations }
  IPHService = interface;


  { IPHService }
  IPHService = interface
    ['{C74A4CD1-B1E0-498F-A179-422B29C409ED}']
    function Sum(const A: Integer; const B: Integer): Integer;
    function UpdateSQL(const sqlstm: Widestring): Integer;
    function GetServerTime: DateTime;
    function UpdateLWPM(const sqlstm: Widestring): Integer;
  end;

  { CoPHService }
  CoPHService = class
    class function Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IPHService;
  end;

  { TPHService_Proxy }
  TPHService_Proxy = class(TROProxy, IPHService)
  protected
    function __GetInterfaceName:string; override;

    function Sum(const A: Integer; const B: Integer): Integer;
    function UpdateSQL(const sqlstm: Widestring): Integer;
    function GetServerTime: DateTime;
    function UpdateLWPM(const sqlstm: Widestring): Integer;
  end;

implementation

uses
  {vcl:} SysUtils,
  {RemObjects:} uROEventRepository, uROSerializer, uRORes;

{ CoPHService }

class function CoPHService.Create(const aMessage: IROMessage; aTransportChannel: IROTransportChannel): IPHService;
begin
  result := TPHService_Proxy.Create(aMessage, aTransportChannel);
end;

{ TPHService_Proxy }

function TPHService_Proxy.__GetInterfaceName:string;
begin
  result := 'PHService';
end;

function TPHService_Proxy.Sum(const A: Integer; const B: Integer): Integer;
begin
  try
    __Message.InitializeRequestMessage(__TransportChannel, 'PH_Library', __InterfaceName, 'Sum');
    __Message.Write('A', TypeInfo(Integer), A, []);
    __Message.Write('B', TypeInfo(Integer), B, []);
    __Message.Finalize;

    __TransportChannel.Dispatch(__Message);

    __Message.Read('Result', TypeInfo(Integer), result, []);
  finally
    __Message.UnsetAttributes(__TransportChannel);
    __Message.FreeStream;
  end
end;

function TPHService_Proxy.UpdateSQL(const sqlstm: Widestring): Integer;
begin
  try
    __Message.InitializeRequestMessage(__TransportChannel, 'PH_Library', __InterfaceName, 'UpdateSQL');
    __Message.Write('sqlstm', TypeInfo(Widestring), sqlstm, []);
    __Message.Finalize;

    __TransportChannel.Dispatch(__Message);

    __Message.Read('Result', TypeInfo(Integer), result, []);
  finally
    __Message.UnsetAttributes(__TransportChannel);
    __Message.FreeStream;
  end
end;

function TPHService_Proxy.GetServerTime: DateTime;
begin
  try
    __Message.InitializeRequestMessage(__TransportChannel, 'PH_Library', __InterfaceName, 'GetServerTime');
    __Message.Finalize;

    __TransportChannel.Dispatch(__Message);

    __Message.Read('Result', TypeInfo(DateTime), result, [paIsDateTime]);
  finally
    __Message.UnsetAttributes(__TransportChannel);
    __Message.FreeStream;
  end
end;

function TPHService_Proxy.UpdateLWPM(const sqlstm: Widestring): Integer;
begin
  try
    __Message.InitializeRequestMessage(__TransportChannel, 'PH_Library', __InterfaceName, 'UpdateLWPM');
    __Message.Write('sqlstm', TypeInfo(Widestring), sqlstm, []);
    __Message.Finalize;

    __TransportChannel.Dispatch(__Message);

    __Message.Read('Result', TypeInfo(Integer), result, []);
  finally
    __Message.UnsetAttributes(__TransportChannel);
    __Message.FreeStream;
  end
end;

initialization
  RegisterProxyClass(IPHService_IID, TPHService_Proxy);


finalization
  UnregisterProxyClass(IPHService_IID);


end.
