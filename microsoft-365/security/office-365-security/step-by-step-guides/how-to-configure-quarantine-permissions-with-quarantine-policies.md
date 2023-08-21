---
title: How to configure quarantine permissions and policies
description: The steps to configure quarantine policies and permissions across different groups, including AdminOnlyPolicy, limited access, full access, and providing security admins and users with a simple way to manage false positive folders.
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

# How to configure quarantine permissions and policies

Providing security admins and users with a very simple way to manage false positive folders is vital given the increased demand for a more aggressive security posture with the evolution of hybrid work. Taking a prescriptive approach, admins and users can achieve this with the guidance below.

> [!TIP]
> For a short video aimed at admins trying to set quarantine permissions and policies, [see this link](https://www.youtube.com/watch?v=vnar4HowfpY). If you are an end user opt for this [1 minute overview](https://www.youtube.com/watch?v=s-vozLO43rI) of the process.

## What you will need

- Sufficient permissions (Security Administrator role)
- 5 minutes to perform the steps below.

## Deciding between built-in or custom quarantine policies.

Our custom policies give admins the ability to decide what items their users can triage in the ***False positive*** folder with an extended ability of allowing the user to request the *release* of those items from the folder.

1. Decide what verdicts category (bulk, spam, phish, high confidence phish, or malware) of items you want your user to triage and not triage.
1. For those categories that you don't want the users to triage, assign the items to the **AdminOnlyPolicy**. As for the category you want users to triage with limited access, you can *create a custom policy* with a request release access and assign users to that category.
1. It's **strongly recommended** that malware and high confidence phish items be assigned to **AdminOnlyPolicy**, regular confidence phish items be assigned *limited access with request release*, while bulk and spam can be left as full access for users.

> [!IMPORTANT]
> For more information on how granular custom policies can be created, see [Quarantine policies - Office 365 | Microsoft Docs](../../office-365-security/quarantine-policies.md).

## Assigning quarantine policies and enabling notification with organization branding

Once it has been decided the categories of items users can triage or not-triage, and created the corresponding quarantine policies, admins should to assign these policies to the respective users and enable notifications.

1. Identify the users, groups, or domains that you would like to include in the *full access* category vs. the *limited access* category, versus the *Admin-Only* category.
1. Sign in to the [Microsoft Security portal](https://security.microsoft.com).
1. On the left nav, under **Email & collaboration**, select **Policies & rules**.
1. Select **Threat policies**.
1. Select each of the following: **Anti-spam policies**, **Anti-phishing policy**, **Anti-Malware policy**.
1. Select **Create policy** and choose **Inbound**.
1. Add policy Name, users, groups, or domains to apply the policy to, and **Next**.
1. In the **Actions** tab, select **Quarantine message** for categories. You will notice an additional panel for *select quarantine policy*, use that dropdown to select the quarantine policy you created earlier.
1. Move on to the **Review** section and click the **Confirm** button to create the new policy.
1. Repeat these same steps for the other policies: **Anti-phishing policy**, **Anti-Malware policy**, and **Safe Attachment policy**.
> [!TIP]
> For more detailed information on what you've learned so far, see [Configure spam filter policies - Office 365](../../office-365-security/anti-spam-policies-configure.md)| [Configure anti-phishing policies in EOP](../../office-365-security/anti-phishing-policies-eop-configure.md) | [Configure anti-malware policies](../../office-365-security/anti-malware-policies-configure.md)| [Set up Safe Attachments policies in Microsoft Defender for Office 365](../../office-365-security/safe-attachments-policies-configure.md)

## Next Steps

- Use **Global policy** available in quarantine policy to enable your organization branding logo, display name, and disclaimer.
- Also set the **User frequency to 1 day** for the quarantine notification.

## More information

Learn more about organization branding and notification settings here [Quarantine policies - Office 365 | Microsoft Docs](../../office-365-security/quarantine-policies.md)

