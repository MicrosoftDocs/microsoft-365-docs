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
ms.date: 05/05/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Understand policy order in Microsoft Defender for Business

Defender for Business includes [predefined policies](mdb-view-edit-create-policies.md#default-policies-in-defender-for-business) to help ensure the devices your employees use are protected. Your security team can [add new policies](mdb-view-edit-create-policies.md#create-a-new-policy) as well. 

For example, suppose that your security team wants to apply certain settings to some devices, and different settings to other devices. You can do that by adding policies, such as additional next-generation protection policies or firewall policies. As policies are added, policy order comes into play.

## Policy order in Defender for Business

When policies are added, an order of priority is assigned to all of the policies in the group, as shown in the following screenshot:  

:::image type="content" source="media/mdb-deviceconfig-multpolicies.png" alt-text="Screenshot showing multiple policies and policy order column." lightbox="media/mdb-deviceconfig-multpolicies.png":::

The **Order** column lists the priority for each policy. Predefined policies move down in the order of priority when new policies are added. You can edit the order of priority for the policies that you define (select a policy, and then choose **Change order**). You can't change the order of priority for default policies. 

For example, suppose that for your Windows client devices, you have three next-generation protection policies. In this case, your default policy is number 3 in priority. You can change the order of your policies that are numbered 1 and 2, but the default policy will remain number 3 in your list. 

**The important thing to remember about multiple policies is that devices will receive the first applied policy only.** Referring to our earlier example of three next-generation policies, suppose that you have devices that are targeted by all three policies. In this case, those devices receive policy number 1, but won't receive policies numbered 2 and 3. 

## Key points to remember about policy order

- Policies are assigned an order of priority automatically.
- You can change the order of priority for policies that are added, but not for default policies.
- Default policies are given the lowest order of priority as new policies are added.
- Devices receive the first applied policy only, even if those devices are included in multiple policies.

## See also

- [Set up, review, and edit your security policies and settings](mdb-configure-security-settings.md)
- [View or edit policies](mdb-view-edit-create-policies.md)
- [Onboard devices](mdb-onboard-devices.md)