---
title: "Safe Links"
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
description: "In this article, admins can learn about Safe Links protection in Office 365 Advanced Threat Protection (ATP) to protect their organization from phishing and other attacks that use malicious URLs."
---

# Safe Links in Office 365 ATP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection (ATP)](office-365-atp.md). If you're using Outlook.com, Microsoft 365 Family, or Microsoft 365 Personal, and you're looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Office 365 Advanced Threat Protection](office-365-atp.md) that provides URL scanning of inbound email messages in mail flow, and time-of-click verification of URLs and links in email messages and other locations. Safe Links scanning occurs in addition to the regular [anti-spam and anti-malware protection](anti-spam-and-anti-malware-protection.md) in inbound email messages in Exchange Online Protection (EOP).

Safe Links protection is available in the following locations:

- **Email messages**: Safe Links protection for links in email messages is controlled by Safe Links policies. There is no default Safe Links policy, **so to get the protection of Safe Links in email messages, you need to create one or more Safe Links policies**. For instructions, see [Set up Safe Links policies in ATP](set-up-atp-safe-links-policies.md).

  For more information about the settings that are available in Safe Links policies for email messages, see the [Safe Links settings for email messages](#safe-links-settings-for-email-messages) section later in this article.

- **Microsoft Teams** (currently in TAP Preview): Safe Links protection for links in Teams conversations, group chats, or from channels is also controlled by Safe Links policies. There is no default Safe Links policy, **so to get the protection of Safe Links in Teams, you need to create one or more Safe Links policies**.

  For more information about Safe Links protection in Teams, see the [Safe Links settings for Microsoft Teams](#safe-links-settings-for-microsoft-teams) section later in this topic.

- **Office 365 apps**: Safe Links protection for Office 365 apps is available in supported Microsoft 365 Apps or Microsoft 365 Business Premium desktop clients, web, and mobile apps. **Turning on** (or turning off) Safe Links protection for Office 365 apps is a global setting that you configure **outside** of Safe Links policies themselves. For instructions, see .

  But, the **application** of Safe Links protection for Office 365 apps requires a user to be in included in at least one active Safe Links policy. In other words, when Safe Links protection for Office 365 apps is turned on globally, the protection is applied to users who are included in any active Safe Links policies. If a user isn't included in an active Safe Links policy, then the user doesn't get Safe Links protection in Office 365 apps.

  For more information about the client requirements and settings for Safe Links protection in Office 365 apps, see the [Safe Links settings for Office 365 apps](#safe-links-settings-for-office-365-apps) section later in this article.

Alternatively, you can categorize Safe Links settings into the following areas:

- **Settings in Safe Links policies**: These settings apply only to the users who are included in the specific policies where the settings are configured. As previously described, there is no default Safe Links policy, so you need to create Safe Links policies for users to get these protections. These settings include:

  - [Safe Links settings for email messages](#safe-links-settings-for-email-messages)
  - [Safe Links settings for Microsoft Teams](#safe-links-settings-for-microsoft-teams)
  - ["Do not rewrite the following URLs" lists in Safe Links policies](#do-not-rewrite-the-following-urls-lists-in-safe-links-policies)

- **Global Safe Links settings**: These settings are configured globally, not in Safe Links policies themselves. The settings apply to users who are included in any active Safe Links policies. These settings include:

  - [Safe Links settings for Office 365 apps](#safe-links-settings-for-office-365-apps)
  - [Always blocked URLs for Safe Links](#always-blocked-urls-for-safe-links)

The following table describes scenarios for Safe Links in Microsoft 365 and Office 365 organizations that include ATP (in other words, lack of licensing is never an issue in the examples).

****

|Scenario|Result|
|---|---|
|Jean is a member of the marketing department. Safe Links protection for Office 365 apps is turned on in Jean's organization, and a Safe Links policy that applies to members of the marketing department exists. Jean opens a PowerPoint presentation in an email message, and then clicks a URL in the presentation.|Jean is protected by Safe Links in Office 365 apps. <br/><br/> Jean is included in a Safe Links policy, and Safe Links protection for Office 365 apps is turned on. <br/><br/> For more information about the user and client requirements for Safe Links protection in Office 365 apps, see the [Safe Links settings for Office 365 apps](#safe-links-settings-for-office-365-apps) section later in this article.|
|Chris's Microsoft 365 E5 organization has no Safe Links policies configured. Chris receives an email that contains a URL to a malicious website that he ultimately clicks.|Chris is not protected by Safe Links. <br/><br/> An admin must create at least one Safe Links policy for Safe Links protection in email messages to be active. Furthermore, the conditions of the policy must include Chris if Chris's incoming email is to be protected by Safe Links.|
|In Pat's organization, no admins have created any Safe Links policies, but Safe Links protection for Office 365 apps is turned on. Pat opens a Word document and clicks a URL in the file.|Pat is not protected by Safe Links. <br/><br/> Although Safe Links protection for Office 365 apps is turned on globally, Pat is not included in any active Safe Links policies, so the protection can't be applied.|
|In Lee's organization, <https://tailspintoys.com> is as a blocked website in the global Safe Links settings. A Safe Links policy that includes Lee already exists. Lee receives an email message that contains the URL <https://tailspintoys.com/aboutus/trythispage>. Lee clicks the URL.|The URL may or may not be automatically blocked for Lee. <br/><br/> Whether the link is blocked depends on the entry for <https://tailspintoys.com> in the block list. Does it include the entire site and all subpages, or just the parent site itself? For more information, see the  [Always blocked URLs for Safe Links](#always-blocked-urls-for-safe-links) section later in this topic.|
|Jamie and Julia both work for contoso.com. A long time ago, admins configured Safe Links policies that apply to both of Jamie and Julia. Jamie sends an email to Julia, not knowing that the email contains a malicious URL.|Julia is protected by Safe Links **if** the Safe Links policy that applies to her is configured to apply to messages between internal recipients. For more information, see the [Safe Links settings for email messages](#safe-links-settings-for-email-messages) section later in this topic.|

## Safe Links settings for email messages

Settings in Safe Links policies that apply to email messages are described in the following list:

- **Select the action for unknown potentially malicious URLs in messages**: This setting enables or disables Safe Links scanning in email messages. When this setting is turned on:

  - Safe Links scanning is enabled in Outlook (C2R) on Windows.
  - URLs are rewritten and users are routed through Safe Links protection when they click URLs in email messages.
  - When clicked, URLs are checked against a list of known malicious URLs and the ["Block the following URLs" list](#block-the-following-urls-list-for-safe-links).
  - URLs that don't have a valid reputation are detonated asynchronously in the background.

  The recommended value is **On**.

- **Apply real-time URL scanning for suspicious links and links that point to files**: Enables real-time scanning of links, including links that point to downloadable content in email messages. The recommended value is enabled.

  - **Wait for URL scanning to complete before delivering the message**:

    - Enabled: Messages that contain URLs are held until scanning is finished. Messages are delivered only after the URLs are confirmed to be safe. This is the recommended value.
    - Disabled: If URL scanning can't complete, deliver the message anyway.

- **Apply safe links to email messages sent within the organization**: Enables or disables applying the Safe Links policy to email messages between internal senders and internal recipients within the same Exchange Online organization. The recommended value is enabled.

- **Do not track user clicks**: Enables or disables tracking user clicks on links in email messages from external senders. The recommend value is to leave this setting unselected (enable tracking of user clicks).

  URL click tracking for links in email messages sent between internal users is currently not supported.

- **Do not allow users to click through to original URL**: Allows or blocks users from clicking through to the original URL in email messages. The recommend value is to select this setting (block users from clicking through to the original URL).

- **Do not rewrite the following URLs**: Leaves URLs as they are. Keeps a custom list of safe URLs that don't need scanning. The list is unique for each Safe Links policy (and therefore, for the users who are included in the policy). For more information about the **Do not rewrite the following URLs** list, see the ["Do not rewrite the following URLs" lists in Safe Links policies](#do-not-rewrite-the-following-urls-lists-in-safe-links-policies) section later in this article.

  For more information about the global **Block the following URLs** list for Safe Links, see ["Block the following URLs" list for Safe Links](#block-the-following-urls-list-for-safe-links).

For more information about the recommended values for Standard and Strict policy settings for Safe Links policies, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

- **Recipient filters**: You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

  - **The recipient is**
  - **The recipient domain is**
  - **The recipient is a member of**

  You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Priority**: If you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied.

  For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### How Safe Links works in email messages

At a high level, here's how Safe Links protection works on URLs in email messages:

1. All email goes through EOP, where internet protocol (IP) and envelope filters, signature-based malware protection, anti-spam and anti-malware filters before the message is delivered to the recipient's mailbox.

2. The user opens the message in their mailbox and clicks on a URL in the message.

3. Safe Links immediately checks the URL before opening the website:

   - If the URL is included in the list that skips Safe Links scanning (the **Block the following URLs** list) a [blocked URL warning](#blocked-url-warning) opens.

   - If the URL points to a website that has been determined to be malicious, a [malicious website warning page](#malicious-website-warning) (or a different warning page) opens.

   - If the URL points to a downloadable file, and the Safe Links policy that applies to the user is configured to scan links to downloadable content (**Apply real-time URL scanning for suspicious links and links that point to files**), the downloadable file is checked.

   - If the URL is determined to be safe, the website opens.

## Safe Links settings for Microsoft Teams

> [!IMPORTANT]
> As of March 2020, this feature is in **Public Preview** for customers in the Microsoft Teams Technology Adoption Program (TAP). This note will be removed when Safe Links for Teams is more widely available.

You enable or disable Safe Links protection for Microsoft Teams in Safe Links policies. Specifically, you use the **Select the action for unknown or potentially malicious URLs within Microsoft Teams**. The recommended value is **On**.

The following settings in Safe Links policies that apply to links in email messages also apply to links in Teams:

- **Apply real-time URL scanning for suspicious links and links that point to files**
- **Do not track user clicks**
- **Do not allow users to click through to original URL**

These settings are explained in the [Safe Links settings for email messages](#safe-links-settings-for-email-messages) section.

After you turn on Safe Links scanning for Microsoft Teams, URLs in Teams are checked against a list of known malicious links when the protected user clicks the link (time-of-click protection). URLs are not rewritten. If a link is found to be malicious, users will have the following experience:

- If the link was clicked in a Teams conversation, group chat, or from channels, the warning page as shown in the screenshot below will appear in the default web browser.
- If the link was clicked from a pinned tab, the warning page will appear in the Teams interface within that tab. The option to open the link in a web browser is disabled for security reasons.
- Depending on how the Safe Links policy is configured (the **Do not allow users to click through to original URL** setting), the protected user will or will not be allowed to click through to the destination (**Continue anyway (not recommended)** in the screenshot). We recommend that you configure the Safe Links policy to not allow users to click through the warning to the destination.

If the user who sent the link isn't included in a Safe Links policy where Teams protection is enabled, the user is free to click through to the destination URL on their computer or device.

![A Safe Links for Teams page reporting a malicious link.](../../media/tp-safe-links-for-teams-malicious.png)

Clicking the **Go Back** button on the warning page will close the page (or might result in a blank page that users can close). However, clicking on the original link again will cause Safe Links to rescan the URL, so the warning page will reappear.

### How Safe Links works in Teams

At a high level, here's how Safe Links protection works for URLs in Microsoft Teams:

1. A user starts the Teams app.

2. Microsoft 365 verifies that the user's organization includes Office 365 ATP, and that the user is included in an active Safe Links policy where protection for Microsoft Teams is enabled.

3. URLs are validated at the time of click for the user in chats, group chats, channels, and tabs.

## Safe Links settings for Office 365 apps

Safe Links protection for Office 365 apps has the following client requirements:

- Office 365 client apps are configured to use modern authentication. For more information, see [How modern authentication works for Office 2013, Office 2016, and Office 2019 client apps](https://docs.microsoft.com/microsoft-365/enterprise/modern-auth-for-office-2013-and-2016).

- Users have signed in using their work or school accounts. For more information, see [Sign in to Office](https://support.microsoft.com/office/b9582171-fd1f-4284-9846-bdd72bb28426).

You turn on or turn off Safe Links protection for Office 365 apps in the global Safe Links settings. But, in order for the protection to be applied, the user who opens the Office document and clicks the link must be included in an active Safe Links policy.

The following Safe Links settings are available for Office 365 apps:

- **Use Safe Links in: Office 365 applications**: Enables or disables Safe Links scanning supported Office 365 apps. The following apps in Microsoft 365 Apps or Microsoft 365 Business Premium are supported:

  - Current versions of Word, Excel, and PowerPoint on Windows, Mac, or in a web browser.
  - Office apps on iOS or Android devices.
  - Visio on Windows.
  - OneNote in a web browser.

  This setting is enabled by default, and this is the recommended value.

- **Do not track when users click safe links**: Enables or disables tracking of user clicks related to blocked URLs in supported Office 365 apps. The recommended value for this setting is **Off**.

- **Do not let users click through safe links to original URL**: Allows or blocks users from clicking through to the original blocked URL in supported Office 365 apps. The default and recommended value for this setting is **On**.

To configure the Safe Links settings for Office 365 apps, see [Configure Safe Links settings for Office 365 apps](set-up-atp-safe-links-policies.md#configure-safe-links-settings-for-office-365-apps).

For more information about the recommended values for Standard and Strict policy settings, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

### How Safe Links works in Office 365 apps

At a high level, here's how Safe Links protection works for URLs in Office 365 apps. The supported Office 365 apps are described in the previous section.

1. A user signs in using their work or school account in an organization that includes Microsoft 365 Apps or Microsoft 365 Business Premium, opens a supported Office document, and clicks a link in the document.

2. Safe Links immediately checks the URL before opening the target website:

   - If the URL is included in the list that skips Safe Links scanning (the **Block the following URLs** list) a [blocked URL warning](#blocked-url-warning) page opens.

   - If the URL points to a website that has been determined to be malicious, a [malicious website warning](#malicious-website-warning) page (or a different warning page) opens.

   - If the URL points to a downloadable file, and the Safe Links policy that applies to the user is configured to scan links to downloadable content (**Apply real-time URL scanning for suspicious links and links that point to files**), the downloadable file is checked.

   - If the URL is considered safe, the user is taken to the website.

   - If Safe Links scanning is unable to complete, Safe Links protection does not trigger. In Office desktop clients, the user will be warned before proceeding to the destination site.

> [!NOTE]
> It may take several seconds at the beginning of each session to verify that the user has Safe Links for Office enabled.

## "Block the following URLs" list for Safe Links

The **Block the following URLs** list defines the links that are always blocked by Safe Links scanning in the following locations:

- Email messages.
- Documents in Office 365 apps in Windows and Mac.
- Documents in Office for iOS and Android.

You configure the list in the global Safe links settings. The links are blocked for users who are included in an active Safe Links policy.

To add URL entries to the list, see .

When an included use clicks a blocked link, they're taken to the [Blocked URL warning](#blocked-url-warning) page.

**Notes**:

- For a truly universal list of blocked URLs, see [Manage URLs in the Tenant Allow/Block List](tenant-allow-block-list.md).

- Limits:
  - The maximum number of blocked URL entries is 500.
  - The maximum length of an entry is 128 characters.
  - The entire list of blocked URLs can't exceed 10,000 characters.

- Don't include a forward slash (`/`) at the end of the URL. For example, use `https://www.contoso.com`, not `https://www.contoso.com/`.

- A domain only-URL (for example `contoso.com` or `tailspintoys.com`) will block any URL that contains the domain.

- You can block a subdomain without blocking the full domain. For example, `toys.contoso.com*` blocks any URL that contains the subdomain, but it doesn't block URLs that contain the full domain `contoso.com`.

- You can include up to three wildcards (`*`) per URL entry.

### Entry syntax for the "Block the following URLs" list

Examples of the values that you can enter and their results are described in the following table:

****

|Value|Result|
|---|---|
|`contoso.com` <br/> or <br/> `*contoso.com*`|Blocks the domain, subdomains, and paths. For example, `https://www.contoso.com`, `https://sub.contoso.com`, and `https://contoso.com/abc` are blocked.|
|`https://contoso.com/a`|Blocks `https://contoso.com/a` but not additional subpaths like `https://contoso.com/a/b`.|
|`https://contoso.com/a*`|Blocks `https://contoso.com/a` and additional subpaths like `https://contoso.com/a/b`.|
|`https://toys.contoso.com*`|Blocks a subdomain (`toys` in this example) but allow clicks to other domain URLs (like `https://contoso.com` or `https://home.contoso.com`).|
|

## "Do not rewrite the following URLs" lists in Safe Links policies

> [!NOTE]
> If your organization use Safe Links policies, the **Do not rewrite the following URLs** lists are the only supported method for third party phishing tests.

Each Safe Links policy contains a **Do not rewrite the following URLs** list that specifies the URLs that aren't rewritten by Safe Links scanning. In other words, the **Do not rewrite the following URLs** list allows the user who are included in the policy to access the specified URLs that would otherwise be blocked by Safe Links.

To add entries to the list, see .

**Notes**:

- The following clients recognize the **Do not rewrite the following URLs** lists in Safe Links policies. Users included in the policies can't be blocked from accessing the URLs based on the results of Safe Links scanning in these clients:

  - Outlook on Windows, Mac, or Outlook for iOS or Android.
  - Office apps on Windows, Mac, or Outlook for iOS or Android.

  The following clients don't recognize the **Do not rewrite the following URLs** lists in Safe Links policies. Users included in the polices can be blocked from accessing the URLs based on the results of Safe Links scanning in these clients:

  - Microsoft Teams
  - Office web apps

  For a truly universal list of allowed URLs, see [Manage URLs in the Tenant Allow/Block List](tenant-allow-block-list.md).

- Consider adding commonly used internal URLs to the list to improve the user experience. For example, if you have on-premises services, such as Skype for Business or SharePoint, you can add those URLs to exclude them from scanning.

- If you already have **Do not rewrite the following URLs** entries in your Safe Links policies, be sure to review the lists and add wildcards as required. For example, your list has an entry like `https://contoso.com/a` and you later decide to include subpaths like `https://contoso.com/a/b`. Instead of adding a new entry, add a wildcard to the existing entry so it becomes `https://contoso.com/a/*`.

- You can include up to three wildcards (`*`) per URL entry. Wildcards explicitly include prefixes or subdomains. For example, the entry `contoso.com` is not the same as `*.contoso.com/*`, because `*.contoso.com/*` allows people to visit subdomains and paths in the specified domain.

### Entry syntax for the "Do not rewrite the following URLs" list

Examples of the values that you can enter and their results are described in the following table:

****

|Value|Result|
|---|---|
|`contoso.com`|Allows access to `https://contoso.com` but not subdomains or paths.|
|`*.contoso.com/*`|Allows access to a domain, subdomains, and paths (for example, `https://www.contoso.com`, `https://www.contoso.com`, `https://maps.contoso.com`, or `https://www.contoso.com/a`). <br/><br/> This entry is inherently better than `*contoso.com*`, because it doesn't allow potentially fraudulent sites, like `https://www.falsecontoso.com` or `https://www.false.contoso.completelyfalse.com`|
|`https://contoso.com/a`|Allows access to `https://contoso.com/a`, but not subpaths like `https://contoso.com/a/b`|
|`https://contoso.com/a/*`|Allows access to `https://contoso.com/a` and subpaths like `https://contoso.com/a/b`|
|

## Warning pages from Safe Links

This section contains examples of the various warning pages that are generated by Safe Links when you click on a URL.

Note that several warning pages have been updated. If you're not already seeing the updated pages, you will soon. The updated pages include a new color scheme, more detail, and the ability to proceed to a site despite the given warning and recommendations.

### Scan in progress notification

The clicked URL is being scanned by Safe Links. You might need to wait a few moments before trying the link again.

!["The link is being scanned" notification](../../media/ee8dd5ed-6b91-4248-b054-12b719e8d0ed.png)

The original notification page looked like this:

![Original "The link is being scanned" notification](../../media/04368763-763f-43d6-94a4-a48291d36893.png)

### Suspicious message warning

The clicked URL was in an email message that's similar to other suspicious messages. We recommend that you double-check the email message before proceeding to the site.

!["A link was clicked from a suspicious message" warning](../../media/33f57923-23e3-4b0f-838b-6ad589ba897b.png)

### Phishing attempt warning

The clicked URL was in an email message that has been identified as a phishing attack. As a result, all URLs in the email message are blocked. We recommend that you do not proceed to the site.

!["The link was clicked from a phishing message" warning](../../media/6e544a28-0604-4821-aba6-d5a57bb917e5.png)

### Malicious website warning

The clicked URL points to a site that has been identified as malicious. We recommend that you do not proceed to the site.

!["This website is classified as malicious" warning](../../media/058883c8-23f0-4672-9c1c-66b084796177.png)

The original warning page looked like this:

![Original "This website has been classified as malicious" warning](../../media/b9efda09-6dd8-46ef-82cb-56e4d538b8f5.png)

### Blocked URL warning

The clicked URL has been manually blocked by an admin in your organization (**Block the following URLs** in the global Safe Links settings). The link was not scanned by Safe Links because it was manually blocked.

There are several reasons why an admin would manually block specific URLs. If you think the site should not be blocked, contact your admin.

!["This website was blocked by your admin" warning](../../media/6b4bda2d-a1e6-419e-8b10-588e83c3af3f.png)

The original warning page looked like this:

![Original "This website has been blocked per your organization's URL policy" warning](../../media/3d6ba028-30bf-45fc-958e-d3aad3defc83.png)

### Error warning

Some kind of error has occurred, and the URL can't be opened.

!["The page that you are trying to access cannot be loaded" warning](../../media/2f7465a4-1cf4-4c1c-b7d4-3c07e4b795b4.png)

The original warning page looked like this:

![Original "This web page could not be loaded" warning](../../media/9aaa4383-2f23-48be-bdaa-8efbcb2acc70.png)
