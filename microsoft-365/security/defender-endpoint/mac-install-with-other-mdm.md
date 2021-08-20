---
title: Deployment with a different Mobile Device Management (MDM) system for Microsoft Defender for Endpoint on Mac
description: Install Microsoft Defender for Endpoint on Mac on other management solutions.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mavel
author: maximvelichko
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Deployment with a different Mobile Device Management (MDM) system for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)
 
## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.


## Approach

> [!CAUTION]

> Currently, Microsoft officially supports only Intune and JAMF for the deployment and management of Microsoft Defender for Endpoint on macOS. Microsoft makes no warranties, express or implied, with respect to the information provided below.

If your organization uses a Mobile Device Management (MDM) solution that is not officially supported, this does not mean you are unable to deploy or run Microsoft Defender for Endpoint on macOS.

Microsoft Defender for Endpoint on macOS does not depend on any vendor-specific features. It can be used with any MDM solution that supports the following features:

- Deploy a macOS .pkg to managed devices.
- Deploy macOS system configuration profiles to managed devices.
- Run an arbitrary admin-configured tool/script on managed devices.

Most modern MDM solutions include these features, however, they may call them differently.

You can deploy Defender without the last requirement from the preceding list, however:

- You will not be able to collect status in a centralized way
- If you decide to uninstall Defender, you will need to log on to the client device locally as an administrator

## Deployment

Most MDM solutions use the same model for managing macOS devices, with similar terminology. Use [JAMF-based deployment](mac-install-with-jamf.md) as a template.

### Package

Configure deployment of a [required application package](mac-install-with-jamf.md), 
with the installation package (wdav.pkg) downloaded from [Microsoft 365 Defender portal](mac-install-with-jamf.md).

In order to deploy the package to your enterprise, use the instructions associated with your MDM solution.

### License settings

Set up [a system configuration profile](mac-install-with-jamf.md). 

Your MDM solution may call it something like "Custom Settings Profile", as Microsoft Defender for Endpoint on macOS is not part of macOS.

Use the property list, jamf/WindowsDefenderATPOnboarding.plist, which can be extracted from an onboarding package downloaded from [Microsoft 365 Defender portal](mac-install-with-jamf.md).
Your system may support an arbitrary property list in XML format. You can upload the jamf/WindowsDefenderATPOnboarding.plist file as-is in that case.
Alternatively, it may require you to convert the property list to a different format first.

Typically, your custom profile has an ID, name, or domain attribute. You must use exactly "com.microsoft.wdav.atp" for this value.
MDM uses it to deploy the settings file to **/Library/Managed Preferences/com.microsoft.wdav.atp.plist** on a client device, and Defender uses this file for loading the onboarding information.

### Kernel extension policy

Set up a KEXT or kernel extension policy. Use team identifier **UBF8T346G9** to allow kernel extensions provided by Microsoft.

> [!CAUTION]
> If your environment consists of Apple Silicon (M1) devices, these machines should not receive configuration profiles with KEXT policies.
> Apple does not support KEXT on these machines, deployment of such profile would fail on M1 machines.

### System extension policy

Set up a system extension policy. Use team identifier **UBF8T346G9** and approve the following bundle identifiers:

- com.microsoft.wdav.epsext
- com.microsoft.wdav.netext

### Full disk access policy

Grant Full Disk Access to the following components:

- Microsoft Defender for Endpoint
    - Identifier: `com.microsoft.wdav`
    - Identifier Type: Bundle ID
    - Code Requirement: `identifier "com.microsoft.wdav" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9`

- Microsoft Defender for Endpoint Security Extension
    - Identifier: `com.microsoft.wdav.epsext`
    - Identifier Type: Bundle ID
    - Code Requirement: `identifier "com.microsoft.wdav.epsext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9`

### Network extension policy

As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft 365 Defender portal. The following policy allows the network extension to perform this functionality.

- Filter type: Plugin
- Plugin bundle identifier: `com.microsoft.wdav`
- Filter data provider bundle identifier: `com.microsoft.wdav.netext`
- Filter data provider designated requirement: `identifier "com.microsoft.wdav.tunnelext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9`
- Filter sockets: `true`

## Check installation status

Run [Microsoft Defender for Endpoint](mac-install-with-jamf.md) on a client device to check the onboarding status.
