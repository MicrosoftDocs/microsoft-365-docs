---
title: Set up a custom do-not-rewrite URLs list using ATP Safe Links
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 35dbfd99-da5a-422b-9b0e-c6caf3b645fa
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Learn how to setup custom blocked URLs for users and do-not-rewrite list of URLs for a group of users in Office 365 ATP safe links policies."
---

# Set up a custom do-not-rewrite URLs list using ATP Safe Links

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

With [Office 365 Advanced Threat Protection](office-365-atp.md) (ATP), your organization can have a [custom blocked URLs](set-up-a-custom-blocked-urls-list-atp.md), such that when people click on web addresses (URLs) in email messages or certain Office documents, they are prevented from going to those URLs. Your organization can also have custom "do not rewrite" lists for specific groups in your organization. A "do not rewrite" list enables some people to visit URLs that are otherwise blocked by [ATP Safe Links in Office 365](atp-safe-links.md).

This article describes how to specify a list of URLs that are excluded from ATP Safe Links scanning, and a few important points to keep in mind.

> [!NOTE]
> If your organization use Safe Links policies, the "do not rewrite" list is the only supported method for third party phishing tests.

## Set up a "do not rewrite" list

ATP Safe Links protection uses several lists, including your organization's blocked URLs list and the "do not rewrite" lists for exceptions. If you have the necessary permissions, you can set up your custom "do not rewrite" lists. You do this when you add or edit Safe Links policies that apply to specific recipients in your organization.

To edit (or define) ATP policies, you must be assigned an appropriate role. The following table includes some examples. To learn more, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

|Role|Where/how assigned|
|---|---|
|global administrator|The person who signs up to buy Microsoft 365 is a global admin by default. (See [About Microsoft 365 admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles) to learn more.)|
|Security Administrator|Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))|
|Exchange Online Organization Management|Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell))|
|

> [!TIP]
> To learn more about roles and permissions, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

### To view or edit a custom "do not rewrite" URLs list

1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your work or school account.

2. In the left navigation, under **Threat management** \> **Policy** \> **Safe Links**.

3. In the **Policies that apply to specific recipients** section, choose **New** (the New button resembles a plus sign ( **+**)) to create a new policy. (Alternatively, you can edit an existing policy.)<br/>![Choose New to add a Safe Links policy for specific email recipients](../../media/01073f42-3cec-4ddb-8c10-4d33ec434676.png)

4. Specify a name and description for your policy.

5. Turn **ON** URLs will be rewritten and checked against a list of known malicious links when user clicks on the link.

6. In the **Do not rewrite the following URLs** section, select the **Enter a valid URL** box, enter a URL, and then choose the plus sign (+).

7. In the **Applied To** section, choose **The recipient is a member of**, and then choose the group(s) you want to include in your policy. Choose **Add**, and then choose **OK**.

8. When you are finished adding URLs, in the lower right corner of the screen, choose **Save**.

> [!NOTE]
> Make sure to review your organization's custom list of blocked URLs. See [Set up a custom blocked URLs list using ATP Safe Links](set-up-a-custom-blocked-urls-list-atp.md).

## Important points to keep in mind

- Any URLs that you specify in the "do not rewrite" list are excluded from ATP Safe Links scanning for the recipients that you specify.

- Consider adding commonly used internal URLs to the "do not rewrite" list to improve the user experience. For example, if you have on-premises services, such as Skype for Business or Sharepoint, you can add their URLs to the list to exclude them from scanning.

- If you already have a list of URLs in your "do not rewrite" list, make sure to review that list and add wildcards as appropriate. For example, if your existing list has an entry like `https://contoso.com/a` and you want to include subpaths like `https://contoso.com/a/b` in your policy, add a wildcard to your entry so it looks like `https://contoso.com/a/*`.

- When you specify a "do not rewrite" list for an ATP Safe Links policy, you can include up to three wildcards (\*). Wildcards explicitly include prefixes or subdomains. For example, the entry `contoso.com` is not the same as `*.contoso.com/*`, because `*.contoso.com/*` allows people to visit subdomains and paths in the specified domain.

The following table lists examples of what you can enter and what effect those entries have.

****

|Example Entry|What It Does|
|---|---|
|`contoso.com`|Allows recipients to visit a site like `https://contoso.com` but not subdomains or paths.|
|`*.contoso.com/*`|Allows recipients to visit a domain, subdomains, and paths, such as `https://www.contoso.com`, `https://www.contoso.com`, `https://maps.contoso.com`, or `https://www.contoso.com/a`. <br/><br/> This entry is inherently better than `*contoso.com*`, because it doesn't include potentially fraudulent sites, like `https://www.falsecontoso.com` or `https://www.false.contoso.completelyfalse.com`|
|`https://contoso.com/a`|Allows specific recipients to visit a site like `https://contoso.com/a`, but not subpaths like `https://contoso.com/a/b`|
|`https://contoso.com/a/*`|Allows specific recipients to visit a site like `https://contoso.com/a` and subpaths like `https://contoso.com/a/b`|
|
