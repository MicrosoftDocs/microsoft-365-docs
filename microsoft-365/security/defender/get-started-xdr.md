---
title: Onboarding to Microsoft Defender Experts for XDR
ms.reviewer:
description: Once the Defender Experts for XDR team is ready to onboard you, defenderexpertscomms@microsoft.com will send you a welcome email
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, Microsoft Defender Experts for hunting, threat hunting and analysis
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
---

# Get started

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Activate your trial license

1. Click the link in the welcome email to go directly to the Defender Experts settings page in the Microsoft 365 Defender portal. You can also open this page by going to **Settings** > **Defender Experts**.
2. Read the Defender Experts for XDR preview terms and conditions then select **Accept** to accept them.
3. Get your free license in Microsoft 365 admin center. In the checkout page, select **Place order**

## Grant permissions to our experts

By default, Defender Experts for XDR requires the following permissions to investigate incidents and notify you when you need to take action:

- **Service provider access** - this permission lets our experts sign in to your tenant and deliver services based on assigned security roles; learn more about cross-tenant access
- **Security reader** - this built-in Azure AD role lets our experts investigate incidents and provide guidance on necessary response actions

You can also provide our experts the following additional permissions to investigate incidents on your behalf:

- **Security operator** (recommended) - In addition to the permissions provided to a security reader, this built-in Azure AD role lets our experts take necessary actions to remediate active threats
- **Security administrator** (optimal) - In addition to the permissions provided to a security operator, this built-in Azure AD role lets our experts configure security settings and deploy preventive measures

[Learn more about Azure AD roles and permissions](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference)

Follow these steps to grant our experts additional permissions:
1.	In the same Defender Experts setting page mentioned earlier, select Manage permissions
2.	Under **Additional permissions**, select the additional role(s) you want to grant
3.	Select **Give access**

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your network.
