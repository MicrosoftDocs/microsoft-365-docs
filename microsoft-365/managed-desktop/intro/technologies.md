---
title: Microsoft Managed Desktop technologies
description:  This article lists the technologies and apps used in Microsoft Managed Desktop.
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

This article lists the technologies and apps used in Microsoft Managed Desktop.

<!-- Microsoft 365 E5; Device as a Service -->
<!-- in O365 table, standard suite, removed this sentence "Please see the Installation of Project/Visio 64bit Click to Run Addendum for important deployment instructions. -->

Microsoft 365 Enterprise licensing is required for all Microsoft Managed Desktop users. For more information on licensing requirements for the service, see [Prerequisites for Microsoft Managed Desktop](../get-ready/prerequisites.md).

This article summarizes the components included in the required Enterprise licenses, with a description of how the service uses each component with Microsoft Managed Desktop devices. Specific roles and responsibilities for each area are detailed throughout Microsoft Managed Desktop documentation. 

## Office 365 E3 or E5
 |
 --- | ---
Microsoft 365 Apps for enterprise (64-bit) | These Office applications will be shipped with the device: Word, Excel, PowerPoint, Outlook, Publisher, Access, Skype for Business, OneNote.<br><br>The 64-bit full versions of Microsoft Project and Microsoft Visio aren't included. However, since the installation of these applications depends on the Microsoft 365 Apps for enterprise installation, Microsoft Managed Desktop has created default Microsoft Intune deployments and security groups that you can then use to deploy these applications to licensed users. For more information, see [Install Microsoft Project or Microsoft Visio on Microsoft Managed Desktop devices](../get-started/project-visio.md).
OneDrive |Azure Active Directory Single Sign On is enabled for users when they first sign in to OneDrive.<br><br>Known Folder Redirection for "Desktop", "Document", and "Pictures" folders is included; enabled and configured by Microsoft Managed Desktop.
Store Apps |	Microsoft Sway and Power BI aren't shipped with the device. These apps are available for download from Microsoft Store.
Win32 Applications |	Teams isn't shipped with the device, but is packaged and provided by Microsoft for Microsoft Managed Desktop devices. Azure Information Protection Client isn't shipped with the device, but you can have it packaged for deployment.
Web Applications |	Yammer, Office in a browser, Delve, Flow, StaffHub, PowerApps, and Planner aren't shipped with the device. Users can access the web version of these applications with a browser.


## Windows 10 Enterprise E5 or E3 with Microsoft Defender for Endpoint
We recommend that your IT admins configure the following settings. These settings aren't included or managed as part of Microsoft Managed Desktop.

 |
 --- | ---
Windows Hello for Business | You should implement Windows Hello for Business to replace passwords with strong two-factor authentication for Microsoft Managed Desktop devices. For more information, see [Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-identity-verification).
Application Virtualization | You can deploy Application Virtualization (App-V) packages using the Intune Win32 app management client. For more information, see [Application Virtualization](/windows/application-management/app-v/appv-technical-reference).
Microsoft 365 data loss prevention | You should implement Microsoft 365 data loss prevention to monitor the actions that are being taken on items you've determined to be sensitive and to help prevent the unintentional sharing of those items. For more information, see [Microsoft 365 data loss prevention](../../compliance/endpoint-dlp-learn-about.md).


Features included and managed as part of Microsoft Managed Desktop:

 |
 --- | ---
BitLocker Drive Encryption | BitLocker Drive Encryption is used to encrypt all system drives. For more information, see [BitLocker Drive Encryption](/windows/security/information-protection/bitlocker/bitlocker-overview).
Windows Defender System Guard | Protects the integrity of the system at startup and validates that system integrity has truly been maintained. For more information, see [Windows Defender System Guard](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows).
Windows Defender Credential Guard | Windows Defender Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. For more information, see [Windows Defender System Guard](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows).
Microsoft Defender for Endpoint - Endpoint Detection and Response | Microsoft Managed Desktop Security Operations responds to alerts and takes action to remediate threats using Endpoint Detection and Response. For more information, see [Microsoft Defender for Endpoint - Endpoint Detection and Response](/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response).
Microsoft Defender for Endpoint - Threat Experts | Microsoft Managed Desktop integrates with Threat Experts insights and data through targeted attack notifications. You will have to provide additional consent before this service is enabled. For more information, see [Microsoft Defender for Endpoint - Threat Experts](/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts).
Microsoft Defender for Endpoint - Threat and Vulnerability Management | Required for future use in the Microsoft Managed Desktop service plan. For more information, see [Microsoft Defender for Endpoint - Threat and Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt).
Microsoft Defender for Endpoint - Attack Surface Reduction | Attack surface reduction targets risky software behaviors that are often abused by attackers. For more information, see [Microsoft Defender for Endpoint - Attack Surface Reduction](/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction).
Microsoft Defender for Endpoint - Exploit Protection | Protects against malware that uses exploits to infect devices and spread by automatically applying exploit mitigation techniques to both operating system processes and apps. For more information, see [Microsoft Defender for Endpoint - Exploit Protection](/windows/security/threat-protection/microsoft-defender-atp/exploit-protection).
Microsoft Defender for Endpoint - Network Protection | Network protection expands the scope of Microsoft Defender SmartScreen to block all outbound HTTP and HTTPS traffic that attempts to connect to low-reputation sources. For more information, see [Microsoft Defender for Endpoint - Network Protection](/windows/security/threat-protection/microsoft-defender-atp/network-protection).
Microsoft Defender Tamper Protection | Windows Tamper Protection is used to prevent security settings such as anti-virus protection from being changed. For more information, see [Microsoft Defender Tamper Protection](/windows/security/threat-protection/microsoft-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection).
Microsoft Defender Antivirus Behavior-based, heuristic, and real-time antivirus protection | Always on scanning for file and process threats which may not be detected as malware. For more information, see [Microsoft Defender Antivirus Behavior-based, heuristic, and real-time antivirus protection](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10).
Microsoft Defender Antivirus Cloud-delivered Protection | Provides dynamic near-instant, automated protection against new and emerging threats. For more information, see [Microsoft Defender Antivirus Cloud-delivered Protection](/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus).
Microsoft Defender "Block at first sight" | Provides detection and blocking of new malware when Windows detects a suspicious or unknown file. For more information, see [Microsoft Defender Block at first sight](/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus).
Microsoft Defender AV Potentially Unwanted Applications | Potentially unwanted applications is used to block apps that can cause your machine to run slowly, display unexpected ads, or at worst, install other software which might be unexpected or unwanted. For more information, see [Microsoft Defender AV Potentially Unwanted Applications](/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).
Windows Defender Firewall with Advanced Security | Host-based, two-way network traffic filtering for a device, Windows Defender Firewall blocks unauthorized network traffic flowing into or out of the local device. For more information, see [Windows Defender Firewall with Advanced Security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security).
User Account Control | User Account Control switches to the Secure Desktop when a task or action requires the administrator account-type access. Microsoft Managed Desktop users are assigned Standard user access at enrollment. For more information, see [User Account Control](/windows/security/identity-protection/user-account-control/how-user-account-control-works).


## Enterprise Mobility + Security E5

 |
 --- | ---
Enterprise Mobility + Security E3<br>Azure Active Directory Premium P2 |	You can use all features of Enterprise Mobility + Security E3 to manage MDM devices. You can use Azure Active Directory Premium P2 as an optional feature with Microsoft Managed Desktop.
Microsoft Cloud App Security |	You can use this optional feature with Microsoft Managed Desktop.
Azure Information Protection P2	 | You can use this optional feature with Microsoft Managed Desktop.
