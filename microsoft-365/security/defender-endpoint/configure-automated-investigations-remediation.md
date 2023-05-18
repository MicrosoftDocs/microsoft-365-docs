---
title: Configure automated investigation and remediation capabilities
description: Set up your automated investigation and remediation capabilities in Microsoft Defender for Endpoint.
keywords: configure, setup, automated, investigation, detection, alerts, remediation, response
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dansimp
ms.author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
search.appverid: met150
ms.date: 12/18/2020
---

# Configure automated investigation and remediation capabilities in Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

If your organization is using [Defender for Endpoint](/windows/security/threat-protection/) (or [Defender for Business](../defender-business/mdb-overview.md)), [automated investigation and remediation capabilities](/microsoft-365/security/defender-endpoint/automated-investigations) can save your security operations team time and effort. As outlined in [this blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/enhance-your-soc-with-microsoft-defender-atp-automatic/ba-p/848946), these capabilities mimic the ideal steps that a security analyst takes to investigate and remediate threats. [Learn more about automated investigation and remediation](/microsoft-365/security/defender-endpoint/automated-investigations).

To configure automated investigation and remediation:

1. [Turn on the features](#turn-on-automated-investigation-and-remediation); and
2. [Set up device groups](#set-up-device-groups).

> [!NOTE]
> - Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## Turn on automated investigation and remediation

1. As a global administrator or security administrator, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**.

3. Select **Endpoints**, then select **Advanced features**.

4. Turn on both **Automated Investigation** and **Automatically resolve alerts**.

## Set up device groups

> [!NOTE]
> This procedure does not apply to Defender for Business.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), on the **Settings** page, under **Permissions**, select **Device groups**.

2. Select **+ Add device group**.

3. Create at least one device group, as follows:

   - Specify a name and description for the device group.
   - In the **Automation level list**, select a level, such as **Full - remediate threats automatically**. The automation level determines whether remediation actions are taken automatically, or only upon approval. To learn more, see [Automation levels in automated investigation and remediation](automation-levels.md).
   - In the **Members** section, use one or more conditions to identify and include devices.
   - On the **User access** tab, select the [Azure Active Directory groups](/azure/active-directory/fundamentals/active-directory-manage-groups?context=azure/active-directory/users-groups-roles/context/ugr-context) who should have access to the device group you're creating.

4. Select **Done** when you're finished setting up your device group.

## Next steps

- [Visit the Action Center to view pending and completed remediation actions](/microsoft-365/security/defender-endpoint/auto-investigation-action-center#the-action-center)
- [Review and approve pending actions](/microsoft-365/security/defender-endpoint/manage-auto-investigation)

## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
