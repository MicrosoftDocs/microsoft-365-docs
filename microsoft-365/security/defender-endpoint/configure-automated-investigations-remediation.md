---
title: Configure automated investigation and remediation capabilities
description: Set up your automated investigation and remediation capabilities in Microsoft Defender for Endpoint.
ms.service: microsoft-365-security
ms.subservice: mde
author: dansimp
ms.author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
search.appverid: met150
ms.date: 07/14/2023
---

# Configure automated investigation and remediation capabilities in Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

If your organization is using [Defender for Endpoint](/windows/security/threat-protection/) (or [Defender for Business](../defender-business/mdb-overview.md)), [automated investigation and remediation capabilities](/microsoft-365/security/defender-endpoint/automated-investigations) can save your security operations team time and effort. As outlined in [this blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/enhance-your-soc-with-microsoft-defender-atp-automatic/ba-p/848946), these capabilities mimic the ideal steps that a security analyst takes to investigate and remediate threats. [Learn more about automated investigation and remediation](/microsoft-365/security/defender-endpoint/automated-investigations).

If you're using Defender for Endpoint, you can specify an automation level so that when a threat is detected on a device, the entity can be remediated automatically or only upon approval by your security team. You can configure automated investigation and remediation with device groups. 

> [!NOTE]
> In Defender for Business, automated investigation is configured automatically. See [advanced features](/microsoft-365/security/defender-business/mdb-configure-security-settings#review-settings-for-advanced-features).

## Set up device groups

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), on the **Settings** page, under **Permissions**, select **Device groups**.

2. Select **+ Add device group**.

3. Create at least one device group, as follows:

   - Specify a name and description for the device group.
   - In the **Automation level list**, select a level, such as **Full - remediate threats automatically**. The automation level determines whether remediation actions are taken automatically, or only upon approval. To learn more, see [Automation levels in automated investigation and remediation](automation-levels.md).
   - In the **Members** section, use one or more conditions to identify and include devices.

4. Select **Done** when you're finished setting up your device group.

> [!NOTE]
> The **Automated Investigation** option has been removed from the advanced features setting in Defender for Endpoint. Automated investigation is now enabled by default.

## Next steps

- [Visit the Action Center to view pending and completed remediation actions](/microsoft-365/security/defender-endpoint/auto-investigation-action-center#the-action-center)
- [Review and approve pending actions](/microsoft-365/security/defender-endpoint/manage-auto-investigation)

## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Automation levels in automated investigation and remediation](automation-levels.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
