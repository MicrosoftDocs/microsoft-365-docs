---
title: "Protect against malware and other threats with Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: other
ms.date: 09/15/2022
ms.localizationpriority: high
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier1
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Get help with increasing the level of protection in Microsoft 365 Business Premium"
---

# Protect against malware and other cyberthreats with Microsoft 365 Business Premium

In this objective, you increase your threat protection with Microsoft 365 Business Premium. It's critical to protect your business against phishing, malware, and other threats. This article includes information about:

- [Preset security policies](#review-and-apply-preset-security-policies) that can save a lot of time in setup and configuration.
- [Custom security policies](#create-custom-security-policies) that you can define to suit your business needs.
- [How to adjust your sharing settings for SharePoint and OneDrive files and folders](#set-sharing-settings-for-sharepoint-and-onedrive-files-and-folders).
- [Alert policies](#review-your-alert-policies) that monitor specific files and how they are used.
- [Manage calendar sharing](#manage-calendar-sharing) to enable people to schedule meetings appropriately.
- [Your next objectives](#next-objectives).

## Review and apply preset security policies

Your subscription includes [preset security policies](../security/office-365-security/preset-security-policies.md) that use recommended settings for anti-spam, anti-malware, and anti-phishing protection. By default, built-in protection is enabled; however, consider applying standard or strict protection for increased security.

:::image type="content" source="media/m365bp-presetsecuritypolicies.png" alt-text="Screenshot of preset security policies.":::

> [!NOTE]
> Preset security policies are not the same thing as [security defaults](m365bp-conditional-access.md#security-defaults). Typically, you'll be using *either* security defaults *or* [Conditional Access](m365bp-conditional-access.md#conditional-access) first, and then you'll add your security policies. [Preset security policies](#what-are-preset-security-policies) simplify the process of adding your security policies. You can also [add your own custom policies](#create-custom-security-policies). 

### What are preset security policies?

Preset security policies provide protection for your email and collaboration content. These policies consist of:

- *Profiles*, which determine the level of protection
- *Policies* (such as anti-spam, anti-malware, anti-phishing, spoof settings, impersonation, Safe Attachments, and Safe Links)
- *Policy settings* (such as groups, users, or domains to receive the policies and any exceptions)

The following table summarizes the levels of protection and preset policy types.

| Level of protection | Description |
|:---|:---|
| **Standard protection** <br/>(*recommended for most businesses*) | Standard protection uses a baseline profile that's suitable for most users. Standard protection includes anti-spam, anti-malware, anti-phishing, spoof settings, impersonation settings, Safe Links, and Safe Attachments policies.  |
| **Strict protection**  | Strict protection includes the same kinds of policies as standard protection, but with more stringent settings. If your business must meet additional security requirements or regulations, consider applying strict protection to at least your priority users or high value targets. |
| **Built-in protection** | Protects against malicious links and attachments in email. Built-in protection is enabled and applied to all users by default.  |

> [!TIP]
> You can specify the users, groups, and domains to receive preset policies, and you can define certain exceptions, but you cannot change the preset policies themselves. If you want to use different settings for your security policies, you can create your own custom policies to suit your company's needs.

### Policy order of priority

If users are assigned multiple policies, an order of priority is used to apply the policies. The order of priority works as follows:

1. **Strict protection** receives the highest priority and overrides all other policies.

2. **Standard protection** 

3. **Custom security policies**

4. **Built-in protection** receives the lowest priority and is overridden by strict protection, standard protection, and custom policies.

Strict protection overrides all other policies, and built-in protection is overridden by the other policies. 

To learn more about preset security policies, see [What preset security policies are made of](../security/office-365-security/preset-security-policies.md#what-preset-security-policies-are-made-of).

### How do I assign preset security policies to users?

> [!IMPORTANT]
> Before you begin, make sure you have one of the following roles assigned in Exchange Online (which is included in your subscription):
> 
> - Global Administrator
> - Organization Management
> - Security Administrator
> 
> To learn more, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo) and [About admin roles](../admin/add-users/about-admin-roles.md).

To assign preset security policies, follow these steps:

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. (To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.)

3. On the **Preset security policies** page, in either the **Standard protection** or **Strict protection** section, change the toggle from **Disabled** to **Enabled**, and then select **Manage**.

4. The **Apply Standard protection** or **Apply Strict protection** wizard starts in a flyout. On the **EOP protections apply to** page, identify the internal recipients that the policies apply to (recipient conditions):
   - **Users**
   - **Groups**
   - **Domains**

   Click in the appropriate box, start typing a value, and then select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select the **Remove** icon next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, type an asterisk (\*) by itself to see all available values.

   To specify an exclusion, select the **Exclude these users, groups, and domains** checkbox, and then specify users, groups, or domains to exclude.

   When you're finished, select **Next**.

5. On the **Defender for Office 365 protections apply to** page to identify the internal recipients that the policies apply to (recipient conditions). Specify users, groups, and domains just like what you did in the previous step.

   When you're finished, click **Next**.

6. On the **Review and confirm your changes** page, verify your selections, and then select **Confirm**.

> [!TIP]
> To learn more about assigning preset security policies, see the following articles:
> - [Assign preset security policies to users](../security/office-365-security/preset-security-policies.md#assign-preset-security-policies-to-users)
> - [Recommended settings for email and collaboration content](../security/office-365-security/recommended-settings-for-eop-and-office365.md) (Microsoft 365 Business Premium includes Exchange Online Protection and Microsoft Defender for Office 365 Plan 1)

## Create custom security policies

The [preset security policies](#what-are-preset-security-policies) described earlier in this article provide strong protection for most businesses. However, you're not limited to using preset security policies only. You can define your own custom security policies to suit your company's needs. 

Use our quick-start guide, [Protect against threats](../security/office-365-security/protect-against-threats.md), to get started creating your own custom policies. The guidance not only walks you through how to set up your own security policies, it also provides recommended settings to use as a starting point for:

- [Antimalware protection](../security/office-365-security/protect-against-threats.md#part-1---anti-malware-protection-in-eop)
- [Advanced antiphishing protection](../security/office-365-security/protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365)
- [Antispam protection](../security/office-365-security/protect-against-threats.md#part-3---anti-spam-protection-in-eop)
- [Safe Links and Safe Attachments](../security/office-365-security/protect-against-threats.md#part-4---protection-from-malicious-urls-and-files-safe-links-and-safe-attachments-in-defender-for-office-365)

## Set sharing settings for SharePoint and OneDrive files and folders

By default, sharing levels are set to the most permissive level for both SharePoint and OneDrive. We recommend changing the default settings to better protect your business.

1. Go to <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing** in the SharePoint admin center</a>, and sign in with an account that has [admin permissions for your organization](/sharepoint/sharepoint-admin-role).

2. Under **External sharing**, specify the level of sharing. (We recommend using **Least permissive** to prevent external sharing.)

3. Under **File and folder links**, select an option (such as **Specific people**). Then choose whether to grant View or Edit permissions by default for shared links (such as **View**).

4. Under **Other settings**, select the options you want to use.

5. Then choose **Save**.

> [!TIP]
> To learn more about these settings, see [Manage sharing settings](/sharepoint/turn-external-sharing-on-or-off).

## Review your alert policies

Alert policies are useful for tracking user and admin activities, potential malware threats, and data loss incidents in your business. Your subscription includes a set of default policies, but you can also create custom ones. For example, if you store an important file in SharePoint that you don't want anyone to share externally, you can create a notification that alerts you if someone does share it.

The following image shows some of the default policies that are included with Microsoft 365 Business Premium.

![Default alert policies included with Microsoft 365.](../media/alertpolicies.png)

### View your alert policies

1. Go to the Microsoft Purview compliance portal at [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in.

2. In the navigation pane, choose **Policies**, and then choose **Alert policies**.

3. Select an individual policy to view more details or to edit the policy. The following image shows a list of alert policies with one policy selected:

   :::image type="content" source="media/selected-alert-policy.png" lightbox="media/selected-alert-policy.png" alt-text="Screenshot of a selected alert policy.":::

> [!TIP]
> For more information, see [alert policies](../compliance/alert-policies.md).

### How to view alerts

You can view your alerts in either the Microsoft 365 Defender portal or the Microsoft Purview compliance portal.

| Type of alert  | What to do  |
|---------|---------|
| Security alert, such as when a user clicks a malicious link, an email is reported as malware or phish, or a device is detected as containing malware     | Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and under **Email & collaboration** select **Policies & rules** > **Alert policy**. Alternatively, you can go directly to <https://security.microsoft.com/alertpolicies>. |
| Compliance alert, such as when a user shares sensitive or confidential information (data loss prevention alert) or there's an unusual volume of external file sharing (information governance alert)    | Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>, and then select **Policies** > **Alert** > **Alert policies**.  |

For more information, see [View alerts](../compliance/alert-policies.md#view-alerts).

## Manage calendar sharing

You can help people in your organization share their calendars appropriately for better collaboration. You can manage what level of detail they can share, such as by limiting the details that are shared to free/busy times only.

1. Go [Org settings in the Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=2053743) and sign in.

2. Choose **Calendar**, and choose whether people in your organization can share their calendars with people outside who have Office 365 or Exchange, or with anyone. We recommend clearing the **External sharing** option. If you choose to share calendars with anyone option, you can choose to also share free/busy information only.

3. Choose **Save changes** on the bottom of the page.

   The following image shows that calendar sharing is not allowed.

   ![Screenshot of showing external calendar sharing as not allowed.](../media/nocalendarsharing.png)

   The following image shows the settings when calendar sharing is allowed with an email link with only free/busy information.

   ![Screenshot of calendar free/busy sharing with anyone.](../media/sharefreebusy.png)

If your users are allowed to share their calendars, see [these instructions](https://support.office.com/article/7ecef8ae-139c-40d9-bae2-a23977ee58d5) for how to share from Outlook on the web.

## Next objectives

Proceed to:

- [Set up unmanaged (BYOD) devices](m365bp-devices-overview.md)
- [Protect all email](m365bp-protect-email-overview.md)
- [Collaborate and share securely](m365bp-collaborate-share-securely.md)
- [Set up and secure managed devices](m365bp-protect-devices.md)
