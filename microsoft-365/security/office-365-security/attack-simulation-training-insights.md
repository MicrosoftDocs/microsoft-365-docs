---
title: Insights and reports Attack simulation training
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: conceptual
ms.service: defender-office-365
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - tier2
ms.custom:
description: Admins can learn how Attack simulation training in the Microsoft Defender portal affects users and can gain insights from simulation and training outcomes.
search.appverid: met150
ms.date: 3/14/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 2</a>
---

# Insights and reports for Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft Defender for Office 365 Plan 2 or Microsoft 365 E5, Microsoft provides insights and reports from the results of simulations and the corresponding trainings. This information keeps you informed on the threat readiness progress of your users, and recommended next steps to better prepare your users for future attacks.

Insights and reports are available in the following locations on the **Attack simulation training** page in the Microsoft Defender portal:

- Insights:
  - The **Overview** tab at <https://security.microsoft.com/attacksimulator?viewid=overview>.
  - The **Reports** tab at <https://security.microsoft.com/attacksimulator?viewid=reports>.
- Reports:
  - The **Attack simulation report** page at <https://security.microsoft.com/attacksimulationreport>:
    - [Training efficacy tab](#training-efficacy-tab-for-the-attack-simulation-report)
    - [User coverage tab](#user-coverage-tab-for-the-attack-simulation-report)
    - [Training completion tab](#training-completion-tab-for-the-attack-simulation-report)
    - [Repeat offenders tab](#repeat-offenders-tab-for-the-attack-simulation-report)
  - The reports for in-progress and completed simulations and training campaigns: For more information, see [Attack simulation report](#attack-simulation-report).

The rest of this article describes the reports and insights for Attack simulation training.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

## Insights on the Overview and Reports tabs of Attack simulation training

To go to the **Overview** tab, open the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training**:

- **Overview** tab: Verify that the **Overview** tab is selected (it's the default). Or, to go directly to the **Overview** tab, use <https://security.microsoft.com/attacksimulator?viewid=overview>.
- **Reports** tab: Select the **Reports** tab. Or, to go directly to the **Reports** tab, use <https://security.microsoft.com/attacksimulationreport>.

The distribution of insights on the tabs is described in the following table:

|Report|Overview tab|Reports tab|
|---|:---:|:---:|
|[Recent simulations card](#recent-simulations-card)|✔||
|[Recommendations card](#recommendations-card)|✔||
|[Simulation coverage card](#simulation-coverage-card)|✔|✔|
|[Training completion card](#training-completion-card)|✔|✔|
|[Repeat offenders card](#repeat-offenders-card)|✔|✔|
|[Behavior impact on compromise rate card](#behavior-impact-on-compromise-rate-card)|✔|✔|

The rest of this section describes the information that's available on the **Overview** and **Reports** tabs of Attack simulation training.

### Recent simulations card

The **Recent simulations** card on the **Overview** tab shows the last three simulations that you created or ran in your organization.

You can select a simulation to view details.

Selecting **View all simulations** takes you to the **Simulations** tab.

Selecting **Launch a simulation** starts the new simulation wizard. For more information, see [Simulate a phishing attack in Defender for Office 365](attack-simulation-training-simulations.md).

:::image type="content" source="../../media/attack-sim-training-overview-recent-simulations-card.png" alt-text="The Recent simulations card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-recent-simulations-card.png":::

### Recommendations card

The **Recommendations** card on the **Overview** tab suggests different types of simulations to run.

Selecting **Launch now** starts the new simulation wizard with the specified simulation type automatically selected on the **Select technique** page. For more information, see [Simulate a phishing attack in Defender for Office 365](attack-simulation-training-simulations.md).

:::image type="content" source="../../media/attack-sim-training-overview-recommendations-card.png" alt-text="The Recommendations card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-recommendations-card.png":::

### Simulation coverage card

The **Simulation coverage** card on the **Overview** and **Reports** tabs shows the percentage of users in your organization who received a simulation (**Simulated users**) vs. users who didn't receive a simulation (**Non-simulated users**). You can hover over a section in the chart to see the actual number of users in each category.

Selecting **View simulation coverage report** takes you to the [User coverage tab for the Attack simulation report](#user-coverage-tab-for-the-attack-simulation-report).

Selecting **Launch simulation for non-simulated users** starts the new simulation wizard where the users who didn't receive the simulation are automatically selected on the **Target user** page. For more information, see [Simulate a phishing attack in Defender for Office 365](attack-simulation-training-simulations.md).

:::image type="content" source="../../media/attack-sim-training-overview-sim-coverage-card.png" alt-text="The Simulation coverage card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-sim-coverage-card.png":::

### Training completion card

The **Training completion** card on the **Overview** and **Reports** tabs organizes the percentages of users who received trainings based on the results of simulations into the following categories:

- **Completed**
- **In progress**
- **Incomplete**

You can hover over a section in the chart to see the actual number of users in each category.

Selecting **View training completion report** takes you to the [Training completion tab for the Attack simulation report](#training-completion-tab-for-the-attack-simulation-report).

:::image type="content" source="../../media/attack-sim-training-overview-training-complete-card.png" alt-text="The Training completion card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-training-complete-card.png":::

### Repeat offenders card

The **Repeat offenders** card on the **Overview** and **Reports** tabs shows the information about repeat offenders. A _repeat offender_ is a user who was compromised by consecutive simulations. The default number of consecutive simulations is two, but you can change the value on the **Settings** tab of Attack simulation training at <https://security.microsoft.com/attacksimulator?viewid=setting>. For more information, see [Configure the repeat offender threshold](attack-simulation-training-settings.md#configure-the-repeat-offender-threshold).

The chart organizes repeat offender data by [simulation type](attack-simulation-training-simulations.md#select-a-social-engineering-technique):

- **All**
- **Malware Attachment**
- **Link to Malware**
- **Credential Harvest**
- **Link in attachments**
- **Drive-by URL**

Selecting **View repeat offender report** takes you to the [Repeat offenders tab for the Attack simulation report](#repeat-offenders-tab-for-the-attack-simulation-report).

:::image type="content" source="../../media/attack-sim-training-overview-repeat-offenders-card.png" alt-text="The Repeat offenders card on the Overview tab in Attack simulation training in the Microsoft Defender portal" lightbox="../../media/attack-sim-training-overview-repeat-offenders-card.png":::

### Behavior impact on compromise rate card

The **Behavior impact on compromise rate** card on the **Overview** and **Reports** tabs shows how your users responded to your simulations as compared to the historical data in Microsoft 365. You can use these insights to track progress in users threat readiness by running multiple simulations against the same groups of users.

The chart data shows the following information:

- **Actual compromise rate**: The actual percentage of people who were compromised by the simulation (actual users compromised / total number of users in your organization who received the simulation).
- **Predicted compromise rate**: Historical data across Microsoft 365 that predicts the percentage of people who will be compromised by this simulation. To learn more about the predicted compromise rate (PCR), see [Predicted compromise rate](attack-simulation-training-get-started.md#predicted-compromise-rate).

If you hover over a data point in the chart, the actual percentage values are shown.

To see a detailed report, select **View simulations and training efficacy report**. This report is explained [later in this article](#training-efficacy-tab-for-the-attack-simulation-report).

:::image type="content" source="../../media/attack-sim-training-overview-behavior-impact-card.png" alt-text="The Behavior impact on compromise rate card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-behavior-impact-card.png":::

## Attack simulation report

You can open the **Attack simulation report** from the **Overview** tab by selecting the **View ... report** actions that are available on some of the cards on the **Overview** and **Reports** tabs that are described in this article. To go directly to the **Attack simulation report** page, use <https://security.microsoft.com/attacksimulationreport>

### Training efficacy tab for the Attack simulation report

The **Training efficacy** tab is selected by default on the **Attack simulation report** page. This tab provides the same information that's available in the **Behavior impact on compromise rate** card, with additional context from the simulation itself.

:::image type="content" source="../../media/attack-sim-report-training-efficacy-view.png" alt-text="The Training efficacy tab in the Attack simulation report in the Microsoft Defender portal." lightbox="../../media/attack-sim-report-training-efficacy-view.png":::

The chart shows the **Actual compromised rate** and the **Predicted compromise rate**. If you hover over a section in the chart, the actual percentage values for are shown.

The details table below the chart shows the following information. You can sort the simulations by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Simulation name**
- **Simulation technique**
- **Simulation tactics**
- **Predicted compromised rate**
- **Actual compromised rate**
- **Total users targeted**
- **Count of clicked users**

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to filter the results by **Simulation name** or **Simulation Technique**. Wildcards aren't supported.

Use the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export report** button to save the information to a CSV file. The default filename is Attack simulation report - Microsoft Defender.csv, and the default location is the local Downloads folder. If an exported report already exists in that location, the filename is incremented (for example, Attack simulation report - Microsoft Defender (1).csv).

### User coverage tab for the Attack simulation report

On the **User coverage** tab, the chart shows the **Simulated users** and **Non-simulated users**. If you hover over a data point in the chart, the actual values are shown.

:::image type="content" source="../../media/attack-sim-report-user-coverage-view.png" alt-text="The User coverage tab in the Attack simulation report in the Microsoft Defender portal." lightbox="../../media/attack-sim-report-user-coverage-view.png":::

The details table below the chart shows the following information. You can sort the information by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Username**
- **Email address**
- **Included in simulation**
- **Date of last simulation**
- **Last simulation result**
- **Count of clicked**
- **Count of compromised**

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to filter the results by **Username** or **Email address**. Wildcards aren't supported.

Use the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export report** button to save the information to a CSV file. The default filename is Attack simulation report - Microsoft Defender.csv, and the default location is the local Downloads folder. If an exported report already exists in that location, the filename is incremented (for example, Attack simulation report - Microsoft Defender (1).csv).

### Training completion tab for the Attack simulation report

On the **Training completion** tab, the chart shows the number of **Completed**, **In progress**, and **Incomplete** simulations. If you hover over a section in the chart, the actual values are shown.

:::image type="content" source="../../media/attack-sim-report-training-completion-view.png" alt-text="The Training completion tab in the Attack simulation report in the Microsoft Defender portal." lightbox="../../media/attack-sim-report-training-completion-view.png":::

The details table below the chart shows the following information. You can sort the information by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Username**
- **Email address**
- **Included in simulation**
- **Date of last simulation**
- **Last simulation result**
- **Name of most recent training completed**
- **Date completed**
- **All trainings**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the chart and details table by a **Status** values of the trainings: **Completed**, **In progress**, or **All**.

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to filter the results by **Username** or **Email address**. Wildcards aren't supported.

If you select the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export report** button, report generation progress is shown as a percentage of complete. In the dialog that opens, you can choose to open the .csv file, save the .csv file, and remember the selection.

### Repeat offenders tab for the Attack simulation report

A _repeat offender_ is a user who was compromised by consecutive simulations. The default number of consecutive simulations is two, but you can change the value on the **Settings** tab of Attack simulation training at <https://security.microsoft.com/attacksimulator?viewid=setting>. For more information, see [Configure the repeat offender threshold](attack-simulation-training-settings.md#configure-the-repeat-offender-threshold).

On the **Repeat offenders** tab, the chart shows the number of **Repeat offender users** and **Simulated users**.

:::image type="content" source="../../media/attack-sim-report-repeat-offenders-view.png" alt-text="The Repeat offenders tab in the Attack simulation report in the Microsoft Defender portal." lightbox="../../media/attack-sim-report-repeat-offenders-view.png":::

If you hover over a data point in the chart, the actual values are shown.

The details table below the chart shows the following information. You can sort the information by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **User**
- **Simulation types**
- **Simulations**
- **Email address**
- **Last repeat count**
- **Repeat offenses**
- **Last simulation name**
- **Last simulation result**
- **Last training assigned**
- **Last training status**

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the chart and details table by one or more simulation type values:

- **Credential Harvest**
- **Malware Attachment**
- **Link in Attachment**
- **Link to Malware**

When you're finished configuring the filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to filter the results by any of the column values. Wildcards aren't supported.

Use the :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export report** button to save the information to a CSV file. The default filename is Attack simulation report - Microsoft Defender.csv, and the default location is the local Downloads folder. If an exported report already exists in that location, the filename is incremented (for example, Attack simulation report - Microsoft Defender (1).csv).

## Simulation report in Attack simulation training

The simulation report shows the details of in-progress or completed simulations (the **Status** value is **In progress** or **Completed**). To view the simulation report, use any of the following methods:

- On the **Overview** tab of the **Attack simulation training** page at <https://security.microsoft.com/attacksimulator?viewid=overview>, select a simulation from the [Recent simulations card](#recent-simulations-card).

  :::image type="content" source="../../media/attack-sim-training-overview-recent-simulations-card.png" alt-text="The Recent simulations card on the Overview tab in Attack simulation training in the Microsoft Defender portal." lightbox="../../media/attack-sim-training-overview-recent-simulations-card.png":::

- On the **Simulations** tab of the **Attack simulation training** page at <https://security.microsoft.com/attacksimulator?viewid=simulations>, select a simulation by clicking anywhere in the row other than the check box next to the name. For more information, see [View simulation reports](attack-simulation-training-simulations.md#view-simulation-reports).

  - On the **Training** tab of the **Attack simulation training** page at <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>, select the training campaign using either of the following methods:
  - Click anywhere in the row other than the check box next to the name.
  - Select the check box next to the name, and then select :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **View report**.

  For more information, see [View Training campaign reports](attack-simulation-training-training-campaigns.md#view-training-campaign-reports).

The report page that opens contains **Report**, **Users, and **Details** tabs that contain information about the simulation. The rest of this section describes the insights and reports that are available on the **Report** tab.

The sections on the **Report** tab for a simulation are described in the following subsections.

For more information about the **Users** and **Details** tabs, see the following links.

- Simulations:
  - [Users tab](attack-simulation-training-simulations.md#users-tab)
  - [Details tab](attack-simulation-training-simulations.md#details-tab)
- Training campaigns:
  - [Users tab](attack-simulation-training-training-campaigns.md#users-tab)
  - [Details tab](attack-simulation-training-training-campaigns.md#details-tab)

### Simulation report for simulations

This section describes the information in the simulation report for regular simulations (not [Training campaigns](#simulation-report-for-training-campaigns)).

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab.png" alt-text="The Report tab in the simulation report in Attack simulation training." lightbox="../../media/attack-sim-report-simulation-report-tab.png":::

#### Simulation impact section in the report for simulations

The **Simulation impact** section on **Report** tab** for a simulation shows the number and percentage of **Compromised users** and **Users who reported** the message.

If you hover over a section in the chart, the actual numbers for each category are shown.

Select **View compromised users** to go to the [Users tab](attack-simulation-training-simulations.md#users-tab) tab in the report where the results are filtered by **Compromised: Yes**.

Select **View users who reported** to go to the [Users tab](attack-simulation-training-simulations.md#users-tab) tab in the report where the results are filtered by **Reported message: Yes**.

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-simulation-impact.png" alt-text="The Simulation impact section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-simulation-impact.png":::

#### All user activity section in the report for simulations

The **All user activity** section on **Report** tab** for a simulation shows numbers for the possible outcomes of the simulation. The information varies based on the simulation type. For example:

- **Clicked message link** or **Attachment link clicked** or **Attachment opened**
- **Supplied credentials**
- **Read message**
- **Deleted message**
- **Replied to message**
- **Forwarded message**
- **Out of office**

Select **View all users** to go to the [Users tab](attack-simulation-training-simulations.md#users-tab) tab in the report where the results are unfiltered.

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-all-user-activity.png" alt-text="The All users activity section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-all-user-activity.png":::

#### Delivery status section in the report for simulations

The **Delivery status** section on **Report** tab** for a simulation shows the numbers for the possible delivery statuses for the simulation message. For example:

- **Successfully received message**
- **Positive reinforcement message delivered**
- **Just simulation message delivered

Select **View users to whom message delivery failed** to go to the [Users tab](attack-simulation-training-simulations.md#users-tab) tab in the report where the results are filtered by **Simulation message delivery: Failed to deliver**.

Select **View excluded users or groups** to open an **Excluded users or groups** flyout that shows the users or groups that were excluded from the simulation.

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-delivery-status.png" alt-text="The Delivery status section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-delivery-status.png":::

#### Training completion section in the report for simulations

The **Training completion** section on the simulation details page shows the trainings that are required for the simulation, and how many users completed the trainings.

If no trainings were included in the simulation, the only value in this section is **Trainings were not part of this simulation**.

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-training-completion.png" alt-text="The Training completion section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-training-completion.png":::

#### First & average instance section in the report for simulations

The **First & average instance** section on **Report** tab** for a simulation shows information about the time it took to do specific actions in the simulation. For example:

- **First link clicked**
- **Avg. link clicked**
- **First credential entered**
- **Avg. credential entered**

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-first-and-average-instances.png" alt-text="The First & average instance section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-first-and-average-instances.png":::

#### Recommendations section in the report for simulations

The **Recommendations** section on **Report** tab** for a simulation shows recommendations for using Attack simulation training to help secure your organization.

:::image type="content" source="../../media/attack-sim-report-simulation-report-tab-recommendations.png" alt-text="The Recommendations section on the Report tab of a simulation report for a simulation." lightbox="../../media/attack-sim-report-simulation-report-tab-recommendations.png":::

### Simulation report for Training campaigns

This section describes the information in the simulation report for Training campaigns (not [simulations](#simulation-report-for-simulations)).

:::image type="content" source="../../media/attack-sim-report-training-campaign-report-tab.png" alt-text="The Report tab in the Training campaign report in Attack simulation training." lightbox="../../media/attack-sim-report-training-campaign-report-tab.png":::

#### Training completion classification section in the report for Training campaigns

The **Training completion classification** section on **Report** tab** for a Training campaign shows information about the completed Training modules in the Training campaign.

:::image type="content" source="../../media/attack-sim-report-training-campaign-report-tab-training-completion-classification.png" alt-text="The Training completion classification section on the Report tab in the Training campaign report in Attack simulation training." lightbox="../../media/attack-sim-report-training-campaign-report-tab-training-completion-classification.png":::

#### Training completion summary section in the report for Training campaigns

The **Training completion summary** section on **Report** tab** for a Training campaign uses bar graphs show the progression of assigned users through all Training modules in the campaign (number of users / total number of users):

- **Completed**
- **In progress**
- **Not started**
- **Not completed**
- **Previously assigned**

You can hover over a section in the chart to see the actual percentage in each category.

:::image type="content" source="../../media/attack-sim-report-training-campaign-report-tab-training-completion-summary.png" alt-text="The Training completion summary section on the Report tab in the Training campaign report in Attack simulation training." lightbox="../../media/attack-sim-report-training-campaign-report-tab-training-completion-summary.png":::

#### All user activity section in the report for Training campaigns

The **All user activity** section on **Report** tab** for a Training campaign uses a bar graph to shows how main people **Successfully received training notification** (number of users / total number of users).

You can hover over a section in the chart to see the actual numbers in each category.

:::image type="content" source="../../media/attack-sim-report-training-campaign-report-tab-all-user-activity.png" alt-text="The All user activity section on the Report tab in the Training campaign report in Attack simulation training." lightbox="../../media/attack-sim-report-training-campaign-report-tab-all-user-activity.png":::

## Related Links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training-simulations.md)

[create a payload for training your people](attack-simulation-training-payloads.md#create-payloads)
