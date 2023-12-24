object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewPrincipal'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object pnlBottom: TPanel
    Left = 0
    Top = 696
    Width = 1024
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Color = 16752706
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16752706
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object lblNomeUsuario: TLabel
      AlignWithMargins = True
      Left = 920
      Top = 15
      Width = 84
      Height = 40
      Margins.Left = 10
      Margins.Top = 15
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alRight
      Caption = '[ Usuario ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 25
    end
    object btnFormasPgto: TSpeedButton
      AlignWithMargins = True
      Left = 130
      Top = 5
      Width = 100
      Height = 50
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Faturar (F5)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      OnClick = btnFormasPgtoClick
      ExplicitLeft = 25
    end
    object btnAbrirCaixa: TSpeedButton
      AlignWithMargins = True
      Left = 10
      Top = 5
      Width = 100
      Height = 50
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Abrir Caixa (F4)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      OnClick = btnAbrirCaixaClick
    end
  end
  object pnlBottom2: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 752
    Width = 1024
    Height = 16
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 100
    Width = 1024
    Height = 596
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object pnlProduto: TPanel
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 300
      Height = 556
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object imgProduto: TImage
        Left = 0
        Top = 86
        Width = 300
        Height = 276
        Align = alClient
        Center = True
        ExplicitLeft = 104
        ExplicitTop = 96
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object pnlSubTotal: TPanel
        Left = 0
        Top = 484
        Width = 300
        Height = 72
        Align = alBottom
        BevelOuter = bvNone
        Color = 11579568
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
          Left = 15
          Top = 24
          Width = 90
          Height = 30
          Caption = 'Sub. Total'
          FocusControl = edtSubTotal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
        end
        object edtSubTotal: TEdit
          AlignWithMargins = True
          Left = 160
          Top = 15
          Width = 125
          Height = 42
          Margins.Left = 15
          Margins.Top = 15
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alRight
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvNone
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 11579568
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object pnlCodigoBarras: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 300
        Height = 40
        Margins.Left = 0
        Margins.Right = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lblCodigoBarras: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 6
          Width = 294
          Height = 31
          Margins.Top = 6
          Align = alClient
          Alignment = taCenter
          Caption = 'C'#243'digo de Barras'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 142
          ExplicitHeight = 25
        end
      end
      object edtCodBarra: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 46
        Width = 300
        Height = 40
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Alignment = taCenter
        BevelKind = bkFlat
        BevelOuter = bvNone
        BevelWidth = 2
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edtCodBarraKeyPress
      end
      object Panel7: TPanel
        Left = 0
        Top = 362
        Width = 300
        Height = 122
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object lblNomeProduto: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 294
          Height = 28
          Align = alTop
          Caption = 'lblNomeProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 148
        end
        object pnlQtde: TPanel
          Left = 0
          Top = 34
          Width = 300
          Height = 88
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object lblQtde: TLabel
            Left = 38
            Top = 3
            Width = 28
            Height = 17
            Alignment = taCenter
            Caption = 'Qtde'
            FocusControl = edtQtde
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lblVlrUnit: TLabel
            Left = 111
            Top = 3
            Width = 76
            Height = 17
            Alignment = taCenter
            Caption = 'Valor Unit'#225'rio'
            FocusControl = edtVlrUnit
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object btnAdd: TSpeedButton
            Left = 227
            Top = 29
            Width = 65
            Height = 41
            Caption = 'Add'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Glyph.Data = {
              7A030000424D7A0300000000000036000000280000000E000000130000000100
              1800000000004403000000000000000000000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBF003FBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
              BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBF003FBF7F00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFFF00BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00BF7F00BF00
              3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF003FBF7F
              00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00FFFF00FF
              FF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7FBFBFBFBFBFBFBFBFBFBF
              003FBF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              3FBFBFBFBFBFBFBFBFBFBFBF003FFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8B00}
            ParentFont = False
            OnClick = btnAddClick
          end
          object edtQtde: TEdit
            AlignWithMargins = True
            Left = 15
            Top = 29
            Width = 69
            Height = 41
            Margins.Left = 15
            Margins.Top = 15
            Margins.Right = 15
            Margins.Bottom = 15
            Alignment = taCenter
            BevelKind = bkFlat
            BevelOuter = bvNone
            BevelWidth = 2
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = 16752706
            Font.Height = -24
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edtQtdeKeyPress
          end
          object edtVlrUnit: TEdit
            AlignWithMargins = True
            Left = 89
            Top = 29
            Width = 125
            Height = 41
            Margins.Left = 15
            Margins.Top = 15
            Margins.Right = 15
            Margins.Bottom = 15
            Alignment = taCenter
            BevelKind = bkFlat
            BevelOuter = bvNone
            BevelWidth = 2
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = 16752706
            Font.Height = -24
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 340
      Top = 20
      Width = 664
      Height = 556
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnlTotais: TPanel
        Left = 0
        Top = 484
        Width = 664
        Height = 72
        Align = alBottom
        BevelOuter = bvNone
        Color = 16752706
        ParentBackground = False
        TabOrder = 0
        object lblTotalPagar: TLabel
          Left = 23
          Top = 24
          Width = 164
          Height = 32
          Caption = 'TOTAL A PAGAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
        end
        object edtVlrTotal: TEdit
          AlignWithMargins = True
          Left = 490
          Top = 10
          Width = 159
          Height = 47
          Margins.Left = 15
          Margins.Top = 10
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alRight
          Alignment = taCenter
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvNone
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16752706
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -37
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 10
        Top = 20
        Width = 644
        Height = 461
        Margins.Left = 10
        Margins.Top = 20
        Margins.Right = 10
        Align = alClient
        BorderStyle = bsNone
        DataSource = dsItens
        FixedColor = clWhite
        GradientEndColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Options = [dgTitles, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = pmItens
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 5395026
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Quantidade'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR_UNIT'
            Title.Caption = 'Vlr Unit'#225'rio'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESC'
            Title.Caption = 'Desconto'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SUB_TOTAL'
            Title.Caption = 'Sub Total'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Color = 16752706
    ParentBackground = False
    TabOrder = 3
    object pnlImgLogo: TPanel
      Left = 0
      Top = 0
      Width = 104
      Height = 100
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 104
        Height = 100
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000003C0000
          003C08060000003AFCD972000000017352474200AECE1CE90000060049444154
          78DAED9A096C145518C7BF37A5D25610E4301E5C427757250282210A04B04414
          832528C458EC4C81D8908011EAC1A1282A0A2A8782210251BB5B6CD44A032A12
          3408188E18AE802664665A114542AA050569296DF7F91F20A5F3DE6C3B3B8BDD
          80F335FBD27DF39FEF7DBF6FDE395946FF3363C90EC007F6817D601FD807BE2C
          C0F9C732E8DCE991C4E9767C5A273BF08BD1D7E07388CE646CA292AED5970F58
          357288F83262AC63B2191D8D5305CAC914097E9538B06666C3E3FA6433B9B27A
          6530ADC9DC9918B06A985065269BC595717E9022A1BEDE81B5B20144D13DC9E6
          880F9AF5A74860BF476073063C2CB13BE4560236D8BDB04128EF175ADE8BB125
          8C29361C2D0EB3CB681B8AAD4254A3510C10A2F9166D0BDD954D907A1FA7E918
          CBEF7A03568DB5503C2264702A32B8C2AED31703BA4048CC2BE85EF304DD3CE8
          5EF6A423B698C2816785F81622BE9942D46B291C1CE71158FF539A9979ABBE14
          E9795068B8149EC60A774F42C31F7902D68C89283F6C16442D1B452CFAB5E0AF
          12FE3AC50F9C571E205E6FD82BF96934DA0EB77121406BCCF4B3D54595115494
          F99D27E0DCB22C52A29B85B6F7523874B75D77FC5A524E9DC27F8A809589DE50
          1E1FB0539639DF88E01E72D0FE85B29DADAE967A5171F0674FC039464F4A2521
          607E02C0F23E40D3F748E39DF33CF80CC707AC1A1FE0EA24C1D10B70F486AD2E
          EF707BE2B527ED3AFC550752A984D57B021ECF5328DDAC45FBF6F82A581A6D0C
          D408C09854D90CC1E76AF8CC8F1358D7115C50A81D862EFDBD5D67DE851EBE4F
          00FE1D336517079FEE802F24FC28A2BBC51E6D4A1F2AECF5A3D0FE18B4BF4E68
          FF10DABFC33DF0E4DF3A505D75A510581DFDA1B49132ACEA6301516A77C077A0
          FB0D490C58DF7171B96B1CEE188CCD2F6C553947AEA7D49A13D2FD55EDDB52C9
          0DFFB8037682E0B40B591BE4A02D8076B1A02D86764262C0C6C7882E47A87D1A
          3D6C99A4D574AC1AEC4E5B5D94655351E04BB7C00EEB2ABD0D88E765ADB91C5D
          6A9ABD922FC0139E9310B0A663AE60B305BF4BE1B7C041FB1EB45385DAB7901C
          718D8E056C6C95764431328619DA3A5864DBB53C9F8A42AB1302CED59F2485AD
          12925E8AA43F2A6BCDF1A4F0CF04BF5BE037CB2DB0C384917A1315DE7ADC01F8
          2794BD85E43C88E46C4A08583347E2A2E8631F9EDA00493BB1AC2B45A3BF0A7E
          8FC06F0F77C09A71066586ADAEB675072AEE7E52D2AA4615BCA40BB5A311D806
          D9AFB908913C630F8C16E1A93DE7909C8148CE0FF64A6BE313BA4E06363BA357
          5508B57F2386F6EE8055FD1734D65D08EC61E980AD1943516E93EEE7F41AB42F
          39247217CA7B0471AC197D1A62582EFB56B22892B945D03A4CB25CC713BECD25
          B051822BF67D2BA7FD54D77A44C353CE3B9C46D1739BE5A5E3BC9DC54436940A
          43BB2FC19A4800BAAFA3F139805ED048DB9B7814F30893F7C4D6E92A121CDEF0
          FD71BD137665561C7D045D18BA3C77C09A614D0C9F3B04760CB76C42F6AACFAF
          89E2389783C3A102638968A8C3714FD05A473FB6133EADCD4E36352DDE0CDFDB
          A1EF01BDB5D5ED2C6BD80358B3BF71076C99AA1F90B276C518DF8D1E33D0E94A
          6CE027CCFE948213CA9568F5BC1FAD091D880FD832555F80A73CCB653333D1CD
          A6C263B766959C7F7AFE152B31B5792D61B9E12B11C7EBAEA2E07C2126ABD9B1
          2E3707ECF0E6416A00DB3A650A4502BB483DDA9158D57CD44E89213E41519AD5
          B02951F5C750BE29AD0897EC7DE2192F52A44B25696583713E5FD1EC308BB5AE
          7B066E780785A39FB59B290A6D97EEB366CE566C1C26AC1B1BD51E22E59AF5D8
          BC9C95F4D62683D3BDD68EE542540C89513EA1A2CC0A499BAB0FC1F5FB10430A
          BE596BF5A8FF18B869872D6AAAF11408EC87091FD807F6817D601FD807F6817D
          601FD807F6817DE0160036E642F1AADDA1C34F149267F2F190682E8583F33D02
          EB1A1C16269B2A2EE3348122C1626FC0E3CBDB517ADD5140B74936873B585E49
          696DBBD1AA9BABBC015BA6E9F990AD4C368B4B628DC2A148530A773F3DCC35A7
          93C297261BA7498BB219541478A73999FB1F97AAE541781D8B4FBAEB7B5AC218
          AB229EB28E22BD0C57F264C7DBD2E6035FEDE6035FEDE6035FEDF62F0E19016A
          F54BFB8D0000000049454E44AE426082}
        ExplicitLeft = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlEmpresa: TPanel
      Left = 104
      Top = 0
      Width = 216
      Height = 100
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object lblNomeEmpr: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 216
        Height = 80
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taCenter
        Caption = 'LblNomeEmpr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 118
        ExplicitHeight = 25
      end
    end
    object pnlCaixa: TPanel
      Left = 584
      Top = 0
      Width = 440
      Height = 100
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object lblCaixa: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 25
        Width = 368
        Height = 75
        Margins.Left = 0
        Margins.Top = 25
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taCenter
        Caption = 'CAIXA LIVRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -37
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 212
        ExplicitHeight = 50
      end
      object ContainerBtnFechar: TPanel
        Left = 368
        Top = 0
        Width = 72
        Height = 100
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object pnlBotaoFechar: TPanel
          Left = 0
          Top = 0
          Width = 72
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object btnSair: TSpeedButton
            Left = 0
            Top = 0
            Width = 72
            Height = 33
            Cursor = crHandPoint
            Align = alClient
            BiDiMode = bdRightToLeftReadingOnly
            Caption = 'Sair'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Glyph.Data = {
              5E080000424D5E080000000000003600000028000000170000001D0000000100
              18000000000028080000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
              7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              7F7F7F7F7F7F0000000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBF7F7F7F7F7F7F0000000000007F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBF7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F7F0000007F7F7FBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
              BFBFBFBFBFBF7F7F7F7F7F7F0000000000007F7F7F7F7F7FBFBFBFBFBFBF7F7F
              7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000BFBFBFBFBFBF7F7F7F7F7F7F0000000000007F7F7F7F7F7FBFBFBFBFBFBF
              BFBFBFBFBFBF7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBF7F7F7F0000000000007F7F7F7F7F7FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7F000000000000000000
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F0000007F7F7FBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7F7F
              7F7F7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F
              000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
              7F0000007F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBF7F7F7F0000007F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBF7F7F7F7F7F7FBFBFBF7F7F7F0000007F7F7F7F7F7F7F7F7F000000
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBF
              BFBFBFBFBFBFBFBFBFBFFFFFFF007F7F0000007F7F7F7F7F7F0000007F7F7F7F
              7F7FFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F
              000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000007F7F7F7F7F7F7F
              7F0000007F7F7FFFFFFF0000FF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF
              FFFFFFBFBFBF7F7F7F000000FFFFFF0000FF0000FFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000000000FF0000FF0000FF0000FF
              0000FFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000000000FF00
              00FF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBF000000BFBFBF7F7F7F
              000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
              7F0000000000FF0000FF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBF00
              0000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBF7F7F7F000000FFFFFF0000FF0000FFBFBFBFBFBFBF0000FF0000
              FF0000FFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7FFFFFFF0000FF7F7F7F
              BFBFBFBFBFBF0000FF0000FFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7F7F
              7F7FFFFFFF000000BFBFBFBFBFBF0000FF0000FFBFBFBF000000BFBFBF7F7F7F
              000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF0000
              000000007F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBFBFBFBF0000FFBFBFBF00
              0000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF
              0000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBFBFBF
              BF0000FFBFBFBF000000BFBFBF7F7F7F000000FFFFFFBFBFBFBFBFBFFFFFFFFF
              FFFF0000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000
              BFBFBFBFBFBFBFBFBF0000FFBFBFBF000000BFBFBF7F7F7F000000FFFFFFFFFF
              FFFFFFFF0000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F000000BFBFBFBFBFBF0000FFBFBFBFBFBFBF000000BFBFBF7F7F7F
              000000FFFFFF0000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBF0000FFBFBFBFBFBFBF00
              0000BFBFBF7F7F7F0000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBF7F7F7F00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000}
            ParentFont = False
            ParentBiDiMode = False
            OnClick = btnSairClick
            ExplicitLeft = 203
            ExplicitWidth = 197
            ExplicitHeight = 100
          end
        end
      end
    end
    object pnlGeo: TPanel
      Left = 320
      Top = 0
      Width = 152
      Height = 100
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object pnlData: TPanel
        Left = 0
        Top = 0
        Width = 152
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblData: TLabel
          AlignWithMargins = True
          Left = 0
          Top = 20
          Width = 152
          Height = 25
          Margins.Left = 0
          Margins.Top = 20
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Alignment = taCenter
          Caption = '25/11/2023'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 78
          ExplicitHeight = 23
        end
      end
      object pnlMunicipio: TPanel
        Left = 0
        Top = 45
        Width = 152
        Height = 55
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object lblMunicipio: TLabel
          AlignWithMargins = True
          Left = 0
          Top = 12
          Width = 152
          Height = 43
          Margins.Left = 0
          Margins.Top = 12
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Alignment = taCenter
          Caption = 'Xanxer'#234'/SC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 85
          ExplicitHeight = 23
        end
      end
    end
    object pnlHora: TPanel
      Left = 472
      Top = 0
      Width = 112
      Height = 100
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object lblHora: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 35
        Width = 112
        Height = 65
        Margins.Left = 0
        Margins.Top = 35
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Alignment = taCenter
        Caption = '15:25:36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 84
        ExplicitHeight = 32
      end
    end
  end
  object fdmItens: TFDMemTable
    AfterPost = fdmItensAfterPost
    AfterDelete = fdmItensAfterDelete
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 868
    Top = 360
    object fdmItensID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object fdmItensNOME: TStringField
      FieldName = 'NOME'
    end
    object fdmItensQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object fdmItensVALOR_UNIT: TFloatField
      FieldName = 'VALOR_UNIT'
      currency = True
    end
    object fdmItensDESC: TCurrencyField
      FieldName = 'DESC'
    end
    object fdmItensSUB_TOTAL: TFloatField
      FieldName = 'SUB_TOTAL'
      currency = True
    end
  end
  object dsItens: TDataSource
    DataSet = fdmItens
    Left = 956
    Top = 360
  end
  object Timer1: TTimer
    Interval = 1
    Left = 788
    Top = 360
  end
  object pmItens: TPopupMenu
    Left = 436
    Top = 240
    object Deleter1: TMenuItem
      Caption = 'Excluir Item'
      OnClick = Deleter1Click
    end
  end
  object actBotoes: TActionList
    Left = 140
    Top = 64
    object actFaturarF5: TAction
      Caption = 'Faturar (F5)'
      ShortCut = 116
      OnExecute = actFaturarF5Execute
    end
    object actAbrirCaixaF4: TAction
      Caption = 'Abrir Caixa'
      ShortCut = 115
      OnExecute = actAbrirCaixaF4Execute
    end
  end
end
