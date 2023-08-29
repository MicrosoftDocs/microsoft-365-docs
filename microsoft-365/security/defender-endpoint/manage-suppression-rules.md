---
title: Manage Microsoft Defender for Endpoint suppression rules
description: You might need to prevent alerts from appearing in the portal by using suppression rules. Learn how to manage your suppression rules in Microsoft Defender for Endpoint.
keywords: manage suppression, rules, rule name, scope, action, alerts, turn on, turn off
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
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Manage suppression rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


There might be scenarios where you need to suppress alerts from appearing in the portal. You can create suppression rules for specific alerts that are known to be innocuous such as known tools or processes in your organization. For more information on how to suppress alerts, see [Suppress alerts](manage-alerts.md).

You can view a list of all the suppression rules and manage them in one place. You can also turn an alert suppression rule on or off.


1. Log in to [Microsoft 365 Defender](https://go.microsoft.com/fwlink/p/?linkid=2077139) using an account with the Security administrator or Global administrator role assigned.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Alert suppression**. The list of suppression rules that users in your organization have created is displayed.

2. Select a rule by clicking on the check-box beside the rule name.

3. Click **Turn rule on**, **Edit rule**, or  **Delete rule**. When making changes to a rule, you can choose to release alerts that it has already suppressed, regardless whether or not these alerts match the new criteria. 


## View details of a suppression rule

1. In the navigation pane, select **Settings** \> **Endpoints** \> **Rules** \> **Alert suppression**. The list of suppression rules that users in your organization have created is displayed.

2. Click on a rule name. Details of the rule is displayed. You'll see the rule details such as  status, scope, action, number of matching alerts, created by, and date when the rule was created. You can also view associated alerts and the rule conditions.

## Related topics

- [Manage alerts](manage-alerts.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
