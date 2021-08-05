---
title: Access the Microsoft 365 Defender MSSP customer portal
description: Access the Microsoft 365 Defender MSSP customer portal
keywords: managed security service provider, mssp, configure, integration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Access the Microsoft 365 Defender MSSP customer portal

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-mssp-support-abovefoldlink)

> [!NOTE]
> These set of steps are directed towards the MSSP.

By default, MSSP customers access their Microsoft 365 Defender tenant through the following URL: `https://securitycenter.windows.com/`.

MSSPs however, will need to use a tenant-specific URL in the following format:  `https://securitycenter.windows.com?tid=customer_tenant_id` to access the MSSP customer portal.

In general, MSSPs will need to be added to each of the MSSP customer's Azure AD that they intend to manage.

Use the following steps to obtain the MSSP customer tenant ID and then use the ID to access the tenant-specific URL:

1. As an MSSP, log in to Azure AD with your credentials.

2. Switch directory to the MSSP customer's tenant.

3. Select **Azure Active Directory > Properties**. You'll find the tenant ID in the Directory ID field.

4. Access the MSSP customer portal by replacing the `customer_tenant_id` value in the following URL: `https://securitycenter.windows.com/?tid=customer_tenant_id`.

## Related topics

- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Configure alert notifications](configure-mssp-notifications.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)
