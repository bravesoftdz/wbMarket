unit uConnection;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;

type
  TConnection = class
  private
    FDConenction: TFDConnection;

    procedure ConfigConnection();
  public
    function GetQuery(): TFDQuery;
    function GetConnection(): TFDConnection;

    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TConnection }

procedure TConnection.ConfigConnection();
begin
  FDConenction.Params.DriverID := 'PG';
  FDConenction.Params.Values['DataBase'] := 'wbMarket';
  FDConenction.Params.Values['UserName'] := 'postgres';
  FDConenction.Params.Values['Password'] := '#abc123#';
  FDConenction.Params.Values['Server']   := 'localhost';
  FDConenction.Params.Values['Port']     := '5342';
  FDConenction.LoginPrompt := False;
end;

constructor TConnection.Create;
begin
  FDConenction := TFDConnection.Create(nil);
  Self.ConfigConnection();
end;

destructor TConnection.Destroy;
begin
  FreeAndNil(FDConenction);
  inherited;
end;

function TConnection.GetConnection: TFDConnection;
begin
  Result := FDConenction;
end;

function TConnection.GetQuery: TFDQuery;
var
  lQuery: TFDQuery;
begin
  lQuery := TFDQuery.Create(nil);
  lQuery.Connection := FDConenction;
  Result := lQuery;
end;

end.
