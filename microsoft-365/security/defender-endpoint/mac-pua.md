---
title: Detect and block potentially unwanted applications with Microsoft Defender for Endpoint on Mac
description: Detect and block Potentially Unwanted Applications (PUA) using Microsoft Defender for Endpoint on macOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, pua, pus, big sur, monterey, ventura, mde for mac
ms.service: defender-endpoint
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 11/20/2023
---

# Detect and block potentially unwanted applications with Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

The potentially unwanted application (PUA) protection feature in Microsoft Defender for Endpoint on macOS can detect and block PUA files on endpoints in your network.

These applications are not considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use. PUA can also refer to applications that are considered to have poor reputation.

These applications can increase the risk of your network being infected with malware, cause malware infections to be harder to identify, and can waste IT resources in cleaning up the applications.

## How it works

Microsoft Defender for Endpoint on macOS can detect and report PUA files. When configured in blocking mode, PUA files are moved to the quarantine.

When a PUA is detected on an endpoint, Microsoft Defender for Endpoint on macOS presents a notification to the user, unless notifications have been disabled. The threat name will contain the word "Application".

## Configure PUA protection

PUA protection in Microsoft Defender for Endpoint on macOS can be configured in one of the following ways:

- **Off**: PUA protection is disabled.
- **Audit**: PUA files are reported in the product logs, but not in Microsoft Defender portal. No notification is presented to the user and no action is taken by the product.
- **Block**: PUA files are reported in the product logs and in Microsoft Defender portal. The user is presented with a notification and action is taken by the product.

> [!WARNING]
> By default, PUA protection is configured in **Audit** mode.

You can configure how PUA files are handled from the command line or from the management console.

### Use the command-line tool to configure PUA protection:

In Terminal, execute the following command to configure PUA protection:

```bash
mdatp threat policy set --type potentially_unwanted_application --action [off|audit|block]
```

### Use the management console to configure PUA protection:

In your enterprise, you can configure PUA protection from a management console, such as JAMF or Intune, similarly to how other product settings are configured. For more information, see the [Threat type settings](mac-preferences.md#threat-type-settings) section of the [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md) topic.

### Test PUA protection:

You are able to test PUA protection by going to [Potentially unwanted applications (PUA) demonstration](/microsoft-365/security/defender-endpoint/defender-endpoint-demonstration-potentially-unwanted-applications).

## Related topics

- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
