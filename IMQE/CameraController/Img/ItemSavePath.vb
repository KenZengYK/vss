Imports System.Collections.Generic

''' <summary>
''' Xsj:該類用於記錄照片的相關信息
''' </summary>
''' <remarks></remarks>
Public Class ItemSavePath

    Private SavePath As List(Of String)

    'Xsj:当前Item的图片保存路径
    Private _itemSavePathStr As String
    Public Property ItemSavePathStr() As String
        Get
            If IsNothing(_itemSavePathStr) Then

                _itemSavePathStr = MakeUpItemSavePath()

            End If
            Return _itemSavePathStr
        End Get
        Set(ByVal value As String)
            _itemSavePathStr = value
        End Set
    End Property

    'Xsj:当前Item是否已存在保存路径
    Private _isItemSavePathExists As Boolean = Nothing
    Public Property IsItemSavePathExists() As Boolean

        Get
            If IsNothing(Me._isItemSavePathExists) Then
                _isItemSavePathExists = CheckItemSavePathExists()
            End If
            Return _isItemSavePathExists
        End Get
        Set(ByVal value As Boolean)
            _isItemSavePathExists = value
        End Set

    End Property


    'Xsj:构造函数
    Public Sub New(ByVal SavePath As List(Of String))
        Me.SavePath = SavePath
    End Sub


    'Xsj:当前Item的图片保存路径
    Public Function MakeUpItemSavePath() As String

        Dim cameraActionProp As CameraActionProperty = New CameraActionProperty()

        Dim baseSaveString As String = cameraActionProp.ClientSavePath

        For Each item As String In Me.SavePath

            baseSaveString += "\" + item.Replace("\r\n", "~")

        Next

        Return baseSaveString

    End Function

    'Xsj:当前Item是否已存在保存路径
    Public Function CheckItemSavePathExists() As Boolean

        Return System.IO.Directory.Exists(Me.ItemSavePathStr)

    End Function


    'Xsj:創建当前Item的图片保存路径
    ''' <summary>
    ''' Xsj:創建当前Item的图片保存路径
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub   CreatetemSavePath()
 
        If Not Me.IsItemSavePathExists Then
            Try
                System.IO.Directory.CreateDirectory(Me.ItemSavePathStr)
            Catch ex As Exception
                Me.ItemSavePathStr = ""
            End Try 
        End If

    End Sub


End Class
