object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 676
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  DesignSize = (
    650
    676)
  PixelsPerInch = 96
  TextHeight = 13
  object Edit2: TEdit
    Left = 96
    Top = 80
    Width = 217
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 157
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 238
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
  object PageControl1: TPageControl
    Left = 24
    Top = 174
    Width = 289
    Height = 193
    ActivePage = TabSheet2
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'First Tab'
      object Edit3: TEdit
        Left = 24
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit111'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Second Tab'
      ImageIndex = 1
      object Edit4: TEdit
        Left = 40
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit444'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Last Tab'
      ImageIndex = 2
      object Edit5: TEdit
        Left = 40
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit3333'
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 28
    Top = 384
    Width = 97
    Height = 17
    Caption = 'First'
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 28
    Top = 407
    Width = 97
    Height = 17
    Caption = 'Second'
    TabOrder = 5
  end
  object RadioButton1: TRadioButton
    Left = 176
    Top = 384
    Width = 113
    Height = 17
    Caption = 'Radio 1'
    TabOrder = 6
  end
  object RadioButton2: TRadioButton
    Left = 176
    Top = 407
    Width = 113
    Height = 17
    Caption = 'Radio 1 Extra'
    TabOrder = 7
  end
  object RadioButton3: TRadioButton
    Left = 176
    Top = 430
    Width = 113
    Height = 17
    Caption = 'Radio 2'
    TabOrder = 8
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 657
    Width = 650
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Text = 'Statusbar Text'
        Width = 50
      end>
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 456
    Width = 285
    Height = 21
    TabOrder = 10
    Text = 'ComboBox1'
    Items.Strings = (
      'Premier'
      'Championship'
      'First'
      'Second'
      'Third'
      'Forth'
      'Beezer Conference')
  end
  object AutomatedEdit1: TAutomatedEdit
    Left = 24
    Top = 496
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'AutomatedEdit1'
  end
  object AutomatedCombobox1: TAutomatedCombobox
    Left = 24
    Top = 536
    Width = 145
    Height = 21
    TabOrder = 12
    Text = 'AutomatedCombobox1'
  end
  object AutomatedCombobox2: TAutomatedCombobox
    Left = 192
    Top = 536
    Width = 145
    Height = 21
    TabOrder = 13
    Text = 'First'
    Items.Strings = (
      'First'
      'Second'
      'Third')
  end
  object AutomationStringGrid1: TAutomationStringGrid
    Left = 328
    Top = 131
    Width = 313
    Height = 318
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 14
  end
  object AutomatedMaskEdit1: TAutomatedMaskEdit
    Left = 328
    Top = 382
    Width = 120
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 15
    Text = '  /  /  '
  end
  object RichEdit1: TRichEdit
    Left = 328
    Top = 409
    Width = 314
    Height = 108
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'This is a RichEdit, I wonder what will happen')
    ParentFont = False
    PlainText = True
    TabOrder = 16
  end
  object TreeView1: TTreeView
    Left = 328
    Top = 8
    Width = 314
    Height = 117
    Indent = 19
    PopupMenu = PopupMenu3
    TabOrder = 17
    Items.NodeData = {
      0303000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00020000000105460069007200730074002E0000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000100000001085300750062004900740065006D
      003100340000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      000000010B5300750062002D005300750062004900740065006D002E00000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000108530075
      0062004900740065006D0032002A0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001065300650063006F006E0064002800000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000105540068
      00690072006400}
  end
  object Edit1: TEdit
    Left = 96
    Top = 40
    Width = 217
    Height = 21
    TabOrder = 18
    Text = 'Edit1'
  end
  object ListBox1: TListBox
    Left = 343
    Top = 523
    Width = 299
    Height = 78
    ItemHeight = 13
    Items.Strings = (
      'First (List)'
      'Second (List)'
      'Anti-Penultimate (List)'
      'Penultimate (List)'
      'Last (List)')
    TabOrder = 19
  end
  object LinkLabel1: TLinkLabel
    Left = 24
    Top = 576
    Width = 60
    Height = 17
    Caption = '<a href="http://www.google.co.uk">This is a link</a>'
    TabOrder = 20
    OnClick = LinkLabel1Click
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 650
    Height = 29
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 21
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = '1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 0
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 0
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 77
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 0
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 100
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 0
    end
    object ToolButton7: TToolButton
      Left = 123
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 0
      OnClick = ToolButton7Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Hel1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 112
    object PopupMenu2: TMenuItem
      Caption = 'Popup Menu '
      OnClick = PopupMenu2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 208
    Top = 16
    object Popup11: TMenuItem
      Caption = 'Popup1'
    end
    object Popup21: TMenuItem
      Caption = 'Popup2'
    end
  end
  object ImageList1: TImageList
    Left = 216
    Top = 600
    Bitmap = {
      494C010101000800140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000001000900050015000901150108020F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000001C053F2D9C3EE241B752E91D922EF0032E0A61000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      000652C263FF35C44BFE45C859FF1B792ACD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000093E
      107A5BCB6BFE38C24CFF249135EB000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000511061E4CB5
      5BFF5FCF71FF4CCE60FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000426084A54BF
      64FF60CE71FE4AC85CFF00000005000600110000000000000000000000010656
      12AB287C35D2000D002100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001340196C6FD17DFF65CD
      74FF5ECC6EFE42C655FF4ACF5EFF3CB44EFE000000000004000C3AC74FFF26BA
      3CFE58C667FE6CCF7AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000014003270D07EFE63CD
      73FF5ACB6AFF3BC34FFF43C957FF2F843CB700000000073D0F7A30C146FF31BE
      46FE5CC96CFF62CB72FE0B6417C5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000379746ED6CCF
      7AFF4EC660FF26BA3CFE187525CA0004000C030E04193CB44EFE3FC954FF42C6
      55FF61CC71FE65CD74FF84D891FD1340196C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000021304263C98
      48E74BC55CFE2EBD43FF0006010D00000000041A0732269C38FF32AF45FF4AC9
      5CFD62CE73FF66CB75FD44A652FF1A6B25BF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000500120000000000000000000000000000000000000000178728EF4CCE
      60FF64CE74FF4CB55BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040BD54FF45C8
      59FE64CE74FF428E4EC000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000100051B792ACD30BF45FF35C4
      4BFE1A6525AD0001000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D872DE341C554FF3FCC54FF2DAD
      40FF000100040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000108020F0006001400050015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
