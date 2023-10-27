'/******************************************************************************
'*                                                                             *
'*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
'*      NAME : CameraController.vb                                             *
'*                                                                             *
'*   Description: This is the Sample code to show the usage of EDSDK.          *
'*                                                                             *
'*                                                                             *
'*******************************************************************************
'*                                                                             *
'*   Written and developed by Camera Design Dept.53                            *
'*   Copyright Canon Inc. 2006 All Rights Reserved                             *
'*                                                                             *
'*******************************************************************************
'*   File Update Information:                                                  *
'*     DATE      Identify    Comment                                           *
'*   -----------------------------------------------------------------------   *
'*   06-03-22    F-001        create first version.                            *
'*                                                                             *
'******************************************************************************/

Imports System.Runtime.InteropServices
Imports System.Collections.Generic
Imports System.Configuration

Public Class MyPHCameraController
    Inherits System.Windows.Forms.Form
    Implements Observer   ', UpdatePictureBox

#Region "Created by Windows form designer."


    'Xsj:添加用于创建不能Item对应的不同保存路径
    Private isItemSavePathExists As Boolean
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Btn_ReStart As System.Windows.Forms.Button
    Friend WithEvents BtnReStart As System.Windows.Forms.Button
    'Private itemSavePath As String


    Private Shared _itemSavePathBo As ItemSavePath
    Public Shared Property ItemSavePathBo() As ItemSavePath
        Get
            If IsNothing(_itemSavePathBo) Then
                _itemSavePathBo = New ItemSavePath(ItemPhotoSavePath)
            End If
            Return _itemSavePathBo
        End Get
        Set(ByVal value As ItemSavePath)
            _itemSavePathBo = value
        End Set
    End Property

    ''' <summary>
    ''' Xsj20121220:add
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Shared Property ItemPhotoSavePath() As List(Of String)
        Get
            Return _itemPhotoSavePath
        End Get
        Set(ByVal value As List(Of String))
            _itemPhotoSavePath = value
        End Set
    End Property

    Private Shared _itemPhotoSavePath As List(Of String)



    Public Sub New()
        Me.New(New List(Of String)())
        'MyBase.New()

        'InitializeComponent()
        Dim testSavePath As List(Of String) = New List(Of String)()
        testSavePath.Add("Test")

    End Sub

    ''' <summary>
    ''' Xsj20121220:版本构造构数
    ''' </summary>
    ''' <param name="NewVersion"></param>
    ''' <remarks></remarks>
    Public Sub New(ByVal NewVersion As Int32)
        MyBase.New()
        InitializeComponent()
    End Sub



    ''' <summary>
    ''' 構造函數
    ''' </summary>
    ''' <param name="ItemSavePath">圖片名稱</param>
    ''' <remarks></remarks>
    Public Sub New(ByVal ItemSavePath As List(Of String))
        MyBase.New()

        InitializeComponent()

        If IsNothing(ItemSavePath) Or ItemSavePath.Count = 0 Then
            ItemSavePath = New List(Of String)
            ItemSavePath.Add(Now.ToString("yyyyMMddhhMMssfff") + "Test")
        End If
        ItemSavePathBo = New ItemSavePath(ItemSavePath)

    End Sub



    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    ''' <summary>
    ''' Xsj20121220:设置图片保存路径
    ''' </summary>
    ''' <param name="SavePath"></param>
    ''' <remarks></remarks>
    Public Sub SetPhotoSavePath(ByVal SavePath As List(Of String))
        ItemSavePathBo = Nothing
        ItemPhotoSavePath = SavePath
    End Sub

    ''' <summary>
    ''' Xsj20121220:清除图片保存路径
    ''' </summary> 
    ''' <remarks></remarks>
    Public Sub ClearPhotoSavePath()
        ItemSavePathBo = Nothing
        ItemPhotoSavePath = Nothing
    End Sub


#Region "系统生成"

    Private components As System.ComponentModel.IContainer

    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents ISOSpeedCmb As System.Windows.Forms.ComboBox
    Friend WithEvents AvCmb As System.Windows.Forms.ComboBox
    Friend WithEvents TvCmb As System.Windows.Forms.ComboBox
    Private WithEvents AEModeCmb As System.Windows.Forms.ComboBox
    Friend WithEvents MeteringModeCmb As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents ExposureCompCmb As System.Windows.Forms.ComboBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents InfoTextBox As System.Windows.Forms.TextBox
    Friend WithEvents ImageQualityCmb As System.Windows.Forms.ComboBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents XTabCtrl_CameraCtrl As DevExpress.XtraTab.XtraTabControl
    Friend WithEvents XTpag_CameraShow As DevExpress.XtraTab.XtraTabPage
    Friend WithEvents XTpag_CameraSetup As DevExpress.XtraTab.XtraTabPage
    Friend WithEvents sBtn_TakeOnePic As System.Windows.Forms.Button
    Friend WithEvents PicEdit_B As DevExpress.XtraEditors.PictureEdit
    Friend WithEvents progressBar As System.Windows.Forms.ProgressBar
    Friend WithEvents Btn_GetNewPath As System.Windows.Forms.Button
    Friend WithEvents TBox_SavePath As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents XTpag_CameraList As DevExpress.XtraTab.XtraTabPage
    Friend WithEvents GridControl1 As DevExpress.XtraGrid.GridControl
    Friend WithEvents GridView1 As DevExpress.XtraGrid.Views.Grid.GridView
    Friend WithEvents PanelControl1 As DevExpress.XtraEditors.PanelControl
    Friend WithEvents sBtn_SaveCameraId As DevExpress.XtraEditors.SimpleButton
    Friend WithEvents BindingSource_CameraList As System.Windows.Forms.BindingSource
    Friend WithEvents colUSBPortNo As DevExpress.XtraGrid.Columns.GridColumn
    Friend WithEvents colOwnerName As DevExpress.XtraGrid.Columns.GridColumn
    Friend WithEvents RepositoryItemComboBox1 As DevExpress.XtraEditors.Repository.RepositoryItemComboBox
    Friend WithEvents PanelControl2 As DevExpress.XtraEditors.PanelControl
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents LabelControl1 As DevExpress.XtraEditors.LabelControl
    Friend WithEvents BtnSavePath As System.Windows.Forms.Button
    Friend WithEvents SBtn_AutoTakePic As System.Windows.Forms.Button
    Friend WithEvents PicEdit_A As DevExpress.XtraEditors.PictureEdit
    Friend WithEvents Btn_Exit As System.Windows.Forms.Button
    Friend WithEvents CkBox_IsAutoTake As System.Windows.Forms.CheckBox
    Friend WithEvents Timer_Shot As System.Windows.Forms.Timer
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.AEModeCmb = New System.Windows.Forms.ComboBox
        Me.ISOSpeedCmb = New System.Windows.Forms.ComboBox
        Me.AvCmb = New System.Windows.Forms.ComboBox
        Me.TvCmb = New System.Windows.Forms.ComboBox
        Me.MeteringModeCmb = New System.Windows.Forms.ComboBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.ExposureCompCmb = New System.Windows.Forms.ComboBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.InfoTextBox = New System.Windows.Forms.TextBox
        Me.ImageQualityCmb = New System.Windows.Forms.ComboBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.XTabCtrl_CameraCtrl = New DevExpress.XtraTab.XtraTabControl
        Me.XTpag_CameraShow = New DevExpress.XtraTab.XtraTabPage
        Me.Label10 = New System.Windows.Forms.Label
        Me.SBtn_AutoTakePic = New System.Windows.Forms.Button
        Me.Btn_ReStart = New System.Windows.Forms.Button
        Me.progressBar = New System.Windows.Forms.ProgressBar
        Me.sBtn_TakeOnePic = New System.Windows.Forms.Button
        Me.PicEdit_B = New DevExpress.XtraEditors.PictureEdit
        Me.PicEdit_A = New DevExpress.XtraEditors.PictureEdit
        Me.XTpag_CameraSetup = New DevExpress.XtraTab.XtraTabPage
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.BtnSavePath = New System.Windows.Forms.Button
        Me.CkBox_IsAutoTake = New System.Windows.Forms.CheckBox
        Me.TBox_SavePath = New System.Windows.Forms.TextBox
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.Btn_GetNewPath = New System.Windows.Forms.Button
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.XTpag_CameraList = New DevExpress.XtraTab.XtraTabPage
        Me.GridControl1 = New DevExpress.XtraGrid.GridControl
        Me.BindingSource_CameraList = New System.Windows.Forms.BindingSource(Me.components)
        Me.GridView1 = New DevExpress.XtraGrid.Views.Grid.GridView
        Me.colUSBPortNo = New DevExpress.XtraGrid.Columns.GridColumn
        Me.colOwnerName = New DevExpress.XtraGrid.Columns.GridColumn
        Me.RepositoryItemComboBox1 = New DevExpress.XtraEditors.Repository.RepositoryItemComboBox
        Me.PanelControl2 = New DevExpress.XtraEditors.PanelControl
        Me.LabelControl1 = New DevExpress.XtraEditors.LabelControl
        Me.PanelControl1 = New DevExpress.XtraEditors.PanelControl
        Me.BtnReStart = New System.Windows.Forms.Button
        Me.Btn_Exit = New System.Windows.Forms.Button
        Me.sBtn_SaveCameraId = New DevExpress.XtraEditors.SimpleButton
        Me.Timer_Shot = New System.Windows.Forms.Timer(Me.components)
        CType(Me.XTabCtrl_CameraCtrl, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.XTabCtrl_CameraCtrl.SuspendLayout()
        Me.XTpag_CameraShow.SuspendLayout()
        CType(Me.PicEdit_B.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PicEdit_A.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.XTpag_CameraSetup.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.XTpag_CameraList.SuspendLayout()
        CType(Me.GridControl1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.BindingSource_CameraList, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.GridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.RepositoryItemComboBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PanelControl2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.PanelControl2.SuspendLayout()
        CType(Me.PanelControl1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.PanelControl1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label2.Location = New System.Drawing.Point(37, 25)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(53, 12)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "AE Mode:"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label3.Location = New System.Drawing.Point(37, 117)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(26, 12)
        Me.Label3.TabIndex = 7
        Me.Label3.Text = "ISO:"
        Me.Label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label5.Location = New System.Drawing.Point(37, 85)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(22, 12)
        Me.Label5.TabIndex = 9
        Me.Label5.Text = "Av:"
        Me.Label5.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label6.Location = New System.Drawing.Point(37, 54)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(21, 12)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Tv:"
        Me.Label6.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'AEModeCmb
        '
        Me.AEModeCmb.Location = New System.Drawing.Point(97, 21)
        Me.AEModeCmb.Name = "AEModeCmb"
        Me.AEModeCmb.Size = New System.Drawing.Size(114, 20)
        Me.AEModeCmb.TabIndex = 11
        '
        'ISOSpeedCmb
        '
        Me.ISOSpeedCmb.Location = New System.Drawing.Point(97, 113)
        Me.ISOSpeedCmb.Name = "ISOSpeedCmb"
        Me.ISOSpeedCmb.Size = New System.Drawing.Size(114, 20)
        Me.ISOSpeedCmb.TabIndex = 12
        '
        'AvCmb
        '
        Me.AvCmb.Location = New System.Drawing.Point(97, 81)
        Me.AvCmb.Name = "AvCmb"
        Me.AvCmb.Size = New System.Drawing.Size(114, 20)
        Me.AvCmb.TabIndex = 14
        '
        'TvCmb
        '
        Me.TvCmb.Location = New System.Drawing.Point(97, 50)
        Me.TvCmb.Name = "TvCmb"
        Me.TvCmb.Size = New System.Drawing.Size(114, 20)
        Me.TvCmb.TabIndex = 15
        '
        'MeteringModeCmb
        '
        Me.MeteringModeCmb.Location = New System.Drawing.Point(320, 22)
        Me.MeteringModeCmb.Name = "MeteringModeCmb"
        Me.MeteringModeCmb.Size = New System.Drawing.Size(114, 20)
        Me.MeteringModeCmb.TabIndex = 17
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(234, 25)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(80, 12)
        Me.Label1.TabIndex = 16
        Me.Label1.Text = "Metering Mode:"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'ExposureCompCmb
        '
        Me.ExposureCompCmb.Location = New System.Drawing.Point(320, 51)
        Me.ExposureCompCmb.Name = "ExposureCompCmb"
        Me.ExposureCompCmb.Size = New System.Drawing.Size(114, 20)
        Me.ExposureCompCmb.TabIndex = 19
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label4.Location = New System.Drawing.Point(234, 54)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(84, 12)
        Me.Label4.TabIndex = 18
        Me.Label4.Text = "Exposure Comp:"
        Me.Label4.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'InfoTextBox
        '
        Me.InfoTextBox.BackColor = System.Drawing.SystemColors.InactiveBorder
        Me.InfoTextBox.Location = New System.Drawing.Point(12, 253)
        Me.InfoTextBox.Name = "InfoTextBox"
        Me.InfoTextBox.Size = New System.Drawing.Size(448, 22)
        Me.InfoTextBox.TabIndex = 20
        Me.InfoTextBox.Text = "Info"
        '
        'ImageQualityCmb
        '
        Me.ImageQualityCmb.Location = New System.Drawing.Point(320, 82)
        Me.ImageQualityCmb.Name = "ImageQualityCmb"
        Me.ImageQualityCmb.Size = New System.Drawing.Size(114, 20)
        Me.ImageQualityCmb.TabIndex = 22
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label7.Location = New System.Drawing.Point(234, 85)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(71, 12)
        Me.Label7.TabIndex = 23
        Me.Label7.Text = "ImageQuality:"
        Me.Label7.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'XTabCtrl_CameraCtrl
        '
        Me.XTabCtrl_CameraCtrl.Dock = System.Windows.Forms.DockStyle.Fill
        Me.XTabCtrl_CameraCtrl.Location = New System.Drawing.Point(0, 0)
        Me.XTabCtrl_CameraCtrl.Name = "XTabCtrl_CameraCtrl"
        Me.XTabCtrl_CameraCtrl.SelectedTabPage = Me.XTpag_CameraShow
        Me.XTabCtrl_CameraCtrl.Size = New System.Drawing.Size(473, 308)
        Me.XTabCtrl_CameraCtrl.TabIndex = 24
        Me.XTabCtrl_CameraCtrl.TabPages.AddRange(New DevExpress.XtraTab.XtraTabPage() {Me.XTpag_CameraShow, Me.XTpag_CameraSetup, Me.XTpag_CameraList})
        '
        'XTpag_CameraShow
        '
        Me.XTpag_CameraShow.Controls.Add(Me.Label10)
        Me.XTpag_CameraShow.Controls.Add(Me.SBtn_AutoTakePic)
        Me.XTpag_CameraShow.Controls.Add(Me.Btn_ReStart)
        Me.XTpag_CameraShow.Controls.Add(Me.progressBar)
        Me.XTpag_CameraShow.Controls.Add(Me.sBtn_TakeOnePic)
        Me.XTpag_CameraShow.Controls.Add(Me.PicEdit_B)
        Me.XTpag_CameraShow.Controls.Add(Me.PicEdit_A)
        Me.XTpag_CameraShow.Name = "XTpag_CameraShow"
        Me.XTpag_CameraShow.Size = New System.Drawing.Size(467, 281)
        Me.XTpag_CameraShow.Text = " Camera Show "
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(11, 9)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(89, 12)
        Me.Label10.TabIndex = 29
        Me.Label10.Text = "测试拍照效果："
        '
        'SBtn_AutoTakePic
        '
        Me.SBtn_AutoTakePic.Enabled = False
        Me.SBtn_AutoTakePic.Location = New System.Drawing.Point(220, 252)
        Me.SBtn_AutoTakePic.Name = "SBtn_AutoTakePic"
        Me.SBtn_AutoTakePic.Size = New System.Drawing.Size(99, 24)
        Me.SBtn_AutoTakePic.TabIndex = 28
        Me.SBtn_AutoTakePic.Tag = "Start"
        Me.SBtn_AutoTakePic.Text = "Start Auto Take"
        Me.SBtn_AutoTakePic.UseVisualStyleBackColor = True
        '
        'Btn_ReStart
        '
        Me.Btn_ReStart.Location = New System.Drawing.Point(398, 252)
        Me.Btn_ReStart.Name = "Btn_ReStart"
        Me.Btn_ReStart.Size = New System.Drawing.Size(65, 24)
        Me.Btn_ReStart.TabIndex = 27
        Me.Btn_ReStart.Text = "ReStart"
        Me.Btn_ReStart.UseVisualStyleBackColor = True
        '
        'progressBar
        '
        Me.progressBar.Location = New System.Drawing.Point(8, 255)
        Me.progressBar.Name = "progressBar"
        Me.progressBar.Size = New System.Drawing.Size(195, 20)
        Me.progressBar.TabIndex = 26
        '
        'sBtn_TakeOnePic
        '
        Me.sBtn_TakeOnePic.Enabled = False
        Me.sBtn_TakeOnePic.Location = New System.Drawing.Point(318, 252)
        Me.sBtn_TakeOnePic.Name = "sBtn_TakeOnePic"
        Me.sBtn_TakeOnePic.Size = New System.Drawing.Size(81, 24)
        Me.sBtn_TakeOnePic.TabIndex = 24
        Me.sBtn_TakeOnePic.Text = "Take One Pic"
        '
        'PicEdit_B
        '
        Me.PicEdit_B.Location = New System.Drawing.Point(237, 29)
        Me.PicEdit_B.Name = "PicEdit_B"
        Me.PicEdit_B.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch
        Me.PicEdit_B.Size = New System.Drawing.Size(228, 212)
        Me.PicEdit_B.TabIndex = 0
        '
        'PicEdit_A
        '
        Me.PicEdit_A.Location = New System.Drawing.Point(5, 29)
        Me.PicEdit_A.Name = "PicEdit_A"
        Me.PicEdit_A.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch
        Me.PicEdit_A.Size = New System.Drawing.Size(228, 212)
        Me.PicEdit_A.TabIndex = 0
        '
        'XTpag_CameraSetup
        '
        Me.XTpag_CameraSetup.Controls.Add(Me.GroupBox2)
        Me.XTpag_CameraSetup.Controls.Add(Me.GroupBox1)
        Me.XTpag_CameraSetup.Controls.Add(Me.InfoTextBox)
        Me.XTpag_CameraSetup.Name = "XTpag_CameraSetup"
        Me.XTpag_CameraSetup.Size = New System.Drawing.Size(467, 281)
        Me.XTpag_CameraSetup.Text = " Camera Setup "
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.BtnSavePath)
        Me.GroupBox2.Controls.Add(Me.CkBox_IsAutoTake)
        Me.GroupBox2.Controls.Add(Me.TBox_SavePath)
        Me.GroupBox2.Controls.Add(Me.Label9)
        Me.GroupBox2.Controls.Add(Me.Label8)
        Me.GroupBox2.Controls.Add(Me.Btn_GetNewPath)
        Me.GroupBox2.Location = New System.Drawing.Point(11, 162)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(447, 86)
        Me.GroupBox2.TabIndex = 27
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "圖片保存設定："
        '
        'BtnSavePath
        '
        Me.BtnSavePath.Location = New System.Drawing.Point(366, 58)
        Me.BtnSavePath.Name = "BtnSavePath"
        Me.BtnSavePath.Size = New System.Drawing.Size(62, 23)
        Me.BtnSavePath.TabIndex = 25
        Me.BtnSavePath.Text = "Save"
        Me.BtnSavePath.UseVisualStyleBackColor = True
        '
        'CkBox_IsAutoTake
        '
        Me.CkBox_IsAutoTake.AutoSize = True
        Me.CkBox_IsAutoTake.Location = New System.Drawing.Point(29, 46)
        Me.CkBox_IsAutoTake.Name = "CkBox_IsAutoTake"
        Me.CkBox_IsAutoTake.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.CkBox_IsAutoTake.Size = New System.Drawing.Size(93, 16)
        Me.CkBox_IsAutoTake.TabIndex = 24
        Me.CkBox_IsAutoTake.Text = " : Is Auto Take"
        Me.CkBox_IsAutoTake.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.CkBox_IsAutoTake.UseVisualStyleBackColor = True
        '
        'TBox_SavePath
        '
        Me.TBox_SavePath.Location = New System.Drawing.Point(91, 17)
        Me.TBox_SavePath.Name = "TBox_SavePath"
        Me.TBox_SavePath.ReadOnly = True
        Me.TBox_SavePath.Size = New System.Drawing.Size(311, 22)
        Me.TBox_SavePath.TabIndex = 24
        '
        'Label9
        '
        Me.Label9.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label9.Location = New System.Drawing.Point(17, 65)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(424, 12)
        Me.Label9.TabIndex = 7
        Me.Label9.Text = "---------------------------------------------------------------------------------" & _
            "------------------------"
        Me.Label9.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Label8.Location = New System.Drawing.Point(30, 23)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(53, 12)
        Me.Label8.TabIndex = 7
        Me.Label8.Text = "Save Path:"
        Me.Label8.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        '
        'Btn_GetNewPath
        '
        Me.Btn_GetNewPath.Location = New System.Drawing.Point(404, 16)
        Me.Btn_GetNewPath.Name = "Btn_GetNewPath"
        Me.Btn_GetNewPath.Size = New System.Drawing.Size(22, 23)
        Me.Btn_GetNewPath.TabIndex = 25
        Me.Btn_GetNewPath.Text = "..."
        Me.Btn_GetNewPath.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.AEModeCmb)
        Me.GroupBox1.Controls.Add(Me.TvCmb)
        Me.GroupBox1.Controls.Add(Me.AvCmb)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.ISOSpeedCmb)
        Me.GroupBox1.Controls.Add(Me.ImageQualityCmb)
        Me.GroupBox1.Controls.Add(Me.MeteringModeCmb)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.ExposureCompCmb)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Location = New System.Drawing.Point(10, 14)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(448, 141)
        Me.GroupBox1.TabIndex = 26
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "拍照參數："
        '
        'XTpag_CameraList
        '
        Me.XTpag_CameraList.Controls.Add(Me.GridControl1)
        Me.XTpag_CameraList.Controls.Add(Me.PanelControl2)
        Me.XTpag_CameraList.Controls.Add(Me.PanelControl1)
        Me.XTpag_CameraList.Name = "XTpag_CameraList"
        Me.XTpag_CameraList.Size = New System.Drawing.Size(467, 281)
        Me.XTpag_CameraList.Text = " Camera List "
        '
        'GridControl1
        '
        Me.GridControl1.DataSource = Me.BindingSource_CameraList
        Me.GridControl1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GridControl1.EmbeddedNavigator.Name = ""
        Me.GridControl1.Location = New System.Drawing.Point(0, 27)
        Me.GridControl1.MainView = Me.GridView1
        Me.GridControl1.Name = "GridControl1"
        Me.GridControl1.RepositoryItems.AddRange(New DevExpress.XtraEditors.Repository.RepositoryItem() {Me.RepositoryItemComboBox1})
        Me.GridControl1.Size = New System.Drawing.Size(467, 226)
        Me.GridControl1.TabIndex = 0
        Me.GridControl1.ViewCollection.AddRange(New DevExpress.XtraGrid.Views.Base.BaseView() {Me.GridView1})
        '
        'BindingSource_CameraList
        '
        Me.BindingSource_CameraList.DataSource = GetType(PHCameraController.CameraController)
        '
        'GridView1
        '
        Me.GridView1.Columns.AddRange(New DevExpress.XtraGrid.Columns.GridColumn() {Me.colUSBPortNo, Me.colOwnerName})
        Me.GridView1.GridControl = Me.GridControl1
        Me.GridView1.Name = "GridView1"
        Me.GridView1.OptionsView.ShowGroupPanel = False
        '
        'colUSBPortNo
        '
        Me.colUSBPortNo.Caption = "USB Port No."
        Me.colUSBPortNo.FieldName = "USBPortNo"
        Me.colUSBPortNo.Name = "colUSBPortNo"
        Me.colUSBPortNo.OptionsColumn.AllowEdit = False
        Me.colUSBPortNo.OptionsColumn.ReadOnly = True
        Me.colUSBPortNo.Visible = True
        Me.colUSBPortNo.VisibleIndex = 0
        Me.colUSBPortNo.Width = 263
        '
        'colOwnerName
        '
        Me.colOwnerName.Caption = "Owner Name"
        Me.colOwnerName.ColumnEdit = Me.RepositoryItemComboBox1
        Me.colOwnerName.FieldName = "OwnerName"
        Me.colOwnerName.Name = "colOwnerName"
        Me.colOwnerName.Visible = True
        Me.colOwnerName.VisibleIndex = 1
        Me.colOwnerName.Width = 225
        '
        'RepositoryItemComboBox1
        '
        Me.RepositoryItemComboBox1.AutoHeight = False
        Me.RepositoryItemComboBox1.Buttons.AddRange(New DevExpress.XtraEditors.Controls.EditorButton() {New DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)})
        Me.RepositoryItemComboBox1.Items.AddRange(New Object() {"A", "B"})
        Me.RepositoryItemComboBox1.Name = "RepositoryItemComboBox1"
        '
        'PanelControl2
        '
        Me.PanelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly
        Me.PanelControl2.Controls.Add(Me.LabelControl1)
        Me.PanelControl2.Dock = System.Windows.Forms.DockStyle.Top
        Me.PanelControl2.Location = New System.Drawing.Point(0, 0)
        Me.PanelControl2.Name = "PanelControl2"
        Me.PanelControl2.Size = New System.Drawing.Size(467, 27)
        Me.PanelControl2.TabIndex = 2
        '
        'LabelControl1
        '
        Me.LabelControl1.Location = New System.Drawing.Point(9, 6)
        Me.LabelControl1.Name = "LabelControl1"
        Me.LabelControl1.Size = New System.Drawing.Size(72, 14)
        Me.LabelControl1.TabIndex = 0
        Me.LabelControl1.Text = "設置相機ID："
        '
        'PanelControl1
        '
        Me.PanelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly
        Me.PanelControl1.Controls.Add(Me.BtnReStart)
        Me.PanelControl1.Controls.Add(Me.Btn_Exit)
        Me.PanelControl1.Controls.Add(Me.sBtn_SaveCameraId)
        Me.PanelControl1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.PanelControl1.Location = New System.Drawing.Point(0, 253)
        Me.PanelControl1.Name = "PanelControl1"
        Me.PanelControl1.Size = New System.Drawing.Size(467, 28)
        Me.PanelControl1.TabIndex = 1
        '
        'BtnReStart
        '
        Me.BtnReStart.Location = New System.Drawing.Point(318, 4)
        Me.BtnReStart.Name = "BtnReStart"
        Me.BtnReStart.Size = New System.Drawing.Size(65, 24)
        Me.BtnReStart.TabIndex = 28
        Me.BtnReStart.Text = "ReStart"
        Me.BtnReStart.UseVisualStyleBackColor = True
        '
        'Btn_Exit
        '
        Me.Btn_Exit.Location = New System.Drawing.Point(5, 5)
        Me.Btn_Exit.Name = "Btn_Exit"
        Me.Btn_Exit.Size = New System.Drawing.Size(75, 23)
        Me.Btn_Exit.TabIndex = 1
        Me.Btn_Exit.Text = "Exit"
        Me.Btn_Exit.UseVisualStyleBackColor = True
        Me.Btn_Exit.Visible = False
        '
        'sBtn_SaveCameraId
        '
        Me.sBtn_SaveCameraId.Location = New System.Drawing.Point(388, 4)
        Me.sBtn_SaveCameraId.Name = "sBtn_SaveCameraId"
        Me.sBtn_SaveCameraId.Size = New System.Drawing.Size(75, 23)
        Me.sBtn_SaveCameraId.TabIndex = 0
        Me.sBtn_SaveCameraId.Text = "Save"
        '
        'Timer_Shot
        '
        '
        'MyPHCameraController
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 15)
        Me.ClientSize = New System.Drawing.Size(473, 308)
        Me.Controls.Add(Me.XTabCtrl_CameraCtrl)
        Me.ForeColor = System.Drawing.SystemColors.ControlText
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.Name = "MyPHCameraController"
        Me.Text = "PH Camera Controller"
        CType(Me.XTabCtrl_CameraCtrl, System.ComponentModel.ISupportInitialize).EndInit()
        Me.XTabCtrl_CameraCtrl.ResumeLayout(False)
        Me.XTpag_CameraShow.ResumeLayout(False)
        Me.XTpag_CameraShow.PerformLayout()
        CType(Me.PicEdit_B.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PicEdit_A.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        Me.XTpag_CameraSetup.ResumeLayout(False)
        Me.XTpag_CameraSetup.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.XTpag_CameraList.ResumeLayout(False)
        CType(Me.GridControl1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.BindingSource_CameraList, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.GridView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.RepositoryItemComboBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PanelControl2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.PanelControl2.ResumeLayout(False)
        Me.PanelControl2.PerformLayout()
        CType(Me.PanelControl1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.PanelControl1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region

#End Region


#Region "User defined attributes"

    ' Save as class variable, new delegates of event handlers.
    Public inPropertyEventHandler As New  _
                EdsPropertyEventHandler(AddressOf CameraEventListener.handlePropertyEvent)
    Public inObjectEventHandler As New  _
                EdsObjectEventHandler(AddressOf CameraEventListener.handleObjectEvent)
    Public inStateEventHandler As New  _
                EdsStateEventHandler(AddressOf CameraEventListener.handleStateEvent)
    'Xsj20120525:注釋掉以下代碼
    'Public Shared controller As CameraController
    Public Shared model As CameraModel
    Public Shared m_cmbTbl As Hashtable = New Hashtable

    'Xsj:
    Public Shared cameraActionProperties As CameraActionProperty

#End Region

#Region "Update Windows"

    Delegate Sub UpdateDelegate( _
        ByVal from As Observable, _
        ByVal msg As Integer, _
        ByVal data As Integer)


    'Xsj:添加用于显示已拍测试图片
    Delegate Sub UpdateDelegatePic( _
        ByVal img As Image, _
        ByVal flg As String)
    '
    Private Sub UpdatePictrue(ByVal img As Image, ByVal flg As String) Implements Observer.updatePic
        'Get the name of this thread.
        'Dim threadName As String = _
        'System.Threading.Thread.CurrentThread.Name()

        '// Make this form be able to be updated by other thread.
        If InvokeRequired Then
            'Create UpdateDelegate
            Dim dlg As New UpdateDelegatePic(AddressOf UpdatePictrue)
            Try
                BeginInvoke(dlg, New Object() {img, flg})
            Catch e As Exception
                Return
            Finally
            End Try
            Return
        End If


        Select Case flg

            Case "A"
                Me.PicEdit_A.EditValue = Nothing
                Me.PicEdit_A.EditValue = img

            Case "B"
                Me.PicEdit_B.EditValue = Nothing
                Me.PicEdit_B.EditValue = img

        End Select


    End Sub

    Sub UpdateWindow(ByVal from As Observable, ByVal msg As Integer, ByVal data As Integer) _
        Implements Observer.update

        'Get the name of this thread.
        Dim threadName As String = _
        System.Threading.Thread.CurrentThread.Name()

        '// Make this form be able to be updated by other thread.
        If InvokeRequired Then
            'Create UpdateDelegate
            Dim dlg As New UpdateDelegate(AddressOf UpdateWindow)
            Try
                BeginInvoke(dlg, New Object() {from, msg, data})
            Catch e As Exception
                Return
            Finally
            End Try
            Return
        End If



        Select Case msg
            Case prog '//Progress of image downloading .
                progressBar.Value = data

            Case strt '// Start downloading.
                '//_progress.SetPos(0);

            Case cplt '// Complete downloading.
                progressBar.Value = 0

            Case updt '// Update properties.
                Dim propertyID As Integer = data
                Dim propData As Integer = model.getPropertyUInt32(propertyID)
                UpdateProperty(propertyID, propData)

            Case upls '// Update an available property list.
                Dim propertyID As Integer = data
                Dim desc As EdsPropertyDesc = model.getPropertyDesc(propertyID)
                UpdatePropertyDesc(propertyID, desc)

            Case warn '// Warning
                InfoTextBox.Text = "Device Busy"

            Case errr '// Error
                '// Nothing to do because the first getting property from model 30D is sure to fail. 
                Dim ss As String
                ss = String.Format("%x", data)
                InfoTextBox.Text = ss

            Case clse '// Close
                'TakeBtn.Enabled = False
                'Xsj:
                sBtn_TakeOnePic.Enabled = False
                progressBar.Enabled = False
                InfoTextBox.Enabled = False
                AEModeCmb.Enabled = False
                TvCmb.Enabled = False
                AvCmb.Enabled = False
                ISOSpeedCmb.Enabled = False
        End Select

        If msg <> errr And msg <> warn Then
            InfoTextBox.Text = ""
        End If


    End Sub



    Sub UpdateProperty(ByVal propertyID As Integer, ByVal data As Integer)
        Dim propList As Hashtable = CameraProperty.g_PropList.Item(propertyID)
        Select Case propertyID
            Case kEdsPropID_AEMode
                AEModeCmb.Text = propList.Item(data)
            Case kEdsPropID_ISOSpeed
                ISOSpeedCmb.Text = propList.Item(data)
            Case kEdsPropID_MeteringMode
                MeteringModeCmb.Text = propList.Item(data)
            Case kEdsPropID_Av
                AvCmb.Text = propList.Item(data)
            Case kEdsPropID_Tv
                TvCmb.Text = propList.Item(data)
            Case kEdsPropID_ExposureCompensation
                ExposureCompCmb.Text = propList.Item(data)
            Case kEdsPropID_ImageQuality
                ImageQualityCmb.Text = propList.Item(data)
        End Select

    End Sub



    Sub UpdatePropertyDesc(ByVal propertyID As Integer, ByVal desc As EdsPropertyDesc)
        Dim err As Integer
        Dim iCnt As Integer
        Dim cmb As ComboBox = m_cmbTbl.Item(propertyID)
        Dim propList As Hashtable = CameraProperty.g_PropList.Item(propertyID)
        Dim propStr As String
        Dim propValueList As ArrayList = New ArrayList

        If cmb Is Nothing Then
            Return
        End If

        cmb.BeginUpdate()
        cmb.Items.Clear()
        For iCnt = 0 To desc.numElements - 1
            propStr = propList(desc.propDesc(iCnt))
            If propStr <> Nothing Then
                err = cmb.Items.Add(propStr)
                propValueList.Add(desc.propDesc(iCnt))
            End If
        Next

        cmb.Tag = propValueList ' Set the property value list

        cmb.EndUpdate()
        If cmb.Items.Count = 0 Then
            cmb.Enabled = False '// No available item.
        Else
            cmb.Enabled = True
        End If

    End Sub


#End Region

    ''' <summary>
    ''' Xsj:根據不同的協議,彩用不同的運行參數
    ''' </summary>
    ''' <param name="camera"></param>
    ''' <param name="deviceInfo"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Function cameraModelFactory(ByVal camera As IntPtr, ByVal deviceInfo As EdsDeviceInfo) As CameraModel

        ' if Legacy protocol.
        If deviceInfo.DeviceSubType = 0 Then
            Return New CameraModelLegacy(camera)
        End If

        ' PTP protocol.
        Return New CameraModel(camera)

    End Function



#Region "Window Events"

    'Xsj:单拍测试
    Private Sub TakeBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles sBtn_TakeOnePic.Click
        '
        ' Release button
        '
        'Xsj:20111008:为实现多机齐拍，而注释掉下面语句
        ' controller.actionPerformed("takepicture")

        'Xsj: 测试照相
        ClearPicShow()
        Dim currFabInspPicBO As PH.FabricInspection.BO.Fabric_Insp_Picture = New PH.FabricInspection.BO.Fabric_Insp_Picture()

        CameraAction(currFabInspPicBO, "Test")


    End Sub


    'Xsj:连照测试
    Private Sub SBtn_AutoTakePic_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SBtn_AutoTakePic.Click

        Dim btn As Button
        btn = CType(sender, Button)
        If btn.Tag.ToString() = "Start" Then
            Timer_Shot.Enabled = True
            Timer_Shot.Interval = 4800
            btn.Tag = "Stop"
            btn.Text = "Stop Auto Take"
        Else
            Timer_Shot.Enabled = False
            btn.Tag = "Start"
            btn.Text = "Start Auto Take"
        End If

    End Sub

    '
    Private Sub ClearPicShow()
        Me.PicEdit_A.EditValue = Nothing
        Me.PicEdit_B.EditValue = Nothing
    End Sub


    'Xsj:计时器
    Private Sub Timer_Shot_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer_Shot.Tick

        CameraAction(Nothing, "Test_" + Now.ToString("yyMMddmmHHssfff"))

    End Sub


    'Xsj:相机拍照动作
    ''' <summary>
    ''' Xsj:相机拍照动作
    ''' </summary>
    ''' <param name="FabricInspPictureBO"></param>
    ''' <param name="PicName"></param>
    ''' <remarks></remarks>
    Public Sub CameraAction(ByVal FabricInspPictureBO As PH.FabricInspection.BO.Fabric_Insp_Picture, ByVal PicName As String)

        'Xsj:更新进度条
        UpdateWindow(Nothing, 2, 0)

        'Xsj:检测Item的对应保存路径是否已存在，不存在则创建
        If Not ItemSavePathBo.IsItemSavePathExists Then

            ItemSavePathBo.CreatetemSavePath()

        End If

        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList
            If IsNothing(controllerItem.currOperator) Then
                controllerItem.currOperator = New OperaterObj()
            End If
            controllerItem.currOperator.ImgName = PicName
            controllerItem.currOperator.FabricInspPictureBO = FabricInspPictureBO
            'Xsj:執行相機任務
            controllerItem.actionPerformed("takepicture")

        Next

    End Sub


    'Xsj:窗体释放
    Private Sub VBSample_Disposed(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Disposed

    End Sub


    'Xsj:窗体加载
    Public Sub VBSample_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Try

            'Xsj20111012:图片保存路径 
            cameraActionProperties = New CameraActionProperty()

            Me.TBox_SavePath.Text = cameraActionProperties.ClientSavePath
            Me.CkBox_IsAutoTake.Checked = cameraActionProperties.IsAuto

            'Xsj:初始化相机连接
            Init()

        Catch ex As Exception
            If IsNothing(cameraListStatus) Then
                cameraListStatus = New CameraStatus()
                cameraListStatus.IsOK = False
                cameraListStatus.NoteMsg = "相機拍照功能不能正常使用，如需拍照功能，請聯系程序員！"
            End If

            MessageBox.Show(ex.Message.ToString() + "，相機拍照功能不能正常使用，如需拍照功能，請聯系程序員！")


        End Try
    End Sub

    'Xsj:关闭窗体
    Dim isClose As Boolean = False
    Public Sub CloseForm()

        isClose = True

        Dim e As System.Windows.Forms.FormClosingEventArgs = New System.Windows.Forms.FormClosingEventArgs(CloseReason.UserClosing, False)

        Me.Close()
    End Sub

    'Xsj:窗体关闭
    Private Sub VBSample_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing


        If Not isClose Then

            'Xsj:最小化窗体
            Me.WindowState = 1
            e.Cancel = True

        Else

            CleanResourc()


        End If

    End Sub


    'Xsj:清理资源
    Public Sub CleanResourc()

        For Each item As CameraController In MyPHCameraController.CameraControllerList
            item.actionPerformed("close")
            EdsRelease(item.model.getCameraObject())
        Next

        'Xsj:注释掉以下代码，添加以上代码
        'controller.actionPerformed("close")

        'If IsNothing(model) = False Then
        '    If IsNothing(model.getCameraObject()) = False Then
        '        EdsRelease(model.getCameraObject())
        '    End If
        'End If 
        Try

            EdsTerminateSDK()

        Catch ex As Exception

        End Try
    End Sub


    'Xsj20111012：添加用于保存相机的[Owner Name] 
    Private Sub sBtn_SaveCameraId_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles sBtn_SaveCameraId.Click

        Try
            For Each controlItem As CameraController In BindingSource_CameraList.List
                Dim val As Integer = AscW(controlItem.OwnerName)
                controlItem.actionPerformed("set", kEdsPropID_OwnerName, val)
            Next
            MessageBox.Show("保存相机ID设定成功！", "保存成功")
        Catch ex As Exception

        End Try

    End Sub


    'Xsj:重置相关连接
    Private Sub Btn_ReStart_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn_ReStart.Click, BtnReStart.Click

        Try

            For Each controlItem As CameraController In MyPHCameraController.CameraControllerList

                If IsNothing(controlItem.processor) = False And controlItem.processor.running Then

                    controlItem.actionPerformed("close")

                End If

            Next

            'Xsj20120525:add
            Threading.Thread.Sleep(500)

            'Xsj:释放已载入的EDSDK
            If Me.isSDKLoaded Then

                EDSDK.EdsTerminateSDK()

            End If

            'Xsj:重新初始化
            Me.Init()

            MessageBox.Show("Restart Camera Finish!", "Finish Note")

        Catch ex As Exception

            MessageBox.Show("Restart Camera Failed! " & vbCrLf & ex.ToString(), "Fail Note")

        End Try

    End Sub

#End Region

#Region "初始化相参数"

    'Xsj:當前已連接到電腦的相機集合 
    ''' <summary>
    ''' Xsj:當前已連接到電腦的相機集合
    ''' </summary>
    ''' <remarks></remarks>
    Public Shared CameraControllerList As List(Of CameraController)

    Public cameraListStatus As CameraStatus


    'Xsj:SDK是否已加载
    Dim isSDKLoaded As Boolean = False

    'Xsj:初始化相机连接
    Public Sub Init()

        Try

            CameraControllerList = New List(Of CameraController)

            cameraListStatus = New CameraStatus()
            'Xsj:SDK是否已加载
            'Dim isSDKLoaded As Boolean = False
            'Xsj:相机访问状态变量
            Dim err As Integer = EDS_ERR_OK
            'Xsj:已连接的相机列表
            Dim cameraList As IntPtr = Nothing
            'Xsj:当前相机
            Dim camera As IntPtr = Nothing
            'Xsj:已连接的相机数量
            Dim count As Integer = 0
            'Xsj:相机各参数集
            Dim propObj As New CameraProperty

            ' connect property id to combobox. 
            If IsNothing(m_cmbTbl) Then
                m_cmbTbl = New Hashtable()
            End If
            m_cmbTbl.Clear()
            'Xsj:記錄相機運行參數
            m_cmbTbl.Add(kEdsPropID_AEMode, Me.AEModeCmb)
            m_cmbTbl.Add(kEdsPropID_ISOSpeed, Me.ISOSpeedCmb)
            m_cmbTbl.Add(kEdsPropID_Av, Me.AvCmb)
            m_cmbTbl.Add(kEdsPropID_Tv, Me.TvCmb)
            m_cmbTbl.Add(kEdsPropID_MeteringMode, Me.MeteringModeCmb)
            m_cmbTbl.Add(kEdsPropID_ExposureCompensation, Me.ExposureCompCmb)
            m_cmbTbl.Add(kEdsPropID_ImageQuality, Me.ImageQualityCmb)

            'Xsj:加载EDSDK
            err = EDSDK.EdsInitializeSDK()

            If err = EDS_ERR_OK Then
                'Xsj:加载成功后，标识为已加载状态
                isSDKLoaded = True
            Else
                cameraListStatus.IsOK = False
                cameraListStatus.NoteMsg = "加载EDSDK失败。"
            End If


            If err = EDS_ERR_OK Then
                'Xsj:获取当前已连接的相机列表指針
                err = EDSDK.EdsGetCameraList(cameraList)
            End If

            '//Xsj20111008:改造以下代码，实列多机齐拍功能：生成相机列表中各相机对应的CameraController对象
            Dim cameraIndex As Integer
            CameraControllerList.Clear()

            'Xsj20120525:注釋掉以下代碼
            'If IsNothing(controller) = False Then
            '    If controller.processor.running Then
            '        controller.actionPerformed("close")
            '    End If
            '    EDSDK.EdsRelease(controller.model.getCameraObject())
            '    controller = Nothing
            '    'Xsj20120523:add 用500毫秒釋放相機，以防引起相機狀態混亂
            '    Threading.Thread.Sleep(500)
            'End If

            If err = EDS_ERR_OK Then
                'Xsj:获取已连接的相机总数
                err = EDSDK.EdsGetChildCount(cameraList, count)
                If count = 0 Then
                    err = EDS_ERR_DEVICE_NOT_FOUND
                    cameraListStatus.IsOK = False
                    cameraListStatus.NoteMsg = "没有检测到相机设备,请确认你的相机已连接到电脑上。"
                    'MessageBox.Show("没有检测到相机设备,请确认你的相机已连接到电脑上。", "设备检测失败", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    Return
                End If
            Else
                'Xsj20120524:add
                cameraListStatus.IsOK = False
                cameraListStatus.NoteMsg = "獲取相機列表失敗。"
            End If

            '// 遍列相机列表中的相机对象
            For cameraIndex = 0 To count - 1

                camera = Nothing

                If err = EDS_ERR_OK Then

                    'err = EDSDK.EdsGetChildAtIndex(cameraList, 0, camera)

                    'Xsj:获取指定序号的相机
                    err = EDSDK.EdsGetChildAtIndex(cameraList, cameraIndex, camera)

                End If


                'Xsj:相机的设备信息
                Dim deviceInfo As EDSDKTypes.EdsDeviceInfo = Nothing

                If err = EDS_ERR_OK Then
                    'Xsj:获取当前相机的设备信息
                    err = EDSDK.EdsGetDeviceInfo(camera, deviceInfo)   'EdsGetDeviceInfo(camera, deviceInfo)

                    If err = EDS_ERR_OK And IsNothing(camera) = True Then

                        err = EDS_ERR_DEVICE_NOT_FOUND

                        cameraListStatus.IsOK = False
                        cameraListStatus.NoteMsg = "一台或多台相机连接失败。"
                        'MessageBox.Show("一台或多台相机连接失败", "设备连接失败", MessageBoxButtons.OK, MessageBoxIcon.Error)

                    End If

                End If

                'Xsj:20111008:为实现多机齐拍，而注释掉下面语句
                'If IsNothing(cameraList) = False Then
                'EdsRelease(cameraList)
                'End If

                '//xsj:定义当前CameraControl的CameralModel变量
                Dim newModel As CameraModel

                '// Create the camera model 
                If err = EDS_ERR_OK Then

                    'Xsj:创建当前相机CameralModel(運行參數)
                    newModel = cameraModelFactory(camera, deviceInfo)

                    If IsNothing(newModel) = True Then

                        err = EDS_ERR_DEVICE_NOT_FOUND

                    End If

                Else

                    cameraListStatus.IsOK = False
                    cameraListStatus.NoteMsg = "Cannot detect camera"
                    'MessageBox.Show("Cannot detect camera")

                End If


                If err = EDS_ERR_OK Then

                    'Xsj:定义当前相机对应的CameraController变量
                    '// Create a controller
                    Dim newController As CameraController = New CameraController

                    'Xsj20120525:注釋掉以下代碼
                    'If controller Is Nothing Then

                    '    controller = newController
                    '    model = newModel

                    'End If
                    'Xsj20120525:添加以下代碼
                    model = newModel

                    '// Set the model to this controller.
                    newController.setCameraModel(newModel)

                    '//Xsj:添加用于手动与相机进行会话，防止退出窗体重新进去而造成会话中停
                    newController.actionPerformed("opensession")

                    '// Make notify the model updating to the view.
                    newModel.addObserver(Me)


                    ' ------------------------------------------------------------------------
                    ' ------------------------------------------------------------------------
                    ' You should create class instance of delegates of event handlers 
                    ' with 'new' expressly if its attribute is Shared, 
                    ' because System sometimes do garbage-collect these delegates.
                    '
                    '
                    ' This error occurs.
                    '
                    ' CallbackOnCollectedDelegate is detected.
                    ' Message: Callback was called with
                    ' garbage-collected delegate of  
                    ' Type() 'VBSample3!VBSample3.EDSDKTypes+EdsPropertyEventHandler::Invoke' 
                    ' 
                    ' It will be able to make data loss or application clash.
                    ' You should stock delegates when you want to send delegate to unmanaged code.
                    '
                    ' ------------------------------------------------------------------------
                    If err = EDS_ERR_OK Then
                        'Xsj:注册一个回调函数接收状态为相机的属性状态变化通知事件。
                        err = EDSDK.EdsSetPropertyEventHandler(camera, kEdsPropertyEvent_All, _
                                inPropertyEventHandler, camera)   'IntPtr.Zero
                    End If

                    '// Set ObjectEventHandler
                    If err = EDS_ERR_OK Then

                        'err = EdsSetObjectEventHandler(camera, kEdsObjectEvent_All, _
                        '    inObjectEventHandler, IntPtr.Zero)

                        'Xsj:注册camera的内存卡对象改变响应事件
                        err = EDSDK.EdsSetObjectEventHandler(camera, kEdsObjectEvent_All, _
                            inObjectEventHandler, camera)

                    End If

                    '// Set StateEventHandler
                    If err = EDS_ERR_OK Then

                        '//为相机的属性状态变化通知事件注册一个回调函数接收状态。
                        err = EDSDK.EdsSetCameraStateEventHandler(camera, kEdsStateEvent_All, _
                            inStateEventHandler, camera) 'IntPtr.Zero

                    End If

                    'xsj:启动CameraControl指令执行程线程
                    newController.run()

                    'Xsj20111012:添加用于获取“Owner Name”
                    newController.actionPerformed("get", kEdsPropID_OwnerName, 0)

                    'Xsj20111008:为实现多机齐拍，而注释掉下面语句
                    CameraControllerList.Add(newController)
                End If

                If err <> EDS_ERR_OK Then

                    If IsNothing(camera) = False Then
                        'Xsj:释放当前相机
                        EDSDK.EdsRelease(camera)
                        camera = Nothing
                    End If

                    If (isSDKLoaded) Then
                        'Xsj:释放已载入的EDSDK
                        EDSDK.EdsTerminateSDK()
                    End If

                    'Xsj20120524：注釋掉以下代碼
                    'If IsNothing(newModel) = False Then
                    '    newModel = Nothing
                    'End If
                    'If IsNothing(controller) = False Then
                    '    controller = Nothing
                    'End If

                    'Xsj20120524：添加以下代碼
                    newModel = Nothing

                    'Xsj:释放CameraControlList资源
                    'If IsNothing(CameraControllerList) = False Then
                    '    For Each item As CameraController In CameraControllerList 
                    '        item = Nothing
                    '    Next
                    '    CameraControllerList = Nothing
                    'End If

                    'Xsj20120524：注釋掉以上代碼,添加掉以下代碼
                    CameraControllerList.Clear()

                    'End
                End If

            Next

            '//Execute the controller.
            'controller.run()

            'Xsj20111012:绑定用于显示相机“Owner Name”列表

            Me.BindingSource_CameraList.Clear()
            Me.BindingSource_CameraList.DataSource = MyPHCameraController.CameraControllerList


            SBtn_AutoTakePic.Enabled = (err = EDS_ERR_OK)
            sBtn_TakeOnePic.Enabled = (err = EDS_ERR_OK)

        Catch ex As Exception

            Throw New Exception("初始化EDSDK失敗！" & vbCrLf & ex.ToString())

        End Try

    End Sub

#End Region

#Region "参数设置"

    'Xsj:设置AEMode
    Private Sub AEModeCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AEModeCmb.SelectionChangeCommitted
        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_AEMode, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_AEMode, data)

        Next

    End Sub

    'Xsj:设置Tv
    Private Sub TvCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TvCmb.SelectionChangeCommitted
        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)
        Dim id As Integer

        'If cmb.Equals(Me.AEModeCmb) Then
        '    id = kEdsPropID_AEMode
        'ElseIf cmb.Equals(Me.TvCmb) Then
        '    id = kEdsPropID_Tv
        'ElseIf cmb.Equals(Me.AvCmb) Then
        '    id = kEdsPropID_Av
        'ElseIf cmb.Equals(Me.ISOSpeedCmb) Then
        '    id = kEdsPropID_ISOSpeed
        'ElseIf cmb.Equals(Me.MeteringModeCmb) Then
        '    id = kEdsPropID_MeteringMode
        'ElseIf cmb.Equals(Me.ExposureCompCmb) Then
        '    id = kEdsPropID_ExposureCompensation
        'Else
        '    Console.WriteLine("What's this?")
        'End If


        'Xsj:20120525注釋掉以下代碼
        'id = kEdsPropID_Tv
        'controller.actionPerformed("set", id, data)
        'Xsj:20120525添加如下代碼，使設置作用於所有相機
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_Tv, data)

        Next

    End Sub

    'Xsj:设置Av
    Private Sub AvCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AvCmb.SelectionChangeCommitted
        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_Av, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_Av, data)

        Next

    End Sub

    'Xsj:设置ISOSpeed
    Private Sub ISOSpeedCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ISOSpeedCmb.SelectionChangeCommitted
        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_ISOSpeed, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_ISOSpeed, data)

        Next

    End Sub

    'Xsj:设置采光模式
    Private Sub MeteringModeCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MeteringModeCmb.SelectionChangeCommitted

        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_MeteringMode, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_MeteringMode, data)

        Next

    End Sub

    'Xsj:设置暴光度
    Private Sub ExposureCompCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExposureCompCmb.SelectionChangeCommitted
        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_ExposureCompensation, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_MeteringMode, data)

        Next

    End Sub

    'Xsj:设置图片像素
    Private Sub ImageQualityCmb_SelectionChangeCommitted(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ImageQualityCmb.SelectionChangeCommitted

        Dim cmb As ComboBox = CType(sender, ComboBox) ' "sender" is the combobox
        Dim propValueList As ArrayList = CType(cmb.Tag, ArrayList)
        Dim data As Integer = propValueList.Item(cmb.SelectedIndex)

        'controller.actionPerformed("set", kEdsPropID_ImageQuality, data)
        'Xsj注释掉以上代码更改为控制多台相制参数
        For Each controllerItem As CameraController In MyPHCameraController.CameraControllerList

            controllerItem.actionPerformed("set", kEdsPropID_ImageQuality, data)

        Next

    End Sub



    'Xsj20111012:设定图片保存路径
    Private Sub Btn_GetNewPath_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn_GetNewPath.Click

        Dim folderBroserDialog As FolderBrowserDialog = New FolderBrowserDialog()
        If folderBroserDialog.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim folderPath As String = folderBroserDialog.SelectedPath
            Me.TBox_SavePath.Text = folderPath
        End If

    End Sub


    'Xsj:设置保存
    Private Sub Btn_SavePath_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnSavePath.Click

        cameraActionProperties.IsAuto = Me.CkBox_IsAutoTake.Checked
        cameraActionProperties.ClientSavePath = Me.TBox_SavePath.Text
        Try
            Dim pwd As String = InputBox("請輸入密碼!")
            If IsNothing(pwd) Then
                Return
            ElseIf pwd.Trim() = "" Then
                Return
            End If

            If pwd = cameraActionProperties.ManagerPwd Then
                cameraActionProperties.SaveProperty()
                MessageBox.Show("设置设定成功", "保存成功")
            Else
                MessageBox.Show("密碼錯誤!", "保存動作中止", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If

        Catch ex As Exception

            MessageBox.Show(ex.Message, "保存失败", MessageBoxButtons.OK, MessageBoxIcon.Warning)

        End Try


    End Sub


#End Region

    Private Sub Btn_Exit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn_Exit.Click
        Me.Btn_Exit.Enabled = False
        Me.CloseForm()
    End Sub

    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub
End Class

