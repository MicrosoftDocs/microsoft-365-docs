---
title: Configure managed security service provider support
description: Take the necessary steps to configure the MSSP integration with the Microsoft Defender for Endpoint
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

# Configure managed security service provider integration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-mssp-support-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

You'll need to take the following configuration steps to enable the managed security service provider (MSSP) integration.

> [!NOTE]
> The following terms are used in this article to distinguish between the service provider and service consumer:
>
> - MSSPs: Security organizations that offer to monitor and manage security devices for an organization.
> - MSSP customers: Organizations that engage the services of MSSPs.

The integration will allow MSSPs to take the following actions:

- Get access to MSSP customer's Microsoft 365 Defender portal
- Get email notifications, and
- Fetch alerts through security information and event management (SIEM) tools

Before MSSPs can take these actions, the MSSP customer will need to grant access to their Defender for Endpoint tenant so that the MSSP can access the portal.

Typically, MSSP customers take the initial configuration steps to grant MSSPs access to their Windows Defender Security Central tenant. After access is granted, other configuration steps can be done by either the MSSP customer or the MSSP.

In general, the following configuration steps need to be taken:

- **Grant the MSSP access to Microsoft 365 Defender**

  This action needs to be done by the MSSP customer. It grants the MSSP access to the MSSP customer's Defender for Endpoint tenant.

- **Configure alert notifications sent to MSSPs**

  This action can be taken by either the MSSP customer or MSSP. This lets the MSSPs know what alerts they need to address for the MSSP customer.

- **Fetch alerts from MSSP customer's tenant into SIEM system**

  This action is taken by the MSSP. It allows MSSPs to fetch alerts in SIEM tools.

- **Fetch alerts from MSSP customer's tenant using APIs**

  This action is taken by the MSSP. It allows MSSPs to fetch alerts using APIs.

## Multi-tenant access for MSSPs

For information on how to implement a multi-tenant delegated access, see [Multi-tenant access for Managed Security Service Providers](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/multi-tenant-access-for-managed-security-service-providers/ba-p/1533440).

## Related topics

- [Grant MSSP access to the portal](grant-mssp-access.md)
- [Access the MSSP customer portal](access-mssp-portal.md)
- [Configure alert notifications](configure-mssp-notifications.md)
- [Fetch alerts from customer tenant](fetch-alerts-mssp.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
