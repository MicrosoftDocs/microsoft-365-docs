---
title: "Configuration analyzer for security policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to use the configuration analyzer to find and fix security policies that contains settings that are below the Standard protection and Strict protection preset security policies."
---

# Configuration analyzer for protection policies in EOP and Office 365 ATP

Configuration analyzer in the Security & Compliance center allows you to find and fix security policies that contain settings that are below the Standard protection and Strict protection profile settings in [preset security policies](preset-security-policies.md).

The following types of policies are analyzed by the configuration analyzer:

- **Exchange Online Protection (EOP) policies**: This includes Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:
  
  - [Anti-spam policies](configure-your-spam-filter-policies.md).
  - [Anti-malware policies](configure-anti-malware-policies.md).
  - [EOP Anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings).

- **Office 365 Advanced Threat Protection (ATP) policies**: This includes organizations with Microsoft 365 E5 or Office 365 ATP add-on subscriptions:

  - ATP anti-phishing policies, which include:

    - The same [spoof settings](set-up-anti-phishing-policies.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies)
    - [Advanced phishing thresholds](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-atp-anti-phishing-policies)

  - [Safe Links policies](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

  - [Safe Attachments policies](recommended-settings-for-eop-and-office365-atp.md#safe-attachments-policy-settings-in-custom-policies-for-specific-users).

The **Standard** and **Strict** policy setting values that are used as baselines are described in [Recommended settings for EOP and Office 365 ATP security](recommended-settings-for-eop-and-office365-atp.md), and are also displayed in the configuration analyzer.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Configuration analyzer** page, use <https://protection.office.com/configurationAnalyzer>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this topic:

  - To use the configuration analyzer **and** make updates to security policies, you need to be a member of one of the following role groups:

    - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

  - For read-only access to the configuration analyzer, you need to be a member of one of the following role groups:

    - **Security Reader** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **View-Only Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

## Use the configuration analyzer in the Security & Compliance Center

In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Configuration analyzer**.

![Configuration analyzer widget on the Threat management \> Policies page](../../media/configuration-analyzer-widget.png)

The configuration analyzer has two tabs:

- **Settings and recommendations**
- **Configuration drift analysis and history**

### Setting and recommendations tab in the configuration analyzer

By default, the tab opens on the comparison to the Standard protection profile. You can switch to compare your policies to the Strict protection profile by clicking **View Strict recommendations**. To switch back, select **View Standard recommendations**.

![Settings and recommendations view in the Configuration analyzer](../../media/configuration-analyzer-settings-and-recommendations-view.png)

By default, the **Policy group/setting name** column contains a collapsed view of the different types of security polices and the number of settings in those policies that need improvement. The types of policies are:

- **Anti-spam**
- **Anti-phishing**
- **Anti-malware**
- **ATP Safe Attachments** (if your subscription includes ATP)
- **ATP Safe Links** (if your subscription includes ATP)

In the default view, everything is collapsed. Next to each policy, a summary of comparison results from your policies (which you can modify) and the settings in the Standard or Strict protection profiles (which you can't modify) are displayed. You'll see the following information:

- **Green**: All settings in all existing policies of that type are at least as secure as the protection profile that you're comparing to.
- **Amber**: A small number of settings in the existing policies of that type are not as secure as the protection profile that you're comparing to.
- **Red**: A significant number of settings in the existing policies of that type are not as secure as the protection profile that you're comparing to. This could be a few settings in may policies or many settings in one policy.

For favorable comparisons, you'll see the text: **All settings follow** \<**Standard** or **Strict**\> **recommendation**. Otherwise, you'll see the number of recommended settings to change.

If you expand **Policy group/setting name**, all of the policies and the associated settings in each specific policy that require attention are revealed. Or, you can expand a specific type of policy (for example, **Anti-spam**) to see just those settings in those types of policies that require attention.

If the comparison results in no recommendations (green), expanding that type of policy reveals nothing. If there are any number of recommendations (amber or red), the settings that require attention are revealed, and corresponding information is revealed in the following columns:


- **Policy**: The names of the policies.

- **Applied to**

- **Current configuration**

- **Last modified**

- **Recommendation**

### Configuration drift analysis and history tab in the configuration analyzer
