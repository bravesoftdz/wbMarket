unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    imgBackgroundTOP: TImage;
    imgBackgroundMenu: TImage;
    imgClose: TImage;
    imgMinizar: TImage;
    procedure imgCloseClick(Sender: TObject);
    procedure imgBackgroundTOPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBackgroundTOPDblClick(Sender: TObject);
    procedure imgMinizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

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
