---
title: Set up device groups in Jamf Pro
description: Learn how to set up device groups in Jamf Pro for Microsoft Defender for Endpoint on macOS
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 12/18/2020
---

# Set up Microsoft Defender for Endpoint on macOS device groups in Jamf Pro

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

Set up the device groups similar to Group policy  organizational unite (OUs), Microsoft Endpoint Configuration Manager's device collection, and Intune's device groups.

1. Navigate to **Static Computer Groups**.

2. Select **New**. 

   :::image type="content" source="images/jamf-pro-static-group.png" alt-text="The Jamf Pro1 page" lightbox="images/jamf-pro-static-group.png":::

3. Provide a display name and select **Save**.

   :::image type="content" source="images/jamfpro-machine-group.png" alt-text="The Jamf Pro2 page" lightbox="images/jamfpro-machine-group.png":::

4. Now you will see the **Contoso's Machine Group** under **Static Computer Groups**.

   :::image type="content" source="media/contoso-machine-group.png" alt-text="The Jamf Pro3 page" lightbox="media/contoso-machine-group.png":::

> [!NOTE]
> You are not required to use static groups. It is often more convenient and flexible to use e.g. [JAMF Pro's smart groups](https://docs.jamf.com/10.40.0/jamf-pro/documentation/Smart_Groups.html) instead.

## Next step
- [Set up Microsoft Defender for Endpoint on macOS policies in Jamf Pro](mac-jamfpro-policies.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
