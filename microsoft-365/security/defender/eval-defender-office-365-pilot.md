---
title: Pilot Microsoft Defender for Office 365, use the evaluation in your production environment
description: Steps to pilot your Evaluation with groups of active and existing users in order to properly test the features of Microsoft Defender for Office 365.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 9/18/2023
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
- Microsoft Defender XDR

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

5. Give the group a **Name** and optional **Description**, and then click Next.

   :::image type="content" source="../../media/mdo-eval/4_mdo-eval-pilot-set-up-basics.png" alt-text="The Set up the basics section." lightbox="../../media/mdo-eval/4_mdo-eval-pilot-set-up-basics.png":::

6. On the remaining pages, assign an owner, add members to the group, set the email address, join-depart restrictions, and other settings.

## Step 2: Configure protection

Some capabilities in Defender for Office 365 are configured and turned on by default, but security operations might want to raise the level of protection from the default.

Some capabilities are *not yet* configured. You have the following options for configuring protection (which are easy to change later):

- **Assign users to preset security policies**: [Preset security policies](../office-365-security/preset-security-policies.md) are the recommended method to quickly assign a uniform level of protection across all of the capabilities. You can choose from **Standard** or **Strict** protection. The settings for Standard and Strict are described in the tables [here](../office-365-security/recommended-settings-for-eop-and-office365.md). The differences between Standard and Strict are summarized in the table [here](../office-365-security/preset-security-policies.md#policy-settings-in-preset-security-policies).

  The advantages of preset security polices are you protect groups of users as quickly as possible using Microsoft's recommended settings based on observations in the datacenters. As new protection capabilities are added and as the security landscape changes, the settings in preset security policies are automatically updated to our recommended settings.

  The disadvantage of preset security policies is you can't customize virtually any of the security settings in preset security policies (for example, you can't change an action from deliver to junk to quarantine, or vice-versa). The exception is entries and optional exceptions for [user impersonation and domain impersonation protection](../office-365-security/anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365), which you must configure manually.

  Also, keep in mind that preset security policies are *always* applied before custom policies. So, if you want to create and use any custom policies, you'll need to exclude users in those custom policies from preset security policies.

- **Configure *custom* protection policies**: If you prefer to configure the environment yourself, compare the default, Standard, and Strict settings in [Recommended settings for EOP and Microsoft Defender for Office 365 security](../office-365-security/recommended-settings-for-eop-and-office365.md). Keep a spreadsheet of where your custom build deviates.

  You can also use the [Configuration analyzer](../office-365-security/configuration-analyzer-for-security-policies.md) to compare the settings in your custom policies to the Standard and Strict values.

For detailed information about choosing preset security policies vs. custom policies, see [Determine your protection policy strategy](../office-365-security/mdo-deployment-guide.md#determine-your-protection-policy-strategy).

### Assign preset security policies

We recommended you begin with the *preset security policies* in EOP and Defender for Office 365 fast by assigning them to specific pilot users or defined groups as part of your evaluation. Preset policies offer a baseline **Standard** protection template or a more aggressive **Strict** protection template, which can be assigned independently.

For example, an EOP condition for pilot evaluations could be applied if the recipients are *members* of a defined *EOP Standard Protection* group, and then managed by adding accounts to, or removing account from, the group.

Likewise, a Defender for Office 365 condition for pilot evaluations could be applied if the recipients are *members* of a defined *Defender for Office 365 Standard Protection* group and then managed by adding / removing accounts via the group.

For complete instructions, see [Use the Microsoft Defender portal to assign Standard and Strict preset security policies to users](../office-365-security/preset-security-policies.md#use-the-microsoft-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

### Configure custom protection policies

The pre-defined *Standard* or *Strict* Defender for Office 365 policy templates give your pilot users the recommended baseline protection. However, you can also build and assign custom protection policies as part of your evaluation.

It's *important* to be aware of the precedence these protection policies take when applied and enforced, as explained in [Order of precedence for preset security policies and other policies](../office-365-security/preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies).

The explanation and table in [Configure protection policies](../office-365-security/mdo-deployment-guide.md#step-2-configure-protection-policies) provides a handy reference for what you need to configure.

## Step 3: Try out capabilities and get familiar with simulation, monitoring, and metrics

Now that your pilot is set up and configured, it's helpful to become familiar with the reporting, monitoring, and attack simulation tools that are unique to Microsoft Defender for Microsoft 365.

|Capability|Description|More information|
|---|---|---|
|Threat Explorer|Threat Explorer is a powerful near real-time tool to help Security Operations teams investigate and respond to threats and displays information about suspected malware and phish in email and files in Office 365, as well as other security threats and risks to your organization.|[Views in Threat Explorer and real-time detections](../office-365-security/threat-explorer-views.md)|
|Attack simulation training|You can use Attack simulation training in the Microsoft Defender portal to run realistic attack scenarios in your organization, which help you identify and find vulnerable users before a real attack impacts your environment.|[Get started using Attack simulation training](../office-365-security/attack-simulation-training-get-started.md)|
|Reports dashboard|On the left navigation menu, click Reports and expand the Email & collaboration heading. The Email & collaboration reports are about spotting security trends some of which will allow you to take action (through buttons like 'Go to submissions'), and others that will show trends. These metrics are generated automatically.|[View email security reports in the Microsoft Defender portal](../office-365-security/reports-email-security.md) <br/><br/> [View Defender for Office 365 reports in the Microsoft Defender portal](../office-365-security/reports-defender-for-office-365.md)|

## Next steps

[Evaluate Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)

Return to the overview for [Evaluate Microsoft Defender for Office 365](eval-defender-office-365-overview.md)

Return to the overview for [Evaluate and pilot Microsoft Defender XDR](eval-overview.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
