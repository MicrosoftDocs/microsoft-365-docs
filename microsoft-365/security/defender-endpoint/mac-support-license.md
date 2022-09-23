---
title: Troubleshoot license issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot license issues in Microsoft Defender for Endpoint on Mac.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance
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
  - m365-security-compliance
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Troubleshoot license issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
[Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
[Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

While you are going through [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md) and [Manual deployment](mac-install-manually.md) testing or a Proof Of Concept (PoC), you might get the following error:

:::image type="content" source="images/no-license-found.png" alt-text="License error" lightbox="images/no-license-found.png":::

**Message:** 

No license found

Looks like your organization does not have a license for Microsoft 365 Enterprise subscription.

Contact your administrator for help.

**Cause:** 

You deployed and/or installed the Microsoft Defender for Endpoint on macOS package ("Download installation package"), but you might not have run the configuration script ("Download onboarding package"), or you have not assigned a license to the user.

You can also encounter this error when the Microsoft Defender for Endpoint on macOS agent isn't up to date. 


**Solution:**

Follow the MicrosoftDefenderATPOnboardingMacOs.py instructions documented here:
[Client configuration](mac-install-manually.md#client-configuration)

For scenarios where Microsoft Defender for Endpoint on macOS isn't up to date, you'll need to update the agent. 
