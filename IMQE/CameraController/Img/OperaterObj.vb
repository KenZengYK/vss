
''' <summary>
''' Xsj:拍取的照片所屬的實體對像
''' </summary>
''' <remarks></remarks>
Public Class OperaterObj

    'Xsj:图片名称
    ''' <summary>
    ''' Xsj:图片名称
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Property ImgName() As String
        Get
            Return _imgName
        End Get
        Set(ByVal value As String)
            _imgName = value
        End Set
    End Property
    Private _imgName As String

    'Xsj:抓取的图片
    ''' <summary>
    ''' Xsj:抓取的图片
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public ReadOnly Property Img() As Image
        Get
            If IsNothing(Me.FabricInspPictureBO) Or IsNothing(Me.FabricInspPictureBO.Photo_ImageValue) Then

                Return Nothing

            End If

            Using ms As New System.IO.MemoryStream(Me.FabricInspPictureBO.Photo_ImageValue)

                Try 
                    currImg = Image.FromStream(ms)
                    Return currImg
                Catch ex As Exception
                    Return Nothing
                End Try

            End Using

        End Get
    End Property
    Private currImg As Image

    'Xsj:照片所屬的的PH.FabricInspection.BO.Fabric_Insp_Picture
    ''' <summary>
    ''' Xsj:照片所屬的的PH.FabricInspection.BO.Fabric_Insp_Picture
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Property FabricInspPictureBO() As PH.FabricInspection.BO.Fabric_Insp_Picture
        Get
            Return Me._fabricInspPictureBO
        End Get
        Set(ByVal value As PH.FabricInspection.BO.Fabric_Insp_Picture)
            Me._fabricInspPictureBO = value
        End Set
    End Property
    Private _fabricInspPictureBO As PH.FabricInspection.BO.Fabric_Insp_Picture
End Class
