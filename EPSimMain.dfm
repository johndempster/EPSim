object MainFrm: TMainFrm
  Left = 359
  Top = 16
  Caption = 
    'Epilepsy Neuron Simulation V1.0.3 (c) J. Dempster, University of' +
    ' Strathclyde 2016 (19/9/16) '
  ClientHeight = 747
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object ControlsGrp: TGroupBox
    Left = 8
    Top = 0
    Width = 233
    Height = 697
    TabOrder = 0
    object TissueGrp: TGroupBox
      Left = 8
      Top = 8
      Width = 209
      Height = 80
      TabOrder = 0
      object bNewExperiment: TButton
        Left = 8
        Top = 13
        Width = 193
        Height = 28
        Hint = 'Clear chart recording and start new experiment with new tissue'
        Caption = 'New Experiment'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bNewExperimentClick
      end
      object cbCellType: TComboBox
        Left = 8
        Top = 48
        Width = 193
        Height = 24
        Hint = 'Select type cell to study'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'cbCellType'
      end
    end
    object GroupBox5: TGroupBox
      Left = 3
      Top = 362
      Width = 209
      Height = 171
      Caption = ' Salt Solution  '
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 47
        Top = 24
        Width = 86
        Height = 18
        Alignment = taRightJustify
        Caption = 'Sodium (Na)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label6: TLabel
        Left = 35
        Top = 53
        Width = 98
        Height = 18
        Alignment = taRightJustify
        Caption = 'Potassium (K)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 44
        Top = 82
        Width = 89
        Height = 18
        Alignment = taRightJustify
        Caption = 'Calcium (Ca)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object edNaConc: TValidatedEdit
        Left = 136
        Top = 24
        Width = 65
        Height = 24
        Hint = 'Select volume of of stock solution to be added to tissue bath'
        ShowHint = True
        Text = ' 120 mM'
        Value = 120.000000000000000000
        Scale = 1.000000000000000000
        Units = 'mM'
        NumberFormat = '%.3g'
        LoLimit = 1.000000000000000000
        HiLimit = 200.000000000000000000
      end
      object bNewSaltSoln: TButton
        Left = 8
        Top = 112
        Width = 193
        Height = 20
        Hint = 'Flush bath with new salt solution '
        Caption = 'New Salt Solution'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bNewSaltSolnClick
      end
      object edKConc: TValidatedEdit
        Left = 136
        Top = 53
        Width = 65
        Height = 24
        Hint = 'Select volume of of stock solution to be added to tissue bath'
        ShowHint = True
        Text = ' 5 mM'
        Value = 5.000000000000000000
        Scale = 1.000000000000000000
        Units = 'mM'
        NumberFormat = '%.3g'
        LoLimit = 0.100000001490116100
        HiLimit = 200.000000000000000000
      end
      object bStandardSaltSoln: TButton
        Left = 8
        Top = 136
        Width = 193
        Height = 20
        Hint = 'Flush bath with standard salt solution'
        Caption = 'Standard Salt Solution'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bStandardSaltSolnClick
      end
      object edCaConc: TValidatedEdit
        Left = 136
        Top = 82
        Width = 65
        Height = 24
        Hint = 'Select volume of of stock solution to be added to tissue bath'
        ShowHint = True
        Text = ' 5 mM'
        Value = 5.000000000000000000
        Scale = 1.000000000000000000
        Units = 'mM'
        NumberFormat = '%.3g'
        LoLimit = 0.001000000047497451
        HiLimit = 200.000000000000000000
      end
    end
    object AntagonistGrp: TGroupBox
      Left = 8
      Top = 150
      Width = 209
      Height = 137
      Caption = ' Drugs '
      TabOrder = 2
      object Label4: TLabel
        Left = 36
        Top = 48
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Caption = 'Concentration'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object cbDrug: TComboBox
        Left = 8
        Top = 20
        Width = 193
        Height = 24
        Hint = 'Select drug to add to bath'
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'None'
        Items.Strings = (
          'None'
          'Atropine'
          'Tubocurarine'
          'Mepyramine'
          '')
      end
      object edDrugConc: TValidatedEdit
        Left = 120
        Top = 48
        Width = 81
        Height = 24
        Hint = 'Select concentration of drug to be added to bath'
        ShowHint = True
        Text = ' 1.0E-006 M'
        Value = 0.000000999999997475
        Scale = 1.000000000000000000
        Units = 'M'
        NumberFormat = '%.2e'
        LoLimit = 0.000000000100000001
        HiLimit = 0.100000001490116100
      end
      object bAddDrug: TButton
        Left = 8
        Top = 80
        Width = 193
        Height = 20
        Hint = 'Add drug to bath'
        Caption = 'Add Drug to Bath'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bAddDrugClick
      end
      object Button2: TButton
        Left = 8
        Top = 104
        Width = 193
        Height = 20
        Hint = 'Flush bath with clean salt solution, removing all drugs'
        Caption = 'Remove All Drugs '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 290
      Width = 209
      Height = 209
      Caption = ' Stimulator '
      TabOrder = 3
      object bStimulusOn: TButton
        Left = 8
        Top = 20
        Width = 137
        Height = 25
        Hint = 'Stimulate cell'
        Caption = 'Stimulate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bStimulusOnClick
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 48
        Width = 193
        Height = 65
        Caption = ' Stimulus '
        TabOrder = 1
        object Label5: TLabel
          Left = 8
          Top = 13
          Width = 58
          Height = 16
          Caption = 'Amplitude'
        end
        object Label3: TLabel
          Left = 96
          Top = 13
          Width = 48
          Height = 16
          Caption = 'Duration'
        end
        object edStimulusCurrent: TValidatedEdit
          Left = 8
          Top = 30
          Width = 73
          Height = 24
          Hint = 'Stimulus current'
          OnKeyPress = edStimulusCurrentKeyPress
          ShowHint = True
          Text = ' 0.5 nA'
          Value = 0.000000000499999986
          Scale = 1000000000.000000000000000000
          Units = 'nA'
          NumberFormat = '%.4g'
          LoLimit = -0.000000200000002337
          HiLimit = 0.000000200000002337
        end
        object edStimulusDuration: TValidatedEdit
          Left = 96
          Top = 30
          Width = 89
          Height = 24
          Hint = 'Stimulus duration'
          OnKeyPress = edStimulusDurationKeyPress
          ShowHint = True
          Text = ' 0.250 ms'
          Value = 0.000250000011874363
          Scale = 1000.000000000000000000
          Units = 'ms'
          NumberFormat = '%.3f'
          LoLimit = 0.000019999999494758
          HiLimit = 100.000000000000000000
        end
      end
      object TGroupBox
        Left = 8
        Top = 112
        Width = 193
        Height = 81
        Caption = ' Pulse(s) '
        TabOrder = 2
        object rbSingleStimulus: TRadioButton
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Hint = 'Single stimulus'
          Caption = 'Single'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          OnClick = rbSingleStimulusClick
        end
        object rbRepeatedStimulus: TRadioButton
          Left = 8
          Top = 54
          Width = 89
          Height = 17
          Hint = 'Repeated stimuli'
          Caption = 'Repeated'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = rbRepeatedStimulusClick
        end
        object RatePanel: TPanel
          Left = 98
          Top = 18
          Width = 87
          Height = 45
          BevelOuter = bvNone
          Caption = 'RatePanel'
          TabOrder = 2
          Visible = False
          object Label1: TLabel
            Left = 5
            Top = 0
            Width = 40
            Height = 16
            Caption = 'Interval'
          end
          object edStimulusInterval: TValidatedEdit
            Left = 5
            Top = 16
            Width = 81
            Height = 24
            Hint = 'Stimulus repeat rate'
            ShowHint = True
            Text = ' 1 s'
            Value = 1.000000000000000000
            Scale = 1.000000000000000000
            Units = 's'
            NumberFormat = '%.4g'
            LoLimit = -1.000000015047466E30
            HiLimit = 1000.000000000000000000
          end
        end
        object rbPairedStimulus: TRadioButton
          Left = 8
          Top = 36
          Width = 89
          Height = 17
          Hint = 'Pair of stimulus pulses'
          Caption = 'Pair'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = rbRepeatedStimulusClick
        end
      end
      object bStimulusOff: TButton
        Left = 152
        Top = 20
        Width = 49
        Height = 25
        Hint = 'Stop repeated stimulation of cell'
        Caption = 'Stop'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bStimulusOffClick
      end
    end
    object ConditionGrp: TGroupBox
      Left = 8
      Top = 88
      Width = 209
      Height = 60
      Caption = ' Condition '
      TabOrder = 4
      object RadioButton1: TRadioButton
        Left = 8
        Top = 16
        Width = 76
        Height = 17
        Caption = 'Normal'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rbEpilepsy: TRadioButton
        Left = 8
        Top = 36
        Width = 105
        Height = 17
        Caption = 'Epileptic Fit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DisplayGrp: TGroupBox
    Left = 248
    Top = 0
    Width = 601
    Height = 575
    TabOrder = 1
    object DisplayPage: TPageControl
      Left = 8
      Top = 16
      Width = 585
      Height = 545
      ActivePage = ChartPage
      TabOrder = 0
      object ChartPage: TTabSheet
        Caption = 'Chart'
        object scDisplay: TScopeDisplay
          Left = 55
          Top = 8
          Width = 409
          Height = 394
          OnCursorChange = scDisplayCursorChange
          CursorChangeInProgress = False
          NumChannels = 1
          NumPoints = 1
          MaxPoints = 1024
          XMin = 0
          XMax = 1023
          XOffset = 0
          CursorsEnabled = True
          TScale = 1.000000000000000000
          TUnits = 's'
          TCalBar = -1.000000000000000000
          ZoomDisableHorizontal = True
          ZoomDisableVertical = False
          DisableChannelVisibilityButton = False
          PrinterFontSize = 0
          PrinterPenWidth = 0
          PrinterLeftMargin = 0
          PrinterRightMargin = 0
          PrinterTopMargin = 0
          PrinterBottomMargin = 0
          PrinterDisableColor = False
          PrinterShowLabels = True
          PrinterShowZeroLevels = True
          MetafileWidth = 0
          MetafileHeight = 0
          StorageMode = False
          RecordNumber = -1
          DisplayGrid = True
          MaxADCValue = 32768
          MinADCValue = -32768
          NumBytesPerSample = 2
          FixZeroLevels = False
          DisplaySelected = False
          FontSize = 8
        end
        object Label7: TLabel
          Left = 0
          Top = 2
          Width = 31
          Height = 14
          Caption = 'Show'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbDisplay: TScrollBar
          Left = 50
          Top = 408
          Width = 491
          Height = 17
          Hint = 'Select section of chart recording on display'
          PageSize = 0
          TabOrder = 0
        end
        object pnDisplayWindow: TPanel
          Left = 312
          Top = 430
          Width = 201
          Height = 26
          BevelOuter = bvNone
          TabOrder = 1
          object Label9: TLabel
            Left = 0
            Top = 0
            Width = 46
            Height = 14
            Caption = 'Duration'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object bTDisplayHalf: TButton
            Left = 56
            Top = 0
            Width = 22
            Height = 22
            Hint = 'Reduce duration of display window'
            Caption = '3'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bTDisplayHalfClick
          end
          object edDisplayWindow: TValidatedEdit
            Left = 80
            Top = 1
            Width = 89
            Height = 24
            Hint = 'Set duration of display window'
            OnKeyPress = edDisplayWindowKeyPress
            ShowHint = True
            Text = ' 2 s'
            Value = 2.000000000000000000
            Scale = 1.000000000000000000
            Units = 's'
            NumberFormat = '%.4g'
            LoLimit = -1.000000015047466E30
            HiLimit = 1.000000015047466E30
          end
          object bTDisplayDouble: TButton
            Left = 170
            Top = 0
            Width = 22
            Height = 22
            Hint = 'Increase duration of display window'
            Caption = '4'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = bTDisplayDoubleClick
          end
        end
        object ckVm: TCheckBox
          Left = 0
          Top = 19
          Width = 49
          Height = 17
          Hint = 'Show membrane potential'
          Caption = 'Vm'
          Checked = True
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 2
          OnClick = ckDvDtClick
        end
        object ckIm: TCheckBox
          Tag = 2
          Left = 0
          Top = 42
          Width = 49
          Height = 17
          Hint = 'Show membrane current'
          Caption = 'Im'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = ckDvDtClick
        end
        object ckINa: TCheckBox
          Tag = 3
          Left = 0
          Top = 65
          Width = 49
          Height = 17
          Hint = 'Show sodium current'
          Caption = 'I.Na'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = ckDvDtClick
        end
        object ckIK: TCheckBox
          Tag = 5
          Left = 0
          Top = 88
          Width = 49
          Height = 17
          Hint = 'Show delayed rectifier potassium currents'
          Caption = 'I.K'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = ckDvDtClick
        end
        object pnRecord: TPanel
          Left = 50
          Top = 430
          Width = 265
          Height = 26
          BevelOuter = bvNone
          TabOrder = 6
          object Label8: TLabel
            Left = 130
            Top = 0
            Width = 29
            Height = 14
            Caption = 'Go to'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edStartAt: TValidatedEdit
            Left = 167
            Top = 2
            Width = 89
            Height = 24
            Hint = 'Set duration of display window'
            OnKeyPress = edStartAtKeyPress
            ShowHint = True
            Text = ' 0 ms'
            Scale = 1000.000000000000000000
            Units = 'ms'
            NumberFormat = '%.4g'
            LoLimit = -1.000000015047466E30
            HiLimit = 1.000000015047466E30
          end
          object bRecord: TButton
            Left = 0
            Top = 1
            Width = 65
            Height = 25
            Hint = 'Start chart recorder running'
            Caption = 'Record'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bRecordClick
          end
          object bStop: TButton
            Left = 71
            Top = 1
            Width = 41
            Height = 25
            Hint = 'Stop chart recorder running'
            Caption = 'Stop'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = bStopClick
          end
        end
      end
      object ExperimentPage: TTabSheet
        Caption = 'Experimental Setup'
        ImageIndex = 1
        object ExptSetup: TImage
          Left = 3
          Top = 3
          Width = 560
          Height = 513
          Picture.Data = {
            0954474946496D6167654749463839615402F201F70000000000000033000066
            0000990000CC0000FF002B00002B33002B66002B99002BCC002BFF0055000055
            330055660055990055CC0055FF0080000080330080660080990080CC0080FF00
            AA0000AA3300AA6600AA9900AACC00AAFF00D50000D53300D56600D59900D5CC
            00D5FF00FF0000FF3300FF6600FF9900FFCC00FFFF3300003300333300663300
            993300CC3300FF332B00332B33332B66332B99332BCC332BFF33550033553333
            55663355993355CC3355FF3380003380333380663380993380CC3380FF33AA00
            33AA3333AA6633AA9933AACC33AAFF33D50033D53333D56633D59933D5CC33D5
            FF33FF0033FF3333FF6633FF9933FFCC33FFFF66000066003366006666009966
            00CC6600FF662B00662B33662B66662B99662BCC662BFF665500665533665566
            6655996655CC6655FF6680006680336680666680996680CC6680FF66AA0066AA
            3366AA6666AA9966AACC66AAFF66D50066D53366D56666D59966D5CC66D5FF66
            FF0066FF3366FF6666FF9966FFCC66FFFF9900009900339900669900999900CC
            9900FF992B00992B33992B66992B99992BCC992BFF9955009955339955669955
            999955CC9955FF9980009980339980669980999980CC9980FF99AA0099AA3399
            AA6699AA9999AACC99AAFF99D50099D53399D56699D59999D5CC99D5FF99FF00
            99FF3399FF6699FF9999FFCC99FFFFCC0000CC0033CC0066CC0099CC00CCCC00
            FFCC2B00CC2B33CC2B66CC2B99CC2BCCCC2BFFCC5500CC5533CC5566CC5599CC
            55CCCC55FFCC8000CC8033CC8066CC8099CC80CCCC80FFCCAA00CCAA33CCAA66
            CCAA99CCAACCCCAAFFCCD500CCD533CCD566CCD599CCD5CCCCD5FFCCFF00CCFF
            33CCFF66CCFF99CCFFCCCCFFFFFF0000FF0033FF0066FF0099FF00CCFF00FFFF
            2B00FF2B33FF2B66FF2B99FF2BCCFF2BFFFF5500FF5533FF5566FF5599FF55CC
            FF55FFFF8000FF8033FF8066FF8099FF80CCFF80FFFFAA00FFAA33FFAA66FFAA
            99FFAACCFFAAFFFFD500FFD533FFD566FFD599FFD5CCFFD5FFFFFF00FFFF33FF
            FF66FFFF99FFFFCCFFFFFF00000000000000000000000021F904010000FC002C
            000000005402F201870000000000330000660000990000CC0000FF002B00002B
            33002B66002B99002BCC002BFF0055000055330055660055990055CC0055FF00
            80000080330080660080990080CC0080FF00AA0000AA3300AA6600AA9900AACC
            00AAFF00D50000D53300D56600D59900D5CC00D5FF00FF0000FF3300FF6600FF
            9900FFCC00FFFF3300003300333300663300993300CC3300FF332B00332B3333
            2B66332B99332BCC332BFF3355003355333355663355993355CC3355FF338000
            3380333380663380993380CC3380FF33AA0033AA3333AA6633AA9933AACC33AA
            FF33D50033D53333D56633D59933D5CC33D5FF33FF0033FF3333FF6633FF9933
            FFCC33FFFF6600006600336600666600996600CC6600FF662B00662B33662B66
            662B99662BCC662BFF6655006655336655666655996655CC6655FF6680006680
            336680666680996680CC6680FF66AA0066AA3366AA6666AA9966AACC66AAFF66
            D50066D53366D56666D59966D5CC66D5FF66FF0066FF3366FF6666FF9966FFCC
            66FFFF9900009900339900669900999900CC9900FF992B00992B33992B66992B
            99992BCC992BFF9955009955339955669955999955CC9955FF99800099803399
            80669980999980CC9980FF99AA0099AA3399AA6699AA9999AACC99AAFF99D500
            99D53399D56699D59999D5CC99D5FF99FF0099FF3399FF6699FF9999FFCC99FF
            FFCC0000CC0033CC0066CC0099CC00CCCC00FFCC2B00CC2B33CC2B66CC2B99CC
            2BCCCC2BFFCC5500CC5533CC5566CC5599CC55CCCC55FFCC8000CC8033CC8066
            CC8099CC80CCCC80FFCCAA00CCAA33CCAA66CCAA99CCAACCCCAAFFCCD500CCD5
            33CCD566CCD599CCD5CCCCD5FFCCFF00CCFF33CCFF66CCFF99CCFFCCCCFFFFFF
            0000FF0033FF0066FF0099FF00CCFF00FFFF2B00FF2B33FF2B66FF2B99FF2BCC
            FF2BFFFF5500FF5533FF5566FF5599FF55CCFF55FFFF8000FF8033FF8066FF80
            99FF80CCFF80FFFFAA00FFAA33FFAA66FFAA99FFAACCFFAAFFFFD500FFD533FF
            D566FFD599FFD5CCFFD5FFFFFF00FFFF33FFFF66FFFF99FFFFCCFFFFFF000000
            00000000000000000008FF00F7091C48B0A0C18308132A5CC8B0A1C38710234A
            9C48B1A2C58B18336ADCC8B1A3C78F20438A1C49B2A4C9932853AA5CC9B2A5CB
            973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F40830A1D4AB4A8D1A348932A5D
            CAB4A9D3A750A34A9D4AB5AAD5AB58B36ADDCAB5ABD7AF60C38A1D4BB6ACD9B3
            68D3AA5DCBB6ADDBB770E3CA9D4BB7AEDDBB78F3EADDCBB7AFDFBF80030B1E4C
            B8B0E1C388132B5ECCB8B1E3C790234B9E4CB9B2E5CB98336BDECCB9B3E7CFA0
            438B1E4DBA344900A853AB5ECDBAB5EBD7B063CB9E4DBBB6EDD5A673EBBDCDBB
            B7EFDFC08303D04DDCAEF0E3C8932B8F5DBCB9DCD4CA88459F2EBD3AF5EBD6B3
            63DFAEBD3BF7EFDEC383FF1F2FBEFCF4D4CED3BB4D4DEC53FBF7EEE3C39F2FBF
            3EFDFBF6F3E3DFAFBF3FFFFFFE05F81E7AEA15981674E62548DE820A36C8E083
            0E8A47A0811492C59E801802A861861C6EE86187FA2993C9841596F8158210A6
            18A18A2CAEE82276EE2943A289346A75E187388298E38E3AF6F89E88D4CD58E3
            9055A1F8E2912D2689E491314A97898CA81129A55537FA68258F585EA923904E
            0619E5946046C51E76629469E69968A6A9E69A6CB6E9E69B70C629A7189958F7
            A49061E68914744FF629C60D688811281A830A5A28A1821A9A28A2831EEAA8A2
            8D2EFA68A494426A29A3974E9AA9A492C62006904F1283A79EA40E35A67565F6
            04CD44AB4AB4494462F4FFA0DDA8A5D6EA139F407E22E83EAD46D42B44CAECF4
            2A4481822A22ADB6269BD3A9D3A55A8F44D13C6B52B012511BD1B00F053AEB97
            CA02C58E6A0244F3102DE12EF46D6AE53A44AEB883E11AEAAEBF3A5489261359
            8B13B60E9569ACA8DC76DB132DADC5E19022029CB2CFB7021704306B093344B0
            C1EDA2969DAE62EC23ED43D11483EF48F63ED4B143C5441468A8E7F5EBAF4EDF
            A67B30002A2BA44BB9C100D0B04029B3BB72CB09BD6C7360B8BE4728AF1115B3
            8C322147F4714D1B33246874F2217BF24CC104104A4131CF9C10C1E2EE2233D5
            5253BDB5C338FF3526C9CE46B4CC32FB240DD2D10CB1BD90DA0A8D7C9DD34FC7
            84F042F3A880AECDE49EFFB2300009D87CB742FA50911A1004F5BD0FB9D018CE
            B2CDFA10921A04CFA1469D7BBB4A24B43E702BE4B64C9D23A4EF7C74D7FD52E1
            80EF4CD0B9E0428CB522A93D4010EA812394F76A940B84F53EB0AF567BE4AB3D
            A0FA5A554A97EAE7079DBDCF3245735CEF44A11F24B775A59BEE12EA7B0F14B9
            CA0027ACF33E551B843D6A2A036F8440A87B5FF03EBA3CBE4FE15DE7A342EE8B
            77FD9691CAE88AC644C5288376F40359553D9067904AA0ED620F41A043EA01C0
            822C8D7426B31E4E80871AFA11A4775FDB9DD6AC363BC955502079B360DE2CA0
            BB7229C27EE0EBDAED2C1897E229C359D0A8470C6728C31AD2101ACC83063D5E
            15AC1BDAB086020916B5FF84B80F221A71139B50863EA2A18F6534F1894E8C22
            148BB8447A44C38A58BCA216B3B8437DFCD087ABA2D6F44A361C09FEA47B20D4
            DB6A12A6B8757C6D2168CCDBF9B44788DA294E7102D9A040FE060014AEC77276
            8257D0D0963691305068276920414617A31145D08C30C907156A373B2A504E92
            1F045F06CBA5C781489292DAB3E43EF28638ED29C28E265459F8D0E738D47050
            2DEE8A4EA02C66364222D2631089C6D9883111425E4B6462A84E8CAA07499410
            C28FFB909FECE498B8AFBDCC60AB44DF31A746106526737E04C99BECF60189F5
            3D7320E578E3EA00C042E249EC72991BA43EF691B19030B0901259A7AB608586
            26458798FB588E3E8323FF9A7335EC7677182536F7889A802E8E93E25CD91B6F
            2730F3B1F26BEB3AA8CDC2F72DFA59F37E1293CF0B2B46C0826CA21E84546410
            7319329112C49710699E43B4652C7CEEF3A5BD194DFB58933B0AAEA694BB3B17
            28D9D71A8BAA3135948CE8C306A2477D6010350180D8E00E04C8E964229D2965
            A2404CAAC085BC53A50F91E72F21323A2F95D121300D6B6D48733BA452F3A115
            945FEE146754F765F3A7C81CDF1C4B68B0880A249A7F53D952D1124B62CCB2AA
            6FA3253C1D12AF85286F13287548621D62D27DC8AD4F50FA6A4398B524255996
            7A8F2CE66328AB3FA041848702B96543009B90611163B10CD16A021BFB40AF42
            2496908DADB1644BDBD9FFDAB6B6B8BDEDBEF0A9D9C2B8B06C2945A9480BAB90
            8FA60DB586851E30BB74A7CC2284B2978DEE8B9A2BD9DE42067F4FDDDF3CE5F9
            CE0546751F3B8CA772B92A067BF2ABBA0B81AD6E73CBDEF5BAB7BD90AD0E6FAD
            2B1817CE7219F460677E97B7CE7AACD389E8139A32EA21AEFED1D28B4C243082
            F3AB8C682DD1BFCB7B9FB4208CD8F721B689E0D5AF4000FC2C2F16F159078CB0
            88096C317131F059201608899F15AD81B014B22E3D6765676C59EAD25732D8DD
            956A0BA23A71BD4AABD81A5E41F68B10D51997790DD919DAE4C964F439F97D53
            6D3294A7ACDAAECAD7B907512F7CDFCBE52D6FF9CAE8BDF1627E5B31E49616A4
            0311ED42845CDA009B19FF213B662C3D651B6300D0F8CE49B23185D0C01A0774
            A402ACD12E6172BCBF382FA418520D2D9B0D42E4861857976F4EDE78B3F5A9EC
            D4B9CB98F672A6317DDE0A4D82351CE8080A583309C3A44613C9F8D17D7F7931
            2427F9BB4DC46A6A27BD523AB514CB06812E9E77BDA0F98286CFAB4141475210
            6853031214D21906541FF2D15F35B01E8D66887109DCD8481FA4BB0FB1F23D71
            5D102D7349A3F105F7B77F146E728FBB9199B8017399861F5F8F26352918B6BB
            8D23B1542743131B2DE2203D4A5A1E7F37BF8D35B4B4977BEB302744D74EBD9C
            9D149E70612EDCE10CAF0EB0ED49B2EECC3B34F09637B7FD021D7C271B0782FE
            6C86D3BC6882443BB0ECFFDC879A1962ED83B0B69E96DEF840D4FBA39A7389DD
            0DC7799720BEEE2E01FB9C15B70F902E0E9A8C7384D832E70B7BEC8DEF597694
            201F5572CB4B6E1044E6D7D50E39B9A3090EE3A4E753C63927597C6F3E76B193
            3DE1158F4E2662B09A869BB74944FF8CD137827483D7D772F8C6B7B243FE9090
            A956790CD17A9B07027887501D21B25E88B63BFD90BEEAFCED3C7FFCC4220F9F
            A7B666F237EF52DC3D33778DD45D31A9194674529DEFEAD06368A88F0E2F575F
            444AE03B8AFEA38474A2B17ADA4B6780A81F9A7452BF0F4D48671FC48806258A
            E8FB7D50A289FE23C6EEFDC7FCE2F372C043D3C4E9996FFBE0AF7E13F82EC6F4
            51AF7CE60FCDB1B6EEBAFFDDB3DC549E431EE7A16A5223253FEEE87C5A353FDF
            97C2E1EE75D3743E239F4F4CC7EFAD0C4DEC6A19BAA461FE05805AA46FCB8058
            A76780C6654532B43CD16044454448FE4560A7172D31D47B04D66007D88045D4
            62F93580FCC57C1F262E68F38101A88003242EC1F22C38D462CF122C8B5767F3
            117667877969676E98870606A01A37F02CCC225B10B7799D717F18917F88C12C
            A2374B02971088567587B755FBD558B4D610681006F8267EAF05766507230E67
            5EECE68533B876AA1103BC2410A9A151DA917E8C6722447811467818B8E27161
            B03FFD86101FB5635897104F3755059187C9A539B05269AED578969376411786
            F36773F7814EAB516A04FFF183F287595FE5763BB77E38F8099340289988069B
            D8899AF8899C8828371003A3588AA4788AA6988AA7E88866D18616F186C66667
            D3310CA0902AC4555C2246782D975223C54E89076753C810C552705908006877
            8CE1018668387FEF971A15936B62158DC911037C2716AE5811B0E85B85A80CB4
            480CBB528706F14E7106407B788005816D2C178C8A575E31377ED06867E7D785
            8B08845F587362981A31C036D2B88FC87116D74811D93868E7E471F9768B4516
            3289D54E56C58BFAC6870EB184B8482CC1448C84288B9137760D0286E9A61A2B
            90090A711CA81892AA3892A72809A198892879922A999228B92442D814FF3811
            011931C6287AB4980CDFFF0811E268100064902EC7930FB18B1E454FD871695B
            387919528F98D3880C813FE5F1923101954B119312319377070079D72C150391
            3F59552B178E185334D6625C0DC19588074C74E6759C258F60F81D6937093BE8
            8C3E397340C76552F91277991454191156C933966393C8F67F24E559271569E5
            286B85F7873AC95A820866C5287F37C869A0728FA8918F159979E091972DA199
            47B19710D1978031267A578BCFC86A07F18BBD4448F6A24866F99312B96E32C8
            706AD896DDD12462B01A1E598C0B975B9CB912BD59149EF910A02936DB581D73
            D89043643131F444354434FA402D0CD8449BE04518C660CAB982BC42811A0660
            CB332CC1C26088965F05FF182C5714612BB84EDF599EE989454574874EA49D17
            189F025126E665943A779FEDF523B7097F13D133E4F19B2901A0A6821AF17674
            025A1690E874C1958B50F766E07852C5D05F50F7A00CCA6CF4049B6A0948EAA7
            88B4897370C9837BD86D5AE85E076A12250A14F096022ABAA22CDAA22EFAA22A
            7AA2D6589CFDB76C0DA13C86869ABDD810B7E46C0FA98E0A1183196A9198B985
            E5A6766C878F654811FEF994F5B713327A2B040AA3545AA52B1AA5603126B428
            7AC7B3A0A8E58715812D0804A692364F129996EE28A200B08C18E98562B79FA9
            C18A15313676F9A43A81A53C91A256BAA72E8AA75ED171D3A109C7594B53D687
            6FB687D8122F0D247828FF976D68509443FA7011B78CEDF173A8518D4C5A7EFF
            69A7CBC2A953A1A77C1AAAC3C971A8019849C8515E6A871A714B0AD4404F5875
            228303189AA68F881A960899894899007003219A5EA8A1697EFA11C1DAA90020
            AAC63AAC5B01A8D561A32CB764AA8A101CB87502A1A80DC1A809818E0D5126A4
            E798155989986773BADA911DE19499E9A93781ACE73AA5C6CAA7E89A155ACA8D
            A439728A8536C8F5950341A1A125810561AFFE66A69436AB8F9986350824707A
            A9C29A51EB565BEDAA110B4B13A0BAAE55DAB0548277FD171DC7F9AA8A56A843
            891073B9B18499AF8107A4092128C836886085B06CAA70CD881AA5E911281299
            EDC814122B130F0BB130FF3AB354117ADC08247F257282158E9D83A8F7CA633A
            BA61228B1081227A58D8ADDB7188BA6A99217123E8675B383BA7E62A26EA6AB3
            545AB552A1ACD101721F2B6D20983CF862330804614F066558D731E6481055B5
            5F364375DD85AF424AAB74698CF4381F37A01A06909B22F1B23917B35379B550
            51B35ADBA25C8BB5B2A8B4F9460F2FA86F1048449A8036C102454FD47BE0559E
            D6A90C33649E9E5B829BB02ACCA99E11FA9E6104B91D3881CB3980962B454994
            9D60F4438E65851479B2C6889412B71A2DFBB708CB7E4BAB1489BB99597BB87D
            4AB895638C04490C17CB9011796D8AD53C552585204394826BBB33284C1F9A1A
            378012802BB0DC0ABCC6FFEB14864BBC311ABE70A1B35B0A0AB364AD40D990AE
            7910ADB93CBE5458E478B4D283038C4B5D30458601DABBF29870C11B1101EC9B
            C34BBE576ABE1885BCD4B12B188BADA79910BB58785E09128C09A930E5B7DCDB
            546D5A73035C91FE58C0063CAA7DF1AE4F025C72E6BE3C895CF14B96617B5C0B
            D1AB0EF9AF05A74FBB9BC1B26888D7A167E06BB7EE0AC206DCC1324BB1D221A8
            85169445AB72100C32666B1089B91147EC4068000AA2F7BD93557E1B898F18DC
            BF785B8FF7B9867A89C0835BAC218CB860DC16E82BC5CAB06A168AC27D08372B
            4C1085D5C40601C383B5526130C44337A43AA7ABBC4AC0442AA9BFFBC53C8C15
            E34BBE401CC6153BC4CCFFAA104D3870E1F884E858550E8C11931CA49F32C5DB
            36C8525B1D7EB51A983A123487995EBC27652CC8634CC683BC1BE7B4A5F986A8
            D2F239BFC8BE02A1903B3A10B48C1074DC588192953A5CC5B7FB85CDC29427A1
            6BEB17C8A49CCA132BC6A75CBEC88C175EBB775BF5B34C9C3424385AD153C943
            EBAFF9F2A83699C9BA198F575C994B0ACADB8891161CC4CD9CB33E6CC8A56C4E
            76966AEEA1BE15C39EEBA96FD1F95142B445FABC432058CFFE9CB90CF6632FF8
            43D2899ECAF9B832C4455A54430B1D435754610C78812B28D10291B4158B6FB1
            79BD4D320949CAB2742CC060B79BB52BC81FACCCCB7CC83B9CC8DCC8C06BECC8
            149198C4F5C480485EC8FF666FA3ECAB5B7C91C1AC1A727AB05B6CCED54BD2AD
            B8CEC48BD2824C0C4C976FF83A58D60A371DA56680556149ACCD542806A29795
            9706711BFC42B819B5217D8CC6DC99ED2CD6267DCA467DCC2A3D0C601BBF483C
            CB8C6C1130FDC08463BF06313A362D83948AAB4FFBD138AD5B1637D67E5CD2CB
            7CC0E94C6FEF8CD44D57662DDDD442D6518919D56F269450273268F024581DA9
            395CA4EC460C8EE48C7CFD5C5F2DD2BD7CCC823DD822AC7414AB778B3C7815BA
            AFD0CAA32815D30BC1D6F72AD30361D7487DD31F59CE5CE8853152B000D0D317
            E16D7F5DD8E96ADC8A6BDAA7BD174B97DBADDCD21069AF1D2BBF6E7B9A914DD7
            05C15297ADC9212D74F2FFB8737B8BC50C1BDA601D59E85CDA837DD6647DD122
            B2DAD7862D6F66AF141AD74CFC66B43D102FE71EA4370CF6A988914871CAC0D1
            208A11C47DCE618CDE270DD87C556FCEADC6D2AAB1F57D10D3CDC2D2AC8B0A21
            D9F84D70A886D17A0CAEA20CE0D661A90050C320FDC7E53DDA648DE066ADE025
            CDDED0FC5FCCB3094273361A43E31A4378178E5AFD7640D1B0314246A6DA738E
            D1C2E329C63CCB604042A92F98ACDB0737A2A28D8C6808DC595C8CFCE81A9F3C
            CC2C3EA0653DC6EA6D14CDCD7FA9420C327E3667E33F643E60BAC45D1738721D
            863695C05D666EE64223E39A50E39B20E69B1361F4F09D25E645AFD22AD0E73F
            355E0C1A530C752EE3C4FF100AC520E6CB400C02865803A66F40949C154DBB57
            68DE1569A4DC419B8DD4D1006000E35C9155DE1A319089C28BDC854BD487DBE5
            C029C4DC08B6C3126702876129C74EAA55E807C83C86AE3C2DC62E4BC8360748
            E88835E3941B61186BDBF379C926EBCB11A7944FBE70011E97A8D183253EEAAF
            71EA2ACEE5598EA0A53A7A890DE13FCA10180B3AB0E203788CE2BB0D006AC8C5
            228DBBAA274B9EAC9B0F02957ECAEA5EBDE5216CEF5ADE7FDB2A981281E1690B
            2CCF43D5C2280636EDCD978983C89888F3471DC410DEA931E5A0FDD3EEC5E499
            8AEA568BF1E2ABEA5AABEF42219AFC9E2A1421CB651A114B8D118CC9CB986EBD
            99CDA1D71B89F081A463FF48400827B0F4BEEDE4A7F130C9F136EBF141011DDD
            EC7FFB43F20631EE412E11D33DC7D84D10C5B2E4F679889118B8C6E2F0D321E2
            62E093DE869137AFF312E1F3E3CAF310EBF53FC11EC856B2A962F40241F47D38
            11277F11C80E7E579DC7DC6DE230CBEE945A5BC613EF13AF20E89EF1D83ED4F8
            FEC3383F1640BFB39980069EB2288A5F2889822681C2268FDFF8921FF98D1FF9
            8F4FF96B72F96AA2F98752F973522681E229FC4EC54DC9DBB3B9883B37B5E311
            CE0020AEEFC865A43FDC83AFA6D99EEFB31F1680EA71D9F52694CFF8A0BFF866
            62F961F0FBC14FFC925FFC9DEFFBBFEFFB987F26948F03C09FFC67920998DCF7
            7BCF2266678FCEDE247CFFDC31359FD95BFFF7DC1EF8ECCCF57F74D8FB3D7ACA
            A00CC9B0FEEDCFFEC9060AEC8F6C31020AA4B7EE9FB0B3B4381DF0CFFEEB0F10
            C394114B464C59324D07412553A609A1B24C0D0B7E321831192882C428322CD8
            F1E047811A3F2A1B064AA0438D15077E52D61223C687C400CCDC57D3E64D9CFB
            660280D833E24F9F4123A61C5834E24A83498B26258666E74C3137770AA53A74
            674EAC59B15ED5DAD5EBD79A5CC18E255BD6ECD9AC3B53AC65DBD6ED5BB86CC5
            A2A55BD7EE5DBC39A712C348D1E44B629A86690ACCB7A441C2052512239A9462
            528C244D268C48B82F5FCC051187547C12A9328C9E932624DDB061E09E9B23A3
            8C3C94E2C04CC4041E26FFA96CEED79D4A752FE5BD3BE5EBC6AF81023528E629
            804C6167FAEE5DF4F6DDE779C746975EDD3A59B571B56F974BF3FA77F0E1B12F
            07BED463CB8E49D3C3446C3475D0C6E6330EEC485AB1E98499950E33C89EE246
            8366A3AF28948A0A893EDF5E034D3DD2A84B6BA6AA221CEE3D952AA4D0BD8A62
            782A0699209CF043881C444B44F19403A044144BCC8E3B16DF22314518632C2B
            3703FF3A0CA3D84AABCCB4904C92ECC0F880FC2FA5976ED40DA18C104A4F22FB
            328A0CB1872863B236C300F3EBB021070A4DB2006DF36EBAE59A636ECC2C83D3
            AD4C880C9AC480E3C21C93B71767FC52469BE2A4F34EAD566C71CF14ECC4F34F
            19A7DAF148835A0292CAFF22B5844C48CCFEF24DB12E81CAAFBC460FF42C2181
            8632B0B9CA205D523D063B022C263F75F2504254CF544A53E290523029E38E43
            D5B50E4FACAED4EB7005144F3DF96451D75D83CD15C22E4B32B648FB1C6A5231
            4C7BBA91B6F902B4B1484779EBF1B768AF4470B589AAC47629984A93725C02BB
            54A9541ADF7C7342C7DAE54DD3A48082285637C57C0FD83CE7BC135F6153ECD5
            D7EDF8ED7760BA72F3EBD142816476B1829E44B0B61D5B3577A9210F8694C098
            3036B76142B534B6B66605247423FC2045F75410894373D5F758852F4B4E35E4
            09443305D64B5F3A6D26F8BB7F018E4BE79D83F66A2FFA945592B467133D303F
            1F3B2D6D6228935572B7FF1E8F3D30A28F75342D52FCA85494E3928DCEEF34AF
            133A19007531A4F85B772D4C90980F0D728A39970D02BA4E9C03CD5BE83F7BF6
            D9C5BDF916BC2E83316B4EA0879DAC52E4AD373572C8CE789332E2DED853B436
            8595E511622699ADEFE2FD7C7C086B92CE4E15B88A552D0FDED4CBB3D7A0D4D7
            46EA6E1377A57DF08267FAFBD7C071F71D4C9E8A9DF630CD358FD6631F677394
            BD8B995EDCEBE381BA743DCC5686D4E1452FCF4CEC721736BBF79BD1B6B76E4E
            7B433D3E96636B3DA5DD5AD5F4F6DBCD8AFFF7F100D89DBBF9E9EFB770ECCDDB
            545A6F5DCF70A0EADAC73E0699EA259052C92BD9F11647AD4CC18761F3191B41
            0A141991998E5DE77315FFDB62072FAA28E5752CA195EC52023FF0A92885FAE3
            99EEEEA79DFCB1D076C42A1A550873308B75A934CA3B966138D71E9631EE506C
            C320818272A821AE4D800C8496492C689A889CAD7D6A439F09CB07426CA56C20
            15128EDA5068ABBEAD5086B772E10BE112C331F28A3CFAE90D43267629CC5D68
            6215045099A8F5C043914E4A0EBC0C0EB1551E295D2B519AB25C523448210EAA
            845D1152DD6EC6D79229D64C8CC09B2118D38822BF99118D97D45BF0A8D4C5CA
            104994D47318F702F99E0A22C553BB999CC6B8E42800FDAF3946530A4A3E8514
            CF00458AEF529BC4AC983E390AE78F8D19262FED3649B06C7268C8E464EEEC67
            C63332B39942E35FF6D4FF234B23A5C77AD1C260F2A6D51ECA1DD0844F5A2514
            CD3921460107308E524C21077248D6B5AD83AB9320305D26A6FF980F7D14F962
            25A7A9C26742D32DCAFCA778886641B00DA57819832330C5551F7051CD6BD7E2
            9CCB94E7AD42822EA2D56AD792AE75B59EEC5291FA94633DE7F9B62D8630A5BE
            6C553F0145504E66F285302D680BD176B04D610A14D86C0DE6381A47D1FCA8A2
            5D33DE6B9EC62545F90854771C9EB336D52A712D0634D07A2732DB7455AC6655
            AB5BE56A57DB641D9A6E459A354D661905DA1D4B92557F44E36121895254DD90
            93358D92166D8E2A20902649AFFE89DEE62C15D1AFDD95797A4D937BA26855AF
            2656B18B656C5AA13356FFE984758C32BD9F64D58A976A9A474A8AD154D56C24
            D594A4276308551C6028B44EC3059596354C962A493BC1271D6C9D88239D2111
            DB58DCE616B760856C5E2CCB42CAEEEEB797251C0D2338A82D3A6C4748A4A269
            7B6844BDD213AF3FEA2690AAC538783D49A99B8397684763C4C33A96B82FED2D
            66CB3B5EA998F5AC7D3A2F7A619459E195E4730C9A52935CBB30AE45B082474B
            EA003FF33C0026AAAE3E2A5081A025DB0432449CB572AFB0865BBB06DB25B87F
            7B7084CBEA49D29A9631DAA5CD5F7369C4650DD061FA755C1CA1DABC987C0AA7
            E6522A4E3B1C47CC8C4D4A158E7085698CBB09FBECC616CED74DE32A208B1025
            247E242794F4CAB1A671FFEE690D3352FF0EC84E95688D6BF9C12FC8ACBCC3DA
            4CCD64EDE5F188B8ECCC2E7B39A0EB65AF78C31C2CA2494F7B54BEABE3048CDA
            22D612A8FF4550B756FC1A8A16CB3D63CBE628F5B324D2C839BC67CED997C54C
            68398D79BD3B46B489E2B32C875C8EC4C57B982D8F2C35E78D6AA447E55A7B6C
            49E90265043860531C92134C90CFDAD6CC8D1ED6AAFD6568E2E618608C6EF441
            1938C0908DD85A9A5E4D01AD35674E77E69B5FA3E0AFC91565255B79BA0814B4
            975C9D93605C1502DFA18500A2D14C1BC3FAB2B2F615AD115D38A39AF82074E5
            AFF42CD72CD25D6B4870C6EB65B61BAA27E6FA809E0A35433DD6DF3EA23A8221
            29D52EB0FA806B7F851DFF0088C35714218053605BDB8966F585C98CD6863B98
            86F47D9A0F1526E7EC5175520EF4AEAFE5CC3D20BE32AE0954D4F92E735F07FA
            F77BCFC6C93A087E137D10E2E55F8976C1BDA20B6B2B9CE5065D3859B9CD276F
            131ADCF369F795A3245471B259D8E0ECC9D36229350722BDC847BB656DDF9357
            A2068573B3E9F7CC6D320F154CFB2BFEB679570E1EF04B667BE7ACFEF99E827E
            E683661D53A97D6AE50CC8AD66453D8208BC652B35B5F11597BC31279FAB3A8F
            BC9FA3AEBC2C35C7893EA8F080AFAB602739DF072D7692806B3B7E2740B049B5
            A3A18899605E866A8FF832157DD6B78779E81DE78B9591CB36494B6E4AC4896D
            92B496444BEF7AC1AEFDFFDF76F5D8C0C8F834235D2F7B4DC06E819A0CFC3808
            AFFC4E200FF6E388FDE060780AC081DB734A96BEC70F5F4BEABB1C77BADAC8C8
            750F95A521482514BF76C9086C2AD37DD94A4F47E9627F87317B966B9A52B9BC
            F8F9A0C2CB634EF9E6B339C68B3900E0BC7DD00745088050D8075D00809C733C
            05BCBEB5030FEFEB17991101EEAB400B5B3DA22B0AA51A36518AA858F23473CA
            3326521AE849357D9A9A1A112273EA28727BA26D193E64F23769C30AD09B099B
            23BB7D003BEBCB89044CB89AD885085C2BECBB30EDD38A1B98890A78B80D9889
            1848C230C230C1030CCF4022CBB11AC9D1B2E32910ACE9351D222A14131B529B
            1204CAA1CE0122EA818DFFCD513CB288B63631829B80BEE3B039FDEB411530C0
            9CA83621DC873B34C209B42929C48A4CD8090C5CAF03808A41DC9735D2163D63
            8F7C032F5EB23ABAB2A3CCE996095A8F93D0A8FC32AC898A33BF9AAD9E98C182
            203EADE0BF99103BC6DB077FBB033C94431C04401E04447F5A449C58819DD800
            81E2003681105BEC24DD0A46611C466264ACB2F843AC003B58AC09CB13C09703
            3BB14BBE97C3B93E5C45FA21BD5FB40967CBAA9FE1AA49C8C6182946711C4772
            2CC6B298C5640CBBCE9B09576445FF93395804BB9C3B3B9B40C7DFC14670DC87
            42D4AA6ED42A34C8C7F72A47811C4882D4AAC5F3BA9C20C0363140E5C3BC7C90
            BCA78045CFB30964BCC7FF23C48D8B242B34909936E9C7AB1203650048916C34
            7B4CC8FE4BC587143B027CC093F4BA83EBC392C4B18CEC0A0DF41DF51AA8991C
            499DDC499BCCC90709445BBCC9B6A8499E2C4AA32423A0E4ADA41C44A184B8A3
            7C4AA8DC369F14ABA594C24C22CAA8CC4AADFCC95A7CCAAB9CCAAD0C4BB13C34
            F2AACA24FC4AB31C4BB55C4BA5ECCAA3444BB68C4BB92CB4B47CACBA8C38B89C
            4BBDDC4B412CCBA8CC4BBE0C4CC10433BF844AC01C4CC48C11E50B3DB4DB077A
            C44BB0C409AC149CC34C4CCB040F857C8A22AC3CE683CCBB2CAECF64BBA62CB3
            CB2CCDEF5849B48B36CA7BCC86C3C7B71CCDC9344D911CB868B4896833406A2C
            3DD734CACA944DDF448BFF204CC862B089C7A443070CB8984B006890B902DC07
            546CCE032404E564CEDAE49BDD2CCADEFC4DED040B0414BDAEE0C37D58CCC94B
            B89873002D780A3868C97734CFA7F04EEB8CCCF40ACD5A834DF8DCCEAD74BCEA
            8CC568F83FB46BC6E80400EB533E5504806943CD03ECBFE20B9AEBE4C9ECB44F
            07CD09FE83BC9BEBCC75D4C19A48C0053CC0C7743C09C5509B7848097D4FF93C
            8BD8A426FA1CD107E54B42F841ADA047E3DC0957E4CF9A48CE80E33FE4A3519B
            88391655D0FA8430AF3CD1140DD2ACA085CDCC5142603ECFD33C02AD89013CD2
            3E5404EFE4500D754F1C1551B7E44D2015522DB509DACC097F133B3E54C69BF0
            4F198DCE10E5BF023D52FFB483C6C159D09D6CD02DB54F0474C03EB4BC001042
            48B0363665460B75CCCEAC5229754C00103DCD4BD09D71539D84D338DD4E25AD
            C3CEB3B6CC8CC8E8A43C1DAD512AB85142080018788AFC3CD41E35151485BB2C
            DD151B3C0E3D5CD4248443C61C53E66B540848C949ED43E9444E2A4853018086
            935C46CAFCD412E5D1D373CA5D51D5E5EB43541DCC32BD465EFDD47F525418B1
            4702ECD462DDCB9794C02BC5CE5105948AD4D0228DD6BD3C568B0CD5FAF9CB6B
            FD93981C3858845261980920604D74A4C304888422CC4C68E55644FB3F62ED49
            70CDBE1FFDD5EE53D67DB0C61CAD55666C00C9BB53F064D29913CF9988C0481D
            D4C6A4575445D49164D6FF1489C908BDD025BD50597CC7998BB608DCD3CABB53
            88E5568915498A45916C3D5030155966A4D03B14D3CE8BC08704D091ADD992B5
            4143853E039CD6EF1B573CB1D84BD558B463D7971BB8E20B8622CCC185CDD09A
            8DD8647D36380CD17A9C098904C00DF4D93B015869C44D0ACD4D842D38A3BD09
            2264DA4645C8A60514FEB3DAEB98D6C7543E6B634D82B9594DB55A850C02D1E4
            57D20C96928C3996654DD6F4CF87D45522BD57699CD7B3554C75158F89044F77
            8D8683F5D47C45C2AE288700C004847C48E3D05551C5DB1BAB48CD8BC6C7B53C
            86B4500274C6081CB8335501A93DDC3B294F2DD851EB80DB57FCD66AC509A405
            0581AD470148D79DA5BCFFE7844EC74C80746DCEDF3D5599E45C7F2DD5E360D1
            8994C69DA8DC846D138665CEE7255CD68D11688C49E9F05A2E05DE367D5AAF20
            C25338D898B300736DD9847B519AAD3C8205000554DFD5DD55E48DDCB150DE9D
            48509EAD097958DAB0353E884C00A4655ACB9B09B5BD5E19115F908DCEE94CDC
            E734C0E45CCE99905A7A3C3BA57DB9E67DCECD44D7C4C524F0ED8AB1ED5FB08B
            8381B35B3FDD4F789CD14C4D38D053C9133E50B3155118F25718F150032618C7
            C33C04A450D7454FF52CB81DBEBC80034F3E6CC0FBF5D3F485C82266DF82655A
            9EA35FD3F38A7550C0400D066B3B5F064438B073CF312D4258FD5075C4D71876
            623CC9E21A55012DAEE1FF60B1E281D34302143D0145D8343D4E17B6B909CE39
            2BE64C139E39C79BC78C0D4831EEB1F08DC0B38BB9695BE3968D06980542CA4B
            64338D06F13C6334C3DA7F6AD81746634021D20CBD61B44BE119DDD0C7BBD0CD
            EC629CBBB6DC34E49AA046460EE190B5DEF028D900DE0779785F15005B003857
            2CCEC3ACF05AB03B551A7DE4878DE4F975AF01765F26B6E45D51DF3E2DD32AB5
            510546BB4AE5CC849BC8813B02E2AC62AC9243D905A8DA155B86A50223D88500
            050012F6BC040EDBE2FC62FF8D5F130D6663164C61E5D44EA65028A555C8EB4E
            679ED51286E6F0045E3E54D8CDD3E770EC60AD88E20CA50504D082D185C5519E
            530394C76B235FD07360FF04FDD6306EE7C04CDBC644C0E9A5D415FD50813D56
            1F44DF7CBEE3B30BDCACC8E626DEE67A2CC2816359539E56F5B5E53545E208FE
            E575AE688BDE4B53BE092B7652148ED24F1654429DE82B26653BE6674895B9B2
            F34FEE7DB53FE6CAAE78E503F54E2B6EDE462DBB5186B99634DEEF65E79C9ECB
            E06C3C2A4038655E514B4D534D85678D5561E69BE66A4E387FB6BEE6F563959E
            5849FEEAB04CE09BA8B91C9655A0B6555CA55A567DE8A3D6C3AC76E10D36E24E
            AA6B93BD6BBC7E506F55AB9205C8937D6CEDCC5FA97C6AAA1457AF269890B46C
            5B8C6C9F13E8D7ECEC81418349480ED096427B45AFC9CEC7CA8E91A69804D456
            EDD5B6E8D706C7D88611FFD4EE6DDAB6EDDB46E3DCCEC6DD46914CA06DE4F6ED
            8808EE1A1EEE5F2CEE125186E49EEEDAAE07E6665DE7DE430A1516ED950E6258
            C2C58A01E00E16E9A6EEE45EEEEBB659D23E0B94268BFEBD0BADAD0E7A69ACA8
            F06CDFBEEFDF4EEF91CD6E9C785CB4886FB4E8EEBBD846DCFA46AC1083DEAE6F
            142186349084067F7007777062D06F88E5EF9B68EFFAADE4B30070BCE0C8DC32
            809F2CAFC0008B0887700837700A27D9F5C60A0C6662AF6D719C285E3E654C5A
            105E06DE6A9CA0C3382807AF8371D00CC6104F4B0DE190AE50061327067AC884
            071FEF145FD49255DFB273519AF63AF59D36A505385A685F595EDEEE7D8A25B4
            3928FF71DD0AF2BAD847FF2864F29A28714940F12447F1262F56892DDD191D6B
            21E443393FD056953907F6D0555C6114AEE539E7D81D245DA59EF3ED4E3420A7
            CADEF2702874F37D5086FBD6049C8086375771CD0E9FAE48E559165A4D2F381F
            B4E9591C5CFFAD4D364D60CB73C54E77A6440F1FC832F3ABB2ED4938F14A3F5B
            89F567C12E6A5B07F45DCE8A3F3C6C46B6E7FD2DBEB0CD75AE069E5597CCA7A0
            8BEFDEAA4980F41247F35987F315E769ACEADD5320F6D9C58A59E4D95D375280
            1BB87694465ABE2ACDAD9F824C4B6598EF361183588FF0686F5A8965E4FEB636
            934EC7DA0CDB55BC6074C6C3E7DBF7062CB87AF7AD736FAF74BFAA1868F0DE9E
            F077DFEF693752AFF3CFFF12BEF300FCCF7854819CDB768E06F439A678E7F5E1
            42E7534335F682CC0B02870A07476E31A0F485A7D7928DEB802BE536F9C19995
            D47D7658EE555FEF9C79F70D83E83D0E48167982CC0BF0CE04A7000003807034
            8815905CF9689DEC463D55ABC671AD4E620D3D4EB86D54CD55D238B046AC97B0
            81BF4B2F89C29A10033128F149388EA567FA38B5F0BB3DF6F86CAF5801EE3448
            6E759F891BF86CB50F52B69F4F612473BBBC894C9004DFEEC5ABBA0185CF7B07
            DDFB6F1B46BFAF8BB8BF0935CF844C60F4E3106FC4B74FC5173AC657F4B48486
            B950F212FF6C576F13B1BFFCDFCCFCCD757BBC1198C7B7894930FB9B28FA5737
            7DED447DD5DB7C564FCBFFCF37717AB0897A58D861006F28A4FDDA6FF86CA4FC
            C6CA8AFBAE8BB3070005DF8735EF6DE02E7AD55E76E420FED3F7C94DED2A18C8
            47D9CFADE7EFCB9AD084FBC67B50C58974C7FEEC7F6A15000678787FF88F7FF8
            BFF43142FEC42A7DF068FE7F74FDE9BE89E6070831FB06122C68F020C2840A17
            326CE8F021C488122752AC68F122C68C1A371604E091234303EAE08D2C49F2E4
            48002057B29C28C623CC9832670A6C49106641626824A5E149ACE3479B428712
            2D6AF428D2A42D711A8D010C1ED4A852A1AA53A9F4AA469829B672E5CA946826
            8F3507669A84C6ECA482933CA2C1EAF62DDCB872E70EFD4AD4E9C8937AF30283
            41F76F42AD5DBBDA150AFF131A419D67CF2A036A1530E4C89227530659586818
            487AA3E6850A2C46E5BF82076FBDCC322C80B1FBD02E2E885A75E8D8B267D396
            6BBAA518CD54A7E6D575A3F6DBD1A46F838CE1B1F140658BCDFEBCE91131F0E8
            D2A753B7487C656EDE9BD57DAE8E54F8E0EB1A51AF40BE2FD3F2B6048789F5EE
            FE3DFCE9E239A201B3576A5E48B0E3AF044F38A850C60180C60A6228A3CC24AC
            3537D001C7F1F7208411DA0620516928B21B675241128684FD79449A57149E26
            161AE8C5108318ACE5E4D16F1DBAF8228C9689285426F66578231869C498917F
            213E869B47659D35C90D00DCC05C41067844CF8E4D3AF9A442F36D54238655C2
            0386245052D463693372FFA48C4731A0B1D8906841B70F311EE1A0259B6DC228
            A546C4C0701F8E99B809119729C04951910024889659CB1524E082771A7A2875
            7B6224E754188E04465A882E94A7A2118109000C462ED613A766D9792968928A
            3A6A6C955AA4CC9C26751695169A908A10A55E6A24E0106818778324ACE9DAA7
            9DAFFAFAEB843F120540A3BB8D64C330C03A0700885D0ACB114C249090841B32
            001083AE6834825AA8CA7AFB6D51A656A48C0A8E361A8379C0C6FAAC462F0180
            81B4D222E1060E3CD9DB130E1E250B2EBFFDCAC8AE4DC46AA7970AE9FEBA2E4B
            D1441B6FBC4E1071AF24DCFA3B31C5D6C9BA144AF8450530A90863E791040C8B
            4C821B8BB9DB6BC529ABFF3CE9C52C01B0EA66500160B0AF1E73A40F4C063000
            EFC8F10E811AC72B0B5DB1B8158964A549418B6AF346EE868C01030678D0B3B4
            12043934D643174D115E1A4BA5B4A44C67E511C31EE84CF5D659AB7D68DA1239
            85B4672A802B36466B011032D5223370F5DA7DFBDB764437E896316706CCFD61
            B3803B3675DE0C2BEE37E43B3EEE506631A3D4DDB7745B6437038D336CF58091
            8BAEECE40D65E7B567DD928E388893C3B437DE8DC354CFE8B5BF5A3A43B99974
            23242D7AAB3945A8754E42D4B18F0CBA7AB62B8F28EE0B4962E38D23E97738B3
            89B71C91808C577D77CFB32FFFBDA1CD2B64A195516D487DB37A5EFF90F03D33
            A0FDF6A1833F3F9BE227FF4465862629A263E6AC0FB7BE43B2E7B978D98F7E06
            AC4C010F52A3BCC0EC4A59EA5FF55A07408600CD003C6B1C06D474C00D4A6E82
            714AD5C020853EEB81AD21D9F340D42ED83325CD8C832E7451020DA2091BE44F
            2A6040D9EA22F8BF122E244D003040BC50F8AE9E6510001C7A21122114C38290
            CB7227D1020ED5E5BFF07830217D52A1B418303C86B1906649940E313221065B
            DDE044281A5326BC18B92512041AE532175460A0C68E4DF13F3C4CC8A5803840
            1214714D5F9C0E82FA349341A6268A9063E34D5017C74249518754BC2342DC85
            C5BC75F18FC0D187181A44C84DC6E4068C5C1B220742AC5599C400CB18A10421
            69101FFE708B792BA2EAFF2C199A68B84B260670400528C0010E8880971BA040
            051C30C81818126BA1DC87C0CA573054EED02292E42300DE97B7BD01A098B284
            8C326A09135C8A207D83E1000534091362F6ED982FAB525E54E926E035E45200
            6058065D19C4305D3334ACF4C80136E0CD7DA6800232D9CFCA8E0983A7DC4866
            FC622743D0E0914962C07859E45B3D25138698348003FCBC680A841993394EEC
            986F23A54199F9488AD0636103F4003D231A196588D30016C5284C350AD18056
            312331D005EAAA72D03AFA88220AF588343D474D6BAAF42DF774004C93BA950D
            C424792A3BE60D80B1BB93F465A78EB4E34496E11120624067F013194A6B5A54
            A2B81300FA54AA524520FFCE483D55AC17395D953007C1F4994A12408D575783
            2A32D01175AC4A296B37D12A5871F6158249A91C48E5FA3B9E3A6B2226C5AB3C
            49105675FAB525CA101000022B58C136002685CD6152EA833ADF5895AE35B59B
            43F3C6D7CACA05B39B7DED56C4C951D022651236EA8CF4005A33C6AA4F953049
            6DCF26CBDAB800EDA5B0152C0A02C0A2941D7381C53A9F48B10A11E1590DB89F
            F3085B877B957AC08402C785AD0860F249EA25057FBB53478E4A4BC28898B478
            793BA6760DF2D3AB7E57A932259A5B2DE2DC1B99E181735D2FFBEE7ADDAF9200
            74BA8D2F596162DCFA6ED6B3143B26A36286DEECE6D0B47714E01EE18BE081B8
            AB010C3E2E53F37BA763FFA20A7537546F2A031CCD3D42537E1B4E0A4C349B54
            703640B930390005363002C1DA78BCB43D4A13B773255745B7A701DCEA24BB27
            E2178F2B4FE9134167396956B4FA33351D5DF24414562C78C0605FFF4D713B81
            0A350B36CEC04C4E4A9F2AA0D42A4B199F32E66778B1ACA56396D4585441178A
            9BD910D4F00C85645EA183CE7C94182735C4624923410E64377C2A55939F1D15
            7C93892139E679A461FE61D9F48AD7E50ADA28973AC08CC7C9D1F92215A6553E
            F06E297B9151364AD5F5E32D9C306BDD7855B2D345F121A861CAC258DE0F2667
            BD2807DAD32FF8AA80A00C84470B8BDCD8876036C9D22A22AA6DCD11D494FAA2
            71BEE34401506D3873DAFFAA4A39DA8D5C3D67587BD0877AA45AADA58D919EA0
            618C9218231A1881863E7917A32156411AC6942D0AE31AA6D7FE9B9CDD66ECAF
            0D9BDC77BCE25E19074B756BA4AC9BFC353F65DA66C72455C3DE816FD776030C
            B9555ABA973EF7B3C52CDEC0043CBEF4B0F12617BCCF36BB33491E79B3372D5E
            1DF80A0E9D86EBB8914DB750BDD1244A258F6F597159815CE612E6E9233A3029
            2071DAD965052F87A9CC13F5F387C095AABC6EA4851DE24EB0CEC4A90789FA0B
            F58172A30BF6DAC9B60B0B778C51B04B07BE95DB8C62174BDF652774E70CA3E6
            810EC410B6BB10B0DF35BB630AE27400A000EA538F117CC977ECDE157CEEBD6D
            8856C956B6943A84EF2FFF8C09D9316AF674A1FDE96B3FFC9B40CF90E7356A7A
            38A7BB427E8AC5A1E249F4DA5506CA55EE6F9804401F06B18B80D47E51CBD706
            BEB6B5337495FD7886A840F28EBB167B5DAF5D7D6016E29ADFE8D72944E8CF8B
            7BDCD59FC87EA3B2BFC667BD219A7028EB5B7F7D5B5F56C149BD7600CE147882
            08A8F0D407F8F82362DEA86089FB0076081DB45729DE23911EE274FE93411FAC
            5048DA195EFC35097CC9096E5DC9A3858DC149C4270851354904FF2111340C1E
            00C81E695C1B9E91DC8F0C5EE6E999B72545894D0514D91F98494436A9530522
            913EFC9F375D1B0C9C92CFFD080B85A0A58D20526859C69CD8E90DDFA029DF8B
            F99FF98188A11D00EDB0FFCC07F2560A925752D4D954C4808FA55AF705E101AA
            1BF3F91A69041B3E31C9DE11A0E7ED9E10468886B1DA49C0C014DECE037EC718
            BE184B15E1528D93177EE18F08080E7A9C13C258B8A99FDC55A151B4E01FD143
            F36D0517FE100D36845DC084EEF11320864619C68C0124A1F099531B3219348C
            9DA1C58024222285B49F01C2DF559CD36E5C21E2ADA115321C4B64A14C1CC06C
            DD1E1866D62736DE557CD4C6C09F1F864B259E59F9C9210552C8E02DE2CAE562
            7C68D840650829869EE351E231A2E23E10E1B5B462F4D9601832A230C2878665
            1C492C230C31564CC058353259F95544D37984FB89A136768886D51C55F9050A
            3ED2390EE03BA22234C2FFA3CB010030C6DC37BA8786555DDCF5612AC5A32B02
            24333A56274E63300A247FECA366F486EF6C5823A262221A243E22E430E623E9
            994F4322D843321CEE31A108E62152281E5498DE8B6DA4BA751E2CBE9F2C2A05
            FE9044F039643E0E241D0A9E44DEA2DC5D452668810D51587C99A4B4A1E43DDA
            E48F210531D0505E2882D7F5644CCA640DD224E1C5A20E228526CC0955F86049
            2E2553D22341DC20548224908110039E994F765AE455D31B64822628A20166C2
            59BEC124B4E55BB2655CBA255CD6A55CDA255DDEA55EE6255FCEA55FE2E55FEE
            6560F6655BB2A5619EA5611AA667152663EA651A382664E6E563F2652664421A
            BC511C89C1616E666376FF26677EA6678626688EA6689626699E66636E266AAE
            A6697A26D0CC6365B1434C08C029408422D0E68878C41B68025A4E9F399E2525
            64021C54A6269C256FEE66650E275A1A275BF2A67012277322E7732E275A3667
            724267754AA7721667763AE77646A77762E771F2E6240C67706AC2241467700E
            675AEA6675AA41655202705AE77472E7785E2775DE6726C0E71B08CC48C0C063
            CA277A6A4280EE675910287A1A6870A6C18016287CA627834E82825A66836642
            703E28824A287C2E68855EE88146E8844628815AA8814268826E28854228890E
            E88A322889C2417AAE688CC26789C2688D6A6859D8A87CA6E75B0667794AA880
            3A98AD29C220C5C143D0FF820044436E569361DA58C579C47156267FA6A75B16
            6779E62896BAA8965A2997BAE5705EE9956E298556299982E9970EA798326899
            5AE99966E97DA6E659C6254CF0E6633EA7711AE763B6E995BE4170EEE65B7629
            955E69654A1A8022665B46A99DE2E7592AE79D1A267736A7A146297222E67052
            6A652EEAA55267A342EAA54A2AA256AAA24E67A3BA66617266A94EEA9BA62AA7
            DA27A68AEA9CDA9A6C262941C46A6D36C46DD62A48004D282843282C43A6A4A4
            392E03282C83B02E83322C0334EC6A340C2B3418EBAE2E8329186B34F06AB30E
            EBB126AB322C2BB23AEBB1466BB6526BB15EABB2322BB742ABB482ABB522EBB8
            6E2BAF76EBB93E6BBA3EFF6BAF2EC329102B4C086B34846BB982C2B41AEB29B8
            ABB802ACBA662BB9F2AA56E905000C6BB11AEBC2A66BB8F6EAB11A6CBB12EBC4
            3EEBB1C22BC5362CC33E2CC34AECB396ABC52E03C632ACC23AACB542ACB396AB
            C12EACBC12EBC7A2ACC64E2C281CEBC9466CBACA2CC9962B4CBC81ADED420084
            824104030018694320A992AE447F7AC4B42EAB8DDDA18F34AB2910ACB6B66BBB
            F2AB32FCABB052EDB8622BCE8202D4D26CD666EDB24EADB50EABD57AABD9726B
            B24243CD56EDB462EDCCEE2AB66A6BD442EB81B0D020BD2DBA56ABDD862DBFCE
            ACDF92ADB19AEDB49A8228C2830ACC6CB4B2EDD82A43B43EAED43AAEB932EED5
            4AEEDA56EEBFAEADDDFEFFEBB242ADDD36EEE322ABD5FEEBE286023460AE3268
            6ED472AED79A6BD482EEE48E6EE5566EDF46ADE4FE6DEAEEAAB796AEE75E2EEB
            EA6DE69AAEEB46EE2908A9A0C926D12A443E50014C00414120696DDE6629302F
            00E06645B467C2E2EBAF062509156BDA522BEA0A2EEFDA2DBCEA6DE982EDEBCA
            EEAE826BE8B22DB7B2AEE79EECE9FE2BEB0EAEBA56EBB45AADB9F2AAC26C92D9
            E26FBB7AEBB82E2BD8AEEDFA0EF0EC86423414DBC6D42CBC4EEC813CF0037B2F
            D82AC3F7D66CDBEEEA01D3ACCC822DE0966DB86230B7B6EB0667ED04D7ACB6BA
            EFDC92ABD59AEEBA5AB0FDE22C0C9B6D05D3F008EFEACEDADAF202C0031CED41
            CC43F1C5C40310C46D2AFF292DCC4402F8B044242D00202BAFC2443952230034
            EBD712B0BE5AEBE2EE2BC36AEECD5A2BE756B0C57271C73E6B1677B0B4B670C4
            86EBF93EAC07FBEB817052BF8270B3A2EB160BAFB7DE2FED7A71041F4D4AE8AD
            1F136CB216EEB6AAAE134783E956EED2CA6EB376EEE4DEEFE78AEE1FC3EEB412
            32151F72BD9E6EE37E312307EFE962AC0CEF6ACD96EBF8A66F24CB6EE38EAD29
            1BAFA0E903F57A84AC0E843E10020018012C332FD1EA026E1EB1ACB2F2CF5684
            AE52AB1D1AA00657F0EFCAAEF756F1DFDA2FE31A73DC22F3D4CAADE93233F816
            B33247B3DEAA31249FADE89A2B27CDECEFB6EBBF4EB319472DC66A33FF5E1641
            219B034770079733186BFFAD07BF7328C7AD3CEFAB0C7FEF067B323EB3B30413
            73EE3AB3D532F2F8CE730CDB3041A76BCDAAB2ADC5324C40C04000B143130444
            0F4411EF83220400AEFA2CD006CF6138AB5A52DFDA4AB3DFE2EBED72EBFAD66F
            068B3109BB2BB6EA73E3BAF3E40EF3C37A2E04CB344273D2B67EF033F36DEB9E
            2F02AF34015F6DD76C1C232F33F07E2BFD466EFBDA714C7BEE28C7EE51673222
            F774530FAF547F73526B6E48EBED091B6B1BCF30070BB423F3AE25FF73E5FA6E
            EEBEAA4C1EB19102312D13442CF7F03E40EF3EE032AE0A6DF24AC42F9B6E3053
            9FC56EF055A7AEBE6A351A6FADEB8AF2591F32288F751EBBF1403BEBFC9A3528
            1F75255771377BEFD4FAFF34DFCEB0DE52EB214FEBAE62AD3A5605684370D87E
            F53A8F34088375088FF44A77ED3B9FF027C3703BC7761A03EE816075E58E6FEF
            CA361BE7EC6C7B720E0BDAF226B141B0B24303B1F3C2352118B7D15AF42BEFC3
            2E0C6D45307125B71927F5762757B007A3320743ACD562ABBE5AB020472CC656
            323B932C4DDB332313344FB7F107172B1C7F2B010B6E27F76E0C0BAF03CF315F
            EB0630B06231A3B2402BF5B6F2F6542FED812375E46AB7826B7555F76E402736
            152738591BF0667FAF16B7AD6E0FF88607F4DFBEAD426F582CF77241E4830A0C
            B18947F44098F810EF0324E4B2F5EEC33A50374560EF62FF2A76CF043CE3AB36
            F3AECCC26E4BB3F487FFFFB8297F6F806B2D5AEF745387B68217B50B53312755
            2DB7A63093ABF635036EE892F7B0A2C18570470C78F506D7F43B7B6F41FFF605
            9B343BAFB46ADB73091B349AB7769877753C1FB6515BEEDFD2B427E7393C8330
            6EB7EB701FAF47242F10533743BF352B03C01D0CC47357F4404C775E478475AB
            6B8E13921F5BAD9AD33349DF71282FEE3E7BF6764BB9E52E366D3F391B9F749A
            AFAFDFCE36983FF12649B5150BB0BB727A69C7F481ECAFB19A8218D848EF50B2
            1D872F55536E52C32FB40A030000C1DA0E4300D8C1810F79316B37536FF55427
            F99D57B58F93EEFD5A6C065770B872B2844F6EF82EFB2987F88B1DF14CA8F8A0
            C78471CF356EE2B20FE3FFF54020EF74C184062FB2820F2C68CF31D606B90983
            2B7EAFF1B08E72051372DDB6EB29A331B9FA3836BF2EED56F8B37FEE9D3FB9E9
            72529C132CCD7E2D7063F14C4373B22E03978F240E8C79288F7A7AC7B779836D
            32A84000DC01AF22C30AC04169872CA8C3747CAFB64D732B08BB763E8FB9A72F
            B9536FB3AAD3F35FCB309A8BFB8B9938ED6D345CB7F25B53B4ACDE2A4138FABB
            D3B843BC66691B39C1336B95EFAE2373ED621B74E4EEB8FA9AF687F379B1A277
            CDAFEE6D63B698776D0C8F37AB1352CF4FACBF8BB5E6FE331B5B6D1AD0103C6C
            48AFD33DB32738FC96F5B20A430084410F2B4326ACC01D302B205B33F12AB8B0
            53B2AF27B220F37A652BFFF221933904933D259B328153AEAC53B55A67255C00
            4DDA1232E38BFAC4EFFB0047B854AB7D525B31E377AE0BD7BAE70779789735C3
            2EF5E98AEDAFF77D9127EBE24AFCC412B2CCF2F40D233922B7EB1B80C1A3A081
            99E73707936C0DA379BB26C30AD441CB83C2C9C7C1E96A41F582C22908030BDC
            0134247E1F08830C648A112803F8034002F0AB3008C019780410BCF69A4B6CB6
            8B7A860B2B150304A868CA4C2D2B082D14B46508958552066A59438910292A5B
            0651E2C5880E1D6A540600E49B7D234996347912654A952B59B674F912664C99
            3369D69CF9062480810C2F5A54C630E1C284CA4E298B2690A851A3A01462ECE9
            106347534B3D663CC8D1FFA2D382533B82B2BA5023C58D0C3146450834A3D7AE
            1B9565F4E93067DC9C0A09F6B43BF5E8C0A0538BF65DAA37AB418B6F60C083A7
            48CC56A10AAF424B9A1769D1BC8F05461616208EB004A68605B0B30CCC836891
            1E2CF3C40222321676920100D2568B6865B14DAB782D4C001FB08AA121DDFA33
            E1D0A28C170B573A796DDA8810159E453A503253838B054F86FE3767269BDBB9
            77F7FE1D7C78F12435E5144BF968C4F4E793B3B7C8376974C681819F4D7A77BA
            FD8E7FE3B7950A563FE2F47B4BA9B3A8C32BB2FEA2914BAEE9249AAC288FA062
            2BA20ACF2BAAA0A434290C1E30D21868B910954B8B448F9C92289915E080468B
            239059218E14EF50A6B3FF537003C546016C5CE1B3D3FA7828C53E8481119A4C
            56C0CAA9A87C5A663FACDA636B22B6205C4AC0090954D244111D8AF2A1887212
            69BC30C51C93CC32C5C409A4EB32EC8AA1028323AEB1042B5C124BDF3C9290B8
            2EBB642E38FFB27A4FB0A702E3C92CC186C3CAAE3A4354EB230673922842F61C
            938C3F0C13428A27FA42C984430FBD8A6EA0C6AA93EEA0CAAE3B4ABF21671466
            064C787C46859C02802399D596518D3516EE80669823054A310E6404302514D5
            743310C1EB0E35F02CE3A69CB22C2DFFDC6BBAC6D0BBD6AF29B33393DB6EBDFD
            B6DB4C1E3D9139A42E5ACF4289E8CB72ABCAAA6CAA42F8201BF44DA1FE04F5BE
            86905DEA4F54C3B2F05CFF05495DC8D4E31CCD69A88BECF3375A46DDFAB7B7C9
            3234401D78B47883DFE4ACD4D8AD2DD712C8131805020307CC643C0E13D472CC
            D1AB4F56D835146158E063185B659EF163B61A9EB62D0A1555F7593BAF2AF167
            44DDFB775B70955E9AE9A65B12374D81D98A34D4FCAAE56F6802BBA29750BB92
            CA545003D565B349AE1D1C4AD99FBCDE58CF452F3A38EAA00213ABD9E6F2AB77
            CDB18D2ACF301834C10832EB4C4DB0B94B9FF5A9333B0682D5B3651479209460
            04B803D63894894400505C3EC521DA94092D1ADC0A3AADD481202BDC6E517973
            7754E28E3E71CBAAED93AFBABAF0AA2B62B54DC94913A77DFF1DF870CD735BDF
            A0BC42D74F0993C7285BFF2AABF57AB8E7CD2A38D280F1BD1A39FAF2661B7B05
            FBC37037F5988BA87A5133353AD1AC98357EC1BE33C913232E7D520E4B65D2B8
            2113A84E79110E8D22C10C14B002400066743990FCA00A42D2555B5804920480
            A2582C0805675E26112BFDAB218A6A18C0E807203B39E73A1CEB60929487B490
            040F852954E176D0A493E7302561C7035C7F5477A02C7985493D7BC8753008A8
            A9949054F411CB0FC73629AAE8AB76D1F1D99C10B5240B1EB128656118CF7E83
            AAA0206B4EE7410A000C1300B124085483BB4EDDDE800300E0601257B45E5B76
            B20CF5EC507C0E52E241161225662DE63149291DEEBCA718F37129675FC95D18
            77422D3A36066D495BE1FF2219D9C8929407246CD98F47A886437249CB63F5C1
            5EC1B07248078D65548031541EA554992C3947927E9A9D1E5B37C1FEC0EB877C
            EADAB552292D8DF0867D00A8980A2A22CA7569912D991003006290869F20E568
            05A1085A04B39FA248647B48EC1AA3FE85C31135D1683E6958DAAC68C4A3688A
            3E4F5497A0A225912F39129D659247AC40A2A3EDB0A39DD1508400A2E1AD16AE
            D22F918225C1825648036950928E0111353F759F721A6F4ED01CA5F8B237962B
            22D42D1D03A7CE06EACB6B75C53ADFAB4FBEEAC445780040860A339CED94121D
            4D98F106C6D44B29E7931ECA14475F0605514C29C511236251A009EA27EE9E57
            B73EDD9083B26C5D4FEFFF76475C224491E954EA77F44108473D0026F08CC348
            E6C1CE04448316EE141E4894F4A788209139E0FCD8C364A953E9A0E54D2F9508
            4E1DE2D3593653876F3217416D58432CE2A52745696BBDCA89CC4591154AB4C3
            4B0C80F1D1B3D1E53F8199CA4961700049404499FCACCB8832D4D5D859252BD9
            9BC8407D36B7CEA62F2CE3ACC89D0659D28B4EF475773A8F571B0500ED2C15B6
            DD51C40043411278BAE625BB00C054F751552390649EF5DCAA4EB0F5D2DEAC71
            3E94F24BA998B8BC07998BB2F6CA9241DF52A5E77E73204A3A64522A32D64CEA
            4D6E04531E18A982904CA4010D31B8410CE01697181C20063840031A00000C75
            1017290E51A2A984095FFF344064A610B5E9DD00B54A74112ABBA0A4230CE154
            9C9B520BA736445D52B62628AFBA2BAD9402E15959E7C7C5F02EB621AE093CAF
            6A127D5041AB2C09C66E47024F20904417293613D4409ACAB186E59B1814D412
            6D8747E5FAC9ACF0FA1AB5BE52D94535055066911BFA5227D953E954A1E39357
            97CEBBDEF602E000EBD57200AE5C5F60802400F145C31B1C6317686822BD0710
            03E0D4923BA13A2693B3C428853529CBB488D29A455B5E67BD3B37D9D5EBAE50
            B2F1BAAEB967889C53C48986892202700A94B87824F374F448743B555AE4E401
            B3CD89A5E939927C5021272FDE47534BDC5B1594BAAABC6D490BFDF560D48105
            B212360E160F3AB70263FFE5CE7B0A6C9D2BA51487B8B45E7E8ADED0B8E79EB4
            ECF3616564EFC16E208634BC0140E4B34873A2B10CD32903CD6948830A20715F
            B835DB07EC158326E693D80133EAD7F9759EB562D75D7E69049542CB8F59A764
            E00F76AF849E8DDF1A2955430FE3F4854955F4C051A20F4594DAC45480C048B2
            2ADC7DAC78AA9A06400224CE62499B5A2E0B7F78006ABB0F78729CD2047C0924
            01504B259D1C2C7AEBA0DE769ABDB61635604F3E25C7109A3B0BE669AC125BCC
            07892C377DDDCF512BC09FE9AC8D949BA73BB45889103470000960C4001A0339
            6F0C962D17312B1894F042DD9C9FF4DC8814A46A4834325560776189D24FAC74
            0A658F6FB73AA0EE49E5FF22AA9345104D70BB275CE32769AA68F6115C92547A
            24106F31007ECB707A3695F02339318B7DCB70904C75EF30B9A721EBFA978206
            2E8FF97CB7658F6DAFEFF6295A0D7EEEC22882E7AA49F16BD2AD1F1001B5C393
            CA45CD99800EBAA4533CC42AB6EA003000D5538A863484C1E907381744DE7083
            008821137048AF01AC8E03AF70B727EBE9579B8BBB1E9716CA92D791F2DA35FC
            2608F7146D0CEEF3573188957759ED5D10563F34047E77BB7F1AAA053F783DB3
            3AE97DAC83C5FB2847FEE1190492D43F1F5420EFF62100A1EAC416EEC48A800A
            A0AAAA44CD2568ECAFE48E837EED89A0E4BB28C45AFCE29FA46D4AB8E682864C
            6BD8A84B3670DA8CC7B3FF006E4A10E921CC28276E00630A699C700ECEFCC388
            0E220684EE00E0060C2081F78CC97E5E707CAA0D14C4E006606FCD365054C6C7
            DDC4E99938D0AF48D05E0AAD9AE8844B12A58492A5A40AE674546F89BE88C73E
            8FEE40E2B5DCCFFDF6CEE14AE2C4E2AFE1FE2EFF04CFE3122FD2E8A9F148C20C
            F7A1E1E4E148684134D8A1D16082C6D687AD706E87EA438CC84BFAEE44398E6B
            44B285CD4E6F6A32CFEB46F0524A29EC36A89C426B19E82B27702013DCA80215
            836EB00232540BFDAC2D29D02B06C0E0CB1884EAD080DCA0E23116E20DC480CB
            7222065E707900E3C7FA0DDEFA642DDA24DD5C0A5FF668174DAB9B8A6A2868CE
            D6CA26C3362A7A222688FFF0453E408C0CC9901640EE24E0E90846021252CC0D
            01EF0D1D30C6A2A101D190104A4CAA24E71482A1D16801E19E26276A09BC46F0
            85F20D602C69AD8A8A70D24D408049114591C1B42951728CB920053834A56E8C
            B160408105CFC8B4B0B009413041F603F3A6B023CE0C00761024A84EBD1CC500
            D2E01EDF6808AB2E006E40132A71202AB002E1052392CB208171B2320913094A
            0ACB29B3286395ECA6B4BE8A6374ECEC72A6EEAAD1EE48EC0C09900AB0710D1D
            8FB7DC501B814B47AA6A00A1D2D3A8E0086861E1AA0A0EA8A0F05E62F2720AA7
            0C0AC77AAD8AF803302684F3CEC64F4C47DD462A5014EB4032EB42366FEDBA90
            B5D2202ED00030DE4279FF7E6A7C62B032041222A94213C1000C00E00DCA03C0
            F626BDE2E206C6CCF2A46D1934A10873E2008C49AF486F951CE220E8CC426E8F
            C046497004074E7A2DD0F4A4ECC2C249DA8211D3AFC140889572AAFD8452D12E
            0D1BDF10B71C4FD46E8BB7F68FB720CDF0A2C1E06E73F1548D160E40057ECBE0
            8C53D55C82E406ED9A16C64FE6D122238CADD2722DF524428AC72DF326D722E2
            9FE012CF680A5B3411006E60AE1C4C290AF250AE0B13626556C4408918E1332C
            E932EE0014400206660B1AD84BBD866F3AA2010D72102434C12378022FAAED0D
            48120DD46E44806D3B3DCF7596C3A5922E0449D134794C1A054676A2309BBC66
            B4E88A840EED8464F3EEFF82934106F0B6C00C13F80F24F6100EFBAED3AA4A2E
            F86EF09012003A4DF2E6428DF66532FC8C7AD2333F7CAD67504E4F82D1A0488F
            2043446CD407E60A0A20674AA8224B201B6298400207AA2B19F50D9418C58A2C
            E21200E0087E420B1EA8ADDA13088843186E7477F0B33097E151B233C1A64D13
            D22077906E22E8221AD2A0EA3EB26E1C24436807EE900E877247DA864DB232B0
            D774EE1F79664A6FE8C9A6A4792865325AD320629344134D46E3291BC12C14A4
            4AF1668B9E7C731F626CD2160F241CD0D35440ABE069001FF051281488866F42
            95643F86A8A7C8CB2F4ECE412992798E08829A4588A48D02BB266B781532C813
            0DEC253BE16D1F9B4270FF3A530B74402FA061CDD243128C2F14A2423542A116
            33D2300100064E612C20082E0326AFC493B3BC422112D41635414F22CB926E29
            DADA84874A0F87A454C0844CDD62F53529AF8A58A7AB7C127DE2F543C3D0B52E
            1561078EC6FC05511996FC48CA6187A6B94684272D8F2E9CD0111531D6848CFB
            7C829910841261C84FEC12243E64ADB644F3AC504F4E30285C653EE3C5229E21
            072A67B252860F68CC4A01A03C32653294F0930876DE84902E4E010D56202712
            A34278F489AC44AF5E32B116CA4E6C2FFA82C8613D6B9C266AF47AEA3559C97C
            1C2C14A83161C316B6684CCFCAAF3F7A72F45C296812B26C4E413A803626C546
            2AC0B2885096BA468583FF4E016A5600174D493BE367FD9E87B998E232E2206A
            1362118CC07110402A6A0522A066D9AA0E6AEDC5E818B147B9EEBAC8F3003221
            6FC2A2392C4F18D5A657CFB533D78288EC94633676C8108218FBA326794C6704
            653F82526C6BB791586D750967724BB01F19A6B9A6CB74250B60A0936A08E437
            C252051DA4570F515E32A116658FC2865629C2873B93A362EDC548ECA0CA6A51
            4019E4069621657E2414AAD4BDC48025B52E35C34956434FC0A22113AA0E07AC
            2B35C92F960266AFF629438274F80CD46B0B07B5C049EDF6E85F318F37B4B62F
            2CD576131878480E6E65B7BA58E9421711278B8A946CB5208D26C140F6265972
            D7D6C82346B121960D2FFF7F4A3BA3C41FF7824A12A2215580F9BAACBDC66C41
            6C31D6FA324BEB680B41F18D8AD58890886489C9619E0C5883AD86F944D8FC04
            A294D7433DE2A882968652CE7A47CB8879461E695781ABF87758ED39BC075F82
            3710A1AF48FFF7A1A2581F75913EFC222CA7C47E6990338942136FA0DA8A3843
            04E6D53A171472CF85412256ECF88E6D31060A6A8DB06950A28492CAF826DDB7
            5B65EF43D9E26277483A50786A5392AF2C4F9A882A7FE9AA268BAB18D5B27753
            98FDC4D08A3F1978686C19C5181F272376A533100D915198E56ED5A578E358BF
            3226172551C8CE4213D8CB0008B44B36D3DC00B82BDE9798F638D416A23013E0
            1484F98E3DA635B3F474FF9242ECC6C28EEAF84B7C8CEC40D8043D78864B494A
            541249D08FE76AD0F380EC7A89B4EB3A028141199D672C271C96473989065F88
            9DA7A3604F7990617560B2A67A0A46908C03AC7A5122343159B1281251185A1A
            B2BD6280E87412AE4044A1153A868519276ED1ECE4392461927FD1E228C8D798
            B6E6FABE4E49F3D527FE4C350FB2C30A0489CBF6E6A8A3C110E4FC3CEC2AC036
            9D637AB87A326085CA0B0924519AAC8073674D00D1172F0C30E828A5C7EE3F20
            4B29CAA51643AA88A656C81CE29683D951A0F7C7525314CBD50BBDB00817A287
            85F97B25161AAFCD4851B70401853C2741899E19ADF9F1963AB4732B1935DDB2
            8B9BC72CEDF16700777EFFE06244655AAFCBE49E98189106E48AE44DA0017969
            9FAB427D22431586A29CF93F24767A634D195830595D2A09B93062326132DD0B
            DA22940935697B900C52D7CD68D3C3A195A1080DFA60101A988C7A90C5937F91
            883C91B64E8FC86EBF62DAC80B9B4333F5544E262D49273FE8470391F23AF960
            F7DAB8C584E42A8C488777C76835794AE79E55BAB181143EF4268D7B56C10884
            95FCD814968DDCF023D77A9521192407E3EB202F3296EB55918D8388DD024B74
            2FC92E624228301AA80E00B6DABD3612076070DE2053BB24744F00F468D9E42E
            AAF948032960508F4B942443FBE9A6D1E78BAD1BEE34828A8FDBC2B9A32B61CE
            257FE3A15AEA9ED3AE62FF37AB6D5E0788FDB917916C7F95E7FA36924BCD82B1
            F304BF41420CFE22FAE80CC9FEE3B8EA0430BAC9903E42B539308FAA9AE85AC8
            514251126F0DB1108C2A0C1924F0B2F4C012C56369524729AD9BEC3B699AD096
            3810616ECA0EE59C2F1CCCFD301E9DABB9B71978AD768DB8A960D23CC858EF9B
            8C033FBA660331F28CA6F59638534A51DB4AF304AC4E362306E4C7B2A773D725
            A23182A8538F2BB86BDADEE6600C400C2870AF2E347F892D2D692CA093238AA4
            0B969F33788DED8AB8F65A14C3ECC0707E53ABB5C630CC537D26FE70FD027799
            F046A5FF12B4A0D83F175C5AEC2D8E0C1D2D298349414113BF1B99664AA46EFB
            A1C5D014D1A5A7D13284FF1E84519539BB97E53EA32642FE1521FD9902899C41
            489B02CDB82E4A1904C5351304F41577B8E68CD472D527865C92F67ED7DD708C
            DE7497A53B1C3D605AD5EBDD5541429CCAA68888385D54D6DC9D67343DFA761A
            5C835C8A87AE2BD71C82051D666BB83D8AEC18DA123D60626ACE32FDAC2624D0
            80629A34827CD1E0891F519FE00DAEAC0D1A625C0C41CF420C7E220DF23E2017
            03B7545F431C2AD2D59706CCAD6A276DE88262E1B66C7EA6C2ED1DE84F027757
            93F210FB3D8A8B047B1B839AD6E496C87C743DFBDE765CEDBC0857201AE658F5
            5C8A3C41E27B93FCB0D6C82D06EAE7D060BDF4183F3952BED0EBBB77679886A9
            6A96981EFDFB269BD674FFF47C0564A84D98BE506E8FC2A459A99FE917877BC9
            78AAAC2039829D7B4BE4558065ADA534EA2CBE3CE8819EE4446B2FB1F4203148
            C77107C20EB7A5D7EDA89B7BC7FDF67E8D3EB28929D17B92885AA88FAB8D8C0B
            1C2D0346994001E81CA524ED1BCC903959AF967D5B4F8CDC424AA5F96054AA25
            670D2A7AEE27E2FBB8F049D7C0A9A6E21EAEB99C89D793A62D308AF7C3B37E3E
            F2237FE811DD864516628C238C9AFAC23070A2E3957ED4327B3245AD62F922CC
            E84A8B4E7638BF7B3BB137FC9CC0081C41184B2E6E0007542ADA00C2D4B268D0
            A2298B66305A1A34696EC4880120A2448937D06812082D14B46502959D52B60C
            94C165CA42292B09CD23FF4895090F46BB3151224881A0489A0CB96CA3B29A2A
            33863428B2A4509C2B35AAC418B4A6D2843C3F7E24A9D426489E43799A349871
            2346A31FB372CC9953A3C8B14C2566DA8736ADDAB56CDBBA7D0B37AEDCB974EB
            DABD8B37AF5EBC9924469D2AF566508C39AD16DD49126756966455FE646CF063
            B4A04E0FFE9D6A996465C51A4D7EC40100874A9355A572142311C7B28FA1484E
            860AF4F1E48CCA34819E78404C9A8D39859AFCBD122728A5078B478318F136CC
            9831D064123CF53528AD617DA7046EB26634D4130DA4F90A59A864C31B0D1316
            883E736994BDA53FE6893E6CCAAE9DA9430B8AFD6476A282A1860C5E154866ED
            456081061E8860820A2EFF98565F116125D66C5F75D45F4D5E99C2D251FF0947
            94508E19C69F7E27F9A7CC565ED584A160E5ADB41268379064D96406C5971172
            116992124A6355F7986FCA64622300CD81455B67965DC8518632FA188A010144
            04A426D11496460C4F4ED45C50EC81389F50B369F49F4839A581E54EB1995915
            7528C68819691C32461D93CA6C74DF633721B61E74C24536E757748289149F95
            7D14A8481269C260A28A2ECA68A38B3A0800283E26461557474277677FC55536
            A39F37612821A8D3798A246256D1D6DB53648D8586906AC248144E06F8659067
            0072565E4E6FD89825587F7D74188CA45528D578D184C19DA4930D55D04E3804
            09C001BBE13ADA4AAF15FFB5D1B257914951006FCC045B891CEA5421534B4A28
            297FF7F1E95E79821E496A78CBBE09DC7FC40667D89D12BDE168BFFEFE0BB0BF
            6F4834E59F48E287E78460614868756E9A1A18AA204E1CA26CE28E489366C182
            A2899044D1979558CA40B4829660A29824B0C382B25C6899AC561CA05B2E79CA
            1B0CDDBCD0CD9904F5E629CB89F15447AC19B75126B751F4ADBA6269ACAA6249
            E6042D002F224CA45026566B98614B76446253986D38F1D759E324EA975D9ADB
            27C3E27A15F28001BF0D77DC72CBD5714492EE77F7494D532790302AC46401B6
            2A71AAD2332A0001D2BAAB769AD56085D53A547C289106322811F9996FE29AD8
            A8B27A9DFF2452AB11ADFF90346D93333B864331ADCEFAEA0E7107119E431729
            DE4121A161E301687835E258532D3634D903AD9EB77B3B7A782753747A0AD8E4
            F6998424F06C1ABBB69F520158A19C210AC5D3BE737F0F7EF802131C94B93C25
            D56128C800104771C31C4E61F3F57ACD53D7C2E16BDA9AEEA1692B7096033012
            0B81A94E3599088EBE021F9BC469731211C39228C7A2371C2D263748C3B41052
            B0B064226731B8C1015A172D31640258B8BA8A5072050D4DB40C0040630C8F90
            17A7FF4403521189016D28B312EA7D0414F3D353D928F6A1FC916858F243DEE0
            3C321D99B10B8734338EA1A024BE284A718A048254512E039E01D6E77D460889
            46C080805028CB71EB5AFFDB4D42F6BCE5D1488969028FC98C63B7245D6B2907
            598EB298E546C8A561560008001A1E78BA684C3022B97943B660252949058F27
            D1688D4B0E3248DCE0401378BA21E4DA651B89F8F17C4C63537600198DBA1132
            7144ECC85F98189452EDA78C48918AF4B6261F85BDB27E459C9FD8C44614B751
            7197BCECA55A2025A1326E8626A5F1840A8E1033453C201AC950C16D90090689
            002124CD0402289A69042D48A48B7232E29E2E7615AF690B222FB34E164B0283
            07598738765286E8A41633FDA4643299F8A044740716C02491779F92A3A42EC6
            930F72C72069C0C1DFB034C90FA12A7EE569590C3231C7EB8129724EFB1F00C5
            294EC77873622DD15438FFE3A4A7B0F9275DAB5C5CF5CA169ECA04EA50BE6CA9
            4BA368C5F96DEF295D82C6FBE2703764ACE00ECAF8041502D007902802011F11
            0600BA68382084E2195400401036128900C02154D38BD1A84EC599C8A1060DFA
            FB1A466E13953A19EC27EF8C415498C8408A40F430954195393144A9AF80E723
            111958A42473106834045A0648E8D3469531900029227E5422FA5A991950750C
            821BCA58BA4C94B29E18E53769E4505801259F23E23598B6240A10EF15576578
            EFA5A42D6DC0EC0AC023764A541A13CCFA62225566AAE0012429850ADA178A6A
            F6940A88FBC46C6B65389C0A9193D8C25C61DA5393BE1CC0572139D132DE5930
            23791133D190081A7C15FF4092A0564852229B4A8A4838AF3D857B1ABB8D83C4
            0031016EA4212B888918DE601A347A067711B96E552077BAFA59884D382449C8
            C83B94D2AC096C56AB5AC3041CABBC950B5E900DD4DA52A9B0F8E8D2B414AE30
            8344E9217B052BB04EE1E2480C17C6A46A542391008052996A81653015711F49
            06152A104B8C54357EF7F5D1FFFE6942C154572237B4166033539181A04CB21B
            89481A8A33464A35D1202BF11A0409439B1DB350260EEEE7F2DEB042A9C1014F
            E0D21C726E3064CC264E96EC04516089442AC71106323C3B6B624E18A14B8D95
            3079ABD867F5E94DD1D6D5C27CEEB38150FBAE776DA84E233226323B230C0180
            C2A74A05C92524E280C3FFF554D2BE455C48444CC4BFEC87C87FB5DE070F981E
            995D09009A00CB0EEDECB05BEAD82574FCA854ACD218124AEC7E21E918445AB6
            DC36A6ABCE0309E53B5D36B4D134B486CFB90EB8F2D63C6339CE4C6339655CF5
            DB4E2503F671D33E4CA6F0441CBC8E472B0C8EB192D43C613F8B7BDC7181D486
            268526D6F08D8BFE094600E290D48C20430581632615528C6215DFFB2BCDD401
            F5F8B4C6224E682A7D416FBD0E23E5DDB0337AD225A31673F558A9184F8DF1EC
            A77A8904269840C49EC9F124DFE493C8843CF7A02C7C95466F635601EACDAA80
            BC768F4C78A10CB5F593FB0C5088749CCAFAC867806FBA3380B3D79F70937BE8
            44DF07A4D0A8A1F82130FF31868E592404600A9F066E19891E8B517BCBDB495B
            DA14BAB5EC9B258E4A441AE441CF53DB73ED46CA5C611B4607C69487943D13CB
            6C4A9FAE946E8A44745668C444942C543AB4B754E0CFD8E8C8A633D24B3A1E4E
            D388C828663BD93935A5E1E6414E780CE776E7329DBE1346D66C115E588C3D5F
            E41B157DF44487D49D6295C339B989617E83C36FF25D4D8D60E298D3D1266D0D
            87EFC3BDA69A20BB547A3AC74E1A3D69389E7DB3462282DE60EBDC44A79FF6F3
            44A4C09B47C7F96E227413BBB20C6E112C9D84D458A1B82D9BF331853B421A4E
            ADD4FE6542170A2BDBFBCF781BC3FC397F4CA32285B6308DC3F26A05E630D046
            361189385AA427807D86FF5A6834219B266626910CAB8338D0C06820110D2516
            1147A008016007BAC568CAF280A09530E5734482811AD36280E8214A8D042E1D
            91271F3736EC51656CF2258741512A777064437211215A57F24FFB671AF1E378
            5E6219B7B1025C151DEC811C2D247DE12468473444D0475CE9C1767082598A33
            79B0166030643D8DA33C8CA75A6AC6114237805FF852A23452D4D55F09842A3A
            211D53A212F5838635F115E72743EA8543CA0639A7A77A7A975A99D73D117103
            C5C13528233D00E64F7C826084B67071461F56D55CD4E6151C0711582606D010
            039444389C9251384413D7120DEF0466F2241CC881034CA4881D382FB523236A
            E64280614A8AE75122B2FF6449C73CC42153FD175A90178060888B2E55800F97
            3F97021821B32396A4236968219C1465090483B66412859231B3424734C211DA
            678210B422FDC1360D07768C832BE78460DFE51A93A235040300DFB126AA6244
            C53852AC284F37A110A9913745E2202AA009B2282268C448359779C6E7253567
            2B66331695B56B7417604EC3366CF2715868467CE385B9C89052646E720232B1
            825854D1588AB788BB164B5AC349907536F114227DA11AAA1760372111449115
            64429054631844068ED1265EF9D734A0706A69A412D1120363E65616A36DD3B7
            44A5B28605A10957D2893C170D7675934BF617A9263C6B048D84367F16D93C1A
            0970A9625537B47FC412FF90B528220202450DE9955474745AB81E95B16A74F8
            76E24221F6712A92052E85D792E538773B36797CE31166D1299272257CA22291
            B515C99636C7F563A5D8218DA51E27834B64A82D6A629593F2875FE323D7120A
            E7F723F6D4879BE62C30D034789431A5B2846D223B8CD196F5118593D53CFB97
            61553970E75255DB462AA1C0525F099BE2F390BFE1609DE387C3157D7FA83115
            0357665663323673FC4712643209CB884001F6207FC12D6675968B548BE0A769
            C51122A738823B183395B7235E13876FC69ABD99465A4847C618125F86320291
            5D0FA62D220943A8A49A64E9979C94956B093288A888FA852F53119D1A762FB7
            189BFD0937BB289D2B39FF1EF3B7189D725FE8737F69089A20378588B47306A3
            4EF8C514A00011378940F6840371B265AE116BF08251DCD68F2AF96C24D197C2
            412EA5993854133F93F1395875677875718C5412CB5199D367723956553D879B
            23727F9DB44406CA81C492A01DBA5A55C52774F244007016FEC9A46F234A8E47
            7DBF888D8CE98B5B3286385A3B2EB738E8B3787A050068405E34711535E43BF1
            5867A29309C4242C78C25899C36478C36D9B783368E0030F71000FE11068C010
            BA01A6A2921181154E6DA95F8C7332B024858F895144B11D355422EBC13C8639
            7F3F8A962C576623C6A6521A739C079C74079F6FF26A63F826FCD9A4A3CA28A8
            F53BF4029D71F711C624FF11445512BA655B88A373CB7337BC432A72B4782768
            3D37A89A76D22A37100023614F7FE41ADA1703E737ABCBB78850661212D44120
            04ADD10A4230100377CA10911344D8F6A6A559AB3C123F7DB92D1F947649322C
            F3A45E28F173D0B71E81A64873E784959227E9A5319575368DC12E5B38190B49
            AAFB9A20E696965449516E655446202315C8532806817177953194445BB9602F
            687C5E9A347783A04252727553A3A6A0097C241AC1636D2C82A39A405F201400
            79BA100B7140684667278B33B8D3410F01007CC43A077003CF119AAF0288B34A
            1CF3322A56D8B38B34AECE96ADA1F2A0FE3490B40422BFA3B3926A303ED28D63
            0344F5A3AFFC4AB55524FF138F179A52EA11CA4429D5B40C95662FEEC28FCD79
            B30A0331AA6A2AEA8457D1F620B7015F61013B018A853FE69E26111377DA1C07
            8410BCD186A0432F2731126A770A1C3A2519F40662E010D0120362A074F6B151
            BBD918213A85E7871F0B456D9079A38E6918DB8659F1117F42F4B86586360DF6
            3850787F84F29A55ABBA07024C66783CFA3346CAA0050FC01EE381B098A60C12
            08000F8011BA8B4C31993ED7087106D12A94D41FBDB98984352B169A4887A26E
            13856A1E82150B015FCB431BA720062ECB71D2CABD1261000F810368001A3130
            49A0F05E992006DBAB1A77C798A51B34A1D5A220D53BD7D2A289D14A11872490
            058E7956667158592835FFA075169FBD887A0329AAAB8BC07761AACEA9846359
            6287067D5E2B750701068A265BB4155576B00CF326ABF38496E0A16116A240EA
            B41889A70CDBBB1B60E2202F721DC3CB9E8C415957391533FBB2786AC32F2B11
            0F71C389EB412A306AD08A033B33581291C2CF577CE25273EF4B4024BA731833
            849C8B278448443DC7596A54B40CB751512971736789473A9AD5690A539BC063
            FC16A2C4136A292CF90B23BE4B1DA5706FCA9054B9A502AEE7255E5B13511554
            6F121C2845B98B3A42351621E4C786B761BC1F92A2F6B37615277F2E984F8DE4
            2E60221908B12A30139920211974C240929065873243477303F3E81F00CC1E02
            4747FBD34F800736DF18FF3C57837D65446B6E962E3657CA5C183D4A91B4C547
            3118495E074CC6BDEC1680E66CFF05604A080DDAB4BB2021C1BC050DC2F06E27
            C2CC766019C3B00253B5A5A7D6A956A14E09D8643281C44F72AC3CC382DB48BA
            7777975E15229918710E9B303AE12E4614C37D0400353811A17810DA070317A1
            956CC56001FA18D2D34E48793F90594BAAB8303D815C9ADA1B7F2B5198EA4FD1
            939AE543466021C6BE4CD156F4A0F5C2364B27770A385BCAE0C6819354A0C0CC
            41C53D46055B3C759AD147933BC44221528CF97A3902110A0E3209BDC996FB48
            CA8721314B042393B1A77BA5C351D3BD1494BD26B11CDBCB3A66954236725D6B
            8490B95CC2290867F263FFAE90334BEF52BF727227A5A136F6F82EB3B61E6775
            9FA9CC3D76DB95148DD66DE1AF00822E3AA8745BA10809700AC93C4D97D0CC03
            240901C05384A86C1D61CA4C081A81592D669C38A2F31ACE15A39843A8CE4563
            D0130A91B43A4E12B301302B1FE41097ADC3891BB3F00CAD30B10232CB3A196A
            BED6B584D9988A8F413D9BF92972476B3C784BB012CE0EDD25ACF977A0BB8FFF
            8B71D559795D287A69EDDBBF241194150A77073A96A71FF37604F10306B4AB5B
            86030136A502DC8413F36604C0F1D78019774DE420D2A75D46D6170170C22CC4
            1411735C9A17AFC5D23BCFE74E2C9B0663841060D11222372562221092911304
            91139A9006883BD4AB93FF068244C4D213C0E6DCD8108342D6DDA1A0633E82F2
            8F477C3EB368DA0DA3C612F3DAECE4992E6D1ABCFCDBBD5C803B581DDCBA2460
            105BD321CD3CF5D1CBA05BA7A00802C007CB500A5A9000A0105553A50C15FC8F
            50CA277676236A3923DCE2A55F3A2B3832D39950B2771456D919A7A8D8493D33
            CA23618E6B921FB5BAD5F92116EE821AE8DBDF8C7A34478679EAEDD8F6E12B6B
            C85C7F87821A06BAABAD435C7C877FE5CEEA0C414849B428951ECA932413BDE1
            AB2B863F0636A7B8244461D2119100A65013B0CA5B3CA1BBB40555AD2A5D3CF9
            9B856183BEC31FA871ACCB60643762213FCCE57377270C5C2F807A8D15F75D28
            732DA0071EC31876D167FF3990B2410635D4A3ED2AD673775616527B728F06CD
            4A0AB47C1A727F5A4A6B4CA8E02E282F22FA963BAAD01A7EE709BCC0FB98E3BD
            73AA99484A6D29CEDF68789E54A5FECB1FFF9361260213A2212913C15C06F45F
            676477A9A91EE08777E40A5223B113F5E99799698CC7737C32612E68D05EDC6B
            570190B46D1DDB96F2EC58F9947FA7A563A63632C6E738A413321C36C0213D48
            DA121C39703A64E7C74EB5A6F7ECC5E7D4159545C31BAFEFC79B1455A2ABF237
            9DAB184F22066FE81732D43262D05723728795626C1F4B3BBF3E5E9E05142C01
            1C2CF85D26D1310E7100A9F8E5CB801C366B8DA000D9AB73A750329F4AFBF21E
            557860CEACD91D98442AFFC0CFB631E83DE7A6FB6D3B2A53A6D23C4614F112BF
            AF474714A4EBA6B5AA792AD7D09D6622FD65A9DB79121D730027FA84484F7035
            64563EFDA558728AD27649AB922BCCE79768F0410F35F8DBBB422C93E5AD6323
            927A46DAC7BD53031B830A27190FA979B3B318199DB854799DDB6DB4A4D00182
            84F8FAC1876A969291BA60DFCBE6566D495BA0E9EC78EA77E6D0A98F568A528E
            6D39063084F1F13FF31877EE75107D042D1C638A1A294405CE965296F8C90F42
            66252413AB1E3384D4D0BAEC9B014424845168A3ACDFA94AE77EA9DBD378D2E3
            B999B569C4454B012F7DC68EFA546BAA98ABD8650FB9F45BB66F0D93A622F708
            F33FF33D857A764726F1FFC3D1A20C00F106C0C01B3200DCD04470193450CB40
            298B060A9A43881297995AA64CD92965D0424DC4A82C94B28BCB069E449952E5
            4A943762B08489528C814C233D8A2499E965CC93D144DE2469AA22C8850D371E
            BDE930E348A5241B3EA4D834A3D2871F4B4EF44834EBD5914C8D3A9D8A13ECCF
            851FAD62CCFA11944F8E1CB7A25DDB31D4C94CFBECDEC59B57EF5EBE7DFDFE05
            1C58F060C2850D1F466C38E1C0A6568D1AE56835A9508740399654F63863DC90
            5EC54AEE0AED28D9810F7D42CE5C1AE747310032A57CD3DA359A94317C323DDA
            F4F2E3884BC7B6053BF1064F003170A4C4E1137334A513E39E3E8E32004C1C23
            D9568C269BE743A7BD71FF466D48D9A8758B42DDAAF5799D63C4AC71B182A7BA
            597E6687D7D99FE5DAFEF6F7CFFC473E1D6BA4EF8C3AE98DC40E443041051764
            B04107EF126820FD32BB2E2AA16CF24AB9DCA08A6BBDB898420BB4A450A3EAB6
            81C08AABA1D7005826BD8604422314185A7A49930356D204AEDB88222BA4B240
            AA88240A2D6AE8BDF41642323D885A8488ACB54C7B6A3FEB94A10D0768D2DB49
            2531C6736A22ED608AD1B988EC8BABBEF2E6C3CD2B8AD2A46F40AAB0B3482BFC
            44836F358DFE0B4B29A1EED3EA47C97ECC2F3FBA1E24B450430F45D4D01501C0
            ADA92837DC0FB32733F230522E77738A3FF62EEAAEA2650C70EDAAFA94112880
            879E5A88B1896EBC613AFF9634D96AC04C2BB370CDDF72EB0ED58738D2D5CEAA
            36143234DFAC22B5B8619D8B0EB6A1CC8C86369EC4086956002F9B15A310DF6A
            F23AB4AEEAF0A8DD7CE3D2CD6EB7EAD3DAA394330ABE5FED549343F91A1A3451
            79E7A5B75E79174DAB4F54813A2BA8CD22CA1443D1DCA2A8D2A330E292533C5F
            4AA3B7AA264A63A068B0FA4899E3601D89A5880782553E6B010DD1D373CFBD74
            34AE829593628A29F4B6C9F09A1CE938DB88140BC9455B5213A72C614A235FD0
            E08CB44D54D90D56DCB0463218B8315BF6CEB3767D5B93A86B49D6B628177DDA
            D6A39334B1B76BAFBF063BB04533C24957AC705A3A676ACD5A39BE22A14EF8DA
            299B05C04A015D6C2D86FF89068C4662E394D95825347AD69353B2732ED94E9C
            B212323CF9F2AD93CB2911A7B4CBE8D0A855E5D00247E900AB29CCE4469EDE68
            D45D77195A7A3DB980E47328C99EDC1B3C216DEDAFC71FDDABB852CDDC94156E
            DEBB52A6C0B08727BEF879230480DC9391BEF3CEB7964ACACEA5EF6359C7D104
            1CF6B518848C4C24DA6E58866DDC00C01CD4E2505A01871B5438897094FB4DBD
            236695F978B5AD1CEF6FD4F318E7E827A4F0FBC962008031E7BC49409799487A
            60033DA5384B2531180E0054008A8FA1A56552919CB486E51F3799076871625B
            49E002B7F8D8E95F9C011976A8F63FFE41245EC683610C6588180112ED3B9D91
            DAE1864412D4D1AF28B6FF62E0D00EE82F1D9D482D3F6A0D0E5294119024A421
            3748D602913790864DAA57F1A1CC582A6729E55C8B534DE3206680A71B9DA064
            12DF72CFC91C16C09488613747BA59FB94213A31606F68B4FA580FF338272461
            6B53094BD71DF9E328AC21C97A7C9A4AB83CE328120628780331D00C2539494A
            E60579645A5A48BE952B0D39AC313C0CD4DBEE17C4A61C27136BD388407000B3
            023684369F3AC94E8C83123430277427C19CFCE446A7289D8966B96BDEEF5667
            48926D11296F88A218A2E113A4FC306EFE4ACA441C08BE9044691951E41834B4
            B3AB26018791807CD39A7E05C8EBB4D043FA9188F846C4BB679E33507B1C98EB
            F8F7C24AD6D39EC41B1BFF878A26BBD615CE712A2BC9EE8A8427289D26236849
            C80DC6D3C4BAED4D4D68390E34D2C03E9464021A3B3B48463211C50368A279D0
            FB597380E7982DA2B0874EEB9D7894612394C4607B9119916EFEE7C880322782
            75C309AFD273D31345642737281B4500B6B49465AB5BD33BAABB7A17C8A37D54
            85857CDE4D0494B39C09138319A1E73DB5BAD579E12B3F490D1AF3FCF7AE800D
            3364CF199A8796223167AE34A3FE23187D682386344470964689634317A2099E
            1E400C99E84CB5E6A324F23432433ECC1A00EBBA3384B0E55F3F718C77D06652
            DED0C7243DD1C84EA6B3CA2CC5C02A0ECC0461FDA5B8A90695A94B2D29997208
            B911EACA774255A13BF7FF043BF89587645BE36A6E75ABA893A0D4B040739208
            FDD436D74AB549C63D8A4032411F841A6B481B1C136CA23123666902A33100C5
            4834010A346429003778433CFB77CE503C6C71C07C9E103FF3A581C4000D0D21
            DB7867E53C4EE6AF5B2285C6A24E190331286318A1F2C84F032A3A534DF671EA
            142E90F697D4020AEDB5EB7A6893BCE845F50A13BECD7B1A5884B75B0E771841
            C8539EB936A5D2038B4C2AD28B93C8FA171A1317E714470305000C20AA2715F2
            3138884126B05A9C0687444B37610E3470AC25D71AF828549D553C3D9289EE9A
            6F207E8DC11B90443F91B4A6373E2B6016E7A4B62029453B0E01C03EE6885D1E
            4628061ECD48E03016DBFFD985AB8457DD1D7A566830D56E50768DD123C800A5
            E06E8E8C2368C9AA87053D68BF087083C28C9F7778934ED4D9962A20AA2FF022
            421B8FB64C5525941EAE38922C037B241A797D724DB235096C12C43868185C77
            71E0D134A0BAD5A96E954B0E80D158A24113B00A52575E13219869E458BEE9DE
            5358B7AE4ADD1414EAEBEF24EA8691CB16282EC3D9AE41FB633DA5B150322BFC
            ADD1DC14D57E9D0745E11CE727BF82270D4392D0E746B75E408C9F098B1B8F80
            A2296A5C34DAC7BE110007E0D7231D86951AE77AB4AC91D8A4E8D3909DC244D4
            D0D0443462436BE2F084BFAD4EB85AEC7711EB1EA438FB629BFFAE0DA8E20614
            4D8F0480B20782067AE0FF40056F5086F6A2D3DF176325061DC5F22775383400
            212E939F23AF92CDD238DF685B75CFDB56D0F5BCDA180FA42EE946FAB91755D6
            F918A585E8222158815558C4F61CE03A26CA70A0E2A940F207611B1ADCB8C985
            2A9F949A20ED3D972DB9DB6AB6A73A0D628801DB517E03C225B05BDC69D18794
            219B3420A95B37049743C6F81C7F1B1250A00540344CA98C151CA06F00480D00
            0ADC959DAC00145BD7DFEA42D827D6DA994BE0F43AB730D96713623E83461B37
            49029D74D6E77651488DDF48C1623DEB09F4A065092E648952F4F80C0722476C
            99EABC399965183E5AC0E395FF189E12BFC612257517E1ECDC362AEB2C832302
            7939006654B7893567A1FF8623BC6C9DF2285E7D3322B1848A266090E3C4470C
            7342A6E27B3261BE9E015FBD9E77B7B559C7B47E776FFAFDF93E6A43AC65B11E
            6E8306DC6ABD04D4AD45512A2E81AA1F29BD464A9AE0E894FE69BABAF9224A2B
            2DC3F13500812EA8B89036BB395012894F2B3557693896188E1870B297C02827
            53891B6026927A2E03DB1D3C5B885B1993B88088C0618E3D8998557ABCC75088
            5D5906FDAA1CE15B9D83F99CAC71B3816B8AF902909BE3B71D24938F1B23ABFA
            BCA8D83005F4C27BBA2426649CC103BC784A34BDC3C197A995903125E7703F3D
            D3BD8AD9417EAB9C51A91F3C63B1B709B23E6AB614F4C3147C091494415C0919
            FE8B3DDDEB1DC54189B1FFD88FE1A809AC908D5FF9889D58A544D2B61292BDF8
            51422B641AFB3A31944A34F9E9BC1E020E803285D5FBC2548C2101CAC2C3E244
            346ABA58F4A11ED23BB57240EAD22E9C5AB1D98B3A3BC3A112A22C315AA35F89
            8C15691614BCB7F3F9C31444C694F0A89DCB90ADB3A34CB1149CA39AC7038081
            620824C13EB0F888E918448FC808D1719C43EA374EDC412C64BA3BD2C6FCD808
            14B22072EB8A2B329DA888C02E54C57C8C21101BAE9F60C7A000AE094C1BFB29
            AC22591678C1B78D9018E7F922E711868108003B7023EC0883FFF08948180823
            C0BD9C01180BC488813C17D8DA4315BA2697A2A227EB26F642893D64887B03B5
            2EC2152BECBF0A1419ECFF6993918890031890A408B8F780BF0102C86570964A
            949569344AE7A9ADB1F3093E5324A74A979CEA3372E9B3E9D1A5AFF20954D4C7
            ACF41A06B4C79D9B0A0F02A36F6B4AB4C195A8100DD9FB0800D892657889892B
            99873C828ED00204C01361500120680B61000265100601C8AE2A3CB2A2D9C5F9
            11363381AC5C01A8BDE99EEE3B9204C2B02661A032F24A80049E36032907A39A
            A3722B1639A98A78091DAB39842388372A3AD7E816DDB91A6CE31D4C34A19479
            274E81C59AC92E76FA3FA6C24AADC4CDAEC22CE0E01E5C21BF6589A7760B4131
            DC39D5D9149C1208945BA374CC0C2DD8CBDE60043E280B49681510B988649881
            10F40CF54099B214A534FFE1A598CAA01D31A081B31D9C08196AB9BB3E6A9911
            32AB1F32AD77E922DF009865180E2BC18C51890E285908D958253691394062A1
            E8AB9A95D9C02D7CA611DB3339531ADC592D04CCCD08B5971A0A24E6FCA76F7A
            332874C00C12A39B0C1EF0018034A0C6EB910B6458013B688ACE488631780615
            3002EF58064628AF8CB8C2AD839DF0D1883FDB48151216802C500FBC1003F40A
            1E699756DA51D9132947EA48A3E291932812D4888ED2FA961589911CBD889D78
            991163C2D9DABDC0D3A0A0AABA46E33C005AA42B02D30CC30D7831370965D3E3
            D94D9619A2A6314336AB363981A6A390B77EE3B1929229A51086008883B400C8
            48884B451080EE3A809BFF7A0380392C6F5AB44F0ACC7F0A8D27248F4831D2D0
            E39B595C0B5A013246CBC13F82C0C134AE31BAA585A4BA958B95900905F6C12E
            B2E94FA393392D4A18C889B95D8AD5769196D1B355AD40ABA72BCDA36BD360E5
            AD81B04EB1D8A4C1A4392C142883328A426A93FA20561235BC73C18413153B4D
            7020E288321F3A1DFC083F91891563E5A47E2B2D46D525D78126E01B52AA68B0
            FFAB98C1BB8EBB01A1035C44AA8B869B7AC6754A8FE840B9C8F0A96C84AA109A
            AD78F5350FB5C4AEEC12E1E252773C50A881420F7DCA31C24761A55806411E48
            D91020B1CA599C93A9D4BB740CC0EF78C372DC498A685120B8888DA2A8585A1F
            04400388C884348001D1FF398955E391DD31571B4C4215DB276E5A9AB7B9BFAF
            334B3215991A3B935112AF32CCB037454F877889211C575A598C99E914482DAD
            D20A3E029C338E750ECB04BD39312976D3B33C82CDDBACD8B32D8C4599AAB3EC
            94820C50AB8B4023FBA28F458A1B41033AE91484B98D680883070A0316D8963F
            BD83AE48062BF8C849E0298F6A478401A9AEBD8E67AA0C609236EB9C49EF38C4
            727D52EB2B58AB0DCCB0C8B78C53B8F6420D6A793CD54B3C1EA4D12CC552C7C8
            4CEEBCC28245D32FDD40115321EB41325BB1A3F9B0C4F1313AB4F55D04F12A1C
            CAD8E690B014D2C425F4B698A20FE3528A9A4D272D7A0386030286D002004880
            EC4206E7030001904E23FF049C9698D51BED25D8F2B65161CDF8A11507DB4607
            042E2E11931B1D58A46C34632A1A3393B6CA292F178BBCDB105A610B0567C984
            810AA64F44B188D81F623AC3D1A347B8193DE33C5A766B5D08FDDD09260C43FB
            3EA360DCC0A41CDE89B79ED39DC7790E6C9A35187C323190327451922B33A6FA
            78AC6830852F79D9F20B8E8AA151DEB1452509995A515A1F25127BB4C31D15A6
            1E7D28603B1727CDBCAF7B0D1CA861D5C8BC4E5A8C8A4C576CD1D1780AA35F61
            24FBEA940426513055AFCA6CD83699580A1663BFE047F1C03D629A9F766B342A
            DCB2AEDDD9B0040531A0D9F682A0866992CCD890A8D1135E8453EE39C239A6AB
            53EAB2F0088D7EB110B1FFBC3D7E2152B90890A40DACA668E0E3728C61A34CB0
            D8989A9C9D00CB46E3520D30EA9E5581BC4DDAC0A211160F6AD08035C3FB52AF
            DDA1B37ECB23431C508C30DB31A6E57CAA9C9B605ED415D0CA64CDFE8846577D
            D20A71CC65DA881C2C91C2B91F5C01BE5FAC26E5E8AE9570A9B0A32F3421D239
            0DAC9F7DACB358811BD824228E9FB11C3C1202B28DC8049EBAA18AD029C6E0A1
            8F580CEEC01038758ECADA250453DEA2211ACEBD0A313C19DCB5CCC7ECD9460A
            635A166808398945AE2912952D3ECC97AC25AA8C139F8F420D7D92D220592212
            1992F9D438A834938558B886BB8159BB81541B0354EBAE9D993550D5BD4FC2C6
            64B41B370ECDD79C1A83FFB9DA9B91C1CFB1A368889800AE4F15298D3346AE90
            72B3AD2BABB760D03E9BC0F263C737412A3E434757B6C6AC98E5819E605B6E99
            94DA5175A96260569CCA51DA78B24EA1ABA6E22B202A0E2113D25B96F1978F5D
            8B23790334C0B1E168469868C6ED299CE39B299600E01B75A875845B46CA0A01
            923CD0E41B3D4DBC8943188E315A26C28CC952D07926AEA60AA760CA5DD1705D
            107AD80C03A22EFEB6A8966ADFC51772133D60995B992C24015442FF4321DEE1
            113BD3D42B93B4AE23182D7392FA5C5E946AD625B91224C1D6B66B98855826E6
            88861A89969D6DB053C8569838B3D28C013720A60316B1B5006C94E8986B39AD
            91DD6BBF33BA4CF1BFFAFF392DE001A73CA3BDE1125B91F0400F9D9209A4D5A2
            569DC492E0CE1E68016AD62789B70A392DD2FA36131AD000BCEA7E13D44F628A
            C9B8A092D99168DC0FD8E3BAA0225B7F3B95C8CB513CFD401A154A8959C681C8
            1BB50CEC86B30D4CFE4AAB21D62C5318CF3C0862795C068227361BC3FBBE5DA6
            92B780EC33AC1D65413A4A5B0968F716E3305CB194D13B92793A1387CDE22527
            1F82C2DA0BA7A84A6D6A49A4801DE091613124CDD3FD4011D7C6ED50F8349CB2
            4E6C7967C233BB09F768C3E4930DF43DB2681E4F82BF094A2B7FF344FBB28FF7
            6CA109F95C52966CD7144078125B90E06C1AA7D87CFA37302D1814E7F30CDD97
            968929C611E716976C14FFD16EF1F50D2C2B9BA564B1D296566DA441D6C59EE3
            58A57582E447898F61CE722DDF9A757ECCD41D13DA1051D27472EF580C31680F
            FA6433365E64FBD6362E5B30465FE81477D845F2D0EF98713BFFDD753B6725A9
            36395CA1E74E1962F1BF1D4EE98F29F357346A2129E0AC565E29E9E7FDE18FD4
            165BA178892A6563509254D3C26DC3A3D798109D41E4CE4A2D3C9E9E99DBC3E0
            3336971B29B0E5198B3813AC0A72C7D38613C84E988FD29107969A0FC22489A8
            735D6F53B53D1B58D48CC082F7DF5AA89B3E9336C114D02E4400B56222EA233C
            99901C4676DBA130A8F120990A2368980E5407A71054B4448E2CF58A06AB0832
            968470FCCEDC325C8B15FF214D26CA191F590BD9A852A162B4D6E5DA1B74F3C8
            AE1931CD0F81656D17EF401F3EF87F0778095D3A789DC53C963A79DFF1B03617
            ABE311E344578C1FD046337479BD2A71ED4D69F3C0C5A5CF2512D28B2A8EF861
            A5741FA5FE7054E8712DC7F1594FD524462E25C963266A8129E13A4C8A73D276
            BDBFD5D471399B4385F5B8B194B93DE1779D1F7C016CEFA4FF5D01F275BAC7B8
            B309E7AF7897CB1F196FAE450C2BB2EE291D5F14952E4D5AF495EFD78EFC7C73
            92B62DABF18870004039016E94470EE6666A9E54872B464EFDB79D2CE19010DC
            1B8D4D4AFDFAD426B46B6AA6365A68779B7E8EC2D75CE8F20DFB7F3E78016DB6
            48727C0ABED81935F689FFDE3FD25E755DC1E62964AE4F452B6692F536763712
            D9C29B8CA60E0DE715227781E1C3D95A0633DB97C49E29302AE4061B48FCE2FF
            85754F80000500408C68CA42295B666AD9C184A0A02954E8D020C268A0146A3A
            3010474265172F366408B2E14788D042990465F0943296164F425C08CAA1C365
            2011DACC0933E2CE85A65A2A8BB90C26508B2B95191D0820D3BEA64E9F428D2A
            752AD5AA56AF62CDAA752BD7AE5EBF76CDA4546550941211F68CD810E7C79C37
            6B363C080DE94C9B06EFB685B856595C847EFBF245D890A84B95751712356A58
            AF61912F872E56CBD620C88B276BCE9CCC77D98D812ADE5CB699F0A74EC10811
            4BCC09D4345D886F43BFFF159DD3549A8D16ED8264595836CA86B72F1B143B90
            6751C38AEFD2551D3B73609A15C9B28CD9DAEC65C06E3BFE75CB90F55EA56FC0
            820F2F7E3CF9F2E6CF3B7DA3543BC888B1952136FBD3A049A084E952F4DD36B3
            D0992E8B1FF55F61474946935D246D17D25E2CD914DA5E0936981A74C9C1C793
            591FDDE651004AC580065908ED56146643F5C6127E1E6D37577438CD37A151CA
            6832D66673F526986CD21DC8DD5FD18871C36D6F2988D07EF4A154A450475257
            A0760A7E74E28A261909199130C937145D4A31859E965B72D9A5975B0A07C089
            2FE154DC65ACFD154A5B0FD665D9854359C9609B94C906A4686CA966228B24D2
            28226A3F450727500CE9FF86145085CA44687377C236D14309FE87C6864A0570
            031A75BA361B857BDED41F841F36D75626060C24064527817ADC6AA3A5086072
            3275342050A8E1F81E9A70ED379A88B28688278A23E139124375E684E597C722
            9BACB2C88659E74415A298D091711AAAAAAA7AF2C5D27E7C4A2614A065ED040D
            5997B959ABA223068920690BFD1AD7B0B935246B7E5476D4A059F11A9A460C4A
            F17BC00D634C3BD38B9AB18413959E866B536703C5D058BD6EA20B2ABBBEE675
            20B6AAA5A9DF8B3E9DC8F18B2F32D8EE922C3A59AD711322CA27754A69B2ACCB
            2FC31C3356310E149F507B2986F19A423284E066F06668507C8B42AC1A847BF9
            6512C63501E7E24351D2FF8BB1D254B6782A76CDBD69A84FEFCA351959D1BCD1
            23BFFCC67080181E0AF6A4BB3FD9182DB9FA6AC4A126B029E65A6B52E29B6244
            360396B4448F41D9A773571B8D34D1DCCE07EEA09525F81EB02332EE9DCC9353
            5E39B2EA0D1792655F57F658D54F7BAB32517826AA7185E23264F384B4BE5522
            B8128A74F49D21F544D783B892689F91FA5DB7B7A04085C4AE5D43A581060EFB
            8E3D760CCBC77043D9CE37FFFCF237C49DBC189944732FBB6FC9F9A941AC9256
            97E6AAEEB45C93162ABDB5B80106F537595B6BBEF4DE879A2911AFD5BE6E8AB1
            96F3DFBFFF6035AB45B0918DF03457AFF8454B6A7F4311BD1098B5EC306E4267
            820BC1EEA63E6A45B034FFD29115A82048A7F52D0E52CFDADE816807A7686442
            5FCD9B54F25A38B6032C0F0D1E1A4AF602131A9B0D0B87892261D7D6F7B4872D
            2D2D69891F7388484174B90F6440794FEC1C08185040701992FB1F15AB6845A8
            604E4C461362D25C779C4755ED7445C390DBAA543EBC91E9661EEC189F9CD83A
            DF8868604443E0D7CA929C01EAAE4FDDDB955CDCD320CBF0241AD158C6510CA2
            96959C1029CBE0D4A0BAE61CD4450B2437E4165C1802933A0E8D58E3AB10ADE4
            63B2423E4A3A6CE988B074681C57054A8778DBDF155BE9CACA8549893A92D672
            9AE8AB34D90D37994A1490D236B877B55168B1630EB17C78A4F7E52E58BA421F
            DE764346201586827389FFD0C4DCF59A5024A84CA7191FBC58531268DD6B77F6
            D24B94B686CCB7A08C4D0664A60047393274F10C41E5F25DD4DA342CCC18685B
            D62CD640B2F4CA7F025459615257C912C54524A9C8505ED38B4E1425CC215689
            634BDB535AD4A74D2752B338793A9C755A841B02090C998E2499123D97BA36D6
            8821197A8EA2FEE3977381E8676AB117126303C2823507398552A275DA73CA27
            190999A13B231135C89393058E27CD1C137C5816D0A742954B3413D38BB259C9
            EADCAAA7EE23A74649C838CD656A33799C90FCDAE3C8FF941454EF4A5F820EC6
            CC4EF54C33BEC2295E12B4CE31B20A2406AD911D459812459173277D14AA05F1
            F3556E31E78D5E03E58BFFE8D8B34F292888AEAB8F458E48AC9D45EB566D9962
            543BEB59F06471A3FF519D43EB783F78DACD974E33A9C61A63565FDEE79271ED
            D3571957CF3A11E85776F5A42E2F044A95B62BAD10B958265725DB5591E96A2C
            5D4B2E1F554B7D9AE6609D32E3B8A2E433601D949E11ADDF73770446C459298D
            DA9DCBC704D2CFCFA237BD5A89E5128769CB108A6C670993497981A95BB82006
            B3ECFBD1A7440B979D3A4D5700A613191FCAD71CF50C5B8311D25158B334BEED
            893461F56358C55BBAA1911574F4031C3309C72E27DA883FE02D9D83DF1859C0
            A4F5288DD264761695D9757256BD329E717A9402470171977EB2AAA7CF949BD0
            8FD1AF9AD422176E4B56FF57D385EC96ACDA2703DD57569406C5B5EC8BA9065D
            97E44D726FB03DABEC81DB64A8EE0DB0806532E2838F4A4F176D984DC34A68ED
            3C67D893E0D0CBB279F1B52C385E33FA4E7FE7A5319F651CA62ECF79AE1D39A2
            C1501964C8F6CEA70DDEE48B9AE4CD9342927102B41F4DEA8C53E56C2C77B859
            4643D70448B9B8CB9AE11A547E0DD9A6A84D8C8B7DB15B63EF7C533662157888
            26E65EA4935C253F192E9BBC9F2C0967CFC3FDFAB0ACEC33B13B3BD0F9297188
            484D226635595AC67E979770825F05A19DA0B4CAAF87AA89AC042FB497464A34
            941AFDD0508B04B99306EF44A559F2EC0E043F50B9F697B87BB1527B68E8FB5C
            1A6842356344DBB8C760FF29875A161D2AE70CEC2DA7163BE1509DAAC32EDBC4
            C6E0B14CDD3E66869603C4B808537C7221CB1BB7F840B808137EC19B5F34E5D7
            498F6468D3FAF50FA1FB88188DF2AE757DDA1E8785FCAC8A3CEB7E4F1AAF7684
            FCDC6DAB74423D1DDC7573025BD7BD5C8E85F3B4556BE9AE182B3CEAAD0C2DF8
            8249D625CBEADDFD4D77A10EB63B67065DB03105DC391D626B30A66BC3E2BBCE
            73328DA04C1D57893C0475A0A669CFCE09BD6EB9CB4FF79AF445B8FBCDE2EF6C
            9C63A0E5B469F504255FE5F7B42E98F41F667B6408E55C9BCDE449C50C5BEA9A
            A7622C7F58547829B8C4392FEC1EB3FD5C4F31B7BFB1A1B6654FE9F3AA4F2DC4
            22FC119DF26AA0D6AEF4FF201751DFD56F954D2207D642FB8418C7F1C637F675
            32AC59EB6524811967D51B0DB3652AD4805C3FCC73FBDAAA56C509D437EF7DCB
            6571F440D6568AFA0D518E7EB47E03175174DD9747EDD64495678497B2DDC233
            21324DDFC0AD7E7EDEF5A209431327F99BA18C5EF13190611D05208D11F4011B
            D3785B8A195AC589461A55179B515ACEFC0C60FCD797F151D75DDE744C8D4A64
            DEF791A0CC0CD4BF854AD055D6D19418E22060066A921B2196DECC5BA53D4A0A
            16115A68DA72E00592E4538E6C8A1DE9D3046AD8EFBD9FCD2DCDEEB1D4EA25D3
            11E595A6F1DE51AC9F07E654B06D1D77E058F44D14B70DDA4E01C829B5583C65
            9F3C111E488C6009A2E1FFB2344B1EB94A99D48DE281526AE1CEEE81970F85DC
            0CA2DCAAE8DCA6CCD7B4E5CE3C4D5AB3B19CDB71DCA201D925F55F4984D3BC15
            C67D98DAB9189803C65628AC20247D5814B59E7D39539D4DA21A2199E2E0D880
            390C263E12088A8EF5858B950105C2A5612B2ECB54C55A59895225CD1BCE9514
            3801DBD11850A359D2EC145585B4893279CD7BB9C5945012132E8EB4DC4A149D
            1FAFFD5A140D8D9A8190B0D889C3E0145AEDDB8FFD14C851E315C6CF34BA9701
            B50DD32D189B414D18AA193CD15BBD749F2BBA2397645126BC4126C04126C8E3
            3DE2633DCE233ECEE31BECE31B68023FDE633FDAE33C6A0241EAA33D16E44202
            643E166440CE633D3AE4FF3FDE6340E2A34042A442F6E3412E243F66244526E4
            4066C224EC634236E43E6A644752A44862E44A52E44A9AE44272E43D4AE43FCE
            244132A44086244EF2244B46A448BA644BCAA44F66E44ECAE34766E45102654E
            A6A440E66452F6633F9EE13B52A57984890B6165566AE5567265577AE5578265
            588AE5589265599AE559A2655AAA25577E4755BA257A28C35ACAE55CD2655DDA
            E55DE2655EEAE55EDAD85BFAA579F065600AE6601266611AE661A6E55F2AE662
            3266633AE6634266644AE6645266655AE6656266666AE6667266677AE6678266
            688AE6689266699AE669A2666AAAE66AB2666BBAE66BC2666CCAE66CD2666DDA
            E66DE2666EEAE66EF266186FFAE66F0267700AE7701267711AE7712267722A27
            6D0604003B}
          Proportional = True
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 600
    object File1: TMenuItem
      Caption = '&File'
      object mnLoadExperiment: TMenuItem
        Caption = '&Load Experiment'
        OnClick = mnLoadExperimentClick
      end
      object mnSaveExperiment: TMenuItem
        Caption = '&Save Experiment'
        OnClick = mnSaveExperimentClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnPrint: TMenuItem
        Caption = '&Print'
        OnClick = mnPrintClick
      end
      object mnPrinterSetup: TMenuItem
        Caption = 'P&rinter Setup'
        OnClick = mnPrinterSetupClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnExit: TMenuItem
        Caption = 'Exit'
        OnClick = mnExitClick
      end
    end
    object mnEdit: TMenuItem
      Caption = '&Edit'
      object mnSnapDisplay: TMenuItem
        Caption = '&Snap Display'
        OnClick = mnSnapDisplayClick
      end
      object mnClearSnap: TMenuItem
        Caption = '&Clear Snap'
        OnClick = mnClearSnapClick
      end
      object mnCopyData: TMenuItem
        Caption = 'Copy &Data'
        OnClick = mnCopyDataClick
      end
      object mnCopyImage: TMenuItem
        Caption = 'Copy &Image'
        OnClick = mnCopyImageClick
      end
    end
    object mnHelp: TMenuItem
      Caption = '&Help'
      object mnContents: TMenuItem
        Caption = 'Contents'
        OnClick = mnContentsClick
      end
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerTimer
    Left = 400
    Top = 600
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 424
    Top = 600
  end
  object OpenDialog: TOpenDialog
    Left = 256
    Top = 600
  end
  object SaveDialog: TSaveDialog
    Left = 288
    Top = 600
  end
end
