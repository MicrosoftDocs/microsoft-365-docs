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
description: Admins can learn how to configure global settings in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Global settings in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, the **Settings** tab contains settings that affect all simulations:

- **Repeat offender threshold**: A _repeat offender_ is someone who gives up their credentials in multiple consecutive simulations. How many simulations in a row constitute a repeat offender is determined by the repeat offender threshold. Information about repeat offenders appears in the following locations:
  - The [Repeat offenders card on the Overview tab](attack-simulation-training-insights.md#repeat-offenders-card) and the [Repeat offenders tab in the Attack simulation report](attack-simulation-training-insights.md#repeat-offenders-tab-for-the-attack-simulation-report).
  - When you select users in [simulations](attack-simulation-training-simulation-automations.md#target-users), [simulation automations](attack-simulation-training-simulation-automations.md#target-users), and [training simulations](attack-simulation-training-training-campaigns.md#target-users), you can find and filter repeat offenders.

- **Training threshold**: In [Training campaigns](attack-simulation-training-training-campaigns.md), the _training threshold_ specifies a time period in days to prevent users from having the same training modules assigned to them. Specifically, a training module isn't reassigned to users who completed the module during the training threshold, nor is a training module assigned to users who haven't completed modules assigned during the training threshold. For more information, see [Set the training threshold time period](attack-simulation-training-training-campaigns.md#set-the-training-threshold).

- **View exclude simulations from reporting**: After a simulation has completed, you can exclude the results of the simulation from reporting. For instructions, see [Exclude completed simulations from reporting](attack-simulation-training-simulations.md#exclude-completed-simulations-from-reporting). You can use the **View all** link in this section to see excluded simulations on the **Simulations** tab.

To get to the **Settings** tab, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Login pages**. To go directly to the **Settings** tab, use <https://security.microsoft.com/attacksimulator?viewid=setting>.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

## Configure the repeat offender threshold

To configure the repeat offender threshold, use the box in the **Repeat offender threshold** section on the **Settings** tab. The default value is 2.

## Configure the training threshold

To configure the training threshold, use the box in the **Training threshold** section on the **Settings** tab. The default value is 90 days.

The training threshold starts from the time that modules are assigned to users.

We recommend that this value is greater than the number of days users have to complete a training module.

To remove the training threshold and always assign training, regardless of whether a user has already completed or been assigned a training, set value to 0.

## View simulations excluded from reporting

To view completed simulations that have been excluded from reporting on the **Settings** tab, select the **View all** link in the **Simulations excluded from reporting** section. This link takes you to the **Simulations** tab at <https://security.microsoft.com/attacksimulator?viewid=simulations> where **Show excluded simulations** is automatically toggled on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

On the **Simulations** tab, both excluded _and_ included completed simulations are shown on the **Simulations** tab together. You can tell the difference by the **Status** values (**Excluded** vs. **Completed**)

If you go directly to the **Simulations** tab and manually toggle **Show excluded simulations** on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, _only_ excluded simulations are shown.

To exclude completed simulations from reporting, see [Exclude completed simulations from reporting](attack-simulation-training-simulations.md#exclude-completed-simulations-from-reporting).
