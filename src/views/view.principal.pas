unit view.principal;

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
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin,
  Vcl.ExtCtrls,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Imaging.jpeg,
  Vcl.Buttons,
  view.base,
  Vcl.Imaging.pngimage,
  service.cadastro,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList;

type
  TViewPrincipal = class(TviewBase)
    pnlBottom: TPanel;
    lblNomeUsuario: TLabel;
    pnlBottom2: TPanel;
    Panel1: TPanel;
    pnlProduto: TPanel;
    imgProduto: TImage;
    pnlSubTotal: TPanel;
    Label4: TLabel;
    edtSubTotal: TEdit;
    pnlCodigoBarras: TPanel;
    lblCodigoBarras: TLabel;
    edtCodBarra: TEdit;
    Panel7: TPanel;
    lblNomeProduto: TLabel;
    pnlQtde: TPanel;
    lblQtde: TLabel;
    edtQtde: TEdit;
    Panel3: TPanel;
    pnlTotais: TPanel;
    lblTotalPagar: TLabel;
    edtVlrTotal: TEdit;
    DBGrid1: TDBGrid;
    fdmItens: TFDMemTable;
    fdmItensID: TIntegerField;
    fdmItensNOME: TStringField;
    fdmItensQTDE: TFloatField;
    fdmItensVALOR_UNIT: TFloatField;
    fdmItensSUB_TOTAL: TFloatField;
    dsItens: TDataSource;
    Timer1: TTimer;
    edtVlrUnit: TEdit;
    lblVlrUnit: TLabel;
    pnlTop: TPanel;
    pnlImgLogo: TPanel;
    Image1: TImage;
    pnlEmpresa: TPanel;
    lblNomeEmpr: TLabel;
    pnlCaixa: TPanel;
    lblCaixa: TLabel;
    pnlGeo: TPanel;
    pnlData: TPanel;
    lblData: TLabel;
    pnlMunicipio: TPanel;
    lblMunicipio: TLabel;
    pnlHora: TPanel;
    lblHora: TLabel;
    fdmItensDESC: TCurrencyField;
    ContainerBtnFechar: TPanel;
    pnlBotaoFechar: TPanel;
    btnSair: TSpeedButton;
    btnAdd: TSpeedButton;
    btnFormasPgto: TSpeedButton;
    btnAbrirCaixa: TSpeedButton;
    pmItens: TPopupMenu;
    Deleter1: TMenuItem;
    actBotoes: TActionList;
    actFaturarF5: TAction;
    actAbrirCaixaF4: TAction;
    procedure btnSairClick(Sender: TObject);
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure fdmItensAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnFormasPgtoClick(Sender: TObject);
    procedure edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure Deleter1Click(Sender: TObject);
    procedure actFaturarF5Execute(Sender: TObject);
    procedure fdmItensAfterDelete(DataSet: TDataSet);
    procedure actAbrirCaixaF4Execute(Sender: TObject);
  private
    FValorTotal: Double;
    procedure SomarVenda;
    { Private declarations }
  public
    procedure LimparVenda;
    procedure LimparCampos;
    procedure DimensionarGrid(dbg: TDBGrid);
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses
  view.abrirCaixa,
  providers.functions,
  view.formasPgto,
  view.fundo,
  view.login;

procedure TViewPrincipal.btnAddClick(Sender: TObject);
var
  SubTotal: Double;

  function CalcSubTotal(AQtde, AValue: Double): Double;
  begin
    Result := AQtde * AValue;
  end;

begin
  inherited;

  if edtCodBarra.Text = EmptyStr then
  begin
    Application.Title := 'Aten��o!';
    ShowMessage('Favor informe um produto.');
    Exit;
  end;

  if StrToFloat(edtQtde.Text) <= 0 then
  begin
    Application.Title := 'Aten��o!';
    ShowMessage('Favor informe uma quantidade v�lida.');
    Exit;
  end;

  // Inserir Dados na Grid Temporaria

  fdmItens.Open;
  fdmItens.Insert;
  fdmItensID.AsInteger := ServiceCadastro.qryProdutosID.AsInteger;
  fdmItensNOME.AsString := ServiceCadastro.qryProdutosNOME_PRODUTO.AsString;
  fdmItensQTDE.AsFloat := StrToFloat(edtQtde.Text);
  fdmItensVALOR_UNIT.AsFloat := ServiceCadastro.qryProdutosVENDA_AVISTA.AsFloat;
  fdmItensDESC.AsFloat := 0;

  SubTotal := CalcSubTotal(StrToFloatDef(edtQtde.Text, 1), ServiceCadastro.qryProdutosVENDA_AVISTA.AsFloat);
  edtSubTotal.Text := SubTotal.ToString;

  fdmItensSUB_TOTAL.AsFloat := SubTotal;
  fdmItens.Post;

  LimparCampos;
  edtCodBarra.SetFocus;
end;

procedure TViewPrincipal.btnFormasPgtoClick(Sender: TObject);
begin
  inherited;

  if fdmItens.RecordCount <= 0 then
  begin
    Application.Title := 'Aten��o';
    ShowMessage('N� h� valor para faturar.');
    Exit;
  end;

  viewPagamento := TviewPagamento.Create(Self);
  try
    viewFundo.Show;
    viewPagamento.ValorVenda := StrToFloat(edtVlrTotal.Text);
    viewPagamento.fdmItensPgto.CopyDataSet(fdmItens);
    viewPagamento.ShowModal;
    LimparVenda;
  finally
    viewFundo.Hide;
    viewPagamento.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewPrincipal.actAbrirCaixaF4Execute(Sender: TObject);
begin
  inherited;
  btnAbrirCaixaClick(btnAbrirCaixa);
end;

procedure TViewPrincipal.actFaturarF5Execute(Sender: TObject);
begin
  btnFormasPgtoClick(btnFormasPgto);
end;

procedure TViewPrincipal.btnAbrirCaixaClick(Sender: TObject);
begin
  CriaForm(viewAbrirCaixa, TviewAbrirCaixa)
end;

procedure TViewPrincipal.fdmItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SomarVenda;
end;

procedure TViewPrincipal.fdmItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  SomarVenda;
end;

procedure TViewPrincipal.FormResize(Sender: TObject);
begin
  inherited;
  DimensionarGrid(DBGrid1);
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  GetFilial(1);
  lblNomeEmpr.Caption := ServiceCadastro.qryFilialFANTASIA.AsString;
  edtCodBarra.SetFocus;

  ViewLogin := TViewLogin.Create(Self);
  try
    ViewLogin.ShowModal;

    if not ViewLogin.SucessLogin then
    begin
      Application.Terminate;
    end;

    lblNomeUsuario.Caption := '[ ' + ViewLogin.NomeUsuario + ' ]';
  finally
    ViewLogin.DisposeOf;
  end;
end;

procedure TViewPrincipal.LimparCampos;
begin
  edtQtde.Clear;
  edtVlrUnit.Clear;
  edtCodBarra.Clear;
end;

procedure TViewPrincipal.LimparVenda;
begin
  if viewPagamento.ModalResult = mrOk then
  begin
    fdmItens.EmptyDataSet;
    edtSubTotal.Clear;
    edtVlrTotal.Clear;
    edtCodBarra.SetFocus;
  end;
end;

procedure TViewPrincipal.edtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if not Length(edtCodBarra.Text) > 0 then
  begin
    Exit;
  end;

  if Key = #13 then
  begin
    GetProdutos(edtCodBarra.Text);
    edtVlrUnit.Text        := floattostr(ServiceCadastro.qryProdutosVENDA_AVISTA.AsFloat);
    lblNomeProduto.Caption := ServiceCadastro.qryProdutosNOME_PRODUTO.AsString;
    edtQtde.Text           := 1.ToString;
    edtQtde.SetFocus;
  end;
end;

procedure TViewPrincipal.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if Key = #13 then
  begin
    btnAdd.Click;
  end;
end;

procedure TViewPrincipal.Deleter1Click(Sender: TObject);
begin
  inherited;
  if fdmItens.RecordCount > 0 then
  begin
    fdmItens.Delete;
    edtCodBarra.SetFocus;
  end
  else
  begin
    ShowMessage('N�o h� itens para excluir.');
    edtCodBarra.SetFocus;
  end;
end;

procedure TViewPrincipal.DimensionarGrid(dbg: TDBGrid);
type
  TArray = Array of Integer;

  procedure AjustarColumns(Swidth, TSize: Integer; Asize: TArray);
  var
    idx: Integer;
  begin

    if TSize = 0 then
    begin
      TSize := dbg.Columns.count;
      for idx := 0 to dbg.Columns.count - 1 do
        dbg.Columns[idx].Width := (dbg.Width - dbg.Canvas.TextWidth('AAAAAA')) div TSize
    end
    else
      for idx := 0 to dbg.Columns.count - 1 do
      begin
        dbg.Columns[idx].Width := dbg.Columns[idx].Width + (Swidth * Asize[idx] div TSize);
      end;
  end;

var
  idx, Twidth, TSize, Swidth: Integer;
  AWidth: TArray;
  Asize: TArray;
  NomeColuna: String;
begin
  SetLength(AWidth, dbg.Columns.count);
  SetLength(Asize, dbg.Columns.count);
  Twidth := 0;
  TSize := 0;

  for idx := 0 to dbg.Columns.count - 1 do
  begin
    NomeColuna := dbg.Columns[idx].Title.Caption;
    dbg.Columns[idx].Width := dbg.Canvas.TextWidth(dbg.Columns[idx].Title.Caption + 'A');
    AWidth[idx] := dbg.Columns[idx].Width;
    Twidth := Twidth + AWidth[idx];

    if Assigned(dbg.Columns[idx].Field) then
    begin
      Asize[idx] := dbg.Columns[idx].Field.Size
    end
    else
    begin
      Asize[idx] := 1;
    end;

    TSize := TSize + Asize[idx];
  end;

  if TDBGridOption.dgColLines in dbg.Options then
  begin
    Twidth := Twidth + dbg.Columns.count;
  end;

  // adiciona a largura da coluna indicada do cursor
  if TDBGridOption.dgIndicator in dbg.Options then
  begin
    Twidth := Twidth + IndicatorWidth;
  end;

  Swidth := dbg.ClientWidth - Twidth;
  AjustarColumns(Swidth, TSize, Asize);
end;

procedure TViewPrincipal.SomarVenda;
begin
  FValorTotal := 0;
  fdmItens.DisableControls;
  fdmItens.First;

  while not fdmItens.Eof do
  begin
    FValorTotal := FValorTotal + fdmItensSUB_TOTAL.AsFloat;
    fdmItens.Next;
  end;

  fdmItens.EnableControls;
  edtVlrTotal.Text := FValorTotal.ToString;
end;

end.

