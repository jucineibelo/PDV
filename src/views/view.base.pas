unit view.base;

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
  service.cadastro;

type
  TviewBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  published
    FService: TServiceCadastro;
  end;

var
  viewBase: TviewBase;

implementation

{$R *.dfm}

procedure TviewBase.FormCreate(Sender: TObject);
begin
  FService := TServiceCadastro.Create(Self); //abrir a conex�o no Form create de todos os forms que herdar
end;

procedure TviewBase.FormDestroy(Sender: TObject);
begin
  FService.DisposeOf;  //destruir/fechar conex�o ao fechr form
end;

procedure TviewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

end.
