object DM: TDM
  OldCreateOrder = False
  Height = 290
  Width = 392
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16')
    HostName = 'localhost'
    Port = 5432
    Database = 'BD_HOSPIDATA'
    User = 'postgres'
    Password = 'masterkey'
    Protocol = 'postgresql'
    LibraryLocation = 'C:\Program Files (x86)\PostgreSQL\10\bin\libpq.dll'
    Left = 32
    Top = 24
  end
  object TDepartamento: TZTable
    Connection = ZConnection1
    TableName = 'public.departamentos'
    SequenceField = 'id_departamento'
    Left = 112
    Top = 24
    object TDepartamentoid_departamento: TIntegerField
      FieldName = 'id_departamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TDepartamentonm_departamento: TWideStringField
      FieldName = 'nm_departamento'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object TDepartamentolocal: TWideStringField
      FieldName = 'local'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DSDepartamento: TDataSource
    DataSet = TDepartamento
    Left = 112
    Top = 80
  end
  object DSFuncao: TDataSource
    DataSet = TFuncao
    Left = 200
    Top = 80
  end
  object DSEmpregado: TDataSource
    DataSet = TEmpregado
    Left = 280
    Top = 80
  end
  object TFuncao: TZTable
    Connection = ZConnection1
    TableName = 'public.funcoes'
    Left = 200
    Top = 24
    object TFuncaoid_funcao: TIntegerField
      FieldName = 'id_funcao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFuncaonm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object TEmpregado: TZTable
    Connection = ZConnection1
    TableName = 'public.empregados'
    Left = 280
    Top = 24
    object TEmpregadoid_empregado: TIntegerField
      FieldName = 'id_empregado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEmpregadocod_departamento: TIntegerField
      FieldName = 'cod_departamento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object TEmpregadocod_emp_funcao: TIntegerField
      FieldName = 'cod_emp_funcao'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object TEmpregadonm_empregado: TWideStringField
      FieldName = 'nm_empregado'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object TEmpregadonm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object TEmpregadodata_admissao: TDateField
      FieldName = 'data_admissao'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1;_'
    end
    object TEmpregadosalario: TFloatField
      FieldName = 'salario'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    object TEmpregadocomissao: TFloatField
      FieldName = 'comissao'
      ProviderFlags = [pfInUpdate]
    end
    object TEmpregadonomedepto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomedepto'
      LookupDataSet = TDepartamento
      LookupKeyFields = 'id_departamento'
      LookupResultField = 'nm_departamento'
      KeyFields = 'cod_departamento'
      Size = 125
      Lookup = True
    end
  end
end
