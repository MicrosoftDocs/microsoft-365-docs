---
title: Set up and configure Microsoft Defender for Business
description: See how to set up your Defender for Business cybersecurity solution. Onboard devices, review your policies, and edit your settings as needed.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 02/14/2023
ms.reviewer: efratka
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
---

# Set up and configure Microsoft Defender for Business

Defender for Business provides a streamlined setup and configuration experience, designed especially for the small and medium-sized business. Use this article as a guide.

> [!TIP]
> If you used the [setup wizard](mdb-use-wizard.md), then you've already completed several steps of your basic setup process. In this case, you can:
> - [Onboard more devices](mdb-onboard-devices.md)
> - [Configure your security policies and settings](mdb-configure-security-settings.md)
> - [Visit your Microsoft Defender Vulnerability Management dashboard](mdb-view-tvm-dashboard.md)

## The setup and configuration process

The following diagram depicts the overall setup and configuration process for Defender for Business. 

> [!TIP]
> If you used the setup wizard, then you've likely already completed steps 1-3, and possibly step 4. 

:::image type="content" source="media/mdb-setup-process.png" alt-text="Setup and configuration for Defender for Business.":::

| Step  | Article | Description  |
|---------|---------|--------|
| 1 | [Get Defender for Business](get-defender-business.md) | Start a trial or paid subscription today. You can choose from the standalone version of Defender for Business, or get it as part of Microsoft 365 Business Premium. See [Get Microsoft Defender for Business](get-defender-business.md). |
| 2 | [Add users and assign licenses](mdb-add-users.md) | Assign a license for Defender for Business (or Microsoft 365 Business Premium) to each member of your organization to protect their devices. You'll also want to make sure multifactor authentication is enabled for all users. See [Add users and assign licenses in Microsoft Defender for Business](mdb-add-users.md). |
| 3 | [Assign security roles](mdb-roles-permissions.md)     | People on your security team need certain permissions to perform tasks, such as reviewing detected threats & remediation actions, viewing & editing policies, onboarding devices, and using reports. You can grant these permissions through roles. See [Assign roles and permissions](mdb-roles-permissions.md). <br/><br/>You can also set up email notifications to let your security team know about incidents and vulnerabilities as they arise. See [Set up email notifications](mdb-email-notifications.md).       |
| 4 | [Onboard devices](mdb-onboard-devices.md)     | You can onboard devices by downloading a script from the Microsoft 365 Defender portal, and then running that script on devices to onboard. Or, if your subscription includes Microsoft Intune, you can use it to enroll devices. See [Onboard devices to Defender for Business](mdb-onboard-devices.md).         |
| 5 | [Review and edit your security settings and policies](mdb-configure-security-settings.md) | You can choose from several options to configure your security settings and policies, such as the [simplified configuration process](mdb-simplified-configuration.md) in Defender for Business or Microsoft Intune. See [Configure your security settings and policies](mdb-configure-security-settings.md). |

> [!IMPORTANT]
> If you have Microsoft 365 Business Premium, you have additional capabilities to set up and configure. See [Microsoft 365 Business Premium – productivity and cybersecurity for small business](../../business-premium/index.md).

## Next steps

1. [Get and provision Defender for Business](get-defender-business.md).
2. [Add users and assign licenses](mdb-add-users.md). 
3. [Assign security roles and permissions for your security team](mdb-roles-permissions.md).
4. [Onboard devices](mdb-onboard-devices.md).
5. [View and edit your security policies and settings](mdb-configure-security-settings.md).
