---
title: Evaluate controlled folder access
description: See how controlled folder access can help protect files from being changed by malicious apps.
keywords: Exploit protection, windows 10, windows 11, windows defender, ransomware, protect, evaluate, test, demo, try
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
ms.topic: conceptual
author: dansimp
ms.author: dansimp
ms.reviewer: oogunrinde, sugamar
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 12/18/2020
---

# Evaluate controlled folder access

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)


[Controlled folder access](controlled-folders.md) is a feature that helps protect your documents and files from modification by suspicious or malicious apps. Controlled folder access is supported on Windows Server 2019, Windows Server 2022, Windows 10, and Windows 11 clients.

It's especially useful in helping protect against [ransomware](https://www.microsoft.com/wdsi/threats/ransomware) that attempts to encrypt your files and hold them hostage.

This article helps you evaluate controlled folder access. It explains how to enable audit mode so you can test the feature directly in your organization.

## Use audit mode to measure impact

Enable the controlled folder access in audit mode to see a record of what *would* have happened if it was fully enabled. Test how the feature will work in your organization to ensure it doesn't affect your line-of-business apps. You can also get an idea of how many suspicious file modification attempts generally occur over a certain period of time.

To enable audit mode, use the following PowerShell cmdlet:

```PowerShell
Set-MpPreference -EnableControlledFolderAccess AuditMode
```

> [!TIP]
> If you want to fully audit how controlled folder access will work in your organization, you'll need to use a management tool to deploy this setting to devices in your network(s).
You can also use Group Policy, Intune, mobile device management (MDM), or Microsoft Configuration Manager to configure and deploy the setting, as described in the main [controlled folder access topic](controlled-folders.md).

## Review controlled folder access events in Windows Event Viewer

The following controlled folder access events appear in Windows Event Viewer under Microsoft/Windows/Windows Defender/Operational folder.

Event ID | Description
-|-
 5007 | Event when settings are changed
 1124 | Audited controlled folder access event
 1123 | Blocked controlled folder access event

> [!TIP]
> You can configure a [Windows Event Forwarding subscription](/windows/win32/wec/setting-up-a-source-initiated-subscription) to collect the logs centrally. 

## Customize protected folders and apps

During your evaluation, you may wish to add to the list of protected folders, or allow certain apps to modify files.

See [Protect important folders with controlled folder access](controlled-folders.md) for configuring the feature with management tools, including Group Policy, PowerShell, and MDM configuration service providers (CSPs).

## See also

* [Protect important folders with controlled folder access](controlled-folders.md)
* [Evaluate Microsoft Defender for Endpoint](evaluate-mde.md)
* [Use audit mode](audit-windows-defender.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
