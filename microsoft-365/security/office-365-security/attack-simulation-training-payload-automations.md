---
title: Payload automations for Attack simulation training
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
description: Admins can learn how to use payload automations (payload harvesting) to collect and launch automated simulations for Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 3/29/2023
---

# Payload automations for Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, payload automations (also known as _payload harvesting_) collect information from real-world phishing attack messages that were reported by users in your organization. Although the numbers of these messages are likely low in your organization, you can specify the conditions to look for in phishing attacks (for example, recipients, social engineering technique, sender information, etc.). Attack simulation training will then mimic the messages and payloads used in the attack to automatically launch harmless simulations to targeted users.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see any existing payload automations that you created, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Automations** tab \> and then select **Payload automations**. To go directly to the **Automations** tab where you can select **Payload automations**, use <https://security.microsoft.com/attacksimulator?viewid=automations>.

The following information is shown for each payload automation<sup>\*</sup>:

- **Automation name**
- **Type**: The value is **Payload**.
- **Items collected**
- **Last modified**
- **Status**: The value is **Ready** or **Draft**.

<sup>\*</sup> To see all of the columns, you might need to narrow some columns or zoom out in your browser.

When you select a payload automation from the list, a details flyout appears with the following information:

- **General** tab: Displays basic information about the payload automation.
- **Run history** tab: This tab is available only for payload automations with the **Status** value **Ready**.

## Create payload automations

To create a payload automation, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com/>, go to **Email & collaboration** \> **Attack simulation training** \> **Automations** tab \> **Payload automations**. To go directly to the **Automations** tab where you can select **Payload automations**, use <https://security.microsoft.com/attacksimulator?viewid=automations>.

2. On the **Payload automations** page, click ![Create automation icon.](../../media/m365-cc-sc-create-icon.png) **Create automation** to start the new payload automation wizard..

   :::image type="content" source="../../media/attack-sim-training-sim-automations-create.png" alt-text="The Create simulation button on the Payload automations tab in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-sim-automations-create.png":::

   > [!NOTE]
   > At any point after you name the payload automation during the new payload automation wizard, you can click **Save and close** to save your progress and continue configuring the payload automation later. The incomplete payload automation has the **Status** value **Draft** in **Payload automations** on the **Automations** tab. You can pick up where you left off by selecting the payload automation and clicking ![Edit payload automation icon.](../../media/m365-cc-sc-edit-icon.png) **Edit automation**.
   >
   > Currently, payload harvesting is enabled in GCC environments due to data gathering restrictions.

3. On the **Automation name** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the payload automation.
   - **Description**: Enter an optional detailed description for the payload automation.

   When you're finished on the **Automation name** page, click **Next**.

4. On the **Run conditions** page, select the conditions of the real phishing attack that determines when the automation will run.

   Click ![Add condition icon.](../../media/m365-cc-sc-create-icon.png) **Add condition** and then select from one of the following conditions:

   - **No. of users targeted in the campaign**: In the boxes that appear, configure the following settings:
     - **Equal to**, **Less than**, **Greater than**, **Less than or equal to**, or **Greater than or equal to**.
     - **Enter value**: The number of users that were targeted by the phishing campaign.
   - **Campaigns with a specific phish technique**: In the box that appears, select one of the available values:
     - **Credential Harvest**
     - **Malware Attachment**
     - **Link in Attachment**
     - **Link to Malware**
     - **Phish training**
   - **Specific sender domain**: In the box that appears, enter a sender email domain value (for example, contoso.com).
   - **Specific sender name**: In the box that appears, enter a sender name value.
   - **Specific sender email**: In the box that appears, enter a sender email address.
   - **Specific user and group recipients**: In the box that appears, start typing the name or email address of the user or group. When it appears, select it.

   You can use each condition only once. Multiple conditions use AND logic (\<Condition1\> and \<Condition2\>).

   To add another condition, click ![Add condition icon.](../../media/m365-cc-sc-create-icon.png) **Add condition**.

   To remove a condition after you've added it, click ![Remove icon.](../../media/m365-cc-sc-delete-icon.png).

   When you're finished on the **Run conditions** page, click **Next**.

5. On the **Review automation** page, you can review the details of your payload automation.

   You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished on the **Review automation** page, click **Submit**.

6. On the **New automation created** page, you can use the links to turn on the payload automation or go to the **Simulations** page.

   When you're finished, click **Done**.

7. Back on **Payload automations** in the **Automations** tab, the payload automation that you created is now listed with the **Status** value **Ready**.

## Turn payload automations on or off

You can turn on or turn off payload automations with the **Status** value **Ready**. You can't turn on or turn off incomplete payload automations with the **Status** value **Draft**.

To turn on a payload automation, select it from the list by clicking the check box next to the name. Click the ![Turn on icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** icon that appears, and then click **Confirm** in the dialog.

To turn off a payload automation, select it from the list by clicking the check box next to the name. Click the ![Turn off icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off** icon that appears, and then click **Confirm** in the dialog.

## Modify payload automations

You can only modify payload automations that are turned off.

To modify an existing payload automation on the **Payload automations** page, do one of the following steps:

- Select the payload automation from the list by clicking the check box next to the name. Click the ![Edit automation icon.](../../media/m365-cc-sc-edit-icon.png) **Edit automation** icon that appears.
- Select the payload automation from the list by clicking anywhere in the row except the check box. In the details flyout that opens, on the **General** tab, click **Edit** in the **Name**, **Description**, or **Run conditions** sections.

The payload automation wizard opens with the settings and values of the selected payload automation. The steps are the same as described in the [Create payload automations](#create-payload-automations) section.

## Remove payload automations

To remove a payload automation, select the payload automation from the list by clicking the check box. Click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears, and then click **Confirm** in the dialog.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)

[Gain insights through Attack simulation training](attack-simulation-training-insights.md)
