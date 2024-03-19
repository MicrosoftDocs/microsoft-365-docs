---
title: Configure managed security service provider support
description: Take the necessary steps to configure the MSSP integration with the Microsoft Defender for Endpoint
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
search.appverid: met150
ms.date: 12/18/2020
---

# Configure managed security service provider integration

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-mssp-support-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

To enable the managed security service provider (MSSP) integration, follow the guidance in this article.

> [!NOTE]
> The following terms are used in this article to distinguish between the service provider and service consumer:
>
> - MSSPs: Security organizations that offer to monitor and manage security devices for an organization.
> - MSSP customers: Organizations that engage the services of MSSPs.

The integration allows MSSPs to take the following actions:

- Get access to MSSP customer's Microsoft Defender portal
- Get email notifications, and
- Fetch alerts through security information and event management (SIEM) tools

Before MSSPs can take these actions, the MSSP customer needs to grant access to their Defender for Endpoint tenant so that the MSSP can access the portal.

Typically, MSSP customers take the initial configuration steps to grant MSSPs access to their Windows Defender Security Central tenant. After access is granted, the MSSP or customer can do the other configuration steps. In general, these are the configuration steps to complete:

| Step | Who does it|
|---|---|
| **Grant the MSSP access to Microsoft Defender XDR**. This action grants the MSSP access to the MSSP customer's Defender for Endpoint tenant. | MSSP Customer |
| **Configure alert notifications sent to MSSPs**. This action lets the MSSPs know what alerts they need to address for the MSSP customer. | MSSP customer or MSSP |
| **Fetch alerts from MSSP customer's tenant into SIEM system**. This action allows MSSPs to fetch alerts in SIEM tools. | MSSP |
| **Fetch alerts from MSSP customer's tenant using APIs**. This action allows MSSPs to fetch alerts using APIs. | MSSP |

## Multi-tenant access for MSSPs

For information on how to implement a multitenant delegated access, see [Multi-tenant access for Managed Security Service Providers](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/multi-tenant-access-for-managed-security-service-providers/ba-p/1533440).

## Related articles

- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Access the MSSP customer portal](access-mssp-portal.md)
- [Configure alert notifications](configure-mssp-notifications.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
