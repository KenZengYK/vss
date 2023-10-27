Imports System.Data.SqlClient

''' <summary>
''' Xsj:相機照片操作的相關參數 
''' </summary>
''' <remarks></remarks>
Public Class CameraActionProperty

    'Xsj:是否自动拍照
    ''' <summary>
    ''' Xsj:是否自动拍照
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Property IsAuto() As Boolean
        Get
            Return _isAuto
        End Get
        Set(ByVal value As Boolean)
            _isAuto = value
        End Set
    End Property
    Private _isAuto As Boolean

    'Xsj:图片保存路径
    ''' <summary>
    ''' Xsj:图片保存路径
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Property ClientSavePath() As String
        Get
            Return _clientSavePath
        End Get
        Set(ByVal value As String)
            _clientSavePath = value
        End Set
    End Property
    Private _clientSavePath As String

    'Xsj:相机控制逻辑的Dll的配置文檔(.config)所在的路径
    Public ReadOnly Property AssemblyPath() As String
        Get
            If IsNothing(_assemblyPath) Then

                Me._assemblyPath = AppDomain.CurrentDomain.BaseDirectory + "PHCameraController.dll.config"

                'Me._assemblyPath = AppDomain.CurrentDomain.CurrentDomain.DomainManager.EntryAssembly.Location + ".config"

            End If
            Return Me._assemblyPath
        End Get
    End Property
    Private _assemblyPath As String

    'Xsj:數據庫連接
    ''' <summary>
    ''' Xsj:數據庫連接
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Private Property dbConnectString() As String

        Get
            If IsNothing(Me._dbConnectString) Then
                GetDbConnectStr()
            End If
            Return Me._dbConnectString
        End Get
        Set(ByVal value As String)
            Me._dbConnectString = value
        End Set

    End Property
    Private _dbConnectString As String

    'Xsj:管理員密碼
    ''' <summary>
    ''' Xsj:管理員密碼
    ''' </summary>
    ''' <value></value>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public ReadOnly Property ManagerPwd() As String
        Get
            If (IsNothing(Me._managerPwd)) Then

                Me._managerPwd = GetManagerPwd()

            End If

            Return Me._managerPwd

        End Get
    End Property
    Private _managerPwd As String


    'Xsj:构造函数
    Public Sub New()

        'Xsj20111104:從數據庫獲取參數
        'GetPropertyFromDb()

        'Xsj20111104:從本地文檔獲取參數
        Try

            GetPropertyFromLocation()

        Catch ex As Exception

            Throw ex

        End Try

    End Sub

    Dim encryptStr As String
    Dim descryptStr As String
    'Xsj:获取數據庫連接串
    Private Sub GetDbConnectStr()

        Dim dbConnectStr As String = ""

        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//connectionStrings")
            xmlElement = xNode.SelectSingleNode("//add[@name='PH.FISPhotoManage']")

            dbConnectStr = xmlElement.GetAttribute("connectionString")

            'Xsj:解密密碼
            Dim conStr() As String = dbConnectStr.Split(New Char() {";"})
            For Each itemStr As String In conStr

                If itemStr.ToUpper.StartsWith("PASSWORD") Or itemStr.ToUpper.StartsWith("PWD") Then
                    encryptStr = itemStr.Substring(itemStr.IndexOf("=") + 1)
                    If encryptStr.Trim() <> "" Then
                        descryptStr = PH.Platform.Common.StringEncryptHelper.DecryptDES(encryptStr)
                        dbConnectStr = dbConnectStr.Replace(encryptStr, descryptStr)
                    Else
                        descryptStr = PH.Platform.Common.StringEncryptHelper.DecryptDES(encryptStr)
                        dbConnectStr = dbConnectStr.Replace(itemStr, itemStr + encryptStr)
                    End If

                    Exit For
                End If

            Next

            Me.dbConnectString = dbConnectStr

            ''Xsj:重新加密明文的密碼
            If encryptStr = descryptStr Then

                SaveDbConnectStr()

            End If

        Catch ex As Exception

            MessageBox.Show("获取數據庫連接失败!" + ex.ToString(), "失败提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)

        End Try


    End Sub

    'Xsj:设置數據庫連接串
    Public Sub SaveDbConnectStr()

        Dim dbconStr As String = Me.dbConnectString
        'Xsj:重新加密明文的密碼
        If encryptStr <> descryptStr Then

            Return

        Else

            Dim newEncryptStr As String = PH.Platform.Common.StringEncryptHelper.EncryptDES(descryptStr)
            dbconStr = dbconStr.Replace(descryptStr, newEncryptStr)

        End If
        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//connectionStrings")
            xmlElement = xNode.SelectSingleNode("//add[@name='PH.FISPhotoManage']")

            If IsNothing(xNode) = False Then

                xmlElement.SetAttribute("connectionString", dbconStr)

            End If

            xDoc.Save(configFildPath)


        Catch ex As Exception

            Throw ex

        Finally

        End Try

    End Sub

    'Xsj:從數據庫獲取參數設置
    Private Sub GetPropertyFromDb()

        If Me.dbConnectString = "" Then
            Return
        End If

        Dim con As SqlConnection = New SqlConnection(Me.dbConnectString)
        Dim cmd As SqlCommand = New SqlCommand()
        cmd.Connection = con
        cmd.CommandText = "Select top 1 * from IQCClientPC Where ClientPcName='" + System.Net.Dns.GetHostName() + "'"
        Dim dap As System.Data.SqlClient.SqlDataAdapter = New System.Data.SqlClient.SqlDataAdapter()
        dap.SelectCommand = cmd

        Dim dt As DataTable = New DataTable()
        dap.Fill(dt)

        If dt.Rows.Count = 1 Then

            Me.ClientSavePath = dt.Rows(0)("ClientSavePath")
            Me.IsAuto = dt.Rows(0)("IsAuto")

        End If

        con.Close()
        con.Dispose()

    End Sub

    'Xsj:保存參數設置到數據庫
    Public Function SavePropertyToDb() As Boolean

        Dim result As Boolean = True
        Dim con As SqlConnection = New SqlConnection(Me.dbConnectString)

        Try

            Dim cmd As SqlCommand = New SqlCommand()
            cmd.Connection = con
            con.Open()
            cmd.CommandText = "if exists( Select top 1 * from IQCClientPC Where ClientPcName=@ClientPcName)" & _
            " Begin " & _
            "  Update IQCClientPC Set ClientSavePath=@ClientSavePath ,ClientPcIP=@ClientPcIP , IsAuto=@IsAuto " & _
            "  Where ClientPcName=@ClientPcName" & _
            " End " & _
            " Else " & _
            " Begin " & _
            "  Insert Into IQCClientPC(ClientPcName,ClientPcIP,ClientSavePath,IsAuto) values(@ClientPcName,@ClientPcIP,@ClientSavePath,@IsAuto)" & _
            " End"

            cmd.Parameters.Add(New SqlParameter("ClientPcName", SqlDbType.NVarChar, 50))
            cmd.Parameters.Add(New SqlParameter("ClientPcIP", SqlDbType.NVarChar, 15))
            cmd.Parameters.Add(New SqlParameter("ClientSavePath", SqlDbType.NVarChar, 500))
            cmd.Parameters.Add(New SqlParameter("IsAuto", SqlDbType.Bit))

            cmd.Parameters("ClientPcName").Value = System.Net.Dns.GetHostName()
            cmd.Parameters("ClientPcIP").Value = IIf(System.Net.Dns.GetHostName().Length > 0, System.Net.Dns.GetHostAddresses(System.Net.Dns.GetHostName())(0).ToString(), DBNull.Value)
            cmd.Parameters("ClientSavePath").Value = Me.ClientSavePath
            cmd.Parameters("IsAuto").Value = Me.IsAuto

            cmd.ExecuteNonQuery()

        Catch ex As Exception

            result = False

        Finally
            con.Close()
            con.Dispose()
        End Try

        Return result

    End Function

    'Xsj:获取拍照图片保存的路径
    Private Sub GetImgSavePath()

        Dim imgSavePath As String

        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//appSettings")
            xmlElement = xNode.SelectSingleNode("//add[@key='ImgSavePath']")

            imgSavePath = xmlElement.GetAttribute("value")

            If IsNothing(imgSavePath) Or imgSavePath.Trim() <> "" Then
                Me.ClientSavePath = imgSavePath
            Else
                Me.ClientSavePath = ""
            End If

        Catch ex As Exception

            Throw New Exception("在方法[GetImgSavePath()]中获取图片保存的路径失败!")

            'MessageBox.Show("获取图片保存的路径失败!", "失败提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)

        End Try


    End Sub

    'Xsj:设置保存图片的路径
    Public Function SaveImgPath() As Boolean

        Dim result As Boolean
        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//appSettings")
            xmlElement = xNode.SelectSingleNode("//add[@key='ImgSavePath']")

            If IsNothing(xNode) = False Then

                xmlElement.SetAttribute("value", Me.ClientSavePath)

            End If

            xDoc.Save(configFildPath)

            result = True

        Catch ex As Exception

            result = False

        Finally


        End Try

        Return result

    End Function

    'Xsj:获取是否自动拍照参数
    Private Sub GetAutoTakeFlg()

        Dim isAutoTake As String

        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//appSettings")
            xmlElement = xNode.SelectSingleNode("//add[@key='IsAutoTake']")
            isAutoTake = xmlElement.GetAttribute("value")

            If IsNothing(isAutoTake) Or isAutoTake.Trim() <> "" Then
                Me.IsAuto = CType(isAutoTake, Boolean)
            Else
                Me.IsAuto = False
            End If

        Catch ex As Exception

            Throw New Exception("获取自动拍照控制参数失败!")
            'MessageBox.Show("获取自动拍照控制参数失败!", "失败提示", MessageBoxButtons.OK, MessageBoxIcon.Warning)

        End Try

    End Sub

    'Xsj:设置保存图片的路径
    Public Function SaveIsAutoTakeFlg() As Boolean

        Dim result As Boolean
        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//appSettings")
            xmlElement = xNode.SelectSingleNode("//add[@key='IsAutoTake']")

            If IsNothing(xNode) = False Then

                xmlElement.SetAttribute("value", Me.IsAuto)

            End If

            xDoc.Save(configFildPath)

            result = True

        Catch ex As Exception

            result = False

        Finally


        End Try

        Return result

    End Function

    'Xsj:從本地文檔獲取參數
    Public Sub GetPropertyFromLocation()

        Try
            GetImgSavePath()
            GetAutoTakeFlg()
        Catch ex As Exception
            Throw ex
        End Try

    End Sub

    Public Function GetManagerPwd() As String

        Dim result As String
        Try

            Dim configFildPath As String = Me.AssemblyPath
            Dim xDoc As Xml.XmlDocument = New Xml.XmlDocument()
            xDoc.Load(configFildPath)
            Dim xNode As Xml.XmlNode
            Dim xmlElement As Xml.XmlElement

            xNode = xDoc.SelectSingleNode("//appSettings")
            xmlElement = xNode.SelectSingleNode("//add[@key='ManagerPwd']")
            Dim encryPwd As String = xmlElement.GetAttribute("value")
            result = PH.Platform.Common.StringEncryptHelper.DecryptDES(encryPwd)

            If result = encryPwd Then

                encryPwd = PH.Platform.Common.StringEncryptHelper.EncryptDES(result)

                If IsNothing(xNode) = False Then

                    xmlElement.SetAttribute("value", encryPwd)

                End If


            End If



            xDoc.Save(configFildPath)

        Catch ex As Exception


        Finally


        End Try

        Return result


    End Function

    'Xsj:保存設置參數入口
    Public Sub SaveProperty()

        Dim result As Boolean = False

        If SaveImgPath() <> True Then

            Throw New Exception("設置图片保存路径失败!")

        ElseIf SaveIsAutoTakeFlg() <> True Then

            Throw New Exception("設置自动拍照标识失败!")

            'ElseIf SavePropertyToDb() <> True Then

            '    Throw New Exception("保存參數到數據庫失败!")

        End If


    End Sub
End Class
