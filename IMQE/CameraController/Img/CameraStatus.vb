''' 
'''Xsj:相机状态
''' 
Public Class CameraStatus

    'Xsj:相机状态
    Private _isOK As Boolean = True

    Public Property IsOK() As Boolean
        Get
            Return _isOK
        End Get
        Set(ByVal value As Boolean)
            _isOK = value
        End Set
    End Property


    'Xsj:提示信息
    Private _noteMsg As String

    Public Property NoteMsg() As String
        Get
            Return _noteMsg
        End Get
        Set(ByVal value As String)
            _noteMsg = value
        End Set
    End Property

End Class
