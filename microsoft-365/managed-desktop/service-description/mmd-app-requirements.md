---
title: Microsoft Managed Desktop app requirements 
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
---

# Microsoft Managed Desktop app requirements

<!--This topic is the target for aka.ms/app-req. This is aka link is used from EA agreement for MMD. do not delete.-->

<!--Application addendum -->
 
Microsoft Managed Desktop requires that we manage devices using a specific approach to guarantee the performance, reliability, and serviceability of devices.


|Management area  |Microsoft Managed Desktop approach  |
|---------|---------|
|Device configuration or policy management     |  Microsoft Intune       |
|Application management     | Applications must be deployed using Microsoft Intune and Company Portal. See Secuirty and Protection applications for for guidance and conditions      |
|Driver deployment     |  Drivers included with the device, Windows Update, or Intune       |
|Device security     | See [Device security](security.md#device-security)      |
|Identity and access management     | See [Identity and access management](security.md#identity-and-access-management)        |
|Network security     | See [Network security](security.md#network-security)        |
|Information security     |  See [Information security](security.md#information-security)       |
|Data recovery     | OneDrive for Business        |
|Microsoft 365 Apps for Enterprise     |  Microsoft Managed Desktop maintains Microsoft 365 Apps for Enterprise      |
|Browser     | Microsoft Edge        |


Microsoft Managed Desktop might monitor other software running on managed devices. If it negatively impacts device management, device security, performance, or reliability you may be required to take action.

# Non-Microsoft Security and Protection Applications

Microsoft Managed Desktop does not test with or ensure continued functioning as part of the service for non-Microsoft security and protection applications. This includes but is not limited to applications commonly referred to as agents, drivers, kernel drivers or non-Microsoft Windows services running as local system. The Microsoft Managed Desktop service does not take dependencies on any external applications or services deployed by IT or Security admins as part of service delivery – see https://docs.microsoft.com/microsoft-365/managed-desktop/sevice-description

These types of apps may provide unrestricted privilege to the operating system and expose Windows to additional threats. See [Technology Used]technologies.md) to identify the capabilities included as part of Microsoft Managed Desktop and the recommended Microsoft 365 native capabilities an IT or Security Admin should implement.

The requirements listed below must be met if it is not possible for IT or Security Admins to implement or integrate with Microsoft Managed Desktop service options and recommended Microsoft 365 native capabilities. Microsoft Managed Desktop might monitor other software running on managed devices. If it negatively impacts device management, device security, performance, or reliability you may be required to take action.

•	Services implemented by Microsoft Managed Desktop must not be impeded or blocked
•	Settings managed by Microsoft Managed Desktop must not be modified or impeded
•	Microsoft Defender Antivirus state must be Active and therefore must not be modified - see the compatibility matrix to understand if the application being installed will change this state https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility
•	Only Credential Providers included with Windows 10 may be used – see Credential Providers included with Windows 10  https://docs.microsoft.com/en-us/windows/win32/secauthn/credential-providers-in-windows
•	System drive encryption included in the settings documented as managed by Microsoft, must not be modified or impeded
•	The required network endpoints must not be impeded or blocked – see https://docs.microsoft.com/microsoft-365/managed-desktop/get-ready/network
•	IT and Security Admins must use the Security operations process in response to threats on endpoints, https://docs.microsoft.com/microsoft-365/managed-desktop/service-description/security-operations
