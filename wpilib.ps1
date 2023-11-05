$downloadUri= "https://packages.wpilib.workers.dev/installer/v2024.1.1-beta-3/Win64/WPILib_Windows-2024.1.1-beta-3.iso"

Invoke-WebRequest -Uri $downloadUri -Out "wpilib.zip"
