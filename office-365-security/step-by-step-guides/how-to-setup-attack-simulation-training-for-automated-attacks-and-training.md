---
title: How to setup automated attacks and training within Attack simulation training
description: The steps to automate Attack Simulation training and send a payload to target users. By following this guide, you will learn to create automated attack flows with specific techniques and payloads.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# How to setup automated attacks and training within Attack simulation training

Attack simulation training lets you run benign attack simulations on your organization to assess your phishing risk and teach your users how to better avoid phish attacks. By following this guide, you can configure automated flows with specific techniques and payloads that run when the specified conditions are met, launching simulations against your organization.

## What you'll need

- Microsoft Defender for Office 365 Plan 2 (included as part of E5).
- Sufficient permissions (Security Administrator role).
- 5-10 minutes to perform the steps below.

## Send a payload to target users

1. Navigate to [Attack simulation training](https://security.microsoft.com/attacksimulator).
1. Choose **Simulation automations** from the top navigation bar.
1. Press **Create automation**.
1. Name the Simulation automation with something relevant and memorable. *Next*.
1. Pick the techniques you'd like to use from the flyout. *Next*.
1. Manually select up to 20 payloads you'd like to use for this automation, or alternatively select Randomize. *Next*.
1. If you picked OAuth as a Payload, you need to enter the name, logo and scope (permissions) you'd like the app to have when it's used in a simulation. *Next*.
1. Choose who to target with the payload, if choosing the entire organization highlight the radio button. *Next*.
1. Otherwise, select **Add Users** and then search or filter the users with the wizard, press Add User(s). *Next*.
1. Customize the training if appropriate, otherwise leave Assign training for me (recommended) selected. *Next*.
1. Customize the landing page displayed when a user is phished if appropriate, otherwise leave as the Microsoft Default. *Next*.
1. Choose if you'd like end user notifications, if so select the delivery preferences and customize where appropriate. *Next*.
1. For Simulation schedule, you can either select **Randomized** or **Fixed**, the recommended option is Randomized, once selected, select *Next*.
1. Depending on your choice of Randomized or Fixed, the schedule details may differ, but select preferences on the choice, including the start and end dates of the automation. *Next*.
1. For **Launch Details**, select any final options you want, such as using unique payloads, or targeting repeat offenders and then select *Next*.
1. **Submit** and the Simulation automation is setup.

## Learn More

Full guidance can be found at [Simulation automations for Attack simulation training - Office 365 | Microsoft Docs](../../office-365-security/attack-simulation-training-simulation-automations.md).
