$users = Get-Content -Path 'C:\Temp\userlist.txt'
ForEach ($user in $users) {
    Get-WmiObject -ComputerName "ex2" Win32_Service -Filter "StartName Like '%$user'" | Format-Table Name, StartName
}