---
title: "ATP Safe Links"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: Admin
ms.article: overview
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

Safe Links is a feature in [Office 365 Advanced Threat Protection](office-365-atp.md) that provides time-of-click verification of URLs and links. As long as your inbound email flows through Microsoft 365 or Office 365, Safe Links protection is available in the following locations:

- **Email messages**: Safe Links protection for links in email messages is controlled by Safe Links policies. There is no default Safe Links policy, **so to get the protection of Safe Links in email messages, you need to create one or more Safe Links policies**. For instructions, see [Set up Safe Links policies in ATP](set-up-atp-safe-links-policies.md).

  For more information about the settings that are available in Safe Links policies, see the [Safe Links policy settings](#safe-links-policy-settings) section later in this article.

- **Microsoft Teams** (currently in Preview): Safe Links protection for links in Teams conversations, group chats, or from channels is also controlled by Safe Links policies. There is no default Safe Links policy, **so to get the protection of Safe Links in Teams, you need to create one or more Safe Links policies**.

  For more information about Safe Links protection in Teams, see the [Safe Links settings for Microsoft Teams](#safe-links-settings-for-microsoft-teams) section later in this topic.

- **Office documents**: Safe Links protection for Office is available in Microsoft 365 Apps for enterprise or Business Premium desktop clients, web, and mobile apps. Safe Links protection in Office documents does not depend on Safe Links policies. You enable, disable, and configure the settings globally for all recipients in your organization. For instructions, see .

  For more information about the requirements and settings that are available in Safe Links for Office documents, see the [Safe Links settings for Office documents](#safe-links-settings-for-office-documents) section later in this article.

The following table describes scenarios for Safe Links in Microsoft 365 and Office 365 organizations that include ATP (in other words, lack of licensing is never an issue in the examples).

****

|Scenario|Result|
|---|---|
|Jean is a member of the marketing department. Safe Links protection for Office documents is enabled in Jean's organization, and a Safe Links policy that applies to members of the marketing department exists. Jean opens a PowerPoint presentation in an email message, and then clicks a URL in the presentation.|Jean is protected by Safe Links. <br/><br/> The Safe Links policies apply to Jean's email messages, and Word, Excel, PowerPoint, or Visio documents that Jean opens, so long as Jean is signed in and using Microsoft 365 Apps for enterprise on Windows, iOS, or Android devices.|
|Chris's Microsoft 365 E5 organization has no Safe Links policies configured. Chris receives an email that contains a URL to a malicious website that he ultimately clicks.|Chris is not protected by Safe Links. <br/><br/> An admin must create at least one Safe Links policy for Safe Links protection in email messages to be active. Furthermore, the conditions of the policy must include Chris if Chris's incoming email is to be protected by Safe Links.|
|In Pat's organization, no admins have created any ATP Safe Links policies. Pat opens a Word document and clicks a URL in the file.|No. A policy that includes Office documents must be defined in order for protection to be in place. See [Set up ATP Safe Links policies in Office 365](set-up-atp-safe-links-policies.md).|
|The Safe Links configuration in Lee's organization identifies <https://tailspintoys.com> as an always blocked website. Lee receives an email message that contains the URL <https://tailspintoys.com/aboutus/trythispage>. Lee clicks the URL.|The URL may or may not be automatically blocked for Lee. It depends on whether the entry for <https://tailspintoys.com> includes the entire site and all subpages. For more information, see the  [Always blocked URLs for Safe Links](#always-blocked-urls-for-safe-links) section later in this topic.|
|Jamie and Julia both work for contoso.com. A long time ago, admins configured Safe Links policies that apply to both of Jamie and Julia. Jamie sends an email to Julia, not knowing that the email contains a malicious URL.|Julia will receive Safe Links protection for the message from Jamie **if** the Safe Links policy that applies to Julia is configured to apply to protection for messages between internal recipients. For more information, see the [Safe Links policy settings](#safe-links-policy-settings) section later in this topic.|

After you've configured Safe Links protection for your organization, global admins, security admins, and security readers can view reports that contain Safe Links protection information. This information can help your security team take further steps to protect your organization or research security incidents. For more information, see [View reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md).

As [new features are added to ATP](office-365-atp.md#new-features-in-office-365-atp), your security team can add or edit your organization's [ATP Safe Links policies](set-up-atp-safe-links-policies.md). In addition, you might notice changes and improvements, such as our newly revised [warning pages](atp-safe-links-warning-pages.md) and native link rendering in Outlook (introduced in Microsoft 365 Apps for enterprise version 1809).

## Safe Links policy settings

These are the important settings in Safe Links policies:

- **Select the action for unknown potentially malicious URLs in messages**: When this setting is turned on, URLs are rewritten and checked against a list of known malicious links when the user clicks the link. The recommended value is **On**.

- **Select the action for unknown or potentially malicious URLs within Microsoft Teams** (currently in Preview): For more informationNote that this setting is currently in Preview for members of the Microsoft Teams Technology Adoption Program (TAP). When this setting is turned on, URLs in Teams are checked against a list of known malicious links when the user clicks the link. URLs are not rewritten. The recommended value is **On**.

- **Apply real-time URL scanning for suspicious links and links that point to files**: Enables real-time scanning of links in email messages. The links could be URLs or downloadable content. The recommended value is enabled.

  - **Wait for URL scanning to complete before delivering the message**

    - Enabled: Wait for real-time URL scanning to complete before delivering the message. This is the recommended value.
    - Disabled: If real-time URL scanning can't complete, deliver the message anyway.

- **Apply safe links to email messages sent within the organization**: Enables or disables applying the Safe Links policy to email messages between internal senders and internal recipients within the same Exchange Online organization. The recommended value is enabled.

- **Do not track user clicks**: Enables or disables tracking user clicks on links in email messages and Teams. The recommend value is to leave this setting unselected (enable tracking of user clicks).

- **Do not allow users to click through to original URL**: Allows or blocks users from clicking through to the original URL in email messages and Teams. The recommend value is to select this setting (block users from clicking through to the original URL).

- **Do not rewrite the following URLs**: Specifies the URLs that skip Safe List scanning and are always allowed in email messages and Teams.

  Note that corresponding Safe Links block list that you can configure applies to email messages, Teams, and Office documents. For more information, see .

For more information about the recommended values for Standard and Strict policy settings for Safe Links policies, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

  - **The recipient is**
  - **The recipient domain is**
  - **The recipient is a member of**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Priority**: If you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied.

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Safe Links settings for Microsoft Teams

> [!IMPORTANT]
> As of March 2020, this feature is in **Public Preview** for customers in the Microsoft Teams Technology Adoption Program (TAP). This note will be removed from the article when Safe Links for Teams is more widely available.

After you turn on Safe Links scanning for Microsoft Teams in a [Safe Links policy](#safe-links-policy-settings) as described earlier in this article, Safe Links scans URLs and links that are clicked by users who are protected by the policy. If a link is found to be malicious, users will have the following experience:

- If the link was clicked in a Teams conversation, group chat, or from channels, the warning page as shown in the screenshot below will appear in the default web browser.
- If the link was clicked from a pinned tab, the warning page will appear in the Teams interface within that tab. The option to open the link in a web browser is disabled for security reasons.
- Depending on how the Safe Links policy is configured (the **Do not allow users to click through to original URL** setting), the protected user will or will not be allowed to click through to the destination (**Continue anyway (not recommended)** in the screenshot). We recommend that you configure the Safe Links policy to not allow users to click through the warning to the destination.

If the user who sent the link isn't protected by Office 365 ATP, he or she is free to click through to the destination URL on their computer or device. This makes it doubly important for admins to be aware of who their protected users are and should be.

![A Safe Links for Teams page reporting a malicious link.](../../media/tp-safe-links-for-teams-malicious.png)

Clicking the **Go Back** button on the warning page will close the page (or might result in a blank page that users can close). However, clicking on the original link again will cause Safe Links to rescan the URL, so the warning page will reappear.

The following settings in Safe Links policies that apply to links in email messages also apply to links in Teams:

- **Do not track user clicks**
- **Do not allow users to click through to original URL**
- **Do not rewrite the following URLs**

## Safe Links settings for Office documents

As described earlier, Safe Links protection for links in Office documents don't depend on Safe Links policies. When enabled, these settings apply to all recipients in your organization.

Safe Links protection for Office documents has the following requirements:

- Microsoft 365 client apps are configured to use Modern Authentication. For more information, see [Modern Authentication for Office 2016](https://docs.microsoft.com/microsoft-365/enterprise/modern-auth-for-office-2013-and-2016).

- Users have signed in using their work or school accounts. For more information, see [Sign in to Office](https://support.microsoft.com/office/b9582171-fd1f-4284-9846-bdd72bb28426).

The following settings are available in Safe Links for Office documents:

- **Use Safe Links in: Office 365 applications**: Enables or disables Safe Links in the following Office environments in Microsoft 365 Apps for enterprise or Business Premium:

  - Current versions of Word, Excel, and PowerPoint on Windows, Mac, or in a web browser.
  - Office apps on iOS or Android devices.
  - Visio on Windows.
  - OneNote in a web browser.

  This setting is enabled by default, and this is the recommended value.

- **Do not track when users click safe links**: Enables or disables tracking of user clicks related to blocked URLs in Office documents. The recommended value for this setting is Off.

- **Do not let users click through safe links to original URL**: Allows or blocks users from clicking through to the original blocked URL. The default and recommended value for this setting is On.

For more information about the recommended values for Standard and Strict policy settings, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

## Always blocked URLs for Safe Links

The **Block the following URLs** list defines the links that are always blocked by Safe Links scanning. These blocked URLs apply to all types of Safe Links scanning: email messages, Microsoft Teams, and Office documents. The maximum number of blocked URL entries is 500.

To add always blocked URLs to the list, see .

When a user clicks a blocked link, they're taken to a warning page that looks like this:

![Safe Links link blocked by admin](../../media/6b4bda2d-a1e6-419e-8b10-588e83c3af3f.png)

Consider the following tips for defining always blocked URLs:

- Don't include a forward slash (`/`) at the end of the URL. For example, use `https://www.contoso.com`, not `https://www.contoso.com/`.

- A domain only-URL (for example `contoso.com` or `tailspintoys.com`) will block any URL that contains the domain.

- You can block a subdomain without blocking the full domain. For example, `toys.contoso.com*` blocks any URL that contains the subdomain, but it doesn't block URLs that contain the full domain `contoso.com`.

- You can include up to three wildcards (`*`) per URL entry.

Examples of the values that you can enter and their results are described in the following table:

****

|Value|Result|
|---|---|
|`contoso.com` <br/> or <br/> `*contoso.com*`|Blocks the domain, subdomains, and paths. For example, `https://www.contoso.com`, `https://sub.contoso.com`, and `https://contoso.com/abc` are blocked.|
|`https://contoso.com/a`|Blocks `https://contoso.com/a` but not additional subpaths like `https://contoso.com/a/b`.|
|`https://contoso.com/a*`|Blocks `https://contoso.com/a` and additional subpaths like `https://contoso.com/a/b`.|
|`https://toys.contoso.com*`|Blocks a subdomain (`toys` in this example) but allow clicks to other domain URLs (like `https://contoso.com` or `https://home.contoso.com`).|
|

## Always allowed URLs for Safe Links

> [!NOTE]
> If your organization use Safe Links policies, adding the URL to the **Do not rewrite the following URLs** list is the only supported method for third party phishing tests.

The **Do not rewrite the following URLs** list in Safe Links policies specifies the links that are excluded from Safe Links scanning, and are therefore always allowed. Because the list is defined in Safe Links policies, the always allowed nature of the links only applies to users who are included in the policy. When the user clicks on the specified link, the link bypasses Safe Links scanning and is always available to the user. If the link is available to a user who isn't included in the policy, the link is still subject to scanning by Safe Links.

The list of always allowed URLs apply to links in email messages or in Microsoft Teams.

To add always allowed URLs to the list, see .

Consider the following tips for defining always allowed URLs:

- Consider adding commonly used internal URLs to the list list to improve the user experience. For example, if you have on-premises services, such as Skype for Business or SharePoint, you can add those URLs to exclude them from scanning.

- If you already have a list of always URLs in your Safe Links policies, be sure to review the lists and add wildcards as appropriate. For example, your list has an entry like `https://contoso.com/a` and you want to also allow subptaths like `https://contoso.com/a/b`. Instead of adding a separate entry, add a wildcard to the existing entry so it looks like `https://contoso.com/a/*`.

- You can include up to three wildcards (`*`) per URL entry. Wildcards explicitly include prefixes or subdomains. For example, the entry `contoso.com` is not the same as `*.contoso.com/*`, because `*.contoso.com/*` allows people to visit subdomains and paths in the specified domain.

The following table lists examples of what you can enter and what effect those entries have.

****

|Example Entry|What It Does|
|---|---|
|`contoso.com`|Allows access to `https://contoso.com` but not subdomains or paths.|
|`*.contoso.com/*`|Allows access to a domain, subdomains, and paths (for example, `https://www.contoso.com`, `https://www.contoso.com`, `https://maps.contoso.com`, or `https://www.contoso.com/a`). <br/><br/> This entry is inherently better than `*contoso.com*`, because it doesn't allow potentially fraudulent sites, like `https://www.falsecontoso.com` or `https://www.false.contoso.completelyfalse.com`|
|`https://contoso.com/a`|Allows access to `https://contoso.com/a`, but not subpaths like `https://contoso.com/a/b`|
|`https://contoso.com/a/*`|Allows access to `https://contoso.com/a` and subpaths like `https://contoso.com/a/b`|
|
