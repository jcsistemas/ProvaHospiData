unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDM = class(TDataModule)
    ZConnection1: TZConnection;
    TDepartamento: TZTable;
    DSDepartamento: TDataSource;
    TDepartamentoid_departamento: TIntegerField;
    TDepartamentonm_departamento: TWideStringField;
    TDepartamentolocal: TWideStringField;
    DSFuncao: TDataSource;
    DSEmpregado: TDataSource;
    TFuncao: TZTable;
    TEmpregado: TZTable;
    TFuncaoid_funcao: TIntegerField;
    TFuncaonm_funcao: TWideStringField;
    TEmpregadoid_empregado: TIntegerField;
    TEmpregadocod_departamento: TIntegerField;
    TEmpregadocod_emp_funcao: TIntegerField;
    TEmpregadonm_empregado: TWideStringField;
    TEmpregadonm_funcao: TWideStringField;
    TEmpregadodata_admissao: TDateField;
    TEmpregadosalario: TFloatField;
    TEmpregadocomissao: TFloatField;
    TEmpregadonomedepto: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
