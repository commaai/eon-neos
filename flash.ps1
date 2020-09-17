
$fastboot = "platform-tools/fastboot.exe"
if (Test-Path -path $fastboot) {
    Write-Host 'Platform tools found';
} else {
    Write-Host 'Downloading platform tools';

    $client = new-object System.Net.WebClient
    $client.DownloadFile("https://dl.google.com/android/repository/platform-tools_r28.0.2-windows.zip", "platform-tools.zip")

    Write-Host 'Extracting platform tools';
    Expand-Archive -Path "platform-tools.zip" -DestinationPath "." -Force

    Remove-Item "platform-tools.zip"
}

if (Test-Path -path "files/system.img") {
    $zip_file = Get-Item "ota-signed-latest.zip"
    $system_img = Get-Item "files/system.img"

    if ($zip_file.CreationTime -gt $system_img.CreationTime){
        Write-Host 'Newer version found. Extracting...';
        Expand-Archive -Path "ota-signed-latest.zip" -DestinationPath "." -Force
    }

} else {
    Write-Host 'Extracting NEOS...';
    Expand-Archive -Path "ota-signed-latest.zip" -DestinationPath "." -Force
}


Invoke-Expression "$($fastboot) flash recovery recovery.img"
Invoke-Expression "$($fastboot) flash boot files/boot.img"
Invoke-Expression "$($fastboot) flash system files/system.img"

Invoke-Expression "$($fastboot) erase userdata"
Invoke-Expression "$($fastboot) format cache"
Invoke-Expression "$($fastboot) reboot"


Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');