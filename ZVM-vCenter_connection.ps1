#vmcloud.pl
if ((Test-NetConnection -ComputerName YOUR_vCenter_IP -Port 443).TcpTestSucceeded){
        Write-Host "vCenter is up" -ForegroundColor Green
        }
    else
    {
        Write-Host "vCenter is down" -ForegroundColor Red
        Write-EventLog -LogName "Application" -Source "Zerto" -EventID 16 -EntryType Error -Message "Connection with vCenter over port 443 is down"
    }