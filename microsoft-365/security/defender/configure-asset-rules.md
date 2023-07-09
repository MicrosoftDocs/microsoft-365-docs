---
title: Asset rule management - Dynamic rules 
description: You can use Microsoft Defender for Endpoint to configure dynamic tagging 
keywords: asset rule management, dynamic tagging, Microsoft Defender for Endpoint, devices, Microsoft 365 Defender, Defender
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 10/11/2022
---

# Asset rule management - Dynamic rules for devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

Managing context for devices in a constantly changing corporate environment is a critical task as many organizations use device context, such as assigning a device value and or assigning particular tags, in their security workflows.

Devices may require updates, replacements, or reconfigurations due to changing business needs and failure to properly manage device context as part of this can result in security vulnerabilities that may be exploited by malicious actors.Therefore, teams must dedicate sufficient time and resources to managing device inventory to ensure the security and effectiveness of their organization's IT infrastructure. In addition to the time-consuming nature of this task, security and IT teams must also ensure that device inventory information is accurate and up to date.  

Dynamic rules can help manage devices in a changing corporate environment by assigning tags and device values automatically, based on certain criteria. For example, assigning tags to devices that are identified as internet facing, tagging devices with a specific OS version or assigning a value to devices with a particular naming convention.

Dynamic rules also ensure device inventory remains relevant by removing tags or updating values when criteria are no longer met, ensuring devices are always properly tracked as technology and business needs change.

This approach can help save time, improve accuracy, and ensure that devices are always properly categorized and tracked over time.

## Create rules for alert notifications

With a new dynamic rule management experience, you will be able to create and manage rules for tagging devices and setting device value. You can use the “create a new rule” to open the rule creation wizard. Find this page in the following location: Setting à Microsoft 365 Defender à Asset rule management. 

You can create rules that determine the devices and alert severities to send email notifications for and the notification recipients.

1. Go to [Microsoft 365 Defender](https://go.microsoft.com/fwlink/p/?linkid=2077139) and sign in using an account with the Security administrator or Global administrator role assigned.
2. In the navigation pane, select **Settings** \> **Microsoft 365 Defender** \> **Asset Rule Management**
3. Select **Create a new rule**
4. Enter a **Rule name** and **Description**
5. Create a rule condition
6. Select **Next**
7. Choose the tag or asset values to apply to this rule and select **Next**
8. Review all the settings for the new rule you created and select **Submit**

## Related topics

- [Tagging](../defender-endpoint/data-retention-settings.md)
