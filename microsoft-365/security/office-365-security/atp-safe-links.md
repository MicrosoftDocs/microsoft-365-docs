---
title: "ATP Safe Links"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.topic: overview
f1_keywords:
- '197503'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- ZVO160
- ZXL160
- ZPP160
- ZWD160
ms.assetid: dd6a1fef-ec4a-4cf4-a25a-bb591c5811e3
description: "In this article, you'll learn how to use Safe links to protect your organization from phishing and other attacks."
---

# ATP Safe Links

## Overview of Safe Links in Office 365 ATP

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are using Outlook.com, Microsoft 365 Family, or Microsoft 365 Personal, and you're looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Office 365 Advanced Threat Protection](office-365-atp.md) that provides time-of-click verification of URLs and links. As long as your mail flows through [Exchange Online Protection](exchange-online-protection-overview.md) (EOP), Safe Links protection is available in the following locations:

- **Email messages and Microsoft Teams**: Safe Links protection is controlled by Safe Links policies. There is no default Safe Links policy, **so to get the protection of Safe Links, you need to create one or more Safe Links policies**. For instructions, see [Set up Safe Links policies in ATP](set-up-atp-safe-links-policies.md).

  For more information about the settings that are available in Safe Links policies, see the [Safe Links policy settings](#safe-links-policy-settings) section later in this topic.

- **Office documents**: Safe Links protection is available in the following Office environments in Microsoft 365 Apps for enterprise or Business Premium:

  - Current versions of Word, Excel, and PowerPoint on Windows, Mac, or in a web browser.
  - Office apps on iOS or Android devices.
  - Visio on Windows.
  - OneNote in a web browser.

  Safe Links protection in Office documents is not dependent on Safe Links policies. You enable, disable, and configure the settings globally for your organization. For instructions, see.

  For more information about the settings that are available in Safe Links for Office documents, see the  section later in this topic.

Once your ATP Safe Links policies are in place, global administrators, security administrators, and security readers can [view reports for Advanced Threat Protection](view-reports-for-atp.md). The information in those reports can help your security team take further steps to protect your organization or research security incidents.

As [new features are added to ATP](office-365-atp.md#new-features-in-office-365-atp), your Microsoft 365 security team can add or edit your organization's [ATP Safe Links policies](set-up-atp-safe-links-policies.md). In addition, you might notice changes and improvements, such as our newly revised [warning pages](atp-safe-links-warning-pages.md) and native link rendering in Outlook (introduced in Microsoft 365 Apps for enterprise version 1809).

The following table describes scenarios for Safe Links in Microsoft 365 and Office 365 organizations that include ATP (in other words, lack of licensing is never an issue in the examples).

****

|Scenario|Result|
|---|---|
|Jean is a member of the marketing department, and a Safe Links policy is configured that applies to members of the marketing department. The Safe Links policy is configured to protect URLs in email messages and Office documents. Jean opens a PowerPoint presentation in an email message, and then clicks a URL in the presentation.|Jean is protected by Safe Links. <br/><br/> The Safe Links policies apply to Jean's email messages, and Word, Excel, PowerPoint, or Visio documents that Jean opens, so long as Jean is signed in and using Microsoft 365 Apps for enterprise on Windows, iOS, or Android devices.|
|Chris's Microsoft 365 E5 organization has no Safe Attachments policies configured. Chris receives an email that contains a URL to a malicious website. Chris is unaware the URL is malicious and clicks the link.|No. The default policy that covers URLs for everyone in the organization must be defined in order for protection to be in place.|
|In Pat's organization, no global or security administrators have defined or edited any ATP Safe Links policies yet. Pat opens a Word document and clicks a URL in the file.|No. A policy that includes Office documents must be defined in order for protection to be in place. See [Set up ATP Safe Links policies in Office 365](set-up-atp-safe-links-policies.md).|
|Lee's organization has a ATP Safe Links policy that has `https://tailspintoys.com` listed as a blocked website. Lee receives an email message that contains a URL to `https://tailspintoys.com/aboutus/trythispage`. Lee clicks the URL.|It depends on whether the entire site and all its subpages are included in the list of blocked URLs. See [Set up a custom blocked URLs list using ATP Safe Links](set-up-a-custom-blocked-urls-list-atp.md).|
|Jamie, Jean's colleague, sends an email to Jean, not knowing that the email contains a malicious URL.|It depends on whether ATP Safe Links policies are defined for email sent within the organization. See [Set up ATP Safe Links policies in Office 365](set-up-atp-safe-links-policies.md).|

## Safe Links policy settings

These are the important settings in Safe Links policies:

- **Select the action for unknown potentially malicious URLs in messages**: When this setting is turned on, URLs are rewritten and checked against a list of known malicious links when the user clicks the link. The recommended value is **On**.

- **Select the action for unknown or potentially malicious URLs within Microsoft Teams: On**:  Note that this setting is currently in Preview for members of the Microsoft Teams Technology Adoption Program (TAP). When this setting is turned on, URLs in Teams are checked against a list of known malicious links when the user clicks the link. URLs are not rewritten. The recommended value is **On**.

- **Apply real-time URL scanning for suspicious links and links that point to files**: Enables real-time scanning of links in email messages. The recommended value is enabled.

  - **Wait for URL scanning to complete before delivering the message**

    - Enabled: Wait for real-time URL scanning to complete before delivering the message. This is the recommended value.
    - Disabled: If real-time URL scanning can't complete, deliver the message anyway.

- **Apply safe links to email messages sent within the organization**: Enables or disables applying the Safe Links policy to messages between internal senders and internal recipients. The recommended value is enabled.

- **Do not track user clicks**: Enables or disables tracking user clicks of URLs. The recommend value is to leave this setting unselected (enable tracking of user clicks).

- **Do not allow users to click through to original URL**: Allows or blocks users from clicking through to the original URL. The recommend value is to select this setting (block users from clicking through to the original URL).

- **Do not rewrite the following URLs**: Specifies the URLs that skip Safe List scanning.

For more information about the recommended values for Standard and Strict policy settings, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

  - **The recipient is**
  - **The recipient domain is**
  - **The recipient is a member of**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Priority**: If you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied.

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Safe Links settings for Office documents

Safe Links protection for Office documents has the following requirements:

- Microsoft 365 client apps are configured to use Modern Authentication. For more information, see [Modern Authentication for Office 2016](https://docs.microsoft.com/microsoft-365/enterprise/modern-auth-for-office-2013-and-2016).

- Users have signed in using their work or school accounts. For more information, see [Sign in to Office](https://support.microsoft.com/office/b9582171-fd1f-4284-9846-bdd72bb28426).

The following settings are available in Safe Links for Office documents:

- **Use Safe Links in: Office 365 applications**: Enables or disables Safe Links in Office documents as described earlier in this article. This setting is enabled by default.

- **Do not track when users click safe links**: Enables or disables tracking of user clicks related to blocked URLs in Office documents. 

- **Do not let users click through safe links to original URL**

Note that the setting EnableSafeLinksForWebAccessCompanion is not configurable.

For more information about the recommended values for Standard and Strict policy settings, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

- Your organization's email passes through Exchange Online Protection.

## How to make sure ATP Safe Links protection is in place

As a global administrator or security administrator, be sure to review your [ATP Safe Links policies](set-up-atp-safe-links-policies.md) regularly. ATP Safe Links policies determine whether protection applies to hyperlinks in email messages only, or to URLs in Office documents as well.

After ATP Safe Links policies are in place, your organization's security team can see see how ATP Safe Links protection is working for your organization is by [viewing reports for Advanced Threat Protection](view-reports-for-atp.md).
