**Diagnostic capability**

(Proposed Location : Service Description -&gt; Support -&gt; new page)

In the process of troubleshooting a customer reported issue or a service identified issue on a Microsoft Managed Desktop managed device, ~~we~~ Microsoft may ~~will~~ collect the required diagnostic logs from the device without ~~interrupting~~ user intervention. We do not ~~capture~~ collect any user-generated content, or information from user directories. We ~~access~~ only collect diagnostic and log data concerning device health and status.

The diagnostic logs collected are stored for 28 days and then deleted. All the logs collected from the device will be processed as per our [data handling standards](https://docs.microsoft.com/en-us/microsoft-365/managed-desktop/service-description/privacy-personal-data?view=o365-worldwide).

Data collected
--------------

This list below includes all the folders, event logs, executables, or registry locations that Microsoft Managed Desktop might collect diagnostic logs from, the actual data collected will be a subset of this list and depends on the issue identified on the device:

Registry Keys:

-   HKLM\\SYSTEM\\CurrentControlSet\\Services

-   HKLM\\SOFTWARE\\Microsoft\\Surface

-   HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate

-   HKLM\\SYSTEM\\CurrentControlSet\\Control\\MUI\\UILanguages

-   HKLM\\Software\\Policies\\Microsoft\\WindowsStore

-   HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\WindowsStore\\WindowsUpdate

-   HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion

-   HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion

-   HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AppModel

-   HKLM\\SYSTEM\\CurrentControlSet\\Control\\FirmwareResources

-   HKLM\\SOFTWARE\\Microsoft\\WindowsSelfhost

-   HKLM\\SOFTWARE\\Microsoft\\WindowsUpdate

-   HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Appx

-   HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Superfetch

-   HKLM\\SYSTEM\\Setup

-   HKLM\\Software\\Microsoft\\IntuneManagementExtension

-   HKLM\\SOFTWARE\\Microsoft\\SystemCertificates\\AuthRoot

-   HKLM\\SOFTWARE\\Microsoft\\Windows Advanced Threat Protection

-   HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Authentication\\LogonUI

-   HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings

-   HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall

-   HKLM\\Software\\Policies

-   HKLM\\SOFTWARE\\Policies\\Microsoft\\Cryptography\\Configuration\\SSL

-   HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Advanced Threat Protection

-   HKLM\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall

-   HKLM\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SCHANNEL

Commands:

-   %programfiles%\\windows defender\\mpcmdrun.exe -GetFiles

-   %windir%\\system32\\certutil.exe -store

-   %windir%\\system32\\certutil.exe -store -user my

-   %windir%\\system32\\Dsregcmd.exe /status

-   %windir%\\system32\\ipconfig.exe /all

-   %windir%\\system32\\ipconfig.exe /displaydns

-   %windir%\\system32\\mdmdiagnosticstool.exe

-   %windir%\\system32\\msinfo32.exe /report %temp%\\MDMDiagnostics\\msinfo32.log

-   %windir%\\system32\\netsh.exe advfirewall show allprofiles

-   %windir%\\system32\\netsh.exe advfirewall show global

-   %windir%\\system32\\netsh.exe lan show profiles

-   %windir%\\system32\\netsh.exe winhttp show proxy

-   %windir%\\system32\\netsh.exe wlan show profiles

-   %windir%\\system32\\netsh.exe wlan show wlanreport

-   %windir%\\system32\\ping.exe -n 50 localhost

-   %windir%\\system32\\powercfg.exe /batteryreport /output %temp%\\MDMDiagnostics\\battery-report.html

-   %windir%\\system32\\powercfg.exe /energy /output %temp%\\MDMDiagnostics\\energy-report.html

-   bitsadmin /list /allusers /verbose

-   fltMC.exe

-   bcdedit /enum all /v

-   manage-bde -protectors -get

-   Powershell commands

    -   Get-appxpackage -allusers

    -   Get-appxpackage -packagetype bundle

    -   Get-Service wuauserv

    -   Get-NetFirewallRule

    -   Get-WmiObject -Class win32\_product

    -   Get-ComputerInfo

    -   Get-Service

    -   Get-Process

    -   Get-WmiObject Win32\_PnPSignedDriver

Event Logs:

-   Application

-   Microsoft-Windows-AppLocker/EXE and DLL

-   Microsoft-Windows-AppLocker/MSI and Script

-   Microsoft-Windows-AppLocker/Packaged app-Deployment

-   Microsoft-Windows-AppLocker/Packaged app-Execution

-   Microsoft-Windows-Bitlocker/Bitlocker Management

-   Microsoft-Windows-SENSE/Operational

-   Microsoft-Windows-SenseIR/Operational

-   Setup

-   System

Files:  

-   %ProgramData%\\Microsoft\\DiagnosticLogCSP\\Collectors\\\*.etl,

-   %ProgramData%\\Microsoft\\IntuneManagementExtension\\Logs\\\*.\*,

-   %ProgramData%\\Microsoft\\Windows Defender\\Support\\MpSupportFiles.cab,

-   %ProgramData%\\Microsoft\\Windows\\WlanReport\\wlan-report-latest.html,

-   %ProgramData%\\Microsoft\\Windows\\WlanReport -SourceFileName wlan-report-latest.html,

-   %windir%\\ccm\\logs\*.log,

-   %windir%\\ccmsetup\\logs\*.log,

-   %windir%\\logs\\CBS\\cbs.log,

-   %windir%\\logs\\measuredboot\*.\*,

-   %windir%\\Logs\\WindowsUpdate\*.etl,

-   %windir%\\inf\\\*.log,

-   %windir%\\servicing\\sessions\\ActionList.xml,

-   %windir%\\servicing\\sessions\\Sessions.xml,

-   %windir%\\SoftwareDistribution\\DataStore\\Logs\\edb.log,

-   %windir%\\SoftwareDistribution\\DataStore\\DataStore.edb,

-   %windir%\\logs\\dism\\dism.log,

-   %SystemRoot%\\System32\\Winevt\\Logs\\,

-   %appdata%\\Microsoft\\Teams\\media-stack\\\*.blog,

-   %appdata%\\Microsoft\\Teams\\skylib\\\*.blog,

-   %appdata%\\Microsoft\\Teams\\media-stack\\\*.etl,

-   %appdata%\\Microsoft\\Teams\\logs.txt,

-   %windir%\\Windows\\System32\\winevt\\\*.\*
