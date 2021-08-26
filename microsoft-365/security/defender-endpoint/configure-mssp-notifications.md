---
title: Configure alert notifications that are sent to MSSPs
description: Configure alert notifications that are sent to MSSPs
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

# Configure alert notifications that are sent to MSSPs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-mssp-support-abovefoldlink)

> [!NOTE]
> This step can be done by either the MSSP customer or MSSP. MSSPs must be granted the appropriate permissions to configure this on behalf of the MSSP customer.

After access the portal is granted, alert notification rules can to be created so that emails are sent to MSSPs when alerts associated with the tenant are created and set conditions are met.

For more information, see [Create rules for alert notifications](configure-email-notifications.md#create-rules-for-alert-notifications).

These check boxes must be checked:

- **Include organization name** - The customer name will be added to email notifications
- **Include tenant-specific portal link** - Alert link URL will have tenant specific parameter (tid=target_tenant_id) that allows direct access to target tenant portal

## Related topics

- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Access the MSSP customer portal](access-mssp-portal.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)
