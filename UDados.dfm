object Dados: TDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 214
  Top = 158
  Height = 366
  Width = 790
  object Database: TIBDatabase
    Connected = True
    DatabaseName = 'F:\Meus Documentos\Est'#225'gio 2005\BANCODADOS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=iso8859_1')
    LoginPrompt = False
    DefaultTransaction = Transaction
    AllowStreamedConnected = False
    Left = 32
    Top = 8
  end
  object Transaction: TIBTransaction
    DefaultDatabase = Database
    DefaultAction = TACommitRetaining
    Left = 96
    Top = 8
  end
  object QryProxCodCli: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 24
    Top = 224
  end
  object QryEstadosLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'SELECT CODESTADO, NOME, UF FROM ESTADOS '
      'ORDER BY NOME')
    Left = 176
    Top = 8
    object QryEstadosLKCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      Origin = '"ESTADOS"."CODESTADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEstadosLKNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ESTADOS"."NOME"'
      Size = 75
    end
    object QryEstadosLKUF: TIBStringField
      DisplayWidth = 4
      FieldName = 'UF'
      Origin = '"ESTADOS"."UF"'
      Size = 2
    end
  end
  object DSEstadosLK: TDataSource
    DataSet = QryEstadosLK
    Left = 173
    Top = 56
  end
  object QryCidadesLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'SELECT CODCIDADE, NOME, CODESTADO FROM CIDADES ORDER BY NOME')
    Left = 280
    Top = 13
  end
  object DSCidadesLK: TDataSource
    DataSet = QryCidadesLK
    Left = 280
    Top = 61
  end
  object QryCFOPLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CODCFOP, NOME from CFOP order by NOME')
    Left = 384
    Top = 10
  end
  object DSCFOPLK: TDataSource
    DataSet = QryCFOPLK
    Left = 384
    Top = 58
  end
  object DSCondPgtoLK: TDataSource
    DataSet = QryCondPgtoLK
    Left = 472
    Top = 58
  end
  object QryCondPgtoLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CODCONDPGTO, NOME  from CONDPGTO order'
      'by NOME')
    Left = 472
    Top = 10
  end
  object QryUnidadesLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CODUNIDADES, NOME from UNIDADES order'
      'by NOME')
    Left = 576
    Top = 9
  end
  object QryTipoClassLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      
        'select CODTIPOCLASSFISCAL, LETRA, SEQUENCIA from TIPOCLASSFISCAL' +
        ' order'
      'by LETRA, SEQUENCIA')
    Left = 672
    Top = 8
  end
  object DSUnidadesLK: TDataSource
    DataSet = QryUnidadesLK
    Left = 576
    Top = 57
  end
  object DSTiposClassLK: TDataSource
    DataSet = QryTipoClassLK
    Left = 672
    Top = 56
  end
  object QryBancosLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodBanco, Nome from Bancos'
      'order by Nome')
    Left = 173
    Top = 112
  end
  object QryClientesLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    ForcedRefresh = True
    SQL.Strings = (
      'select CodCadGen, Nome from CadGen'
      'where TipoC = '#39'T'#39
      'order by Nome')
    Left = 280
    Top = 109
  end
  object QryFornecedoresLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodCadGen, Nome from CadGen'
      'where TipoF = '#39'T'#39
      'order by Nome'
      '')
    Left = 384
    Top = 114
  end
  object QryProdutosLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodProduto, Nome from produtos'
      'order by Nome')
    Left = 576
    Top = 113
  end
  object QryTransportadorasLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodCadGen, Nome from CadGen'
      'where TipoT = '#39'T'#39
      'order by Nome')
    Left = 672
    Top = 112
  end
  object DSBancosLK: TDataSource
    DataSet = QryBancosLK
    Left = 173
    Top = 160
  end
  object DSClientesLK: TDataSource
    DataSet = QryClientesLK
    Left = 280
    Top = 157
  end
  object DSFornecedoresLK: TDataSource
    DataSet = QryFornecedoresLK
    Left = 384
    Top = 162
  end
  object DSProdutosLK: TDataSource
    DataSet = QryProdutosLK
    Left = 576
    Top = 161
  end
  object DSTransportadorasLK: TDataSource
    DataSet = QryTransportadorasLK
    Left = 672
    Top = 160
  end
  object QryBancosFanLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodBanco, Fantasia from Bancos'
      'order by Fantasia')
    Left = 173
    Top = 216
  end
  object DSBancosFanLK: TDataSource
    DataSet = QryBancosFanLK
    Left = 173
    Top = 264
  end
  object QryClientesFanLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodCadGen, Fantasia from CadGen'
      'where TipoC = '#39'T'#39
      'order by Fantasia'
      '')
    Left = 280
    Top = 205
  end
  object DSClientesFanLK: TDataSource
    DataSet = QryClientesFanLK
    Left = 280
    Top = 261
  end
  object QryFornecedoresFanLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodCadGen, Fantasia from CadGen'
      'where TipoF = '#39'T'#39
      'order by Fantasia'
      '')
    Left = 384
    Top = 210
  end
  object DSFornecedoresFanLK: TDataSource
    DataSet = QryFornecedoresFanLK
    Left = 384
    Top = 258
  end
  object QryTransportadorasFanLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'select CodCadGen, Fantasia from CadGen'
      'where TipoT = '#39'T'#39
      'order by Fantasia'
      '')
    Left = 672
    Top = 216
  end
  object DSTransportadorasFanLK: TDataSource
    DataSet = QryTransportadorasFanLK
    Left = 672
    Top = 264
  end
  object TbConfig: TIBTable
    Database = Database
    Transaction = Transaction
    TableName = 'CONFIG'
    Left = 32
    Top = 112
    object TbConfigPATHSAVE: TIBStringField
      FieldName = 'PATHSAVE'
      Size = 250
    end
  end
  object QryProxCodGeral: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 24
    Top = 176
  end
  object QryProxCodForn: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 24
    Top = 272
  end
  object QryModulosLK: TIBQuery
    Database = Database
    Transaction = TransactionLK
    SQL.Strings = (
      'SELECT CODMODULO, DESCRICAO FROM MODULOS'
      'ORDER BY DESCRICAO')
    Left = 96
    Top = 168
  end
  object QryLogin: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      'select codusuario, login, senha from usuarios')
    Left = 552
    Top = 224
    object QryLoginCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = '"USUARIOS"."CODUSUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLoginLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIOS"."LOGIN"'
      Size = 40
    end
    object QryLoginSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
    end
  end
  object QryAux: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 104
    Top = 112
  end
  object TbHistSenha: TIBTable
    Database = Database
    Transaction = Transaction
    IndexFieldNames = 'CODUSUARIO'
    MasterFields = 'CODUSUARIO'
    MasterSource = DSLogin
    TableName = 'HISTSENHA'
    Left = 488
    Top = 240
    object TbHistSenhaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object TbHistSenhaSENHA: TIBStringField
      FieldName = 'SENHA'
    end
    object TbHistSenhaCODHIST: TIntegerField
      FieldName = 'CODHIST'
      Required = True
    end
    object TbHistSenhaDATAULTHIST: TDateField
      FieldName = 'DATAULTHIST'
    end
  end
  object DSLogin: TDataSource
    DataSet = QryLogin
    Left = 552
    Top = 272
  end
  object TransactionLK: TIBTransaction
    DefaultDatabase = Database
    DefaultAction = TACommitRetaining
    Left = 96
    Top = 56
  end
end
