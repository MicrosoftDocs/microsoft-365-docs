---
title: Gain insights through Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.prod: m365-security
localization_priority: Normal
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how Attack simulation training in the Microsoft 365 Defender portal affects users and can gain insights from simulation and training outcomes.
ms.technology: mdo
---

# Gain insights through Attack simulation training

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft Defender for Office Plan 2 or Microsoft 365 E5, Microsoft provides insights from the outcomes of simulations and trainings that your users experienced. These insights help to keep you informed on the threat readiness progress of your users, as well as recommended next steps to better prepare your users for future attacks.

Insights from Attack simulation training are available on the **Overview** tab. To go there, open the Microsoft 365 Defender portal at <https://security.microsoft.com/>, and then go to **Email & collaboration** \> **Attack simulation training**. To go directly to the **Attack simulation training** page, use <https://security.microsoft.com/attacksimulator>.

The rest of this article describes the information that's available on the **Overview** tab (the default tag) of Attack simulation training.

## Behavior impact on compromise rate

On the default **Overview** tab, the **Behavior impact on compromise rate** card shows how your users responded to your simulations as compared to the historical data in Microsoft 365. You can use these insights to track progress in users threat readiness by running multiple simulations against the same groups of users.

The chart shows the following information:

- **Predicted compromise rate**<sup>\*</sup>: The average compromise rate for Attack simulation training simulations that use the same type of payload across all other Microsoft 365 organizations.
- **Actual compromise rate**<sup>\*</sup>: The actual percentage of users that fell for the simulation.
- **x users less susceptible to phishing**: The difference between the actual number of users compromised by the simulated attack and the predicted compromise rate. This number of users is less likely to be compromised by similar attacks in the future.
- **x% better than predicted rate**: Indicates how users did overall in contrast with the predicted compromise rate.

<sup>\*</sup> If you hover over a data point in the graph, the actual percentage values are shown.

![Behavior impact on compromise rate card on the Overview tab in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-behavior-impact-card.png)

To see a more detailed report, click **View simulations and training efficacy report**. This report is explained in the next section.

## Attack simulation report

To get to the to the **Attack simulation report**, click the **View simulations and training efficacy report** link in the **Behavior impact on compromise rate** card on the **Overview** tab. To go directly to the report, use <https://security.microsoft.com/attacksimulationreport>

### Training efficacy tab for the Attack simulation report

On the **Attack simulation report** page, the **Training efficacy** tab is selected by default. This tab provides the same information that's available in the **Behavior impact on compromise rate** card, with additional context from the simulation itself.

![Training efficacy tab in the Attack simulation report in the Microsoft 365 Defender portal.](../../media/attack-sim-report-training-efficacy-view.png)

The chart shows the **Predicted compromise rate** and **Actual compromised rate**. If you hover over a section in the graph, the actual percentage values for are shown.

The details table below the graph shows the following information:

- **Simulation name**
- **Simulation technique**
- **Simulation tactics**
- **Predicted compromised rate**
- **Actual compromised rate**
- **Total users targeted**
- **Count of clicked users**

You can sort the results by clicking on an available column header.

Click **Customize columns** to remove the columns that are shown. When you're finished, click **Apply**.

Use ![Search icon](../../media/m365-cc-sc-search-icon.png) **Search** box to filter the results by **Simulation name** or **Simulation Technique**. Wildcards aren't supported.

If you click the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export report** button, report generation progress is shown as a percentage of complete. In the dialog that opens, you can choose to open the .csv file, save the .csv file, and remember the selection.

### User coverage tab for the Attack simulation report

![User coverage tab in the Attack simulation report in the Microsoft 365 Defender portal.](../../media/attack-sim-report-user-coverage-view.png)

On the **User coverage** tab, the chart shows the **Simulated users** and **Non-simulated users**. If you hover over a data point in the graph, the actual values are shown.

The details table below the graph shows the following information:

- **Username**
- **Email address**
- **Included in simulation**
- **Date of last simulation**
- **Last simulation result**
- **Count of clicked**
- **Count of compromised**

You can sort the results by clicking on an available column header.

Click **Customize columns** to remove the columns that are shown. When you're finished, click **Apply**.

Use ![Search icon](../../media/m365-cc-sc-search-icon.png) **Search** box to filter the results by **Username** or **Email address**. Wildcards aren't supported.

If you click the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export report** button, report generation progress is shown as a percentage of complete. In the dialog that opens, you can choose to open the .csv file, save the .csv file, and remember the selection.

### Training completion tab for the Attack simulation report

![Training completion tab in the Attack simulation report in the Microsoft 365 Defender portal.](../../media/attack-sim-report-training-completion-view.png)

On the **Training completion** tab, the chart shows the number of **Completed**, **In progress**, and **Incomplete** simulations. If you hover over a section in the graph, the actual values are shown.

The details table below the graph shows the following information:

- **Username**
- **Email address**
- **Included in simulation**
- **Date of last simulation**
- **Last simulation result**
- **Name of most recent training completed**
- **Date completed**
- **All trainings**

You can sort the results by clicking on an available column header.

Click **Customize columns** to remove the columns that are shown. When you're finished, click **Apply**.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the chart and details table by one or more of the following values:

- **Completed**
- **In progress**
- **All**

When you're finished configuring the filters, click **Apply**, **Cancel**, or **Clear filters**.

Use ![Search icon](../../media/m365-cc-sc-search-icon.png) **Search** box to filter the results by **Username** or **Email address**. Wildcards aren't supported.

If you click the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export report** button, report generation progress is shown as a percentage of complete. In the dialog that opens, you can choose to open the .csv file, save the .csv file, and remember the selection.

### Repeat offenders tab for the Attack simulation report

![Repeat offenders tab in the Attack simulation report in the Microsoft 365 Defender portal.](../../media/attack-sim-report-repeat-offenders-view.png)

On the **Repeat offenders** tab, the chart shows the number of simulations by simulation type:

- **All**
- **Credential harvest**
- **Malware attachment**
- **Link in attachment**
- **Link to malware**
- **Drive-by URL**

If you hover over a data point in the graph, the actual values are shown.

The details table below the graph shows the following information:

- **User**
- **Repeat count**
- **Simulation types**
- **Simulations**

You can sort the results by clicking on an available column header.

Click **Customize columns** to remove the columns that are shown. When you're finished, click **Apply**.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the chart and details table by some or all of the simulation type values:

- **Credential harvest**
- **Malware attachment**
- **Link in attachment**
- **Link to malware**
- **Drive-by URL**

When you're finished configuring the filters, click **Apply**, **Cancel**, or **Clear filters**.

Use ![Search icon](../../media/m365-cc-sc-search-icon.png) **Search** box to filter the results by any of the column values. Wildcards aren't supported.

If you click the ![Export icon.](../../media/m365-cc-sc-download-icon.png) **Export report** button, report generation progress is shown as a percentage of complete. In the dialog that opens, you can choose to open the .csv file, save the .csv file, and remember the selection.

## Recommended actions

On the [**Simulations** tab](https://security.microsoft.com/attacksimulator?viewid=simulations), selecting a simulation will take you to the simulation details, where you'll find the **Recommended actions** section.

The recommended actions section details recommendations as available in [Microsoft Secure Score](../defender/microsoft-secure-score.md). These recommendations are based on the payload used in the simulation, and will help you protect your users and your environment. Clicking on each improvement action will take you to its details.

> [!div class="mx-imgBorder"]
> ![Recommendation actions section on Attack simulation training.](../../media/attack-sim-preview-recommended-actions.png)

## Related Links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training.md)

[create a payload for training your people](attack-simulation-training-payloads.md)
