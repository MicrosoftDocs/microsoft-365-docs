---
title: Investigate users in Microsoft 365 Defender
description: Investigate users for an incident in the Microsoft 365 Defender portal.
keywords: security, malware, Microsoft 365, M365, security center, monitor, report, identities, data, devices, apps, incident, analyze, response
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - tier2 
ms.topic: article
search.appverid: met150
ms.custom: seo-marvel-jun2020
---
# Investigate users in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Part of your incident investigation can include user accounts. You can see the details of user accounts identified in the alerts of an incident in the Microsoft 365 Defender portal from **Incidents & alerts** \> ***incident*** \> **Users**. Here's an example.

:::image type="content" source="../../media/investigate-incidents/incident-users.png" alt-text="The Users page for an incident in the Microsoft 365 Defender portal." lightbox="../../media/investigate-incidents/incident-users.png":::

To get a quick summary of a user account for the incident, select the check mark next to the user account name. Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-pane.png" alt-text="The Users tab for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-users/incidents-ss-user-pane.png":::

> [!NOTE]
> The user page shows Azure Active Directory (Azure AD) organization as well as groups, helping you understand the groups and permissions associated with a user.

In this pane, you can review user threat information, including any current incidents, active alerts, and risk level as well as user exposure, accounts, devices, and more.

In addition, you can take action directly in the Microsoft 365 Defender portal to address a compromised user, such as confirming the user account is compromised or requiring a new sign-in.

From here, you can select **Go to user page** to see the details of a user account. Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-details.png" alt-text="The details of the user account in the Microsoft 365 Defender portal" lightbox="../../media/investigate-users/incidents-ss-user-details.png":::

You can also see this page by selecting the name of the user account from the list on the **Users** page.

You can see group membership for the user by selecting the number under **Groups**. Selecting a group will open the **Groups** pane, which includes additional information such as the creation date and group membership.

> [!NOTE]
> Group membership only displays the first 1000 group members.

:::image type="content" source="../../media/investigate-users/user-group-membership.png" alt-text="The information about the group membership for a user in the Microsoft 365 Defender portal" lightbox="../../media/investigate-users/user-group-membership.png":::

By selecting the icon under **Manager**, you can see where the user is in the organization tree.

The Microsoft 365 Defender portal user page combines information from Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Defender for Cloud Apps (depending on what licenses you have).

This page shows information specific to the security risk of a user account, which includes a score that helps assess risk and recent events and alerts that contributed to the overall risk.

From this page, you can do these additional actions:

- Mark the user account as compromised
- Require the user to sign in again
- Suspend the user account
- See the Azure AD user account settings
- View the files owned by the user account
- View files shared with this user.

Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-details-actions.png" alt-text="The section that describes the actions on a user account for an incident in the Microsoft 365 Defender portal" lightbox="../../media/investigate-users/incidents-ss-user-details-actions.png":::

## View lateral movement paths

By selecting the **Lateral movement paths** tab, you can view a fully dynamic and clickable map that provides you with a visual representation of the lateral movement paths to and from this user that can be used to infiltrate your network.

The map provides you with a list of how many hops between computers or users an attacker would have to and from this user to compromise a sensitive account, and if the user has a sensitive account, you can see how many resources and accounts are directly connected.

If a potential lateral movement path wasn't detected for the entity during the past two days, the graph doesn't display. Select a different date using View a different date to view previous lateral movement paths graphs discovered for this entity. The lateral movement path report is always available to provide you with information about the potential lateral movement paths discovered, and can be customized by time.

:::image type="content" source="../../media/investigate-users/lateral-movement-path.png" alt-text="The lateral movement path for a user in the Microsoft 365 Defender portal" lightbox="../../media/investigate-users/lateral-movement-path.png":::

For more information, see [Lateral movement paths](/defender-for-identity/use-case-lateral-movement-path).

## Next steps

As needed for in-process incidents, continue your [investigation](investigate-incidents.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
