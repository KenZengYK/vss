// 
// Created by the DataSnap proxy generator.
// 

unit ServerMethods1Client;

interface

uses DBXCommon, DBXJSON, Classes, SysUtils, DB, SqlExpr, DBXDBReaders;

type
  TServerMethods1Client = class
  private
    FDBXConnection: TDBXConnection;
    FInstanceOwner: Boolean;
    FEchoStringCommand: TDBXCommand;
    FIBExecSQLCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function IBExecSQL(Value: WideString): Integer;
  end;

implementation

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.IBExecSQL(Value: WideString): Integer;
begin
  if FIBExecSQLCommand = nil then
  begin
    FIBExecSQLCommand := FDBXConnection.CreateCommand;
    FIBExecSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIBExecSQLCommand.Text := 'TServerMethods1.IBExecSQL';
    FIBExecSQLCommand.Prepare;
  end;
  FIBExecSQLCommand.Parameters[0].Value.SetWideString(Value);
  FIBExecSQLCommand.ExecuteUpdate;
  Result := FIBExecSQLCommand.Parameters[1].Value.GetInt32;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
  FInstanceOwner := True;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
  FInstanceOwner := AInstanceOwner;
end;


destructor TServerMethods1Client.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FIBExecSQLCommand);
  inherited;
end;

end.
