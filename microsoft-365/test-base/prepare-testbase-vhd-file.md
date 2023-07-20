# How to prepare a Windows VHD for Test Base

Before you upload a Windows virtual machine (VM) from on-premises to Test Base, you need to prepare the virtual hard disk (VHD) first.
Test Base only supports generation 2 VMs that use the VHD file format and have a fixed-size disk.
The maximum size for the OS VHD on a generation 2 VM is 128 GiB on Test Base.

Test Base supports these Windows versions:

- Windows 10 20H1 or later
- Windows 11 21H2 or later
- Windows Server 2016 or later

You can convert a VHDX file to VHD, or convert a dynamically expanding disk to a fixed-size disk, but you cannot change the generation of a VM. You need to enable Hyper-V features on the host for VHD related operations.

You cannot shrink the physical size of a VHD. If the total size of the volumes in the VHD exceeds the maximum OS VHD size (128 GiB) on Test Base, you need to recreate the VM in a smaller VHD or shrink the volumes in the VM before converting it to VHD.

You need to follow the configuration steps below to make sure that the VM VHD is compatible with Test Base.

## Run the *AzureConfig.ps1* script for easy configuration

To make the configuration steps easier, you can use a script called *AzureConfig.ps1* that is provided in the following code block. Copy the script content to a new file named `AzureConfig.ps1` and run the script as an administrator in PowerShell on the VM. You may need to configure PowerShell execution policy before running the script. Run `Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser` to bypass signing checks for the current user.

```powershell
$logPath = "$PSScriptRoot\AzureConfig.ps1.log"

Start-Transcript -Path $logPath -Append -Force

function Step-DisableBitLocker {
    Write-Host "Disable BitLocker for all volumes"

    $blvs = Get-BitLockerVolume | Where-Object { $_.ProtectionStatus -eq "On" }
    foreach ($blv in $blvs) {
        Disable-BitLocker -MountPoint $blv.MountPoint
    }
}

function Step-RunSystemFileChecker {
    Write-Host "Run Windows System File Checker utility before generalization of OS image"

    sfc.exe /scannow
}

function Step-RemoveStaticPersistentRoutes {
    Write-Host "Remove any static persistent routes in the routing table"

    Remove-NetRoute -PolicyStore PersistentStore -Confirm:$false
}

function Step-RemoveWinHTTPProxy {
    Write-Host "Remove the WinHTTP proxy"
    
    netsh.exe winhttp reset proxy
}

function Step-SetDiskSANPolicy {
    Write-Host "Set the disk SAN policy to OnlineAll"   

    $diskPartScript = @()
    $diskPartScript += "san policy=onlineall"
    $diskPartScript += "exit"

    $diskPartScript | diskpart.exe
}

function Step-SetTimeZoneInfo {
    Write-Host "Set Coordinated Universal Time (UTC) time for Windows"

    Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\TimeZoneInformation -Name RealTimeIsUniversal -Value 1 -Type DWord -Force

    Write-Host "Set the startup type of the Windows time service w32time to Automatic"

    Set-Service -Name w32time -StartupType Automatic
}

function Step-SetPowerProfile {
    Write-Host "Set the power profile to high performance"

    powercfg.exe /setactive SCHEME_MIN
    powercfg.exe /setacvalueindex SCHEME_CURRENT SUB_VIDEO VIDEOIDLE 0
}

function Step-SetTempFolders {
    Write-Host "Make sure the environmental variables TEMP and TMP are set to their default values"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name TEMP -Value "%SystemRoot%\TEMP" -Type ExpandString -Force
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Name TMP -Value "%SystemRoot%\TEMP" -Type ExpandString -Force
}

function Step-CheckWindowsServices {
    Write-Host "Make sure that each of the following Windows services is set to the Windows default value"

    Get-Service -Name BFE, Dhcp, Dnscache, IKEEXT, iphlpsvc, nsi, mpssvc, RemoteRegistry |
    Where-Object StartType -ne Automatic |
    Set-Service -StartupType Automatic

    Get-Service -Name Netlogon, Netman, TermService |
    Where-Object StartType -ne Manual |
    Set-Service -StartupType Manual
}

function Step-EnableRDPProtocol {
    Write-Host "Remote Desktop Protocol (RDP) is enabled"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server' -Name fDenyTSConnections -Value 0 -Type DWord -Force
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name fDenyTSConnections -Value 0 -Type DWord -Force
}

function Step-SetRDPPort {
    Write-Host "The RDP port is set up correctly using the default port of 3389"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name PortNumber -Value 3389 -Type DWord -Force
}

function Step-SetRDPListeningNIC {
    Write-Host "The listener is listening on every network interface"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name LanAdapter -Value 0 -Type DWord -Force
}

function Step-SetRDPNLAMode {
    Write-Host "Configure network-level authentication (NLA) mode for the RDP connections"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name UserAuthentication -Value 1 -Type DWord -Force
}

function Step-SetRDPKeepAlive {
    Write-Host "Set the keep-alive value"

    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name KeepAliveEnable -Value 1  -Type DWord -Force
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name KeepAliveInterval -Value 1  -Type DWord -Force
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name KeepAliveTimeout -Value 1 -Type DWord -Force
}

function Step-SetRDPReconnectOptions {
    Write-Host "Set the reconnect options"

    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name fDisableAutoReconnect -Value 0 -Type DWord -Force
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name fInheritReconnectSame -Value 1 -Type DWord -Force
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name fReconnectSame -Value 0 -Type DWord -Force
}

function Step-SetRDPConcurrentConnectionsLimit {
    Write-Host "Limit the number of concurrent connections"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name MaxInstanceCount -Value 4294967295 -Type DWord -Force
}

function Step-RemoveRDPSelfSignedCerts {
    Write-Host "Remove any self-signed certificates tied to the RDP listener"

    if ((Get-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp').Property -Contains 'SSLCertificateSHA1Hash') {
        Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name SSLCertificateSHA1Hash -Force
    }
}

function Step-EnableWindowFirewall {
    Write-Host "Turn on Windows Firewall on the three profiles (domain, standard, and public)"

    Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled True
}

function Step-EnableWinRM {
    Write-Host "Enable the PowerShell remote service"

    Set-NetConnectionProfile -NetworkCategory Private

    Enable-PSRemoting -Force
}

function Step-AllowRDPTraffic {
    Write-Host "Enable the following firewall rules to allow the RDP traffic"

    Get-NetFirewallRule -DisplayGroup 'Remote Desktop' | Set-NetFirewallRule -Enabled True
}

function Step-AllowICMP {
    Write-Host "Enable the rule for file and printer sharing so the VM can respond to ping requests inside the virtual network"

    Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled True
}

function Step-AllowAzurePlatformNetwork {
    Write-Host "Create a rule for the Azure platform network"

    New-NetFirewallRule -DisplayName AzurePlatform -Direction Inbound -RemoteAddress 168.63.129.16 -Profile Any -Action Allow -EdgeTraversalPolicy Allow
    New-NetFirewallRule -DisplayName AzurePlatform -Direction Outbound -RemoteAddress 168.63.129.16 -Profile Any -Action Allow
}

function Step-RunCheckDisk {
    Write-Host "Check the disk at the next VM restart"
    
    Write-Output y | chkdsk.exe /f
}

function Step-SetBCDSettings {
    Write-Host "Set the Boot Configuration Data (BCD) settings"

    bcdedit.exe /set "{bootmgr}" integrityservices enable
    bcdedit.exe /set "{default}" device partition=C:
    bcdedit.exe /set "{default}" integrityservices enable
    bcdedit.exe /set "{default}" recoveryenabled Off
    bcdedit.exe /set "{default}" osdevice partition=C:
    bcdedit.exe /set "{default}" bootstatuspolicy IgnoreAllFailures

    Write-Host "Enable Serial Console Feature"

    bcdedit.exe /set "{bootmgr}" displaybootmenu yes
    bcdedit.exe /set "{bootmgr}" timeout 5
    bcdedit.exe /set "{bootmgr}" bootems yes
    bcdedit.exe /ems "{current}" ON
    bcdedit.exe /emssettings EMSPORT:1 EMSBAUDRATE:115200
}

function Step-SetCrashDumpLogs {
    Write-Host "Set up the guest OS to collect a kernel dump on an OS crash event"

    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name CrashDumpEnabled -Type DWord -Force -Value 2
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name DumpFile -Type ExpandString -Force -Value "%SystemRoot%\MEMORY.DMP"
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name NMICrashDump -Type DWord -Force -Value 1

    Write-Host "Set up the guest OS to collect user mode dumps on a service crash event"

    $key = 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps'
    if ((Test-Path -Path $key) -eq $false) { 
        (New-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name LocalDumps) 
    }
    New-ItemProperty -Path $key -Name DumpFolder -Type ExpandString -Force -Value 'C:\CrashDumps'
    New-ItemProperty -Path $key -Name CrashCount -Type DWord -Force -Value 10
    New-ItemProperty -Path $key -Name DumpType -Type DWord -Force -Value 2
    Set-Service -Name WerSvc -StartupType Manual
}

function Step-VerifyWMIRepository {
    Write-Host "Verify that the Windows Management Instrumentation (WMI) repository is consistent"

    winmgmt.exe /verifyrepository
}

function Step-CheckRDPPort {
    Write-Host "Make sure no other applications than TermService are using port 3389"

    netstat.exe -anob

    $nonRdpProcesses = (@(Get-NetTCPConnection) + @(Get-NetUDPEndpoint)) | Where-Object { 
        $_.LocalPort -eq 3389
    } | ForEach-Object {
        $procId = $_.OwningProcess
        $process = Get-CimInstance Win32_Process -Filter "ProcessId = $procId"
        if ($process.CommandLine -notmatch "TermService") {
            $processName = $process.Name
            @{
                Name        = $processName
                CommandLine = $process.CommandLine
            }
        }
    }

    if ($nonRdpProcesses.Length -gt 0) {
        Write-Warning "Port 3389 is used by the following non-RDP processes:"
        $nonRdpProcesses | ForEach-Object {
            Write-Warning "Name: $($_.Name), CommandLine: $($_.CommandLine)"
        }
    }
}

function Main {
    Step-DisableBitLocker

    Step-RunSystemFileChecker

    Step-RemoveStaticPersistentRoutes
    Step-RemoveWinHTTPProxy
    Step-SetDiskSANPolicy
    Step-SetTimeZoneInfo
    Step-SetPowerProfile
    Step-SetTempFolders

    Step-CheckWindowsServices

    Step-EnableRDPProtocol
    Step-SetRDPPort
    Step-SetRDPListeningNIC
    Step-SetRDPNLAMode
    Step-SetRDPKeepAlive
    Step-SetRDPReconnectOptions
    Step-SetRDPConcurrentConnectionsLimit
    Step-RemoveRDPSelfSignedCerts

    Step-EnableWindowFirewall
    Step-EnableWinRM
    Step-AllowRDPTraffic
    Step-AllowICMP
    Step-AllowAzurePlatformNetwork

    Step-RunCheckDisk
    Step-SetBCDSettings
    Step-SetCrashDumpLogs
    Step-VerifyWMIRepository
    Step-CheckRDPPort
}

Main

Stop-Transcript
```

After the script finishes, restart the computer.
The **ChkDsk** will run during the system boot. Make sure the report shows a clean and healthy disk.

## Install Windows updates

To prevent an accidental reboot during the VM provisioning, it is recommended to install all Windows updates and restart the VM before migrating it to Test Base.

If you also need to generalize the OS (Sysprep), you need to update Windows and restart the VM before running the Sysprep command.

## Decide when to use Sysprep

System Preparation Tool (`sysprep.exe`) is a process that resets a Windows installation.
Sysprep removes all personal data and resets several components.

You usually run `sysprep.exe` to create a template that you can use to deploy several other VMs with a specific configuration.
The template is called a *generalized image*.

If you want to create only one VM from one disk, you do not need to use Sysprep.
You can create the VM from a *specialized image* instead.

Note that Sysprep requires the drives to be fully decrypted before running.
If you have enabled encryption on the VM, disable it before running Sysprep. The `AzureConfig.ps1` script should disable BitLocker for all volumes.

### Generalize a VHD

Follow these steps to generalize a VM VHD. After these steps, turn off the VM and do not turn it back on until you finish uploading the VHD.

1. Sign in to the Windows VM.
1. Run PowerShell as an administrator.
1. Delete the panther directory (`C:\Windows\Panther`).
1. Change the directory to `$env:windir\System32\sysprep`. Then run `sysprep.exe`.
1. In the **System Preparation Tool** dialog box, select **Enter System Out-of-Box Experience (OOBE)** and check **Generalize**.

   ![System Preparation Tool](Media/vhd-sysprep.png)

1. In **Shutdown Options**, select **Shutdown**.
1. Select **OK**.
1. When Sysprep finishes, shut down the VM. If the generalization succeeds, the VM will be shut down automatically. Don not use **Restart** to shut down the VM.

You can also use the following PowerShell script to generalize the VM VHD. Run the script as an administrator in PowerShell.

```powershell
Remove-Item "$($env:windir)\Panther" -Recurse -Force

Push-Location "$($env:windir)\System32\sysprep"

.\sysprep.exe /generalize /shutdown /oobe

Pop-Location
```

The VHD is now generalized.

## Install Azure Virtual Machine Agent for *specialized image*

To create a VM from a *specialized image*, you need to install the `Azure Virtual Machine Agent` on the VM.

Install the [Azure Virtual Machine Agent](https://go.microsoft.com/fwlink/?LinkID=394789) on the VM. Then you can enable VM extensions after the agent installation.
The VM extensions provide most of the critical functionality that Test Base needs.

You can also install the agent by running this PowerShell script as an administrator.

```powershell
$installerName = "WindowsAzureVmAgent.msi"
$installerPath = "$PWD\$installerName"
if (Test-Path $installerPath) {
    Remove-Item $installerPath -Force 
}

$installerDownloadLink = "https://go.microsoft.com/fwlink/?LinkID=394789"
Invoke-WebRequest -Uri $installerDownloadLink -OutFile $installerPath

$logPath = "$PWD\$installerName.log"
Start-Process "msiexec.exe" -ArgumentList "/i `"$installerPath`" /qn /L*v `"$logPath`"" -PassThru -Wait
```

## Convert and resize the virtual disk to a fixed size VHD

Use this method to convert and resize the virtual disk for Test Base:

1. Back up the VM before you start the conversion or resize process.
1. Make sure that the Windows VHD works correctly on the local server. Fix any errors in the VM before you try to convert or upload it to Test Base.
1. Convert the virtual disk type to `Fixed`.
1. Resize the virtual disk to meet Test Base requirements:

   1. Disks in Azure must have a virtual size aligned to 1 MiB. If the VHD is not a multiple of 1 MiB, you need to resize the disk. Disks that are not multiples of 1 MiB cause errors when you create images from the uploaded VHD. Use the PowerShell `Get-VHD` cmdlet to show "Size", which must be a multiple of 1 MiB in Azure, and "FileSize", which will be equal to "Size" plus 512 bytes for the VHD footer.

      ```powershell
      $vhd = Get-VHD -Path C:\Test\TestBaseVM.vhd
      $vhd.Size % 1MB
      0
      $vhd.FileSize - $vhd.Size
      512
      ```

   2. The maximum size for the OS VHD on Test Base is 128 GiB.

### Use PowerShell to convert and resize the disk

You can use the `Convert-VHD` and `Resize-VHD` PowerShell cmdlets to convert the virtual disk on the VM host for Test Base. Run this PowerShell script as an administrator. Replace `<PathToVHD>` with the path to the VHD that you want to upload.

```powershell
$vhdFilePath = "<PathToVHD>"
$vhdFileItem = Get-Item $vhdFilePath
$fixedSizeVHDFilePath = $vhdFileItem.Directory.FullName + "\" + $vhdFileItem.BaseName + '-Fixed.vhd'

Convert-VHD -Path $vhdFilePath -DestinationPath $fixedSizeVHDFilePath -VHDType Fixed

$fixedSizeVHD = Get-VHD -Path $fixedSizeVHDFilePath
if ((($fixedSizeVHD.Size % 1MB) -ne 0) -or (($fixedSizeVHD.FileSize - $fixedSizeVHD.Size) -ne 512)) {
    $originalSize = $fixedSizeVHD.Size
    [UInt64]$originalMB = $originalSize / 1MB
    $resizedBytes = ($originalMB + 1) * 1024 * 1024
    Resize-VHD -Path $fixedSizeVHDFilePath -SizeBytes $resizedBytes
}
```

After the script finishes, you will see a new VHD file with `-Fixed` at the end of its name in the same folder as the original VHD file.
The new VHD file is converted and resized to be compatible with Test Base. It is a `Fixed` VHD type and has a size of 1 MiB alignment.
