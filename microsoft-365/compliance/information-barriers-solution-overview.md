---
title: Information barriers
description: Learn how to configure information barriers in Microsoft Purview.
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: 
- tier2
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- m365solution-scenario
- highpri
---

# Information barriers

Microsoft 365 enables communication and collaboration across groups and organizations and supports ways to restrict communication and collaboration among specific groups of users when necessary. This may include situations or scenarios where you want to restrict communication and collaboration between two groups to avoid a conflict of interest from occurring in your organization. This may also include situations when you need to restrict communication and collaboration between certain people inside your organization to safeguard internal information.

Microsoft Purview Information Barriers (IB) is supported in Microsoft Teams, SharePoint Online, and OneDrive for Business. A compliance administrator or IB administrator can define policies to allow or prevent communications between groups of users in Microsoft Teams. IB policies can be used for situations like these:

- User in the day trader group should not communicate or share files with the marketing team
- Finance personnel working on confidential company information should not communicate or share files with certain groups within their organization
- An internal team with trade secret material should not call or chat online with people in certain groups within their organization
- A research team should only call or chat online with a product development team

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Configure information barriers

Use the following steps to configure IB for your organization:

![Insider risk solution information barriers steps.](../media/ir-solution-ib-steps.png)

1. Learn about [information barriers](information-barriers.md)
2. Configure [prerequisites and permissions](information-barriers-policies.md#step-1-make-sure-prerequisites-are-met)
3. Segment [users in your organization](information-barriers-policies.md#step-2-segment-users-in-your-organization)
4. Create and configure [IB policies](information-barriers-policies.md#step-3-create-ib-policies)
5. Apply [IB policies](information-barriers-policies.md#step-4-apply-ib-policies)

## More information about information barriers

- [Attributes for IB policies](information-barriers-attributes.md)
- [Edit or remove IB policies](information-barriers-edit-segments-policies.md)
