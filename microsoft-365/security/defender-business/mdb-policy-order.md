---
title: Understand policy order in Microsoft Defender for Business
description: Learn about order of priority with cybersecurity policies to protect your company devices with Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/11/2022
ms.reviewer: jomaun
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Understand policy order in Microsoft Defender for Business

## Policy order in Defender for Business

Defender for Business includes [predefined policies](mdb-view-edit-create-policies.md#default-policies-in-defender-for-business) to help ensure the devices your employees use are protected. Your security team can add new policies as well. For example, suppose that you want to apply certain settings to some devices, and different settings to other devices. You can do that by adding policies, such as next-generation protection policies or firewall policies.

As more policies are added, you'll notice that an order of priority is assigned, as shown in the following screenshot. 

:::image type="content" source="media/mdb-deviceconfig-multpolicies.png" alt-text="Screenshot showing multiple policies and policy order column.":::


You can edit the order of priority for the policies that you define, but you can't change the order of priority for default policies. For example, suppose that for your Windows client devices, you have three next-generation protection policies. In this case, your default policy is number 3 in priority. You can change the order of your policies that are numbered 1 and 2, but the default policy will remain number 3 in your list. 

**The important thing to remember about multiple policies is that devices will receive the first applied policy only.** Referring to our earlier example of three next-generation policies, suppose that you have devices that are targeted by all three policies. In this case, those devices will receive policy number 1, but won't receive policies numbered 2 and 3. 

## Key points to remember about policy order

- Policies are assigned an order of priority.
- Devices receive the first applied policy only.
- You can change the order of priority for policies.
- Default policies are given the lowest order of priority.

## Next steps

- [Get started using Defender for Business](mdb-get-started.md)
- [Manage devices](mdb-manage-devices.md)
- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)