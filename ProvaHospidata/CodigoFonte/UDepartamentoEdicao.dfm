object FDepartamentoEdicao: TFDepartamentoEdicao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Edi'#231#227'o de Departamento'
  ClientHeight = 285
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Local'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit3
  end
  object btnSalvar: TSpeedButton
    Left = 104
    Top = 190
    Width = 125
    Height = 50
    Cursor = crHandPoint
    Caption = 'Salvar (F5)'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FAFAFAEFEFEFE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EEEEEEF7F7F7FBFB
      FBFAFAFAF4F4F4ECECECE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9EAEAEAF2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFAFAFA
      E5E5E5CACACABDBDBDBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCC5C5C5D8D8D8E1E1
      E1DEDEDED2D2D2C3C3C3BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBC
      BCBCBCBCBCBCBCBCBCBCBCC0C0C0D1D1D1EAEAEAFBFBFBFFFFFFFFFFFFEFEFEF
      CACACAB68625B68116B68116B58013B37A06D9D2D2D7CDC5D8CDC3C0BFBDC6C5
      C3C4C4C2C6B89ED9CFC8D7CCC4D7CCC3D7CCC3D7CCC3D7CCC3D7CCC3D7CCC5D9
      D2D2B37A06B58013B68116B68116B5924AD1D1D1F2F2F2FFFFFFFFFFFFE9E9E9
      B88726F6CD89F3C883F2C782F2C680F0C173FFFFFFFFF3E9FFFFFF535352877E
      78877F79827A76FFFFFFFFF2E8FFF1E7FFF1E7FFF1E7FFF1E7FFF1E7FFF1E9FF
      FFFFF0C173F2C680F2C782F3C883F6CD89B9964EEAEAEAFFFFFFFFFFFFE9E9E9
      B68116F3C985EEC176EDC076ECBF73EBBA68FFFFFFFBEEE3FFFFFE5756558D84
      7C8C837C847B74FFFFFDFBEEE2FAEDE1FAEDE1FAEDE1FAEDE1FAECE1F9ECE2FF
      FFFFEBBA68ECBF73EDC076EEC176F3C985B68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F1C985ECBD70EBBD70EBBC6EE9B763FEFFFFF9EADEFFFFFE5453538C83
      7B8B817A827972FFFFFCF9EADEF7E9DEF7E9DEF7E9DEF7E9DEF7E9DEF7E8DEFE
      FFFFE9B763EBBC6EEBBD70ECBD70F1C985B68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F1C986EABB6CEABB6CEABA6AE8B55EFDFEFFF7E8DBFFFFFC5150508980
      78897E7780756EFFFFFAF7E8DBF5E7DBF5E7DBF5E7DBF5E7DBF5E7DBF5E7DBFD
      FEFFE8B55EEABA6AEABB6CEABB6CF1C986B68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F3C988EBB967EAB968EAB866E8B35AFCFDFFF3E4D8FFFFFB4D4C4D877D
      75857C747D726BFFFEF9F3E4D8F2E4D8F2E4D8F2E4D8F2E4D8F2E4D8F1E3D8FD
      FDFFE8B35AEAB866EAB968EBB967F3C988B68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F1CB8AE9B763E9B764E9B662E7B156FCFCFFF1E2D6FFFFF84847488278
      71817871786E67FFFDF7F1E2D6F0E2D6F0E2D6F0E2D6F0E2D6F0E2D6EFE1D6FC
      FCFFE7B156E9B662E9B764E9B763F1CB8AB68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F2CB8BE8B55EE8B55FE8B45EE6AF52FCFCFFEEDED3FCF1E987807B4244
      46414346837E7AFCF1E9EFDFD3EEDED2EEDFD3EEDFD3EEDFD3EEDED2EDDED2FC
      FCFFE6AF52E8B45EE8B55FE8B55EF2CB8BB68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F3CB8EE7B25BE7B35DE7B25BE6AE50FBFCFFE9DCD1EDDED1F3E3D6F7E8
      DAF7E8DAF2E3D6EDDED1EADCCFE9DCCFE9DCCFE9DCCFE9DCCFE9DBCFE9DCD1FB
      FDFFE6AE50E7B25BE7B35DE7B25BF3CB8EB68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68116F3CC8FE7B056E7B158E7B158E7AE51E7CCA6FAFCFFFAFAFFFBFBFFFCFC
      FFFCFCFFFBFBFFFAFAFFFAFAFFFAFAFFFAFAFFFAFAFFFAFAFFFAFAFFFAFCFFE7
      CCA6E7AE51E7B158E7B158E7B056F3CC8FB68116E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F3CE92E6AE52E6AF54E6AF55E6AE52E5AC4DE5AA48E4A946E4A946E4A9
      46E4A946E4A946E4A946E4A946E4A946E4A946E4A946E4A946E4A946E5AA48E5
      AC4DE6AE52E6AF55E6AF54E6AE52F3CE92B68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F3CF95E5AB4DE5AD50E5AD51E5AC4FE5AB4EE4AB4CE4AB4CE4AB4CE4AB
      4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE4AB4CE5
      AB4EE5AC4FE5AD51E5AD50E5AB4DF3CF95B68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F3D198E4A948E4AA4BE3A94AE2A643E1A43EE1A33CE1A33CE1A33CE1A3
      3CE1A33CE1A33CE1A33CE1A33CE1A33CE1A33CE1A33CE1A33CE1A33CE1A33CE1
      A43EE2A643E3A94AE4AA4BE4A948F3D198B68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F3D19BE3A744E3A847E1A43FF6DEBAFFFFFFFFFEFDFFFEFDFFFEFDFFFE
      FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
      FFFFF6DEBAE1A43FE3A847E3A744F3D19BB68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F3D49FE3A63FE3A642E1A135FFFFFFFFF9F2FFF8EFFFF8EFFFF7EFFFF7
      EEFFF8EFFFF8EFFFF8EFFFF7EFFFF7EEFFF8EFFFF8EFFFF8EFFFF8EFFFF7EFFF
      F8F2FFFFFFE1A135E3A642E3A63FF3D49FB68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68115F5D5A2E2A33BE1A43DDF9E30FEFCFCFEF7EFFFFAEFFFFAEFFFF9EEFFF8
      EEFFFBF1FFFCF2FFFBF0FFF9EEFFF8EDFFFAEFFFFBF0FFFAEFFFFAEFFFF8EEFE
      F6EEFEFBFBDF9E30E1A43DE2A33BF5D5A2B68115E9E9E9FFFFFFFFFFFFE9E9E9
      B68114F5D6A6E1A136E0A239DE9C2BFCFBFBFFF9F04E50539092948D8F91FFFB
      F15152555355579193958D8F91FFFBF04F51539192959092948F91938C8D90FD
      F7EEFCFBFBDE9C2BE0A239E1A136F5D6A6B68114E9E9E9FFFFFFFFFFFFE9E9E9
      B68014F6D9ABDF9F31DFA035DD9A27FBFAFAFCF6EDFFFAEFFFFAEFFFF8EDFFF7
      EDFFFAF0FFFCF1FFFAEFFFF8EDFEF7ECFFFAEFFFFAF0FFFAEFFFF9EEFFF7ECFB
      F5ECFBFAFADD9A27DFA035DF9F31F6D9ABB68014E9E9E9FFFFFFFFFFFFE9E9E9
      B68014F6DCB1DF9C2DDF9E30DE9822F9F8F8FAF4EBFFF8EDFFFAEEFFF8EDFEF7
      ECFFF7ECFFF7ECFEF7ECFDF5EBFCF5EAFFF8EDFFFAEEFFF8EDFEF7ECFCF5EAF9
      F2EAF9F8F8DE9822DF9E30DF9C2DF6DCB1B68014E9E9E9FFFFFFFFFFFFE9E9E9
      B68014F8DDB4DE9A29DE9C2DDD961FF7F7F8FAF5EC5153565556589394969192
      959192949192949092948E8F92FEF7EC5253565556589394969092948D8F91F8
      F3EAF7F7F7DD961FDE9C2DDE9A29F8DDB4B68014E9E9E9FFFFFFFFFFFFE9E9E9
      B68013F8E0BBDD9724DE9A29DC941BF6F5F5F7F1E8FCF5EAFFF7ECFDF5EAFCF4
      E9FBF4E8FBF4E8FBF4E8FAF2E8F9F2E7FCF5EAFEF6EBFDF5EAFCF4E9F9F2E7F6
      EFE7F6F5F5DC941BDE9A29DD9724F8E0BBB68013E9E9E9FFFFFFFFFFFFE9E9E9
      B68013F9E2C0DD961FDF9925DC9217F4F4F5F5F0E7FAF4E9FCF6EAFAF4E9F9F3
      E7F8F1E7F7F1E6F9F3E8FAF3E8F9F2E7F8F1E7F7F1E7FAF3E9F9F3E8F7F1E6F4
      EEE6F4F4F5DC9217DF9925DD961FF9E2C0B68013E9E9E9FFFFFFFFFFFFE9E9E9
      B68012F9E5C5DF951BA97218DF9213F2F3F3F5F0E75354575657599495979293
      958F9193F8F1E75153559394969293958F9193F8F1E75153559294968F9092F3
      EEE5F2F2F3DF9213A97218DF951BF9E5C5B68012E9E9E9FFFFFFFFFFFFE9E9E9
      B67F12FBE9CCE094177E540EE0910FF1F2F3F1ECE4F6EFE5F7F1E6F6F0E4F5EE
      E3F4EDE2F3EDE2F5EFE4F6EFE4F5EEE3F4EDE2F3EDE2F5EFE4F5EFE4F3EDE2F0
      EBE3F1F1F2E0910F7E540EE09417FBE9CCB67F12E9E9E9FFFFFFFFFFFFE9E9E9
      B57F12FCECD1DE90107B5008DE8E09EEF0F0EDE9E0EDE8DEEEE9DEEDE8DEEDE8
      DEEDE8DDECE8DDEDE8DEEDE8DEEDE8DEEDE8DDECE8DDEDE8DEEDE8DEEDE8DDEC
      E9E0EEF0F0DE8E097B5008DE9010FCECD1B57F12EAEAEAFFFFFFFFFFFFEFEFEF
      B68013FDEED8D98904DB8C09D88600EDECECEBE6DEEBE5DCEBE5DCEBE5DCEBE5
      DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEBE5DCEB
      E6DEEDECECD88600DB8C09D98904FDEED8B68013F2F2F2FFFFFFFFFFFFFAFAFA
      BB8B2AF1C680FDECCFFDEBCEFCE8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFCE8C6FDEBCEFDECCFF1C680C7A45CFBFBFBFFFFFFFFFFFFFFFFFF
      FAFAFABC8B2AB68013B57F12B57E10B57D0CB57C0AB57C09B57C09B57C09B57C
      09B57C09B57C09B57C09B57C09B57C09B57C09B57C09B57C09B57C09B57C09B5
      7C0AB57D0CB57E10B57F12B68013CAA75EFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btnSalvarClick
  end
  object btnCancelar: TSpeedButton
    Left = 244
    Top = 190
    Width = 125
    Height = 50
    Cursor = crHandPoint
    Caption = 'Cancelar (Esc)'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEFEFEFE9E9E9E9E9E9E9E9
      E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EFEFEFFA
      FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE6E6E6CACACABDBDBDBCBCBCBCBC
      BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBDBDBDCACACAE6
      E6E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE6E6E6C5C5C53B49C32E3EC32E3EC32E3E
      C32E3EC32E3EC32E3EC32E3EC32F3FC32F3FC32F3FC32F3FC32F3FC33C4AC3C5
      C5C5E6E6E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFAFAFAE6E6E6C6C6C63D4BC03747C43A49C43948C33846
      C23745C23644C03341C03240BF2F3FBF2D3DBF2C3BBE2C3CBE2D3DBF2F3FC23E
      4CC0C6C6C6E6E6E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAE6E6E6C6C6C63C4BC03B49C44756D0687AFF697CFF697C
      FF697CFF697CFF697CFF697DFF697DFF6A7DFF6A7DFF6A7DFF687AFF3748CB2E
      3EC13E4CC0C6C6C6E6E6E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFAFAFAE6E6E6C6C6C63C4BBF3E4DC54C5BD16476FF6477FF6376FE6376
      FE6376FE6376FE6376FE6376FE6376FE6376FE6376FE6376FE6478FF6476FF37
      48CB2E3EC13E4CC0C6C6C6E6E6E6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FAFAFAE6E6E6C6C6C63C4BBF4351C7515FD26174FE6275FE6073FC6073FC6073
      FC6073FC6073FC6073FC6073FC6073FC6073FC6073FC6073FC6073FC6275FE62
      74FF3746CB2E3EC13E4CC0C6C6C6E6E6E6FAFAFAFFFFFFFFFFFFFFFFFFFAFAFA
      E6E6E6C6C6C63B4BBF4754C85663D35E72FD5E72FD5D71FB5B70FB5B70FB5C70
      FB5D71FB5D71FB5D71FB5D71FB5D71FB5D71FB5C70FB5B70FB5B70FB5D71FB5F
      73FD5F73FE3647CB2F3EC13E4CC0C6C6C6E6E6E6FAFAFAFFFFFFFAFAFAE6E6E6
      C5C5C53B4ABF4958C95A68D55D70FC5B70FC5A6EFA576BFA5267FA5166FA566A
      FA596EFA5B6FFA5B6FFA5B6FFA5B6FFA596EFA566AFA5166FA5267FA576CFA5B
      6FFA5D71FC5C71FD3647CB2F3EC13E4CC0C5C5C5E6E6E6FAFAFAEFEFEFCACACA
      3B4ABF4D5ACA5F6CD65A6FFA596DFB586CF95468F9495FF8CCD1FDF5F6FF5469
      F85367F9586CF9596DF9596DF9586CF95267F95469F8F5F6FFCCD1FD495FF854
      68F9596DF95B6FFB5A6EFB3647CA2F3FC13E4CC1CACACAEFEFEFE9E9E93A49C2
      505DCC626FD8576CF9566BFA556BF85167F8465DF7C6CDFCFFFFFFFFFFFFEEF0
      FF435BF75066F8556AF8556AF85066F85267F7EEEFFFFFFFFFFFFFFFC6CDFC46
      5DF75267F8566BF8586DFA586CFA3646CB2F3FC23D4BC3E9E9E9E9E9E92B3BC2
      6B75D1556AF95469F95469F75268F74B61F7CAD1FCFFFFFFFFFFFFFFFFFFFFFF
      FFC4CBFC435AF64E64F74E64F7435AF6C3CBFCFFFFFFFFFFFFFFFFFFFFFFFFCB
      D2FD4B61F75368F75469F7566BF9576CFB2F3FC02F3FC4E9E9E9E9E9E92A3BC2
      707BD25067FA5267F75267F65066F6485EF6E6E9FEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC3CBFC3D54F53D54F5C3CBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8
      DCFD495FF65166F65267F65368F7556BFC3141C02F3FC3E9E9E9E9E9E92A3AC2
      7881D34D64F94E65F54F65F54E65F54960F54A62F4ECEEFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBAC3FBBAC3FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEFFE4B
      62F44A60F54E65F54F65F54F65F65168FA3645C12F3FC3E9E9E9E9E9E92A3AC1
      7E86D64A61F74C63F44D63F44D63F44B62F4465DF4475EF3ECEEFEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEEFE475EF346
      5DF44B62F44D63F44D63F44D63F54F66F93A48C22E3EC3E9E9E9E9E9E9293AC1
      848CD7485FF64A61F34B61F34B61F34B61F3495FF3435AF3455CF2EAEDFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEDFE455CF2435AF349
      5FF34B61F34B61F34B61F34B61F44D63F83E4CC42E3EC3E9E9E9E9E9E92939C1
      8991DA445CF4475EF1485FF1485FF1485FF1485FF1465DF13F57F03D56F0E4E7
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E7FC3D56F03F57F0465DF148
      5FF1485FF1485FF1485FF1485FF24961F5424FC52E3EC3E9E9E9E9E9E92839C1
      9097DB415BF3455DF0465EF0465EF0465EF0465EF0455DF03F58EF2E49EEB6BF
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6BFFA2E49EE3F58EF455DF046
      5EF0465EF0465EF0465EF0465EF14760F44553C52E3EC3E9E9E9E9E9E92838C1
      969DDE3F58F1435BEF445CEF445CEF445CEF435BEF3E57EF314CEDBEC7F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEC7F9314CED3E57EF43
      5BEF445CEF445CEF445CEF445CF0445DF34755C72E3EC3E9E9E9E9E9E92838C1
      9BA3DF3B55F04059EE415AEE415AEE4059EE3B55EE2E4AECBEC6F9FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEC6F92E4AEC3B
      55EE4059EE415AEE415AEE415AEF415BF24B58C72E3EC3E9E9E9E9E9E92738C1
      A2A8E13853EF3E57ED3F58ED3F58ED3A54ED2D48EBBDC5F8FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE0E5FDE0E5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDC5F82D
      48EB3A54ED3F58ED3F58ED3F58ED3E58F14E5BC82D3DC3E9E9E9E9E9E92737C1
      A6ADE23550EE3B54EC3D56EC3B54EC324DEBC3CBF9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE8ECFD314AEB314AEBE8ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
      CBF9324DEB3B54EC3D56EC3D56ED3C56F0515DCA2D3DC2E9E9E9EFEFEF2738C1
      ACB3E53752EC3551EB3953EB3852EB2E4AEAF2F4FDFFFFFFFFFFFFFFFFFFFFFF
      FFE9ECFD344DEA304CEA304CEA344DEAE9ECFDFFFFFFFFFFFFFFFFFFFFFFFFF2
      F4FD2E4AEA3852EB3A54EB3954ED3A53ED535FCC2D3DC3EFEFEFFAFAFA3C4AC5
      7C86D89CA5E73750EA334FEA3650EA324CE9324CE9EAECFDFFFFFFFFFFFFEAEB
      FD314BE9304BE93650EA3650EA304BE9314BE9EAEBFDFFFFFFFFFFFFEAECFD32
      4CE9324DE93751EA3651EB3852EB5461D24654C93F4EC6FAFAFAFFFFFFFAFAFA
      3D4BC5828AD9A3ACE9344FEA314CE9334EE92E49E82F4AE8F0F2FEF0F2FE2F49
      E82E49E8344EE93650E93650E9344EE92E49E82F49E8F0F2FEF0F2FE2F4AE82E
      49E8344EE9344FEA354FE95A68D44B58CA4250C7FAFAFAFFFFFFFFFFFFFFFFFF
      FAFAFA3C4BC58890DBAAB1EB314CE92D49E8304BE82B48E73651E83651E82B48
      E7314CE8334EE8334EE8334EE8334EE8314CE82B48E73651E83651E82B48E730
      4CE8314CE9324EE95F6DD5505DCB4250C6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFAFAFA3B4AC58C95DCB1B9ED2F4AE72B47E72F4AE72E4AE72E4AE7304B
      E7314CE7314CE7314CE7314CE7314CE7314CE7304BE72E4AE72E4AE72F4AE72E
      4AE8314BE76573D75560CC414FC6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFA3B49C4939ADFB9BFEE2D48E62945E62D49E62F4AE62F4A
      E62F4AE62F4AE62F4AE62F4AE62F4AE62F4AE62F4AE62F4AE62E49E62C48E72E
      49E76A78D95865CD404EC6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFAFAFA3B49C499A0E0BDC3F02B45E52643E52A46E52A46
      E52A47E52A47E52A47E52A47E52A47E52A47E52B47E52A47E52945E62B46E66F
      7CDA5D69CF404EC6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA3B49C499A0E0B8BEEF2642E41F3DE4213E
      E4213FE4223FE42240E42240E52340E52341E52441E52341E52744E57480DC60
      6CD0404EC6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA3B49C4949DE0BDC3EEA2ACEB9FA8
      EA9AA5E895A0E7919BE68D98E58893E2838EE37E8BE17985DF808BDD6470D140
      4DC6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA3B4AC62737C12737C02838
      C12838C12939C12939C1293AC12A3AC12A3AC12A3AC12B3BC12B3BC23E4DC6FA
      FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btnCancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 88
    Width = 450
    Height = 21
    DataField = 'nm_departamento'
    DataSource = DM.DSDepartamento
    TabOrder = 1
    OnKeyDown = DBEdit1KeyDown
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 144
    Width = 450
    Height = 21
    DataField = 'local'
    DataSource = DM.DSDepartamento
    TabOrder = 2
    OnKeyDown = DBEdit2KeyDown
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 32
    Width = 134
    Height = 21
    DataField = 'id_departamento'
    DataSource = DM.DSDepartamento
    Enabled = False
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 16
    object S1: TMenuItem
      Caption = 'Salvar'
      ShortCut = 116
      Visible = False
      OnClick = S1Click
    end
    object c1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      Visible = False
      OnClick = c1Click
    end
  end
end
