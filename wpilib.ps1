$downloadUri= "https://packages.wpilib.workers.dev/installer/v2024.1.1-beta-3/Win64/WPILib_Windows-2024.1.1-beta-3.iso"

Invoke-WebRequest -Uri $downloadUri -Out "wpilib.iso"
$iso = Mount-DiskImage -PassThru -ImagePath C:\projects\frc-env\wpilib.iso
$volume = Get-Volume -DiskImage $iso
$path =  $volume.DriveLetter + ":\WPILibInstaller.exe"
iex $path
