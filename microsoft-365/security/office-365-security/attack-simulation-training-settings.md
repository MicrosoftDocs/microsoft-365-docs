---
title: Global settings in Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - tier2
description: Admins can learn how to configure the repeat offender threshold and exclude simulations from reporting in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 4/3/2023
---

# Global settings in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, the **Settings** tab contains settings that affect all simulations:

- **Repeat offender threshold**: A _repeat offender_ is someone who gives up their credentials in multiple consecutive simulations. How many simulations in a row constitutes a repeat offender is determined by the repeat offender threshold. Information about repeat offenders appears in the following locations:
  - The [Repeat offenders card on the Overview tab](attack-simulation-training-insights.md#repeat-offenders-card) and the [Repeat offenders tab in the Attack simulation report](attack-simulation-training-insights.md#repeat-offenders-tab-for-the-attack-simulation-report).
  - When you select users in [simulations](attack-simulation-training-simulation-automations.md#target-users), [simulation automations](attack-simulation-training-simulation-automations.md#target-users), and [training simulations](attack-simulation-training-training-campaigns.md#target-users), you can find and filter repeat offenders.

- **View exclude simulations from reporting**: After a simulation has completed, you can exclude the results of the simulation from reporting. For instructions, see [Exclude completed simulations from reporting](attack-simulation-training-simulations.md#exclude-completed-simulations-from-reporting). You can use the the **View all** link in this section to see excluded simulations on the **Simulations** tab.

To get to the **Settings** tab, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Login pages**. To go directly to the **Settings** tab, use <https://security.microsoft.com/attacksimulator?viewid=setting>.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

## Configure the repeat offender threshold

To configure the repeat offender threshold, use the box in the **Repeat offender threshold** section on the **Settings** tab. The default value is 2.

## View simulations excluded from reporting

To view completed simulations that have been excluded from reporting on the **Settings** tab, click the **View all** link in the **Simulations excluded from reporting** section. This link takes you to the **Simulations** tab at <https://security.microsoft.com/attacksimulator?viewid=simulations> where **Show excluded simulations** is automatically toggled on ![Toggle on icon.](../../media/scc-toggle-on.png).

On the **Simulations** tab, both excluded _and_ included completed simulations are shown on the **Simulations** tab together. You can tell the difference by the **Status** values (**Excluded** vs. **Completed**)

If you go directly to the **Simulations** tab and manually toggle **Show excluded simulations** on ![Toggle on icon.](../../media/scc-toggle-on.png), _only_ excluded simulations are shown.

To exclude completed simulations from reporting, see [Exclude completed simulations from reporting](attack-simulation-training-simulations.md#exclude-completed-simulations-from-reporting).
