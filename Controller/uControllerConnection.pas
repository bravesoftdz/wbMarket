unit uControllerConnection;

interface

uses
  uConnection, System.SysUtils;

type
  TControllerConn = class
  private
    FConnection: TConnection;

    class var FInstance: TControllerConn;
  public
    class function GetInstace(): TControllerConn;

    property Connection: TConnection read FConnection write FConnection;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerConn }

constructor TControllerConn.Create;
begin
  FConnection := TConnection.Create;
end;

destructor TControllerConn.Destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

class function TControllerConn.GetInstace: TControllerConn;
begin
  if Assigned(Self.FInstance) then
    Self.FInstance := TControllerConn.Create;

  Result := Self.FInstance;
end;

end.
