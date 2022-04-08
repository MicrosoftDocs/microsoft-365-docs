---
title: Understand policy order in Microsoft Defender for Business
description: Learn about order of priority with policies in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 02/24/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Understand policy order in Microsoft Defender for Business

> [!IMPORTANT]
> Microsoft Defender for Business is rolling out to [Microsoft 365 Business Premium](../../business-premium/index.md) customers, beginning March 1, 2022. Defender for Business as a standalone subscription is in in preview, and will roll out gradually to customers and IT Partners who [sign-up here](https://aka.ms/mdb-preview) to request it. Preview includes an [initial set of scenarios](mdb-tutorials.md#try-these-preview-scenarios), and we will be adding capabilities regularly.
> 
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. 

## Policy order in Microsoft Defender for Business

Microsoft Defender for Business includes predefined policies to help ensure the devices your employees use are protected. Your security team can add new policies as well. For example, suppose that you want to apply certain settings to some devices, and different settings to other devices. You can do that by adding policies, such as next-generation protection policies or firewall policies.

As policies are added, you'll notice that an order of priority is assigned. You can edit the order of priority for the policies that you define, but you can't change the order of priority for default policies. For example, suppose that for your Windows client devices, you have three next-generation protection policies. In this case, your default policy is number 3 in priority. You can change the order of your policies that are numbered 1 and 2, but the default policy will remain number 3 in your list. 

**The important thing to remember about multiple policies is that devices will receive the first applied policy only.** Referring to our earlier example of three next-generation policies, suppose that you have devices that are targeted by all three policies. In this case, those devices will receive policy number 1, but won't receive policies numbered 2 and 3. 

>
> **Got a minute?**
> Please take our <a href="https://microsoft.qualtrics.com/jfe/form/SV_0JPjTPHGEWTQr4y" target="_blank">short survey about Microsoft Defender for Business</a>. We'd love to hear from you!
>

## Key points to remember about policy order

- Policies are assigned an order of priority.

- Devices receive the first applied policy only.

- You can change the order of priority for policies.

- Default policies are given the lowest order of priority.

## Next steps

- [Get started using Defender for Business](mdb-get-started.md)

- [Manage devices](mdb-manage-devices.md)

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)