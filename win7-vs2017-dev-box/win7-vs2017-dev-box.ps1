$ChocoInstallPath = "$($env:SystemDrive)\ProgramData\Chocolatey\bin\choco.exe"

if (!(Test-Path $ChocoInstallPath)) {
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')
} else {
    choco upgrade chocolatey -y
}

choco install packages.config -y 

