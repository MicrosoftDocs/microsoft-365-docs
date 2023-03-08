---
title: Complete Safe Links overview for Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
f1_keywords:
  - '197503'
ms.date: 1/31/2023
ms.localizationpriority: medium
ms.collection:
  - Strat_O365_IP
  - m365-security
  - tier1
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
description: Learn about Safe Links protection in Defender for Office 365 to protect an organization from phishing and other attacks that use malicious URLs. Discover Teams Safe Links, and see graphics of Safe Links messages.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Safe Links in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you're using Outlook.com, Microsoft 365 Family, or Microsoft 365 Personal, and you're looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Defender for Office 365](defender-for-office-365.md) that provides URL scanning and rewriting of inbound email messages in mail flow, and time-of-click verification of URLs and links in email messages, Teams messages and other locations. Safe Links scanning occurs in addition to the regular [anti-spam](anti-spam-protection-about.md) and [anti-malware](anti-malware-protection-about.md) in inbound email messages in Exchange Online Protection (EOP). Safe Links scanning can help protect your organization from malicious links that are used in phishing and other attacks.

Watch this short video on how to protect against malicious links with Safe Links in Microsoft Defender for Office 365.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGzjb]

> [!NOTE]
> Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection in e-mail messages, Microsoft Teams, and files in supported Office apps to all recipients who are licensed for Defender for Office 365 (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). You can also create Safe Links policies that apply to specific users, group, or domains. For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

Safe Links protection is available in the following locations:

- **Email messages**: Safe Links protections for links in email messages are controlled by Safe Links policies.

  For more information about Safe Links protection for email messages, see the [Safe Links settings for email messages](#safe-links-settings-for-email-messages) section later in this article.

  > [!NOTE]
  > Safe Links does not work on mail-enabled public folders.
  >
  > Safe Links supports only HTTP(S) and FTP formats.
  >
  > Using another service to wrap links before Defender for Office 365 might invalidate the ability of Safe Links to process links, including wrapping, detonating, or otherwise validating the "maliciousness" of the link.

- **Microsoft Teams**: Safe Links protection for links in Teams conversations, group chats, or from channels is controlled by Safe Links policies.

  For more information about Safe Links protection in Teams, see the [Safe Links settings for Microsoft Teams](#safe-links-settings-for-microsoft-teams) section later in this article.

- **Office apps**: Safe Links protection for supported Office desktop, mobile, and web apps is controlled by Safe Links policies.

  For more information about Safe Links protection in Office apps, see the [Safe Links settings for Office apps](#safe-links-settings-for-office-apps) section later in this article.

This article includes detailed descriptions of the following types of Safe Links settings:

- **Settings in Safe Links policies**: These settings apply only to the users who are included in the specific policies, and the settings might be different between policies. These settings include:

  - [Safe Links settings for email messages](#safe-links-settings-for-email-messages)
  - [Safe Links settings for Microsoft Teams](#safe-links-settings-for-microsoft-teams)
  - [Safe Links settings for Office apps](#safe-links-settings-for-office-apps)
  - ["Do not rewrite the following URLs" lists in Safe Links policies](#do-not-rewrite-the-following-urls-lists-in-safe-links-policies)

- **Global Safe Links settings**: These settings are configured globally, not in Safe Links policies. These settings include:

  - ["Block the following URLs" list for Safe Links](#block-the-following-urls-list-for-safe-links)

  > [!NOTE]
  > The **Global settings** menu and the **Block the following URLs** list for Safe Links are in the process of being deprecated. Use block entries for URLs in the [Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list) instead.

The following table describes scenarios for Safe Links in Microsoft 365 and Office 365 organizations that include Defender for Office 365 (note that lack of licensing is never an issue in the examples).

|Scenario|Result|
|---|---|
|Jean is a member of the marketing department. Safe Links protection for Office apps is turned on in a Safe Links policy that applies to members of the marketing department. Jean opens a PowerPoint presentation in an email message, and then clicks a URL in the presentation.|Jean is protected by Safe Links. <p> Jean is included in a Safe Links policy where Safe Links protection for Office apps is turned on. <p> For more information about the requirements for Safe Links protection in Office apps, see the [Safe Links settings for Office apps](#safe-links-settings-for-office-apps) section later in this article.|
|Chris's Microsoft 365 E5 organization has no Safe Links policies configured. Chris receives an email from an external sender that contains a URL to a malicious website that he ultimately clicks.|Chris is protected by Safe Links. <p> The **Built-in protection** preset security policy provides Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).|
|In Pat's organization, admins have created a Safe Links policy that applies Pat, but Safe Links protection for Office apps is turned off. Pat opens a Word document and clicks a URL in the file.|Pat is not protected by Safe Links. <p> Although Pat is included in an active Safe Links policy, Safe Links protection for Office apps is turned off in that policy, so the protection can't be applied.|
|Jamie and Julia both work for contoso.com. A long time ago, admins configured Safe Links policies that apply to both of Jamie and Julia. Jamie sends an email to Julia, not knowing that the email contains a malicious URL.|Julia is protected by Safe Links **if** the Safe Links policy that applies to her is configured to apply to messages between internal recipients. For more information, see the [Safe Links settings for email messages](#safe-links-settings-for-email-messages) section later in this article.|

## Recipient filters in Safe Links policies

You need to specify the recipient conditions and exceptions that determine who the policy applies to. You can use these properties for conditions and exceptions:

- **Users**
- **Groups**
- **Domains**

You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

> [!IMPORTANT]
> Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
>
> - Users: romain@contoso.com
> - Groups: Executives
>
> The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
>
> Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

## Safe Links settings for email messages

Safe Links scans incoming email for known malicious hyperlinks. Scanned URLs are rewritten or _wrapped_ using the Microsoft standard URL prefix: `https://nam01.safelinks.protection.outlook.com`. After the link is rewritten, it's analyzed for potentially malicious content.

After Safe Links rewrites a URL, the URL remains rewritten even if the message is _manually_ forwarded or replied to (both to internal and external recipients). Additional links that are added to the forwarded or replied-to message are not rewritten.

In the case of _automatic_ forwarding by Inbox rules or SMTP forwarding, the URL will not be rewritten in the message that's intended for the final recipient _unless_ one of the following statements is true:

- The recipient is also protected by Safe Links.
- The URL was already rewritten in a previous communication.

As long as Safe Links protection is turned on, URLs are scanned prior to message delivery, regardless of whether the URLs are rewritten or not. In supported versions of Outlook (Outlook for Desktop version 16.0.12513 or later), unwrapped URLs are checked by a client-side API call to Safe Links at the time of click.

The settings in Safe Links policies that apply to email messages are described in the following list:

- **On: Safe Links checks a list of known, malicious links when users click links in email. URLs are rewritten by default.**: Turn on or turn off Safe Links scanning in email messages. The recommended value is selected (on), and results in the following actions:
  - Safe Links scanning is turned on in Outlook (C2R) on Windows.
  - URLs are rewritten and users are routed through Safe Links protection when they click URLs in messages.
  - When clicked, URLs are checked against a list of known malicious URLs and the ["Block the following URLs" list](#block-the-following-urls-list-for-safe-links).
  - URLs that don't have a valid reputation are detonated asynchronously in the background.

  The following settings are available only if Safe Links scanning in email messages is turned on:

  - **Apply Safe Links to email messages sent within the organization**: Turn on or turn off Safe Links scanning on messages sent between internal senders and internal recipients within the same Exchange Online organization. The recommended value is selected (on).

  - **Apply real-time URL scanning for suspicious links and links that point to files**: Turns on real-time scanning of links, including links in email messages that point to downloadable content. The recommended value is selected (on).

    - **Wait for URL scanning to complete before delivering the message**:
      - Selected (on): Messages that contain URLs are held until scanning is finished. Messages are delivered only after the URLs are confirmed to be safe. This is the recommended value.
      - Not selected (off): If URL scanning can't complete, deliver the message anyway.

  - **Do not rewrite URLs, do checks via SafeLinks API only**: If this setting is selected (on), no URL wrapping takes place. In supported versions of Outlook (Outlook for Desktop version 16.0.12513 or later), Safe Links is called exclusively via APIs at the time of URL click.

  For more information about the recommended values for Standard and Strict policy settings for Safe Links policies, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

### How Safe Links works in email messages

At a high level, here's how Safe Links protection works on URLs in email messages:

1. All email goes through EOP, where internet protocol (IP) and envelope filters, signature-based malware protection, anti-spam and anti-malware filters before the message is delivered to the recipient's mailbox.

2. The user opens the message in their mailbox and clicks on a URL in the message.

3. Safe Links immediately checks the URL before opening the website:

   - If the URL points to a website that has been determined to be malicious, a [malicious website warning](#malicious-website-warning) page (or a different warning page) opens.

   - If the URL points to a downloadable file, and the **Apply real-time URL scanning for suspicious links and links that point to files** setting is turned on in the policy that applies to the user, the downloadable file is checked.

   - If the URL is determined to be safe, the website opens.

## Safe Links settings for Microsoft Teams

You turn on or turn off Safe Links protection for Microsoft Teams in Safe Links policies. Specifically, you use the **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Teams. URLs are not rewritten** setting in the **Teams** section. The recommended value is on (selected).

> [!NOTE]
> When you turn on or turn off Safe Links protection for Teams, it might take up to 24 hours for the change to take effect.

After you turn on Safe Links protection for Microsoft Teams, URLs in Teams are checked against a list of known malicious links when the protected user clicks the link (time-of-click protection). URLs are not rewritten. If a link is found to be malicious, users will have the following experiences:

- If the link was clicked in a Teams conversation, group chat, or from channels, the warning page as shown in the screenshot below will appear in the default web browser.
- If the link was clicked from a pinned tab, the warning page will appear in the Teams interface within that tab. The option to open the link in a web browser is disabled for security reasons.
- Depending on how the **Let users click through to the original URL** setting in the policy is configured, the user will or will not be allowed to click through to the original URL (**Continue anyway (not recommended)** in the screenshot). We recommend that you don't select the **Let users click through to the original URL** setting so users can't click through to the original URL.

If the user who sent the link isn't protected by a Safe Links policy where Teams protection is turned on, the user is free to click through to the original URL on their computer or device.

:::image type="content" source="../../media/tp-safe-links-for-teams-malicious.png" alt-text="A Safe Links for Teams page reporting a malicious link" lightbox="../../media/tp-safe-links-for-teams-malicious.png":::

Clicking the **Go Back** button on the warning page will return the user to their original context or URL location. However, clicking on the original link again will cause Safe Links to rescan the URL, so the warning page will reappear.

### How Safe Links works in Teams

At a high level, here's how Safe Links protection works for URLs in Microsoft Teams:

1. A user starts the Teams app.

2. Microsoft 365 verifies that the user's organization includes Microsoft Defender for Office 365, and that the user is included in an active Safe Links policy where protection for Microsoft Teams is turned on.

3. URLs are validated at the time of click for the user in chats, group chats, channels, and tabs.

## Safe Links settings for Office apps

Safe Links protection for Office apps checks links in Office documents, not links in email messages. But, it can check links in attached Office documents in email messages after the document is opened.

You turn on or turn off Safe Links protection for Office apps in Safe Links policies. Specifically, you use the **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Office apps. URLs are not rewritten** setting in the **Office 365 apps** section. The recommended value is on (selected).

Safe Links protection for Office apps has the following client requirements:

- Microsoft 365 Apps or Microsoft 365 Business Premium.
  - Current versions of Word, Excel, and PowerPoint on Windows, Mac, or in a web browser.
  - Office apps on iOS or Android devices.
  - Visio on Windows.
  - OneNote in a web browser.
  - Outlook for Windows when opening saved EML or MSG files.

- Office apps are configured to use modern authentication. For more information, see [How modern authentication works for Office 2013, Office 2016, and Office 2019 client apps](../../enterprise/modern-auth-for-office-2013-and-2016.md).

- Users are signed in using their work or school accounts. For more information, see [Sign in to Office](https://support.microsoft.com/office/b9582171-fd1f-4284-9846-bdd72bb28426).

For more information about the recommended values for Standard and Strict policy settings, see [Global settings for Safe Links](recommended-settings-for-eop-and-office365.md#global-settings-for-safe-links).

### How Safe Links works in Office apps

At a high level, here's how Safe Links protection works for URLs in Office apps. The supported Office apps are described in the previous section.

1. A user signs in using their work or school account in an organization that includes Microsoft 365 Apps or Microsoft 365 Business Premium.

2. The user opens and clicks on a link an Office document in a supported Office app.

3. Safe Links immediately checks the URL before opening the target website:

   - If the URL is included in the list that skips Safe Links scanning (the **Block the following URLs** list) a [blocked URL warning](#blocked-url-warning) page opens.

   - If the URL points to a website that has been determined to be malicious, a [malicious website warning](#malicious-website-warning) page (or a different warning page) opens.

   - If the URL points to a downloadable file, and the Safe Links policy that applies to the user is configured to scan links to downloadable content (**Apply real-time URL scanning for suspicious links and links that point to files**), the downloadable file is checked.

   - If the URL is considered safe, the user is taken to the website.

   - If Safe Links scanning is unable to complete, Safe Links protection does not trigger. In Office desktop clients, the user will be warned before they proceed to the destination website.

> [!NOTE]
> It may take several seconds at the beginning of each session to verify that Safe Links for Office apps is available to the user.

## Click protection settings in Safe Links policies

These settings apply to Safe Links in email, Teams, and Office apps:

- **Track user clicks**: Turn on or turn off storing Safe Links click data for URLs clicked. We recommend that you leave this setting selected (on).

  In Safe Links for Office apps, this setting applies to the desktop versions Word, Excel, PowerPoint, and Visio.

  If you select this setting, the following settings are available:

  - **Let users click through to the original URL**: Controls whether users can click through the [warning page](#warning-pages-from-safe-links) to the original URL. The recommend value is not selected (off).

    In Safe Links for Office apps, this setting applies to the original URL in the desktop versions Word, Excel, PowerPoint, and Visio.

  - **Display the organization branding on notification and warning pages**: This option shows your organization's branding on warning pages. Branding helps users identify legitimate warnings, because default Microsoft warning pages are often used by attackers. For more information about customized branding, see [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md).

## Priority of Safe Links policies

After you create multiple policies, you can specify the order that they're applied. No two policies can have the same priority, and policy processing stops after the first policy is applied. The **Built-in protection** policy is always applied last. The Safe Links policies associated **Standard** and **Strict** preset security policies are always applied before custom Safe Links policies.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies) and [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## "Block the following URLs" list for Safe Links

> [!NOTE]
> The **Block the following URLs** list for Safe Links is in the process of being deprecated. Use block entries for URLs in the [Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list) instead. Messages containing the blocked URL are quarantined.

The **Block the following URLs** list defines the links that are always blocked by Safe Links scanning in the following locations:

- Email messages.
- Documents in Office apps in Windows and Mac.
- Documents in Office for iOS and Android.

When a user in an active Safe Links policy clicks a blocked link in a supported app, they're taken to the [Blocked URL warning](#blocked-url-warning) page.

You configure the list of URLs in the global settings for Safe Links. For instructions, see [Configure the "Block the following URLs" list](safe-links-policies-global-settings-configure.md#configure-the-block-the-following-urls-list-in-the-microsoft-365-defender-portal).

**Notes**:

- For a truly universal list of URLs that are blocked everywhere, see [Manage the Tenant Allow/Block List](tenant-allow-block-list-about.md).
- Limits for the **Block the following URLs** list:
  - The maximum number of entries is 500.
  - The maximum length of an entry is 128 characters.
  - All of the entries can't exceed 10,000 characters.
- Don't include a forward slash (`/`) at the end of the URL. For example, use `https://www.contoso.com`, not `https://www.contoso.com/`.
- A domain-only-URL (for example `contoso.com` or `tailspintoys.com`) will block any URL that contains the domain.
- You can block a subdomain without blocking the full domain. For example, `toys.contoso.com*` blocks any URL that contains the subdomain, but it doesn't block URLs that contain the full domain `contoso.com`.
- You can include up to three wildcards (`*`) per URL entry.

### Entry syntax for the "Block the following URLs" list

Examples of the values that you can enter and their results are described in the following table:

|Value|Result|
|---|---|
|`contoso.com` <p> or <p> `*contoso.com*`|Blocks the domain, subdomains, and paths. For example, `https://www.contoso.com`, `https://sub.contoso.com`, and `https://contoso.com/abc` are blocked.|
|`https://contoso.com/a`|Blocks `https://contoso.com/a` but not additional subpaths like `https://contoso.com/a/b`.|
|`https://contoso.com/a*`|Blocks `https://contoso.com/a` and additional subpaths like `https://contoso.com/a/b`.|
|`https://toys.contoso.com*`|Blocks a subdomain (`toys` in this example) but allow clicks to other domain URLs (like `https://contoso.com` or `https://home.contoso.com`).|

## "Do not rewrite the following URLs" lists in Safe Links policies

> [!NOTE]
> Entries in the "Do not rewrite the following URLs" list are not scanned or wrapped by Safe Links during mail flow but might still be blocked at time of click. Use [allow URL entries in the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-urls-on-the-submissions-page) to override the Safe Links URL verdict.

Each Safe Links policy contains a **Do not rewrite the following URLs** list that you can use to specify URLs that are not rewritten by Safe Links scanning. In other words, the list allows users who are included in the policy to access the specified URLs that would otherwise be blocked by Safe Links. You can configure different lists in different Safe Links policies. Policy processing stops after the first (likely, the highest priority) policy is applied to the user. So, only one **Do not rewrite the following URLs** list is applied to a user who is included in multiple active Safe Links policies.

To add entries to the list in new or existing Safe Links policies, see [Create Safe Links policies](safe-links-policies-configure.md#use-the-microsoft-365-defender-portal-to-create-safe-links-policies) or [Modify Safe Links policies](safe-links-policies-configure.md#use-the-microsoft-365-defender-portal-to-modify-safe-links-policies).

**Notes**:

- The following clients don't recognize the **Do not rewrite the following URLs** lists in Safe Links policies. Users included in the policies can be blocked from accessing the URLs based on the results of Safe Links scanning in these clients:
  - Microsoft Teams
  - Office web apps

  For a truly universal list of URLs that are allowed everywhere, see [Manage the Tenant Allow/Block List](tenant-allow-block-list-about.md). However, note that URLs added there will not be excluded from Safe Links rewriting, as that must be done in a Safe Links policy.

- Consider adding commonly used internal URLs to the list to improve the user experience. For example, if you have on-premises services, such as Skype for Business or SharePoint, you can add those URLs to exclude them from scanning.
- If you already have **Do not rewrite the following URLs** entries in your Safe Links policies, be sure to review the lists and add wildcards as required. For example, your list has an entry like `https://contoso.com/a` and you later decide to include subpaths like `https://contoso.com/a/b`. Instead of adding a new entry, add a wildcard to the existing entry so it becomes `https://contoso.com/a/*`.
- You can include up to three wildcards (`*`) per URL entry. Wildcards explicitly include prefixes or subdomains. For example, the entry `contoso.com` is not the same as `*.contoso.com/*`, because `*.contoso.com/*` allows people to visit subdomains and paths in the specified domain.
- If a URL uses automatic redirection for HTTP to HTTPS (for example, 302 redirection for `http://www.contoso.com` to `https://www.contoso.com`), and you try to enter both HTTP and HTTPS entries for the same URL to the list, you might notice that the second URL entry replaces the first URL entry. This behavior does not occur if the HTTP and HTTPS versions of the URL are completely separate.
- Do not specify http:// or https:// (that is, contoso.com) in order to exclude both HTTP and HTTPS versions.
- `*.contoso.com` does **not** cover contoso.com, so you would need to exclude both to cover both the specified domain and any child domains.
- `contoso.com/*` covers **only** contoso.com, so there's no need to exclude both `contoso.com` and `contoso.com/*`; just `contoso.com/*` would suffice.
- To exclude all iterations of a domain, two exclusion entries are needed; `contoso.com/*` and `*.contoso.com/*`. These combine to exclude both HTTP and HTTPS, the main domain contoso.com and any child domains, as well as any or not ending part (for example, both contoso.com and contoso.com/vdir1 are covered).

### Entry syntax for the "Do not rewrite the following URLs" list

Examples of the values that you can enter and their results are described in the following table:

|Value|Result|
|---|---|
|`contoso.com`|Allows access to `https://contoso.com` but not subdomains or paths.|
|`*.contoso.com/*`|Allows access to a domain, subdomains, and paths (for example, `https://www.contoso.com`, `https://www.contoso.com`, `https://maps.contoso.com`, or `https://www.contoso.com/a`). <p> This entry is inherently better than `*contoso.com*`, because it doesn't allow potentially fraudulent sites, like `https://www.falsecontoso.com` or `https://www.false.contoso.completelyfalse.com`|
|`https://contoso.com/a`|Allows access to `https://contoso.com/a`, but not subpaths like `https://contoso.com/a/b`|
|`https://contoso.com/a/*`|Allows access to `https://contoso.com/a` and subpaths like `https://contoso.com/a/b`|

## Warning pages from Safe Links

This section contains examples of the various warning pages that are triggered by Safe Links protection when you click a URL.

Note that several warning pages have been updated. If you're not already seeing the updated pages, you will soon. The updated pages include a new color scheme, more detail, and the ability to proceed to a site despite the given warning and recommendations.

### Scan in progress notification

The clicked URL is being scanned by Safe Links. You might need to wait a few moments before trying the link again.

:::image type="content" source="../../media/ee8dd5ed-6b91-4248-b054-12b719e8d0ed.png" alt-text="The notification that the link is being scanned" lightbox="../../media/ee8dd5ed-6b91-4248-b054-12b719e8d0ed.png":::

The original notification page looked like this:

:::image type="content" source="../../media/04368763-763f-43d6-94a4-a48291d36893.png" alt-text="The link is being scanned notification" lightbox="../../media/04368763-763f-43d6-94a4-a48291d36893.png":::

### Suspicious message warning

The clicked URL was in an email message that's similar to other suspicious messages. We recommend that you double-check the email message before proceeding to the site.

:::image type="content" source="../../media/33f57923-23e3-4b0f-838b-6ad589ba897b.png" alt-text="A link was clicked from a suspicious message warning" lightbox="../../media/33f57923-23e3-4b0f-838b-6ad589ba897b.png":::

### Phishing attempt warning

The clicked URL was in an email message that has been identified as a phishing attack. As a result, all URLs in the email message are blocked. We recommend that you do not proceed to the site.

:::image type="content" source="../../media/6e544a28-0604-4821-aba6-d5a57bb917e5.png" alt-text="The warning that states that a link was clicked from a phishing message" lightbox="../../media/6e544a28-0604-4821-aba6-d5a57bb917e5.png":::

### Malicious website warning

The clicked URL points to a site that has been identified as malicious. We recommend that you do not proceed to the site.

:::image type="content" source="../../media/058883c8-23f0-4672-9c1c-66b084796177.png" alt-text="The warning that states that the website is classified as malicious" lightbox="../../media/058883c8-23f0-4672-9c1c-66b084796177.png":::

The original warning page looked like this:

:::image type="content" source="../../media/b9efda09-6dd8-46ef-82cb-56e4d538b8f5.png" alt-text="The original warning that states that the website is classified as malicious" lightbox="../../media/b9efda09-6dd8-46ef-82cb-56e4d538b8f5.png":::

### Blocked URL warning

The clicked URL has been manually blocked by an admin in your organization (the **Block the following URLs** list in the global settings for Safe Links). The link was not scanned by Safe Links because it was manually blocked.

There are several reasons why an admin would manually block specific URLs. If you think the site should not be blocked, contact your admin.

:::image type="content" source="../../media/6b4bda2d-a1e6-419e-8b10-588e83c3af3f.png" alt-text="The warning that states that website was blocked by your admin" lightbox="../../media/6b4bda2d-a1e6-419e-8b10-588e83c3af3f.png":::

The original warning page looked like this:

:::image type="content" source="../../media/3d6ba028-30bf-45fc-958e-d3aad3defc83.png" alt-text="The original warning that states that website has been blocked per your organization's URL policy" lightbox="../../media/3d6ba028-30bf-45fc-958e-d3aad3defc83.png":::

### Error warning

Some kind of error has occurred, and the URL can't be opened.

:::image type="content" source="../../media/2f7465a4-1cf4-4c1c-b7d4-3c07e4b795b4.png" alt-text="The warning that states the page that you are trying to access cannot be loaded" lightbox="../../media/2f7465a4-1cf4-4c1c-b7d4-3c07e4b795b4.png":::

The original warning page looked like this:

:::image type="content" source="../../media/9aaa4383-2f23-48be-bdaa-8efbcb2acc70.png" alt-text="The warning that states that the web page could not be loaded" lightbox="../../media/9aaa4383-2f23-48be-bdaa-8efbcb2acc70.png":::
