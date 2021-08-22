program Sistema_Prova_Hospidata;

uses
  Vcl.Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UDM in 'UDM.pas' {DM: TDataModule},
  UDepartamento in 'UDepartamento.pas' {FDepartamento},
  UDepartamentoEdicao in 'UDepartamentoEdicao.pas' {FDepartamentoEdicao},
  UFuncionario in 'UFuncionario.pas' {FFuncionario},
  UFuncionarioEdicao in 'UFuncionarioEdicao.pas' {FFuncionarioEdicao},
  UFuncao in 'UFuncao.pas' {FFuncao},
  UFuncaoEdicao in 'UFuncaoEdicao.pas' {FFuncaoEdicao},
  UFiltroRelatorioListaFuncionario in 'UFiltroRelatorioListaFuncionario.pas' {FFiltroRelatorioListaFuncionario},
  URelatorioListaFuncionario in 'URelatorioListaFuncionario.pas' {FRelatorioListaFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
