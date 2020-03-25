---
title: Recommended secure document policies - Microsoft 365 Enterprise | Microsoft Docs
description: Describes the policies for Microsoft recommendations about how to secure SharePoint file access.
author: BrendaCarter
manager: laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: bcarter
ms.date: 06/07/2018
ms.reviewer: martincoetzer
ms.custom: 
- it-pro
- goldenconfig
ms.collection: 
- M365-identity-device-management
- M365-security-compliance

---

# Policy recommendations for securing SharePoint sites and files

This article describes how to implement the recommended identity and device-access policies to protect SharePoint Online and OneDrive for Business. This guidance builds on the [Common identity and device access policies](identity-access-policies.md).

These recommendations are based on three different tiers of security and protection for SharePoint files that can be applied based on the granularity of your needs: **baseline**, **sensitive**, and **highly regulated**. You can learn more about these security tiers, and the recommended client operating systems, referenced by these recommendations in [the overview](microsoft-365-policies-configurations.md).

In addition to implementing this guidance, be sure to configure SharePoint sites with the right amount of protection, including setting appropriate permissions for sensitive and highly-regulated content. For more information on creating sites for baseline, sensitive, and highly-regulated protection, see [Secure SharePoint Online sites and files](https://docs.microsoft.com/office365/enterprise/secure-sharepoint-online-sites-and-files).

## Updating common policies to include SharePoint and OneDrive for Business

The following diagram illustrates the set of recommended policies for protecting files in SharePoint Online and OneDrive for Business. It indicates which policies should be updated or newly created to add protection for SharePoint Online and OneDrive for Business.

![Summary of policies for SharePoint Online and OneDrive](../media/identity-access-ruleset-sharepoint.png)

If you included SharePoint Online when you created the common policies, you only need to create the new policies. When configuring conditional access rules, SharePoint Online includes OneDrive for Business.

The new policies implement device protection for sensitive and highly-regulated content by applying specific access requirements to SharePoint sites that you specify.

The following table lists the policies you either need to review and update or create new for SharePoint Online. The common policies link to the associated configuration instructions in the [Common identity and device access policies](identity-access-policies.md) article.

|Protection level|Policies|More information|
|:---------------|:-------|:----------------|
|**Baseline**|[Require MFA when sign-in risk is *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint Online in the assignment of cloud apps|
|        |[Block clients that don't support modern authentication](identity-access-policies.md#block-clients-that-dont-support-modern-authentication)|Include SharePoint Online in the assignment of cloud apps|
|        |[Define app protection policies](identity-access-policies.md#define-app-protection-policies)|Be sure all recommended apps are included in the list of apps. Be sure to update the policy for each platform (iOS, Android, Windows)|
|        |[Require compliant PCs](identity-access-policies.md#require-compliant-pcs-but-not-compliant-phones-and-tablets)|Include SharePoint Online in list of cloud apps|
|        |[Use app enforced restrictions in SharePoint Online](#use-app-enforced-restrictions-in-sharepoint-online)|Add this new policy. This tells Azure AD to use the settings specified in SharePoint Online. This rule applies to all users, but only affects access to sites included in SharePoint Online access policies|
|**Sensitive**|[Require MFA when sign-in risk is *low*, *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint Online in the assignments of cloud apps|
|         |[Require compliant PCs *and* mobile devices](identity-access-policies.md#require-compliant-pcs-and-mobile-devices)|Include SharePoint Online in the list of cloud apps|
||[SharePoint Online access control policy](#sharepoint-online-access-control-policies): Allow browser-only access to specific SharePoint sites from unmanaged devices|This prevents edit and download of files. Use PowerShell to specify sites|
|**Highly regulated**|[*Always* require MFA](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint Online in the assignment of cloud apps|
||[SharePoint Online access control policy](#use-app-enforced-restrictions-in-sharepoint-online): Block access to specific SharePoint sites from unmanaged devices|Use PowerShell to specify sites|

## Use app-enforced restrictions in SharePoint Online

If you implement access controls in SharePoint Online, you must create this conditional access policy in Azure AD to tell Azure AD to enforce the policies you configure in SharePoint Online. This rule applies to all users, but only affects access to the sites you specify using PowerShell when you create the access controls in SharePoint Online.

To configure this policy see "Block or limit access to specific SharePoint site collections or OneDrive accounts" in this article: [Control access from unmanaged devices](https://support.office.com/article/Control-access-from-unmanaged-devices-5ae550c4-bd20-4257-847b-5c20fb053622).

## SharePoint Online access control policies

Microsoft recommends you protect content in SharePoint sites with sensitive and highly-regulated content with device access controls. You do this by creating a policy that specifies the level of protection and the sites to apply the protection to.

- Sensitive sites: Allow browser-only access. This prevents users from editing and downloading files.
- Highly regulated sites: Block access from unmanaged devices.

See "Block or limit access to specific SharePoint site collections or OneDrive accounts" in this article: [Control access from unmanaged devices](https://support.office.com/article/Control-access-from-unmanaged-devices-5ae550c4-bd20-4257-847b-5c20fb053622).

## How these policies work together

It's important to understand that SharePoint site permissions are typically based on business need for access to sites. These permissions are managed by site owners and can be highly dynamic. Using SharePoint device access policies ensures protection to these sites, regardless of whether users are assigned to an Azure AD group associated with baseline, sensitive, or highly regulated protection.

The following illustration provides an example of how SharePoint device access policies protect access to sites.

![How SharePoint device access policies protect sites](../media/SharePoint-rules-scenario.png)

In the illustration:

- James is assigned to conditional access policies associated with baseline protection, but he can be given access to SharePoint sites associated with sensitive or highly-regulated protection.
- If James accesses a sensitive or highly-regulated site he is a member of using his PC, his access is granted as long as his PC is compliant.
- If James accesses a sensitive site he is a member of using his unmanaged phone, which is allowed for baseline users, he will receive browser-only access to the sensitive site due to the device access policy configured for this site.
- If James accesses a highly regulated site he is a member of using his unmanaged phone, he will be blocked due to the access policy configured for this site. He can only access this site using his managed and compliant PC.

## Next steps

[Secure SharePoint Online sites and files](https://docs.microsoft.com/office365/enterprise/secure-sharepoint-online-sites-and-files)
