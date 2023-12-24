program PDV;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.base in 'src\services\service.base.pas' {ServiceBase: TDataModule},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  view.base in 'src\views\view.base.pas' {viewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {viewBaseListas},
  view.abrirCaixa in 'src\views\view.abrirCaixa.pas' {viewAbrirCaixa},
  providers.functions in 'src\providers\providers.functions.pas',
  view.formasPgto in 'src\views\view.formasPgto.pas' {viewPagamento},
  view.fundo in 'src\views\view.fundo.pas' {viewFundo},
  providers.conversao in 'src\providers\providers.conversao.pas',
  service.atualiza in 'src\services\service.atualiza.pas' {ServiceAtualiza: TDataModule},
  view.login in 'src\views\view.login.pas' {ViewLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TviewFundo, viewFundo);
  Application.CreateForm(TServiceAtualiza, ServiceAtualiza);
  Application.CreateForm(TViewLogin, ViewLogin);
  Application.Run;
end.
