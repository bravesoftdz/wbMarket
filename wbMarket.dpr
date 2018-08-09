program wbMarket;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  uControllerConnection in 'Controller\uControllerConnection.pas',
  uConnection in 'DAO\uConnection.pas',
  uFrmBaseCadastro in 'View\uFrmBaseCadastro.pas' {FrmBaseCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmBaseCadastro, FrmBaseCadastro);
  Application.Run;
end.
