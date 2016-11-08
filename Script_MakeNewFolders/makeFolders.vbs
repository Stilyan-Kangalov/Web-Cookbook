Dim fso, shl, curdir, folder, newfoldername, newfolderpath
Set fso = CreateObject("Scripting.FileSystemObject")
Set shl = CreateObject("WScript.Shell")
curdir = shl.CurrentDirectory
newfoldername  = "Box" & "_" & Day(date) & "_" & Month(date) & "_" & Year(date)

For Each folder In fso.GetFolder(curdir).Subfolders
    newfolderpath = fso.BuildPath(folder.Path, newfoldername)
    If Not fso.FolderExists(newfolderpath) Then
        fso.CreateFolder newfolderpath
        WScript.Echo newfolderpath & " Result: Created Folder."
    Else
        WScript.Echo newfolderpath & " Alert: Already Exists!"
    End If
Next
