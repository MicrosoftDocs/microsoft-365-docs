---
title: Connected applications in Microsoft Defender for Endpoint
ms.reviewer:
description: View connected partner applications that use standard OAuth 2.0 protocol to authenticate and provide tokens for use with Microsoft Defender for Endpoint APIs.
keywords: partners, applications, third-party, connections, sentinelone, lookout, bitdefender, corrata, morphisec, paloalto, ziften, better mobile
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Connected applications in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Connected applications integrates with the Defender for Endpoint platform using APIs.

Applications use standard OAuth 2.0 protocol to authenticate and provide tokens for use with Microsoft Defender for Endpoint APIs. In addition, Azure Active Directory (Azure AD) applications allow tenant admins to set explicit control over which APIs can be accessed using the corresponding app.

You'll need to follow [these steps](/microsoft-365/security/defender-endpoint/apis-intro) to use the APIs with the connected application.

From the left navigation menu, select **Partners & APIs** (under **Endpoints**) > **Connected applications**.

## View connected application details

The Connected applications page provides information about the Azure AD applications connected to Microsoft Defender for Endpoint in your organization. You can review the usage of the connected applications: last seen, number of requests in the past 24 hours, and request trends in the last 30 days.

:::image type="content" source="images/connected-apps.png" alt-text="The connected applications" lightbox="images/connected-apps.png":::
 
## Edit, reconfigure, or delete a connected application

The **Open application settings** link opens the corresponding Azure AD application management page in the Azure portal. From the Azure portal, you can manage permissions, reconfigure, or delete the connected applications.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
