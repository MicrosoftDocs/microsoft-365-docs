---
title: Microsoft Teams in Attack simulation training
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
description: Admins can learn about the addition of Microsoft Teams in delivering simulated phishing attacks in in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 3/30/2023
---

# Microsoft Teams in Attack simulation training

[!include[Prerelease information](../../includes/prerelease.md)]

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In organizations with Microsoft Defender for Office 365 Plan 2 or Microsoft 365 Defender, admins can now use Attack simulation training to deliver simulated phishing messages in Microsoft Teams. For more information about attack simulation training, see [Get started using Attack simulation training in Defender for Office 365](attack-simulation-training-get-started.md).

The addition of Teams in Attack simulation training affects the following features:

- [Simulations](attack-simulation-training-simulations.md)
- [Payloads](attack-simulation-training-payloads.md)
- [Simulation automations](attack-simulation-training-simulation-automations.md)

[Payload automations](attack-simulation-training-payload-automations.md), [end-user notifications](attack-simulation-training-end-user-notifications.md), [login pages](attack-simulation-training-login-pages.md), and [landing pages](attack-simulation-training-landing-pages.md) are not affected by Teams in Attack simulation training.

## Changes in simulations for Microsoft Teams

Teams introduces the following changes to viewing and creating simulations as described in [Simulate a phishing attack with Attack simulation training in Defender for Office 365](attack-simulation-training-simulations.md):

- On the **Simulations** tab at <https://security.microsoft.com/attacksimulator?viewid=simulations>, the **Platform** column shows the value **Teams** for simulations that use Teams messages.

- If you select ![Launch a simulation icon.](../../media/m365-cc-sc-create-icon.png) **Launch a simulation** on the **Simulations** tab to create a simulation, the first page of the new simulation wizard is **Select delivery platform** where you can select **Microsoft Teams**. Selecting **Microsoft Teams** introduces the following changes to the rest of the new simulation wizard:

  - On the **[Select technique](attack-simulation-training-simulations.md#select-a-social-engineering-technique)** page, the **Malware Attachment** and **Link in Attachment** social engineering techniques are not available.

  - On the **[Name simulation](attack-simulation-training-simulations.md#name-and-describe-the-simulation)** page, a **Select sender's Microsoft Teams account** section and **Select user account** link are present. Click **Select user account** to find and select the account to use as the source for the Teams message.

  - On the **[Select payload and login page](attack-simulation-training-simulations.md#select-a-payload-and-login-page)**, no payloads are listed by default because there are no built-in payloads for Teams. You need to create a payload for the combination of Teams and the social engineering technique that you selected.

    The differences in creating payloads for Teams are described in the [Changes in payloads for Microsoft Teams](#changes-in-payloads-for-microsoft-teams) section in this article.

  - On the **[Target users](attack-simulation-training-simulations.md#target-users)** page, the following settings are different for Teams:
    - As noted on the page, guest users in Teams are excluded from simulations.
    - If you select **Include only specific users and groups**, **City** is not an available filter in the **Filter users by category** section.

Other settings related to simulations are the same for Teams messages as described in the existing content for email messages.

## Changes in payloads for Microsoft Teams

Whether you create a payload on the **Payloads** page of the **Content library** tab or on the **[Select payload and login page](attack-simulation-training-simulations.md#select-a-payload-and-login-page)** page in the new simulation wizard, Teams introduces the following changes to viewing and creating payloads as described in [Payloads in Attack simulation training in Defender for Office 365](attack-simulation-training-payloads.md):

- On the **Global payloads** and **Tenant payloads** tabs on **Payloads** page of the **Content library** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>, the **Platform** column shows the value **Teams** for payloads that use Teams messages.

  If you click ![Filter payload icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the list of existing payloads, a **Platform** section is available where you can select **Email** and **Teams**.

  As previously described, there are no built-in payloads for Teams, so if you filter by **Status** \> **Teams** on the **Global payloads** tab, the list will be empty.

- If you click ![Create a payload icon.](../../media/m365-cc-sc-create-icon.png) **Create a payload** on the **Tenant payload** tab to create a payload, the first page of the new payload wizard is **Select type** where you can select **Teams**. Selecting **Teams** introduces the following changes to the rest of the new payload wizard:

  - On the **[Select technique](attack-simulation-training-payloads.md#create-payloads)** page, the **Malware Attachment** and **Link in Attachment** social engineering techniques are not available for Teams.
  
  - The **Configure payload** page has the following changes for Teams:
    - **Sender details** section: The only available setting for Teams is **Chat topic** where you enter a tile for the Teams message.
    - The last big section is not named **Email message**, but it functions the same way for Teams messages as it does for email messages:
      - There's an **Import Teams message** button to import an existing plain text message file to use as a starting point.
      - The **Dynamic tag** and **Phishing link** controls are available on the **Text** tab, and **Code** tab is available as with email messages.

Other settings related to payloads are the same for Teams messages as described in the existing content for email messages.

## Changes in simulation automations for Microsoft Teams

Teams introduces the following changes to viewing and creating simulation automations as described in [Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md):

- On the **Simulation automations** page of the **Automations** tab at <https://security.microsoft.com/attacksimulator?viewid=automations>, the following columns are also available:
  - **Type**: Currently, this value is always **Social engineering**.
  - **Platform**: Shows the value **Teams** for payload automations that use Teams messages or **Email** for payload automations that use email messages.

- If you click ![Create automation icon.](../../media/m365-cc-sc-create-icon.png) **Create automation** on the **Simulation automations** page to create a simulation automation, the first page of the new simulation automation wizard is **Select delivery platform** where you can select **Teams**. Selecting **Teams** introduces the following changes to the rest of the new simulation automation wizard:

  - On the [Automation name](attack-simulation-training-simulation-automations.md#name-and-describe-the-simulation-automation) page, the following settings are available for Teams in the **Select method for choosing sender accounts** section:
    - **Manually select**: This value is selected by default. In the **Select sender's Microsoft Teams account** section, click the **Select user account** to find and select the account to use as the source for the Teams message.
    - **Randomize**: Randomly select from the available accounts to use as the source for the Teams message.

  - On the **[Select social engineering techniques](attack-simulation-training-simulation-automations.md#select-one-or-more-social-engineering-techniques)** page, the **Malware Attachment** and **Link in Attachment** social engineering techniques are not available for Teams.

  - On the **[Select payloads and login page](attack-simulation-training-simulation-automations.md#select-payloads-and-login-pages)** page, no payloads are listed by default because there are no built-in payloads for Teams. You might need to create a payload for the combination of Teams and the social engineering techniques that you selected.

    The differences in creating payloads for Teams are described in the [Changes in payloads for Microsoft Teams](#changes-in-payloads-for-microsoft-teams) section in this article.

  - On the **[Target users](attack-simulation-training-simulation-automations.md#target-users)** page, the following settings are different for Teams:
    - As noted on the page, simulation automations that use Teams can target a maximum of 1000 users.
    - if you select **Include only specific users and groups**, **City** is not an available filter in the **Filter users by category** section.

Other settings related to simulation automations are the same for Teams messages as described in the existing content for email messages.
