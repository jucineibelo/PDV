inherited viewAbrirCaixa: TviewAbrirCaixa
  Caption = 'viewAbrirCaixa'
  Font.Color = 5395026
  TextHeight = 15
  inherited pnlTop: TPanel
    inherited lblTitulo: TLabel
      Width = 791
      Height = 35
      Caption = 'Abrir Caixa'
      ExplicitWidth = 95
    end
  end
  inherited pnlFundo: TPanel
    inherited CardPanelConteudo: TCardPanel
      ActiveCard = cardPesquisa
      inherited cardPesquisa: TCard
        inherited dbgGridDados: TDBGrid
          TitleFont.Color = 5395026
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'N'#250'm. Caixa'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_ABERTURA'
              Title.Caption = 'Dta. Abertura'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HORA_ABERTURA'
              Title.Caption = 'Hora Abertura'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_INICIAL'
              Title.Caption = 'Vlr. Inicial'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 80
              Visible = True
            end>
        end
        inherited pnlFiltro: TPanel
          inherited lblPesquisa: TLabel
            Height = 36
          end
          object rgStatus: TRadioGroup
            Left = 273
            Top = 3
            Width = 336
            Height = 42
            Caption = 'Status'
            Columns = 3
            Items.Strings = (
              'ABERTO'
              'FECHADO'
              'TODOS')
            TabOrder = 1
            OnClick = rgStatusClick
          end
        end
      end
      inherited cardCadastro: TCard
        object Label1: TLabel [0]
          Left = 72
          Top = 115
          Width = 68
          Height = 20
          Caption = 'Valor Inicial'
          FocusControl = edtVlrInicial
          Font.Charset = ANSI_CHARSET
          Font.Color = 4802889
          Font.Height = -15
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [1]
          Left = 256
          Top = 115
          Width = 25
          Height = 20
          Caption = 'Obs'
          FocusControl = edtObs
          Font.Charset = ANSI_CHARSET
          Font.Color = 4802889
          Font.Height = -15
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 624
          Top = 115
          Width = 36
          Height = 20
          Caption = 'Status'
          FocusControl = edtObs
          Font.Charset = ANSI_CHARSET
          Font.Color = 4802889
          Font.Height = -15
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Width = 618
            Height = 48
            Caption = 'Abrir Caixa'
            ExplicitWidth = 127
          end
        end
        object edtVlrInicial: TDBEdit
          Left = 72
          Top = 141
          Width = 150
          Height = 28
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          BevelWidth = 2
          DataField = 'VALOR_INICIAL'
          DataSource = dsPadrao
          Font.Charset = ANSI_CHARSET
          Font.Color = 4802889
          Font.Height = -15
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtObs: TDBEdit
          Left = 256
          Top = 141
          Width = 350
          Height = 28
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          BevelWidth = 2
          DataField = 'OBS'
          DataSource = dsPadrao
          Font.Charset = ANSI_CHARSET
          Font.Color = 4802889
          Font.Height = -15
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cbxStatus: TDBComboBox
          Left = 624
          Top = 141
          Width = 145
          Height = 28
          DataField = 'STATUS'
          DataSource = dsPadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'ABERTO'
            'FECHADO')
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  inherited dsPadrao: TDataSource
    DataSet = ServiceCadastro.qryAbreCaixa
    Left = 842
    Top = 225
  end
end
