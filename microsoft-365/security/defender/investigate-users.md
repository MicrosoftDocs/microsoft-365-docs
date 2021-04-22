---
title: Analyze users in Microsoft 365 security center
description: Analyze users in the Microsoft 365 security center
keywords: security, malware, Microsoft 365, M365, security center, monitor, report, identities, data, devices, apps, incident, analyze, response
ms.prod: m365-security
ms.mktglfcycl: deploy
localization_priority: Normal
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: dansimp
ms.date: 
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
search.appverid: met150
ms.custom: seo-marvel-jun2020
ms.technology: m365d
---
# Analyze users in Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Part of your incident analysis can include user accounts. Start with the **Users** tab for an incident from **Incidents & alerts >** *incident* **> Users**. 

:::image type="content" source="../../media/investigate-incidents/incident-users.png" alt-text="Example of a Users page for an incident":::

To get a quick summary of a user account for the incident, select the check mark next to the user account name. Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-pane.png" alt-text="Example of the user account summary pane for an incident in the Microsoft 365 security center":::

From here, you can select **Go to user page** to see the details of a user account. Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-details.png" alt-text="Example of the user account page for an incident in the Microsoft 365 security center":::

You can also see this page by selecting the name of the user account from the list on the **Users** page.

The Microsoft 365 security center user page combines information from Microsoft Defender for Endpoint, Microsoft Defender for Identity, and Microsoft Cloud App Security (depending on what licenses you have). 

This page shows information specific to the security risk of a user account. This includes a score that helps assess risk and recent events and alerts that contributed to the overall risk of the user.

From this page, you can do these additional actions: 

- Mark the user account as compromised
- Require the user to sign in again
- Suspend the user account
- See the Azure Active Directory (Azure AD) user account settings
- View the files owned by the user account
- View files shared with this user. 

Here's an example.

:::image type="content" source="../../media/investigate-users/incidents-ss-user-details-actions.png" alt-text="Example of the actions on a user account for an incident in the Microsoft 365 security center":::


<!--
You can access this page from multiple areas in the Microsoft 365 security center. You can access this page from a specific incident in the **Users** tab. Some alerts might include users as a specific affected asset. You can also search for users.  

Learn more about how to investigate users and potential risk [in this Cloud App Security tutorial](/cloud-app-security/tutorial-ueba#:~:text=To%20identify%20who%20your%20riskiest,user%20page%20to%20investigate%20them).

--> 

## Related topics

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)