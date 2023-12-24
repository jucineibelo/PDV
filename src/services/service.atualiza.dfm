object ServiceAtualiza: TServiceAtualiza
  OnCreate = DataModuleCreate
  Height = 311
  Width = 373
  object FDScript1: TFDScript
    SQLScripts = <
      item
        Name = 'SQL'
        SQL.Strings = (
          'ALTER TABLE CAIXA'
          '    ADD NUM_CAIXA INTEGER')
      end>
    Connection = ServiceConexao.FDConn
    Params = <>
    Macros = <>
    Left = 96
    Top = 64
  end
end
