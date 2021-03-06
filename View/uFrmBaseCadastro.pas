unit uFrmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask;

type
  TFrmBaseCadastro = class(TForm)
    imgwbMarket: TImage;
    imgBackgroundMenu: TImage;
    imgBackgroundTOP: TImage;
    pnlCentral: TPanel;
    imgUp: TImage;
    imgBaseDown: TImage;
    pgcPrincipal: TPageControl;
    tsPrincipal: TTabSheet;
    tsUsuario: TTabSheet;
    tsPessoa: TTabSheet;
    tsProduto: TTabSheet;
    tsEmpresa: TTabSheet;
    pgcUsuario: TPageControl;
    tsViewUsuario: TTabSheet;
    tsCadastroUsuario: TTabSheet;
    pgcPessoas: TPageControl;
    tsViewPessoas: TTabSheet;
    pgcProdutos: TPageControl;
    tsViewProduto: TTabSheet;
    tsCadastroProduto: TTabSheet;
    btnSair: TSpeedButton;
    imgHome: TImage;
    imgUsuarios: TImage;
    btnUsuarios: TSpeedButton;
    imgPessoas: TImage;
    btnPessoas: TSpeedButton;
    imgProdutos: TImage;
    btnProdutos: TSpeedButton;
    btnEmpresa: TSpeedButton;
    imgEmpresa: TImage;
    btnPesquisar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    imgPesquisar: TImage;
    imgCadastrar: TImage;
    btnVoltar: TSpeedButton;
    imgVoltar: TImage;
    grpPesquisaUsuario: TGroupBox;
    edtPesquisaUsuario: TEdit;
    cbbTipoUsuario: TComboBox;
    lblPesquisaporUsuario: TLabel;
    lblPesquisarUsuario: TLabel;
    btnPesquisarUsuario: TSpeedButton;
    imgPesquisarUsuario: TImage;
    dbgrdUsuarios: TDBGrid;
    grpButtonUsuarios: TGroupBox;
    imgNovoUsuario: TImage;
    btnNovoUsuario: TSpeedButton;
    btnEditarUsuario: TSpeedButton;
    imgEditarUsuario: TImage;
    imgExcluirUsuario: TImage;
    btnExcluirUsuario: TSpeedButton;
    grpButtonsPesquisarPessoas: TGroupBox;
    btnNovoPessoas: TSpeedButton;
    imgNovoPessoas: TImage;
    btnEditarPessoas: TSpeedButton;
    imgEditarPessoas: TImage;
    btnExcluirPessoas: TSpeedButton;
    imgExcluirPessoas: TImage;
    dbgrdPesquisarPessoas: TDBGrid;
    grpButtonsPesquisaProduto: TGroupBox;
    btnNovoProduto: TSpeedButton;
    imgNovoProduto: TImage;
    btnEditarProduto: TSpeedButton;
    imgEditarProduto: TImage;
    btnExcluirProduto: TSpeedButton;
    imgExcluirProduto: TImage;
    dbgrdPesquisaProduto: TDBGrid;
    grpCadastroUsuario: TGroupBox;
    lblNomeUsuario: TLabel;
    edtNomeUsuario: TEdit;
    lblLoginUsuario: TLabel;
    edtLoginUsuario: TEdit;
    lblSenhaUsuario: TLabel;
    edtSenhaUsuario: TEdit;
    edtCOnfirmarSenhaUsuario: TEdit;
    lblConfirmaSenhaUsuario: TLabel;
    lblEmailUsuario: TLabel;
    edtEmailUsuario: TEdit;
    grpPermissaoUsuario: TGroupBox;
    GroupBox2: TGroupBox;
    btnSalvarUsuario: TSpeedButton;
    imgSalvarUsuario: TImage;
    btnCancelarUsuario: TSpeedButton;
    imgCancelarUsuario: TImage;
    GroupBox3: TGroupBox;
    btnSalvarProduto: TSpeedButton;
    imgSalvarProduto: TImage;
    btnCancelarProduto: TSpeedButton;
    imgCancelarProduto: TImage;
    tsCadastroPessoas: TTabSheet;
    GroupBox1: TGroupBox;
    btnSalvarPessoas: TSpeedButton;
    imgSalvarPessoas: TImage;
    btnCancelarPessoas: TSpeedButton;
    imgCancelarPessoas: TImage;
    grpTipoCadastroPessoa: TGroupBox;
    cbbTipoCadastroPessoa: TComboBox;
    lblTipoCadastroPessoa: TLabel;
    DateTimePicker1: TDateTimePicker;
    lblDataCadastro: TLabel;
    grpCadastroPessoa: TGroupBox;
    lblNomeCadastroPessoa: TLabel;
    edtNomeCadastroPessoa: TEdit;
    edtCPFCadastroPessoa: TMaskEdit;
    lblCPFCadastroPessoa: TLabel;
    grpFotoCadastroPessoa: TGroupBox;
    imgCadastroPessoa: TImage;
    btnFotoCadastroPessoa: TSpeedButton;
    imgFotoCadastroPessoa: TImage;
    lblNascimentoCadastroPessoa: TLabel;
    dtpNascimentoCadastroPessoa: TDateTimePicker;
    GroupBox5: TGroupBox;
    lblPesquisaPessoa: TLabel;
    lblPesquisarPessoa: TLabel;
    Image1: TImage;
    btnPesquisarPessoa: TSpeedButton;
    edtPesquisarPessoa: TEdit;
    cbbPesquisaPessoa: TComboBox;
    lblRGCadastroPessoa: TLabel;
    edtRGPessoa: TMaskEdit;
    lblTelefoneCadastroPessoa: TLabel;
    MaskEdit4: TMaskEdit;
    edtTelefone2CadastroPessoa: TMaskEdit;
    lblTelefone2CadastroPessoa: TLabel;
    lblEmailCadastroPessoa: TLabel;
    lblTelefone4CadastroPessoa: TLabel;
    edtTelefone4CadastroPessoa: TMaskEdit;
    edtTelefone3CadastroPessoa: TMaskEdit;
    lblTelefone3CadastroPessoa: TLabel;
    edtEnderecoCadastroPessoa: TEdit;
    lblEnderecoCadastroPessoa: TLabel;
    edtCEPCadastroPessoa: TMaskEdit;
    lblCEPCadastroPessoa: TLabel;
    edtNumeroCadastroPessoa: TEdit;
    lblNumeroCadastroPessoa: TLabel;
    lblComplementoCadastroPessoa: TLabel;
    edtComplementoCadastroPessoa: TEdit;
    edtEmailCadastroPessoa: TEdit;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    procedure btnSairClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure pgcPrincipalChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnPessoasClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnEmpresaClick(Sender: TObject);
  private
    function pgcPrincipalAtiva(): Boolean;
    procedure AjustarViewdaGridPesquisaeCadastra(const pAtivaCadastro: Boolean);
    procedure EsconderbotaoPesquisareCadastrar();
  public
    { Public declarations }
  end;

var
  FrmBaseCadastro: TFrmBaseCadastro;

implementation

{$R *.dfm}

procedure TFrmBaseCadastro.AjustarViewdaGridPesquisaeCadastra(const pAtivaCadastro: Boolean);
begin
  btnPesquisar.Down := not pAtivaCadastro;
  btnCadastrar.Down := pAtivaCadastro;
end;

procedure TFrmBaseCadastro.btnCadastrarClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  AjustarViewdaGridPesquisaeCadastra(True);
end;

procedure TFrmBaseCadastro.btnEmpresaClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  pgcPrincipal.ActivePage := tsEmpresa;
end;

procedure TFrmBaseCadastro.btnPesquisarClick(Sender: TObject);
begin
  AjustarViewdaGridPesquisaeCadastra(False);
end;

procedure TFrmBaseCadastro.btnPessoasClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  pgcPrincipal.ActivePage := tsPessoa;
end;

procedure TFrmBaseCadastro.btnProdutosClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  pgcPrincipal.ActivePage := tsProduto;
end;

procedure TFrmBaseCadastro.btnSairClick(Sender: TObject);
begin
  Close();
end;

procedure TFrmBaseCadastro.btnUsuariosClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  pgcPrincipal.ActivePage := tsUsuario;
end;

procedure TFrmBaseCadastro.btnVoltarClick(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
  pgcPrincipal.ActivePage := tsPrincipal;
end;

procedure TFrmBaseCadastro.EsconderbotaoPesquisareCadastrar();
begin
  btnPesquisar.Visible := pgcPrincipalAtiva();
  btnCadastrar.Visible := pgcPrincipalAtiva();
  imgPesquisar.Visible := pgcPrincipalAtiva();
  imgCadastrar.Visible := pgcPrincipalAtiva();
  btnVoltar.Visible := pgcPrincipalAtiva();
  imgVoltar.Visible := pgcPrincipalAtiva();
end;

function TFrmBaseCadastro.pgcPrincipalAtiva(): Boolean;
begin
  Result := (pgcPrincipal.ActivePage <> tsPrincipal);
end;

procedure TFrmBaseCadastro.pgcPrincipalChange(Sender: TObject);
begin
  EsconderbotaoPesquisareCadastrar();
end;

end.
