unit view.login;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TViewLogin = class(TForm)
    cbxUsuario: TComboBox;
    lblUsuario: TLabel;
    edtSenha: TEdit;
    lblSenha: TLabel;
    btnLogar: TButton;
    procedure btnLogarClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    FCodUsuario: Integer;
    FNomeUsuario: string;
    FSucessLogin: Boolean;
  public
    property CodUsuario: Integer read FCodUsuario write FCodUsuario;
    property NomeUsuario: string read FNomeUsuario write FNomeUsuario;
    property SucessLogin: Boolean read FSucessLogin;
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnLogarClick(Sender: TObject);
begin
  FSucessLogin := False;

  if edtSenha.Text <> '123' then
  begin
    Application.Title := 'Aten��o';
    ShowMessage('Senha incorreta, tente novamente!');
    Application.Terminate;
  end;

  FCodUsuario := cbxUsuario.ItemIndex + 1;
  FNomeUsuario := cbxUsuario.Text;
  FSucessLogin := True;
  Self.Close;
end;

procedure TViewLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

procedure TViewLogin.FormShow(Sender: TObject);
begin
  edtSenha.SetFocus;
end;

end.

