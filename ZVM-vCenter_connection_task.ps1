#vmcloud.pl
$taskName = "ZVM-vCenter Connection"
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "C:\temp\vCenter_connection.ps1"
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 5)
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -RunLevel Highest -User "System"