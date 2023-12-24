unit view.formasPgto;

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
  view.base,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, FireDAC.Stan.StorageBin;

type
  TviewPagamento = class(TviewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnllcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    pnlRodape: TPanel;
    btnSalvar: TSpeedButton;
    pnlFPagamentos: TPanel;
    dbgDados: TDBGrid;
    pnlInfoPgto: TPanel;
    dbgFormasPgtoEscolhida: TDBGrid;
    pnlTotais: TPanel;
    lblTotalVenda: TLabel;
    lblValorVenda: TLabel;
    Label2: TLabel;
    edtValorFaturado: TEdit;
    edtValorVenda: TEdit;
    edtValorRestante: TEdit;
    pnlValor: TPanel;
    pnlTituValor: TPanel;
    lblVlrParaFaturar: TLabel;
    pnlRdapeVlrFat: TPanel;
    pnlBotaoOk: TPanel;
    btnOk: TSpeedButton;
    edtValorPFaturar: TEdit;
    dsFormasPgto: TDataSource;
    fdmTable: TFDMemTable;
    fdmTableIdFormaPtgo: TIntegerField;
    fdmTableValorPgto: TCurrencyField;
    fdmTableNomeFormaPgto: TStringField;
    fdmTableGerarReceber: TStringField;
    fdmTableIdCliente: TIntegerField;
    dsPgtoEscolhido: TDataSource;
    fdmItensPgto: TFDMemTable;
    fdmItensPgtoID: TIntegerField;
    fdmItensPgtoNOME: TStringField;
    fdmItensPgtoQTDE: TFloatField;
    fdmItensPgtoVALOR_UNIT: TFloatField;
    fdmItensPgtoDESC: TCurrencyField;
    fdmItensPgtoSUB_TOTAL: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbgDadosDblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FValorVenda: Double;
    { Private declarations }
  public
  property ValorVenda: Double read FValorVenda write FValorVenda;

  end;

var
  viewPagamento: TviewPagamento;

implementation

uses
  view.principal,
  providers.functions;


{$R *.dfm}

procedure TviewPagamento.btnOkClick(Sender: TObject);
var
  ValorFaturado: Double;
  ValorRestante: Double;
begin
  inherited;
  fdmTable.Open;
  fdmTable.Insert;
  fdmTableIdFormaPtgo.AsInteger  := FService.qryFormaPgtoID.AsInteger;
  fdmTableValorPgto.AsFloat      := StrToFloatDef(edtValorPFaturar.Text, 0);
  fdmTableIdCliente.AsInteger    := 28;
  fdmTableGerarReceber.AsString  := FService.qryFormaPgtoGERA_RECEBER.AsString;
  fdmTableNomeFormaPgto.AsString := FService.qryFormaPgtoDESCRICAO.AsString;
  fdmTable.Post;

  //Caculando a diferen�a
  ValorFaturado := StrToFloatDef(edtValorPFaturar.Text, 0);
  edtValorFaturado.Text := FloatToStr(ValorFaturado + StrToFloatDef(edtValorFaturado.Text, 0));

  ValorRestante := ValorVenda - StrToFloatDef(edtValorFaturado.Text, 0);
  edtValorRestante.Text := FloatToStr(ValorRestante);

  edtValorPFaturar.Clear;
  pnlValor.Visible := False;
  dbgDados.SetFocus;
end;

procedure TviewPagamento.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TviewPagamento.btnSalvarClick(Sender: TObject);
begin
  inherited;

  //Alimentando a tabela estoque e estoque itens
  PutVenda(fdmItensPgto, 1, 1, 1, FValorVenda, 0);

  fdmTable.First;

  while not fdmTable.Eof do
  begin
    //Alimentado a tabela do caixa
    PutCaixa(FService.qryVendasID.AsInteger,
            fdmTableIdFormaPtgo.AsInteger,
            'E',
            'Pedido de Venda' + providers.functions.NumVenda.ToString,
             fdmTableValorPgto.AsFloat);

     if fdmTableGerarReceber.AsString = 'S' then
     begin
       PutReceber(fdmTableIdCliente.AsInteger,
                  'Doc num ' + providers.functions.NumVenda.ToString + '-' + fdmTableIdFormaPtgo.AsInteger.ToString,
                  fdmTableValorPgto.AsFloat);

     end;

    fdmTable.Next;
  end;

  fdmTable.EnableControls;
  ShowMessage('Venda efetuada com sucesso.');
  Self.ModalResult := mrOk;
end;

procedure TviewPagamento.dbgDadosDblClick(Sender: TObject);
begin
  inherited;
  if StrToFloatDef(edtValorRestante.Text, 0) > 0 then
  begin
    pnlValor.Visible      := True;
    edtValorPFaturar.Text := edtValorRestante.Text;
    edtValorPFaturar.SetFocus;
  end
  else
  begin
    ShowMessage('N�o h� mais valor para faturar');
  end;

end;

procedure TviewPagamento.FormShow(Sender: TObject);
begin
  inherited;
  dsFormasPgto.DataSet := FService.qryFormaPgto;
  FService.qryFormaPgto.Close;
  FService.qryFormaPgto.Open;
  dbgDados.SetFocus;
  edtValorVenda.Text    := FloatToStr(ValorVenda);
  edtValorRestante.Text := FloatToStr(ValorVenda);
end;

end.
