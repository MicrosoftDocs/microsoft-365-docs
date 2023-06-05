---
title: Troubleshoot license issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot license issues in Microsoft Defender for Endpoint on Mac.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
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
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Troubleshoot license issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## No license found

While you are going through [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md) and [Manual deployment](mac-install-manually.md) testing or a Proof Of Concept (PoC), you might get the following error:

:::image type="content" source="images/no-license-found.png" alt-text="License error" lightbox="images/no-license-found.png":::

### Message:

No license found

Looks like your organization does not have a license for Microsoft 365 Enterprise subscription.

Contact your administrator for help.

### Cause:

You deployed and/or installed the Microsoft Defender for Endpoint on macOS package ("Download installation package"), but you might not have run the configuration script ("Download onboarding package"), or you have not assigned a license to the user.

You can also encounter this error when the Microsoft Defender for Endpoint on macOS agent isn't up to date. 

### Solution:

Follow the MicrosoftDefenderATPOnboardingMacOs.py instructions documented here:
[Client configuration](mac-install-manually.md#client-configuration).

For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you'll need to update the agent.

## Sign in with your Microsoft account

![Sign in with your Microsoft account to get started](images/mac-consumer-login.png)

### Message:

Sign in with your Microsoft account to get started.

Create new account or Switch to enterprise app

### Cause:

You downloaded and installed [Microsoft Defender for individuals on macOS](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals) on top of previously installed Microsoft Defender for Endpoint.

### Solution:

Click **Switch to enterprise app** to switch to Enterprise experience.

You can also suppress switching to experience for Individuals on MDM enrolled machines by including **userInterface**/**consumerExperience** into Defender's settings:

```json
<key>userInterface</key>
<dict>
    <key>consumerExperience</key>
    <string>disabled</string>
</dict>
```
## Recommenced content

- [Manual deployment for Microsoft Defender for Endpoint on macOS](mac-install-manually.md): Install Microsoft Defender for Endpoint on macOS manually, from the command line.
- [Set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro](mac-jamfpro-policies.md): Learn how to set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro.
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md): Learn how to install, configure, update, and use Microsoft Defender for Endpoint on Mac.
- [Deploying Microsoft Defender for Endpoint on macOS with Jamf Pro](mac-install-with-jamf.md): Learn how to deploy Microsoft Defender for Endpoint on macOS with Jamf Pro.
