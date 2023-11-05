$path = "$($env:USERPROFILE)\Desktop\Delete me to continue build.txt"
Set-Content -Path $path -Value ''    
Write-Warning "Build paused. To resume it, open a RDP session to delete 'Delete me to continue build.txt' file on Desktop."
while(Test-Path $path) {
  Start-Sleep -Seconds 1
}
Write-Host "Build lock file has been deleted. Resuming build."
