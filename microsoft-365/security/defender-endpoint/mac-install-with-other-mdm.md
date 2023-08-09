---
title: Deployment with a different Mobile Device Management (MDM) system for Microsoft Defender for Endpoint on Mac
description: Install Microsoft Defender for Endpoint on Mac on other management solutions.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, macos,  big sur, monterey, ventura, mde or mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mavel
author: maximvelichko
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Deployment with a different Mobile Device Management (MDM) system for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)
 
## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.


## Approach

> [!CAUTION]
> Currently, Microsoft officially supports only Intune and JAMF for the deployment and management of Microsoft Defender for Endpoint on macOS. Microsoft makes no warranties, express or implied, with respect to the information provided below.

If your organization uses a Mobile Device Management (MDM) solution that isn't officially supported, this doesn't mean you're unable to deploy or run Microsoft Defender for Endpoint on macOS.

Microsoft Defender for Endpoint on macOS doesn't depend on any vendor-specific features. It can be used with any MDM solution that supports the following features:

- Deploy a macOS .pkg to managed devices.
- Deploy macOS system configuration profiles to managed devices.
- Run an arbitrary admin-configured tool/script on managed devices.

Most modern MDM solutions include these features, however, they may call them differently.

You can deploy Defender for Endpoint without the last requirement from the preceding list, however:

- You won't be able to collect status in a centralized way.
- If you decide to uninstall Defender for Endpoint, you'll need to log on to the client device locally as an administrator.

## Deployment

Most MDM solutions use the same model for managing macOS devices, with similar terminology. Use [JAMF-based deployment](mac-install-with-jamf.md) as a template.

### Package

Configure deployment of a [required application package](mac-install-with-jamf.md), 
with the installation package (wdav.pkg) downloaded from [Microsoft 365 Defender portal](mac-install-with-jamf.md).


[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]


In order to deploy the package to your enterprise, use the instructions associated with your MDM solution.

### License settings

Set up [a system configuration profile](mac-install-with-jamf.md). 

Your MDM solution may call it something like "Custom Settings Profile", as Microsoft Defender for Endpoint on macOS isn't part of macOS.

Use the property list, jamf/WindowsDefenderATPOnboarding.plist, which can be extracted from an onboarding package downloaded from [Microsoft 365 Defender portal](mac-install-with-jamf.md).
Your system may support an arbitrary property list in XML format. You can upload the jamf/WindowsDefenderATPOnboarding.plist file as-is in that case.
Alternatively, it may require you to convert the property list to a different format first.

Typically, your custom profile has an ID, name, or domain attribute. You must use exactly "com.microsoft.wdav.atp" for this value.
MDM uses it to deploy the settings file to **/Library/Managed Preferences/com.microsoft.wdav.atp.plist** on a client device, and Defender for Endpoint uses this file for loading the onboarding information.

### System configuration profiles

macOS requires that a user manually and explicitly approves certain functions that an application uses, for example system extensions, running in background, sending notifications, full disk access etc. Microsoft Defender for Endpoint relies on these functions, and can't properly function until all these consents are received from a user.

To grant consent automatically on a user's behalf, an administrator pushes system policies through their MDM system. This is what we strongly recommend doing, instead of relying on manual approvals from end users.

We supply all policies that Microsoft Defender for Endpoint requires as mobileconfig files available at [https://github.com/microsoft/mdatp-xplat](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles). Mobileconfig is an Apple's import/export format that [Apple Configurator](https://support.apple.com/apple-configurator) or other products like [iMazing Profile Editor](https://imazing.com/profile-editor) support.

Most MDM vendors support importing a mobileconfig file, creating a new custom configuration profile.

To set up profiles:

1) Find out how a mobileconfig import is done with your MDM vendor.
2) For all profiles from [https://github.com/microsoft/mdatp-xplat](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles), download a mobileconfig file and import it.
3) Assign proper scope for each created configuration profile.

Note that Apple regularly creates new types of payloads with new versions of OS.
You'll have to visit the above mentioned page, and publish new profiles once they became available.
We post notifications to our [What's New page](mac-whatsnew.md) once we make changes like that.

## Check installation status

Run [Microsoft Defender for Endpoint](mac-install-with-jamf.md) on a client device to check the onboarding status.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
