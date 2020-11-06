---
title: Microsoft Managed Desktop technologies
description:  This topic lists the technologies and apps used in Microsoft Managed Desktop.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Microsoft Managed Desktop technologies

This topic lists the technologies and apps used in Microsoft Managed Desktop.

<!-- Microsoft 365 E5; Device as a Service -->
<!-- in O365 table, standard suite, removed this sentence "Please see the Installation of Project/Visio 64bit Click to Run Addendum for important deployment instructions. -->

Microsoft 365 Enterprise licensing is required for all Microsoft Managed Desktop users. For more information on licensing requirements for the service, see [Prerequisites for Microsoft Managed Desktop](../get-ready/prerequisites.md).

This topic summarizes the components included in the required Enterprise licenses, with a description of how the service uses each component with Microsoft Managed Desktop devices. Specific roles and responsibilities for each area are detailed throughout Microsoft Managed Desktop documentation. 

## Office 365 E3 or E5
 |
 --- | ---
Microsoft 365 Apps for enterprise (64-bit) | These Office applications will be shipped with the device: Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, OneNote.<br><br>The 64-bit full versions of Microsoft Project and Microsoft Visio are not included. However, since the installation of these applications depends on the Microsoft 365 Apps for enterprise installation, Microsoft Managed Desktop has created default Microsoft Intune deployments and security groups that you can then use to deploy these applications to licensed users. For more information, see [Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices](../get-started/project-visio.md).
OneDrive for Business |Azure Active Directory Single Sign On is enabled for users upon first sign in to OneDrive for Business.<br><br>Known Folder Redirection for "Desktop", "Document", and "Pictures" folders is included; enabled and configured by Microsoft Managed Desktop. 
Store Apps |	Microsoft Sway and Power BI are not shipped with the device. These apps are available for download from Microsoft Store.
Win32 Applications |	Teams is not shipped with the device, but is packaged and provided by Microsoft for Microsoft Managed Desktop devices. Azure Information Protection Client is not shipped with the device, but you can have this packaged for deployment. 
Web Applications |	Yammer, Office in a browser, Delve, Flow, StaffHub, PowerApps, and Planner are not shipped with the device. Users can access the web version of these applications with a browser.


## Windows 10 Enterprise E3, E5 and Microsoft Defender for Endpoint
 --- | --- 
Recommended
[Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-identity-verification) | Customers are recommended to implement Windows Hello for Business to replace passwords with strong two-factor authentication used on Microsoft Managed Desktop devices.
[Application Virtualization](https://docs.microsoft.com/windows/application-management/app-v/appv-technical-reference) | Customers can deploy Application Virtualization (App-V) packages using the Intune Win32 app management client.
[Microsoft 365 data loss prevention](https://docs.microsoft.com/microsoft-365/compliance/endpoint-dlp-learn-about) | Customers are recommend to implement Microsoft 365 data loss prevention (DLP) to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items.   

Included in the service plan
[BitLocker Drive Encryption](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) | BitLocker Drive Encryption is used to encrypt all system drives. 
[Windows Defender System Guard]( https://docs.microsoft.com/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows) | Protects the integrity of the system at start up and validates that system integrity has truly been maintained.
[Windows Defender Credential Guard]( https://docs.microsoft.com/windows/security/identity-protection/credential-guard/credential-guard) | Windows Defender Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them.
[Microsoft Defender for Endpoint | Endpoint Detection and Response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) |	 Microsoft Managed Desktop Security Operations responds to alerts and takes action to remediate threats using Endpoint Detection and Response.
[Microsoft Defender for Endpoint | Threat Experts](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts) | Microsoft Managed Desktop integrates with Threat Experts insights and data through targeted attack notifications. Customers are required to provide additional consent before this service is enabled.  
[Microsoft Defender for Endpoint | Threat and Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) | Required for future use in the Microsoft Managed Desktop service plan.
[Microsoft Defender for Endpoint | Attack Surface Reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) | Attack surface reduction targets risky software behaviors that are often abused by attackers.
[Microsoft Defender for Endpoint | Exploit Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/exploit-protection) | Protects against malware that uses exploits to infect devices and spread by automatically applying exploit mitigation techniques to both operating system processes and apps.
[Microsoft Defender for Endpoint | Network Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/network-protection) | Network protection expands the scope of Microsoft Defender SmartScreen to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources.
[Microsoft Defender Tamper Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection) | Windows Tamper Protection is used to prevent security settings such as anti-virus protection from being changed.
[Microsoft Defender Antivirus Behavior-based, heuristic, and real-time antivirus protection]( https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) | Always on scanning for file and process threats which may not be detected as malware.
[Microsoft Defender Antivirus Cloud-delivered Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus) | Provides dynamic near-instant, automated protection against new and emerging threats.
[Microsoft Defender Block at first sight](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus) | Provides detection and blocking of new malware when Windows detects a suspicious or unknown file.
[Microsoft Defender AV Potentially Unwanted Applications](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus) | Potentially unwanted applications (PUA) is used to block apps that can cause your machine to run slowly, display unexpected ads, or at worst, install other software which might be unexpected or unwanted.
[Windows Defender Firewall with Advanced Security](https://docs.microsoft.com/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security) | Host-based, two-way network traffic filtering for a device, Windows Defender Firewall blocks unauthorized network traffic flowing into or out of the local device.
[User Account Control](https://docs.microsoft.com/windows/security/identity-protection/user-account-control/how-user-account-control-works) | User Account Control switches to the Secure Desktop when a task or action requires the administrator account type access. Microsoft Managed Desktop users are assigned Standard user access at enrollment. 


## Enterprise Mobility + Security E5

 |
 --- | ---
Enterprise Mobility + Security E3<br>Azure Active Directory Premium P2 |	You can use all features of Enterprise Mobility + Security E3 and Azure Active Directory Premium P2 to manage MDM devices.
Microsoft Cloud App Security |	You can use this optional feature with Microsoft Managed Desktop.
Azure Information Protection P2	 | You can use this optional feature with Microsoft Managed Desktop.
