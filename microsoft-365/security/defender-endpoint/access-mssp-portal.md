---
title: Access the Microsoft 365 Defender MSSP customer portal
description: Access the Microsoft 365 Defender MSSP customer portal
keywords: managed security service provider, mssp, configure, integration
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
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Access the Microsoft 365 Defender MSSP customer portal

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-mssp-support-abovefoldlink)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

> [!NOTE]
> These set of steps are directed towards the MSSP.

By default, MSSP customers access their Microsoft 365 Defender tenant through the following URL: `https://security.microsoft.com/`.

MSSPs however, will need to use a tenant-specific URL in the following format: `https://security.microsoft.com?tid=customer_tenant_id` to access the MSSP customer portal.

In general, MSSPs will need to be added to each of the MSSP customer's Azure AD that they intend to manage.

Use the following steps to obtain the MSSP customer tenant ID and then use the ID to access the tenant-specific URL:

1. As an MSSP, log in to Azure AD with your credentials.
2. Switch directory to the MSSP customer's tenant.
3. Select **Azure Active Directory > Properties**. You'll find the tenant ID in the Tenant ID field.
4. Access the MSSP customer portal by replacing the `customer_tenant_id` value in the following URL: `https://security.microsoft.com/?tid=customer_tenant_id`.
5. Access a Unified View for MSSP (Preview) in `https://mto.security.microsoft.com/`

## Related topics

- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Configure alert notifications](configure-mssp-notifications.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
