unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    imgBackgroundTOP: TImage;
    imgBackgroundMenu: TImage;
    imgwbMarket: TImage;
    btnCadastro: TSpeedButton;
    imgCadastro: TImage;
    btnVendas: TSpeedButton;
    btnFinanceiro: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnConfiguracao: TSpeedButton;
    btnSair: TSpeedButton;
    imgVendas: TImage;
    imgFinanceiro: TImage;
    imgRelatorios: TImage;
    imgConfiguracoes: TImage;
    imgSair: TImage;
    procedure imgCloseClick(Sender: TObject);
    procedure imgBackgroundTOPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBackgroundTOPDblClick(Sender: TObject);
    procedure imgMinizarClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uFrmBaseCadastro;

{$R *.dfm}

procedure TFrmPrincipal.btnCadastroClick(Sender: TObject);
var
  lBaseCadastro: TFrmBaseCadastro;
begin
  lBaseCadastro := TFrmBaseCadastro.Create(nil);
  try
    lBaseCadastro.ShowModal;
  finally
    FreeAndNil(lBaseCadastro);
  end;
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente sair do sistema ?', 'Aten��o', MB_ICONQUESTION + MB_YESNO) = mrYes then
    Application.Terminate;
end;

procedure TFrmPrincipal.imgBackgroundTOPDblClick(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TFrmPrincipal.imgBackgroundTOPMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TFrmPrincipal.imgCloseClick(Sender: TObject);
begin
  Close();
end;

procedure TFrmPrincipal.imgMinizarClick(Sender: TObject);
begin
  WindowState := wsMinimized;
end;

end.
