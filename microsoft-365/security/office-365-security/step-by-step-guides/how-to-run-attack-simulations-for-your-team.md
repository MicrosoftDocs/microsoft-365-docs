---
title: How to run attack simulations for your team
description: The steps to send an Attack Simulation payload to your target users for your team or organization for training. Simulated attacks can help you identify and find vulnerable users, policies, and practices before a real attack impacts your organization.
ms.service: defender-office-365
f1.keywords: 
  - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 01/31/2023
---

# How to run attack simulations for your team

Attack simulation training allows you to run realistic but benign cyber attack scenarios in your organization. Simulated attacks can help you identify and find vulnerable users, policies, and practices before a real attack impacts your organization, using inbuilt or custom training to reduce risk and better educate end users about threats.

## What you need

- Microsoft Defender for Office 365 Plan 2 (included as part of E5)
- Sufficient permissions (Security Administrator role)
- 5-10 minutes to perform the following procedures.

## Send a payload to target users

1. Navigate to [Attack Simulation Training](https://security.microsoft.com/attacksimulator) in your subscription.
1. Choose **Simulations** from the top navigation bar.
1. Select **Launch a simulation**.
1. Pick the technique you'd like to use from the flyout, and select **Next**.
1. Name the Simulation with something relevant / memorable and select **Next**.
1. Pick a relevant payload from the wizard, review the details and customize if appropriate, when you're happy with the choice, select **Next**.
1. Choose who to target with the payload. If you're choosing the entire organization, select that option and then select **Next**.
1. Otherwise, select **Add Users** and then search or filter the users with the wizard. Select Add Users and then **Next**.
1. Under **Select training content preference**, leave the default *Microsoft training experience (Recommended)* or select *Redirect to a custom URL* if you want to use the custom URL. If you don't want to assign any training, then select *No training*.
    - You can either let Microsoft assign training courses by selecting *Assign training for me* or you can choose specific modules with *Select training courses and modules myself*
    - Select a Due Date (30, 15, or 7 days) from the drop-down menu.
    - Select **Next** to continue.
1. Customize the landing page displayed when a user is phished if appropriate, or otherwise leave the Microsoft Default.
    1. Under **Payload indicators**, check the box to add payload indicators to email. Adding payloads helps users to learn how to identify the phishing email. Select *Open preview panel* to view the message.
    1. Select **Next** to continue.
1. Choose if you'd like end user notifications, and if so, select the delivery preferences and customize where needed.
    1. Notice that you can also select *default language* for the notification under the **Select default language** drop-down menu.
1. Select when to launch the simulation, and how long it should be valid for. You can also enable *region aware time zone delivery*. This option delivers simulated attack messages to your employees during *their working hours* based on their region. Select **Next**.
1. Send a test if you're ready. Review the summary of choices. Select **Submit**.

### Further reading

To learn how Attack Simulation works see [Simulate a phishing attack with Attack simulation training - Office 365 | Microsoft Docs](../../office-365-security/attack-simulation-training-simulations.md).
