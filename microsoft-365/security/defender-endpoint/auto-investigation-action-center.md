---
title: Visit the Action center to see remediation actions
description: Use the action center to view details and results following an automated investigation
keywords: action, center, autoir, automated, investigation, response, remediation
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
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
ms.custom: admindeeplinkDEFENDER
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
search.appverid: met150
ms.date: 12/18/2020
---

# Visit the Action center to see remediation actions

During and after an automated investigation, remediation actions for threat detections are identified. Depending on the particular threat and how [automated investigation and remediation capabilities are configured](configure-automated-investigations-remediation.md) for your organization, some remediation actions are taken automatically, and others require approval. If you're part of your organization's security operations team, you can view pending and completed [remediation actions](manage-auto-investigation.md#remediation-actions) in the **Action center**.

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

## The unified Action center

Recently, the Action center was updated. You now have a unified Action center experience. To access your Action center, go to [https://security.microsoft.com/action-center](https://security.microsoft.com/action-center) and sign in.

:::image type="content" source="images/mde-action-center-unified.png" alt-text="The Action center page in the Microsoft 365 Defender portal" lightbox="images/mde-action-center-unified.png":::

### What's changed?

The following table compares the new, unified Action center to the previous Action center.

|The new, unified Action center  |The previous Action center  |
|---------|---------|
|Lists pending and completed actions for devices and email in one location <br/>([Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) plus [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365))|Lists pending and completed actions for devices <br/> ([Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) only)   |
|Is located at:<br/>[https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)         |Is located at:<br/>[https://securitycenter.windows.com/action-center](https://securitycenter.windows.com/action-center)     |
| In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, choose **Action center**. <p>:::image type="content" source="images/action-center-nav-new.png" alt-text="The navigation pane to the Action Center in the Microsoft 365 Defender portal" lightbox="images/action-center-nav-new.png"::: | In the Microsoft 365 Defender portal, choose **Automated investigations** > **Action center**. <p>:::image type="content" source="images/action-center-nav-old.png" alt-text="An older version of the navigation pane to the Action Center in the Microsoft 365 Defender portal" lightbox="images/action-center-nav-old.png":::  |

The unified Action center brings together remediation actions across Defender for Endpoint and Defender for Office 365. It defines a common language for all remediation actions, and provides a unified investigation experience.

You can use the unified Action center if you have appropriate permissions and one or more of the following subscriptions:

- [Microsoft 365 Defender](/microsoft-365/security/mtp/microsoft-threat-protection)
- [Defender for Endpoint](microsoft-defender-endpoint.md)
- [Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365)
- [Defender for Business](../defender-business/mdb-overview.md)

## Using the Action center

To get to the unified Action center in the improved Microsoft 365 Defender portal:

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in.

2. In the navigation pane, select **Action center**.

3. Use the **Pending actions** and **History** tabs. The following table summarizes what you'll see on each tab:

   |Tab|Description|
   |---|---|
   |**Pending**|Displays a list of actions that require attention. You can approve or reject actions one at a time, or select multiple actions if they have the same type of action (such as **Quarantine file**). <p> **TIP**: Make sure to [review and approve (or reject) pending actions](manage-auto-investigation.md) as soon as possible so that your automated investigations can complete in a timely manner.|
   |**History**|Serves as an audit log for actions that were taken, such as: <ul><li>Remediation actions that were taken as a result of automated investigations</li><li>Remediation actions that were approved by your security operations team</li><li>Commands that were run and remediation actions that were applied during Live Response sessions</li><li>Remediation actions that were taken by threat protection features in Microsoft Defender Antivirus</li></ul> <p> Provides a way to undo certain actions (see [Undo completed actions](manage-auto-investigation.md#undo-completed-actions)).|

4. To customize, sort, filter, and export data in the Action center, take one or more of the following steps:

   :::image type="content" source="images/new-action-center-columnsfilters.png" alt-text="The Action center with Columns and filters" lightbox="images/new-action-center-columnsfilters.png":::

   - Select a column heading to sort items in ascending or descending order.
   - Use the time period filter to view data for the past day, week, 30 days, or 6 months.
   - Choose the columns that you want to view.
   - Specify how many items to include on each page of data.
   - Use filters to view just the items you want to see.
   - Select **Export** to export results to a .csv file.

## Next steps

- [View and approve remediation actions](manage-auto-investigation.md)
- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)

## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
