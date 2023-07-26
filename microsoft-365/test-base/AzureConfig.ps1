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

function Step-SetLocalPolicy{
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name legalnoticecaption -Type String -Value "" -Force
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name legalnoticetext -Type String -Value "" -Force
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa' -Name disabledomaincreds -Type DWord -Force -Value 0
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
    Step-SetLocalPolicy
}

Main

Stop-Transcript