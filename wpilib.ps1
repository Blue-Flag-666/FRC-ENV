$iso = Mount-DiskImage -PassThru -ImagePath C:\projects\frc-env\wpilib.iso
$volume = Get-Volume -DiskImage $iso
$path =  $volume.DriveLetter + ":\WPILibInstaller.exe"

Start-Process $path -Wait

Dismount-DiskImage -DevicePath $iso.devicePath | Out-Null
Remove-Item .\wpilib.iso
