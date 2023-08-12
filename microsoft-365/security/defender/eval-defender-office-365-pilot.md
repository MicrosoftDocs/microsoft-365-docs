---
title: Pilot Microsoft Defender for Office 365, use the evaluation in your production environment
description: Steps to pilot your Evaluation with groups of active and existing users in order to properly test the features of Microsoft Defender for Office 365.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 05/25/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.custom: admindeeplinkEXCHANGE
ms.topic: how-to
---

# Pilot Microsoft Defender for Office 365

**Applies to:**
- Microsoft 365 Defender

This article is [Step 3 of 3](eval-defender-office-365-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Office 365. For more information about this process, see the [overview article](eval-defender-office-365-overview.md).

Use the following steps to set up and configure the pilot for Microsoft Defender for Office 365.

:::image type="content" source="../../media/defender/m365-defender-office-pilot.png" alt-text="The steps for creating the pilot in the Microsoft Defender for Office 365 portal." lightbox="../../media/defender/m365-defender-office-pilot.png":::

- [Step 1: Create pilot groups](#step-1-create-pilot-groups)
- [Step 2: Configure protection](#step-2-configure-protection)
- [Step 3: Try out capabilities — Get familiar with simulation, monitoring, and metrics](#step-3-try-out-capabilities-and-get-familiar-with-simulation-monitoring-and-metrics)

When you evaluate Microsoft Defender for Office 365, you might choose to pilot specific users before enabling and enforcing policies for your entire organization. Creating distribution groups can help manage the deployment processes. For example, create groups such as *Defender for Office 365 Users - Standard Protection*, *Defender for Office 365 Users - Strict Protection*, *Defender for Office 365 Users - Custom Protection*, or *Defender for Office 365 Users - Exceptions*.

It might not be evident why 'Standard' and 'Strict' are the terms used for these groups, but that will become clear when you explore more about Defender for Office 365 security presets. Naming groups 'custom' and 'exceptions' speak for themselves, and though most of your users should fall under *standard* and *strict*, custom and exception groups will collect valuable data for you regarding managing risk.

## Step 1: Create pilot groups

Distribution groups can be created and defined directly in Exchange Online or synchronized from on-premises Active Directory.

1. Sign in to the Exchange Admin Center (EAC) at <https://admin.exchange.microsoft.com> using an account that has been granted Recipient Administrator role or been delegated group management permissions.
2. Go to **Recipients** \> **Groups**.

   :::image type="content" source="../../media/mdo-eval/1_mdo-eval-pilot.png" alt-text=" The Groups menu item to be clicked." lightbox="../../media/mdo-eval/1_mdo-eval-pilot.png":::

3. On the **Groups** page, select ![Add a group icon.](../../media/m365-cc-sc-add-internal-icon.png) **Add a group**.

   :::image type="content" source="../../media/mdo-eval/2_mdo-eval-pilot-add-group.png" alt-text="The Add a group option to be clicked." lightbox="../../media/mdo-eval/2_mdo-eval-pilot-add-group.png":::

4. For group type, select **Distribution**, and then click **Next**.

   :::image type="content" source="../../media/mdo-eval/3-mdo-eval-pilot-group-type.png" alt-text=" The Choose a group type section." lightbox="../../media/mdo-eval/3-mdo-eval-pilot-group-type.png":::

5. Give the group a **Name** and and optional **Description**, and then click Next.

   :::image type="content" source="../../media/mdo-eval/4_mdo-eval-pilot-set-up-basics.png" alt-text="The Set up the basics section." lightbox="../../media/mdo-eval/4_mdo-eval-pilot-set-up-basics.png":::

6. On the remaining pages, assign an owner, add members to the group, set the email address, join-depart restrictions, and other settings.

## Step 2: Configure protection

Some capabilities in Defender for Office 365 are configured and turned on by default, but security operations might want to raise the level of protection from the default.

Some capabilities are *not yet* configured. You have the following options for configuring protection:

- **Assign users to preset security policies**: [Preset security policies](../office-365-security/preset-security-policies.md) are provided as a method to quickly assign a uniform level of protection across all of the capabilities. You can choose from **Standard** or **Strict** protection. The advantage here is that you protect groups of users as quickly as possible. This disadvantage here is that you can't customize most of the settings in preset security policies (for example, you can't change an action from **Deliver to recipients' Junk Email folders** to **Quarantine** or vice-versa). Also keep in mind that preset security policies are *always* applied before custom policies. So, if you want to create and use any custom policies, you'll need to exclude users in those custom policies from preset security policies.

- **Configure *custom* protection policies**: If you prefer to configure the environment yourself, you can quickly achieve a *baseline* of protection by following the guidance in [Protect against threats](../office-365-security/protect-against-threats.md). With this approach, you get to learn more about the settings that are configurable. And, you can fine-tune the policies later.

  You can also build and assign custom protection policies as part of your evaluation. Before you start customizing policies, it's important to understand the precedence in which these protection policies are applied and enforced. Security operations will need to create and/or configure some policies, even if when the preset is applied.

- **Assign preset security policies automatically**: [Preset security policies](../office-365-security/preset-security-policies.md) are provided as a method to quickly assign a uniform level of protection across all of the capabilities. You can choose from ***Standard*** or ***Strict***. A good approach is to start with preset security policies and then fine-tune the policies as you learn more about the capabilities and your own unique threat environment. The advantage here is that you protect groups of users as quickly as possible, with the ability to tweak protection afterward. (This method is recommended.)
- **Configure baseline protection manually**: If you prefer to configure the environment yourself, you can quickly achieve a *baseline* of protection by following the guidance in [Protect against threats](../office-365-security/protect-against-threats.md). With this approach, you get to learn more about the settings that are configurable. And, you can fine-tune the policies later.
- **Configure *custom* protection policies**: You can also build and assign custom protection policies as part of your evaluation. Before you start customizing policies, it's important to understand the precedence in which these protection policies are applied and enforced. Security ops will need to create some policies even if when the preset is applied, in specific in order to define security policies for Safe Links and Safe Attachments.

> [!IMPORTANT]
> **If you need to configure custom protection policies**, you should examine the values that make up the **Standard** and **Strict** security definitions here: [Recommended settings for EOP and Microsoft Defender for Office 365 security](../office-365-security/recommended-settings-for-eop-and-office365.md). Default values, as seen before any configuration takes place are also listed. Keep a spreadsheet of where your custom build deviates.

### Assign preset security policies

We recommended you begin with the *recommended baseline policies* when evaluating MDO and then refine them as needed over the course of your evaluation period.

You can enable preset security policies in EOP and Defender for Office 365 fast, and assign them to specific pilot users or defined groups as part of your evaluation. Preset policies offer a baseline **Standard** protection template or a more aggressive **Strict** protection template, which can be assigned independently.

For example, an EOP condition for pilot evaluations could be applied if the recipients are *members* of a defined *EOP Standard Protection* group, and then managed by adding accounts to, or removing account from, the group.

Likewise, a Defender for Office 365 condition for pilot evaluations could be applied if the recipients are *members* of a defined *Defender for Office 365 Standard Protection* group and then managed by adding / removing accounts via the group.

For complete instructions, see [Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users](../office-365-security/preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

### Configure custom protection policies

The pre-defined *Standard* or *Strict* Defender for Office 365 policy templates give your pilot users the recommended baseline protection. However, you can also build and assign custom protection policies as part of your evaluation.

It's *important* to be aware of the precedence these protection policies take when applied and enforced, as explained in [Order and precedence of email protection - Office 365](../office-365-security/how-policies-and-protections-are-combined.md) and [Order of precedence for preset security policies and other policies](../office-365-security/preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies).

The table below provides references and more guidance for configuring and assigning custom protection policies:

|Policy|Description|Included in preset<br>security policies?|Default policy<br>available?|Reference|
|---|---|:---:|:---:|---|
|Connection filter policies|Identify good or bad source email servers by IP address.|No|Yes|[Configure the default connection filter policy in EOP](../office-365-security/connection-filter-policies-configure.md)|
|Outbound spam filter policies|Specify outbound message rate limits and control external email forwarding.|No|Yes|[Configure outbound spam filtering in EOP](../office-365-security/outbound-spam-policies-configure.md)|
|Anti-malware policies|Protect users from email malware including what actions to take and who to notify if malware is detected.|Yes|Yes|[Configure anti-malware policies in EOP](../office-365-security/anti-malware-policies-configure.md)|
|Anti-spam policies|Protect users from email spam including what actions to take if spam is detected.|Yes|Yes|[Configure anti-spam policies in Defender for Office 365](../office-365-security/anti-spam-policies-configure.md)|
|Anti-spoofing protection|Protect users from spoofing attempts using spoof intelligence and spoof intelligence insights.|Yes|Yes|[Configure spoof intelligence in Defender for Office 365](../office-365-security/anti-spoofing-spoof-intelligence.md) <br><br> [Configure anti-phishing policies in EOP](../office-365-security/anti-phishing-policies-eop-configure.md)|
|Impersonation protection|Protect users from phishing attacks and configure safety tips on suspicious messages|Yes, but some configuration required.|Yes, but some configuration required.|[Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](../office-365-security/anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) <br><br> [Impersonation insight in Defender for Office 365](../office-365-security/anti-phishing-mdo-impersonation-insight.md) <br><br> [Configure anti-phishing policies in Microsoft Defender for Office 365](../office-365-security/anti-phishing-policies-mdo-configure.md)|
|Safe Attachments policies|Protect users from malicious content in email attachments and files in SharePoint, OneDrive, and Teams.|Yes|Effectively, via Built-in protection|[Set up Safe Attachment policies in Defender for Office 365](../office-365-security/safe-attachments-policies-configure.md)|
|Safe Links policies|Protect users from opening and sharing malicious links in email messages or supported Office apps.|Yes|Effectively, via Built-in protection|[Set up Safe Links policies in Defender for Office 365](../office-365-security/safe-links-policies-configure.md)|

## Step 3: Try out capabilities and get familiar with simulation, monitoring, and metrics

Now that your pilot is set up and configured, it's helpful to become familiar with the reporting, monitoring, and attack simulation tools that are unique to Microsoft Defender for Microsoft 365.

|Capability|Description|More information|
|---|---|---|
|Threat Explorer|Threat Explorer is a powerful near real-time tool to help Security Operations teams investigate and respond to threats and displays information about suspected malware and phish in email and files in Office 365, as well as other security threats and risks to your organization.|[Views in Threat Explorer and real-time detections](../office-365-security/threat-explorer-views.md)|
|Attack simulation training|You can use Attack simulation training in the Microsoft 365 Defender portal to run realistic attack scenarios in your organization, which help you identify and find vulnerable users before a real attack impacts your environment.|[Get started using Attack simulation training](../office-365-security/attack-simulation-training-get-started.md)|
|Reports dashboard|On the left navigation menu, click Reports and expand the Email & collaboration heading. The Email & collaboration reports are about spotting security trends some of which will allow you to take action (through buttons like 'Go to submissions'), and others that will show trends. These metrics are generated automatically.|[View email security reports in the Microsoft 365 Defender portal](../office-365-security/reports-email-security.md) <br><br> [View Defender for Office 365 reports in the Microsoft 365 Defender portal](../office-365-security/reports-defender-for-office-365.md)|

## Next steps

[Evaluate Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)

Return to the overview for [Evaluate Microsoft Defender for Office 365](eval-defender-office-365-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
