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

Configuration analyzer in the Security & Compliance center provides a central location to find and fix any of your security policies that contain settings that are below the Standard protection and Strict protection profile settings in [preset security policies](preset-security-policies.md).

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

The **Standard** and **Strict** policy setting values that are used as baselines are described in [Recommended settings for EOP and Office 365 ATP security](recommended-settings-for-eop-and-office365-atp.md).

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

![Configuration analyzer widget on the Threat management \> Policy page](../../media/configuration-analyzer-widget.png)

The configuration analyzer has two main tabs:

- **Settings and recommendations**: You pick Standard or Strict and compare those settings to your existing security policies. In the results, you can adjust the values of your settings to bring them up to the same level as Standard or Strict.

- **Configuration drift analysis and history**: This view allows to track the changes that you've made to your policies based on the results of the configuration analyzer over time.

### Setting and recommendations tab in the configuration analyzer

By default, the tab opens on the comparison to the Standard protection profile. You can switch to the comparison of the Strict protection profile by clicking **View Strict recommendations**. To switch back, select **View Standard recommendations**.

![Settings and recommendations view in the Configuration analyzer](../../media/configuration-analyzer-settings-and-recommendations-view.png)

By default, the **Policy group/setting name** column contains a collapsed view of the different types of security polices and the number of settings in those policies that need improvement (if any). The types of policies are:

- **Anti-spam**
- **Anti-phishing**
- **Anti-malware**
- **ATP Safe Attachments** (if your subscription includes ATP)
- **ATP Safe Links** (if your subscription includes ATP)

In the default view, everything is collapsed. Next to each policy, a summary of comparison results from your policies (which you can modify) and the settings in the corresponding policies for the Standard or Strict protection profiles (which you can't modify) are displayed. You'll see the following information:

- **Green**: All settings in all existing policies are at least as secure as the protection profile that you're comparing to.
- **Amber**: A small number of settings in the existing policies are not as secure as the protection profile that you're comparing to.
- **Red**: A significant number of settings in the existing policies are not as secure as the protection profile that you're comparing to. This could be a few settings in many policies or many settings in one policy.

For favorable comparisons, you'll see the text: **All settings follow** \<**Standard** or **Strict**\> **recommendations**. Otherwise, you'll see the number of recommended settings to change.

If you expand **Policy group/setting name**, all of the policies and the associated settings in each specific policy that require attention are revealed. Or, you can expand a specific type of policy (for example, **Anti-spam**) to see just those settings in those types of policies that require your attention.

If the comparison has no recommendations for improvement (green), expanding the policy reveals nothing. If there are any number of recommendations for improvement (amber or red), the settings that require attention are revealed, and corresponding information is revealed in the following columns:

- The name of the setting that requires your attention. For example, in the previous screenshot, it's the **Bulk email threshold** in an anti-spam policy.

- **Policy**: The name of the affected policy that contains the setting.

- **Applied to**: The number of user that the affected policies are applied to.

- **Current configuration**: The current value of the setting.

- **Last modified**: The date that the policy was last modified.

- **Recommendations**: The value of the setting in the Standard or Strict protection profile. To change the value of the setting in your policy to match the recommended value in the protection profile, click **Adopt**. If the change is successful, you'll see the message: **Recommendations successfully adopted**. Click **Refresh** to see the reduced number of recommendations, and the removal of the specific setting/policy row from the results.

### Configuration drift analysis and history tab in the configuration analyzer

This tab allows you to track the changes that you've made to your custom security policies based on the information in the security analyzer. By default, the following information is displayed:

- **Last modified**
- **Modified by**
- **Setting Name**
- **Policy**
- **Type**

To filter the results, click **Filter**. In the **Filters** flyout that appears, you can select from the following filters:

- **Start time** and **End time** (date)
- **Standard protection** or **Strict protection**

To export the results to a .csv file, click **Export**.
