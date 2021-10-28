---
title: Gradual device onboarding with Microsoft Defender for Business
description: Learn how gradual device onboarding works with Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/28/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Gradual device onboarding with Microsoft Defender for Business

If you are using Microsoft Intune (part of Microsoft Endpoint Manager) to onboard devices to Microsoft Defender for Business, you can choose to onboard selected devices. We call this process gradual device onboarding.

## See how many devices are not onboarded yet

If you're using Microsoft Endpoint Manager to manage your devices, you'll have an **Onboarding** card in the Microsoft 365 Defender portal. The card shows the number of devices that are in use at your company, and how many of those devices are not onboarded yet.

:::image type="content" source="media/mdb-intune-onboarded.png" alt-text="Card showing number of devices onboarded":::

To onboard more devices, select the **Onboard more devices** link in the card. This action takes you to Microsoft Endpoint Manager, where you can create a device configuration profile. Alternately, you can use the following procedure.

## Create a device configuration profile to onboard more devices

:::image type="content" source="media/mdb-mem-device-config-mde-sensor.png" alt-text="Screenshot of device onboarding in Microsoft Endpoint Manager.":::

1. Go to Microsoft Endpoint Manager ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)) and sign in.

2. In the navigation pane, choose **Endpoint security**, and then under **Setup**, choose **Microsoft Defender for Endpoint**.

3. Scroll down to where you see the card that lists devices with and without the Defender for Endpoint sensor. Select **Create a device configuration profile to configure Microsoft Defender for Endpoint sensor**.

4. Set up your policy. If you need help, see [Create the device configuration profile to onboard Windows devices](/mem/intune/protect/advanced-threat-protection-configure).

After the policy is configured, users will be prompted to onboard their devices to Defender for Business.

## Next steps

Proceed to one or more of the following tasks:

- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)

- [Get started using Microsoft Defender for Business](mdb-get-started.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)