---
title: Get started with Microsoft Defender Experts for XDR
ms.reviewer:
description: Once the Defender Experts for XDR team are ready to onboard you, we'll reach out to get you started.
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, Microsoft Defender Experts for hunting, threat hunting and analysis, Microsoft XDR service
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 11/17/2022
---

# Get started with Microsoft Defender Experts for XDR

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Once the Defender Experts for XDR team is ready to onboard your organization, you’ll receive a welcome email to continue the setup and get you started.

Select the link in the welcome email to directly launch the Defender Experts settings wizard in the Microsoft 365 Defender portal. You can also open this wizard by going to **Settings** > **Defender Experts** and selecting **Get started**.

## Grant permissions to our experts

By default, Defender Experts for XDR requires Service provider access that lets our experts sign into your tenant and deliver services based on assigned security roles. [learn more about cross-tenant access](/azure/active-directory/external-identities/cross-tenant-access-overview)

You also need to grant our experts temporary, scoped access only as needed, depending on the type of work you’d like them to handle on your behalf:

- **Investigate incidents and guide my responses** (default) – This option lets our experts proactively monitor and investigate incidents and guide you through any necessary response actions. (Access level: Security Reader)
- **Respond directly to active threats** (recommended) – This option lets our experts contain and remediate active threats immediately while investigating, thus reducing the threat’s impact, and improving your overall response efficiency. (Access level: Security Operator)

[Learn more about access levels](/azure/active-directory/roles/permissions-reference)

**SCREENSHOT**

Follow these steps to grant our experts permissions:

1. In the same Defender Experts settings page mentioned earlier, under **Permissions**, choose the access level(s) you want to grant our experts.
2. Select **Next**, to add contact persons or teams.[**link to current document-tell us who to contact for imp matters**]

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your organization.

To edit or update permissions after the initial setup, go to **Settings** > **Defender Experts** > **Permissions**. In this page, you also have the option to turn **Access security data from all devices** on or off under the access levels.

> [!IMPORTANT]
> If you turn off Access security data from all devices, our experts won’t be able to investigate incidents involving devices that belong to Microsoft Defender for Endpoint device groups. Learn more about device groups. [Learn more about device groups](../defender-endpoint/machine-groups.md)

## Go to the next step

[Start using Microsoft Defender Experts for XDR preview service](start-using-mdex-xdr.md)
