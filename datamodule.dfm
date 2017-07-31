object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 334
  Width = 598
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Baniyadb;Data Source=WIN-GSJABPNL9S9\SQ' +
      'LEXPRESS'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From MoneyWasted;')
    Left = 200
    Top = 160
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Baniyadb;Data Source=.\SQLEXPRESS'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from MoneyWasted')
    Left = 120
    Top = 160
  end
end
