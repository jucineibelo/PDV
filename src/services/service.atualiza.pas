unit service.atualiza;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.UI.Intf,
  FireDAC.Stan.Async,
  FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util,
  FireDAC.Stan.Intf,
  FireDAC.Comp.Script,
  service.conexao;

type
  TServiceAtualiza  =  class(TDataModule)
    FDScript1: TFDScript;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceAtualiza: TServiceAtualiza;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceAtualiza.DataModuleCreate(Sender: TObject);
begin
  ServiceConexao := TServiceConexao.Create(Self);
  try
    FDScript1.ValidateAll;
    FDScript1.ExecuteAll;
  finally
    ServiceConexao.Free;
  end;
end;

end.

