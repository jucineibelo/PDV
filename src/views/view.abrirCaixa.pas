unit view.abrirCaixa;

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
  view.base.listas,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXPanels,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TviewAbrirCaixa = class(TviewBaseListas)
    Label1: TLabel;
    edtVlrInicial: TDBEdit;
    Label2: TLabel;
    edtObs: TDBEdit;
    cbxStatus: TDBComboBox;
    Label3: TLabel;
    rgStatus: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  viewAbrirCaixa: TviewAbrirCaixa;

implementation

{$R *.dfm}

uses
  service.cadastro;


procedure TviewAbrirCaixa.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtVlrInicial.SetFocus;
  FService.qryAbreCaixaHORA_ABERTURA.AsDateTime := Time;
  FService.qryAbreCaixaDATA_ABERTURA.AsDateTime := Date;
  FService.qryAbreCaixaID_USUARIO.AsInteger     := 1;
  FService.qryAbreCaixaSTATUS.AsString          := 'ABERTO';
end;

procedure TviewAbrirCaixa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Registro salvo com sucesso!');
end;

procedure TviewAbrirCaixa.FormShow(Sender: TObject);
begin
  inherited;
  dsPadrao.DataSet := FService.qryAbreCaixa;
  dsPadrao.DataSet.Open;
end;

procedure TviewAbrirCaixa.rgStatusClick(Sender: TObject);
begin
  inherited;

  case rgStatus.ItemIndex of
    0: FService.qryAbreCaixa.Filter := 'STATUS = ''ABERTO''';
    1: FService.qryAbreCaixa.Filter := 'STATUS = ''FECHADO''';
    2: FService.qryAbreCaixa.Filter := EmptyStr;
  end;

  FService.qryAbreCaixa.Filtered := True;
  FService.qryAbreCaixa.Refresh;
end;

end.
