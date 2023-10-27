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

Option Explicit On
Imports System.Runtime.InteropServices


''' <summary>
''' Xsj:相機控制器
''' </summary>
''' <remarks></remarks>
Public Class CameraController

    'Xsj:获取Control对应Camera的USB端口号
    Public ReadOnly Property USBPortNo() As String
        Get
            'Xsj:相机的设备信息
            Dim deviceInfo As EdsDeviceInfo = Nothing, Err As Integer
            'Xsj:获取当前相机的设备信息
            Err = EdsGetDeviceInfo(model.getCameraObject(), deviceInfo)
            Return deviceInfo.szPortName
        End Get
    End Property

    'Xsj:获取Control对应Camera的USB端口号
    Public Property OwnerName() As String

        Get
            Return model.OwnerName
        End Get
        Set(ByVal value As String)
            model.OwnerName = value
        End Set

    End Property



    '// Camera model
    Public model As CameraModel

    '// Command processing
    Public processor As New Processor



    '//Xsj
    Private _currOperator As OperaterObj
    Public Property currOperator() As OperaterObj
        Get
            Return _currOperator
        End Get
        Set(ByVal value As OperaterObj)
            _currOperator = value
        End Set
    End Property



    '// Constractor
    Public Sub New()
        model = Nothing
    End Sub

    '// Destructor
    Protected Overrides Sub Finalize()
    End Sub

    ''' <summary>
    ''' Xsj:设置当前CameraController的CameraModel
    ''' </summary>
    ''' <param name="model"></param>
    ''' <remarks></remarks>
    Public Sub setCameraModel(ByVal model As CameraModel)
        Me.model = model
    End Sub



    '// Start processor thread   
    ''' <summary>
    ''' Xsj:运行CameraController的指令执行线程
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub run()

        processor.start()

        'The communication with the camera begins
        'Xsj:开启与model指定相机的连接
        'Xsj:向CameraControl的指令线程中添加指令
        StoreAsync(New OpenSessionCommand(model))

    End Sub


    Public Sub actionPerformed(ByVal strEvent As String, ByVal inObject As IntPtr)
        If strEvent = "download" Then

            'Xsj:向CameraControl的指令线程中添加指令
            'StoreAsync(New DownloadCommand(model, inObject)) ' 
            StoreAsync(New DownloadCommand(model, inObject, Me.currOperator))


        End If
    End Sub


    Public Sub actionPerformed(ByVal strEvent As String)

        If strEvent = "opensession" Then
            '// Start communication with remote camera.
            'Xsj:向CameraControl的指令线程中添加OpenSessionCommand指令
            StoreAsync(New OpenSessionCommand(model))

        ElseIf strEvent = "takepicture" Then
            'Xsj:向CameraControl的指令线程中添加TakePictureCommand指令
            StoreAsync(New TakePictureCommand(model))

        ElseIf strEvent = "close" Then
            model.notifyObservers(clse)
            processor.setCloseCommand(New CloseSessionCommand(model))
            processor.stopTh()
            processor.join()
        End If

    End Sub


    Public Sub actionPerformed(ByVal strEvent As String, ByVal id As Integer, Optional ByVal data As Integer = 0)
        If strEvent = "get" Then
            'Xsj:向CameraControl的指令线程中添加指令
            StoreAsync(New GetPropertyCommand(model, id))

        ElseIf strEvent = "set" Then
            'Xsj:向CameraControl的指令线程中添加指令
            StoreAsync(New SetPropertyCommand(model, id, data))

        ElseIf strEvent = "getlist" Then
            'Xsj:向CameraControl的指令线程中添加指令
            StoreAsync(New GetPropertyDescCommand(model, id))

        End If

    End Sub


    '// Receive a command
    ''' <summary>
    ''' Xsj:向CameraControl的指令线程中添加指令
    ''' </summary>
    ''' <param name="command"></param>
    ''' <remarks></remarks>
    Protected Sub StoreAsync(ByVal command As Command)
        If IsNothing(command) = False Then
            processor.enqueue(command)
        End If

    End Sub


End Class
