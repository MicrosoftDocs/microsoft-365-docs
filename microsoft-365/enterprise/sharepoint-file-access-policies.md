---
title: Recommended secure document policies - Microsoft 365 Enterprise | Microsoft Docs
description: Describes the policies for Microsoft recommendations about how to secure SharePoint file access.
author: BrendaCarter
manager: laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 06/07/2019
ms.author: bcarter
ms.reviewer: martincoetzer
ms.custom: it-pro
---

# Policy recommendations for securing SharePoint Sites and files
This article describes how to implement the recommended identity and device access policies to protect SharePoint Online and OneDrive for Business. This guidance builds on the [Common identity and device access policies](identity-access-policies.md). 


These recommendations are based on three different tiers of security and protection for SharePoint files that can be applied based on the granularity of your needs: **baseline**, **sensitive**, and **highly regulated**. You can learn more about these security tiers, and the recommended client operating systems, referenced by these recommendations in the [recommended security policies and configurations introduction](microsoft-365-policies-configurations.md).

##Updating common policies to include SharePoint and OneDrive for Business
The following diagram illustrates the set of recommended policies for protecting files in SharePoint Online and OneDrive for Business. It indicates which policies will be updated or newly created to add protection for SharePoint Online and OneDrive for Business.

![Summary of policies for SharePoint Online and OneDrive](../images/identity-access-ruleset-sharepoint.png)

If you included SharePoint Online when you created the common policies, you only need to create the new polcies. When configuring conditional access rules, SharePoint Online includes OneDrive for Business.

The new policies implement device protection for sensitive and highly regulated content by applying specific access requirements to SharePoint sites that you specify. 

 Reveiw the policies listed in the following table and either make the recommended additions, or confirm that these are already incluced. Each rule links to the associated configuration instructions in the [Common identity and device access policies](identity-access-policies.md) article.


|Protection level|Policies|More information|
|:---------------|:-------|:----------------|
|**Baseline**|[Require MFA when sign-in risk is *medium* or *high*](#require-mfa-when-sign-in-risk-is-medium-or-high)|Include SharePoint Online in the assignments of cloud apps.|
|        |[Block clients that don't support modern authentication](#block-clients-that-dont-support-modern-authentication)|Include SharePoint Online in the assignments of cloud apps.|
|        |[Define app protection policies](#define-app-protection-policies)|Be sure all recommended apps are included in the list of apps. Be sure to update the policy for each platform (iOS, Android, Windows).|
|        |[Require compliant PCs *or* approved apps](#require-compliant-pcs-or-approved-apps)|Include SharePoint Online in list of cloud apps.|
|        |Use app enforced restrictions in SharePoint Online|Add this new policy. This tells Azure AD to use the settings specified in SharePoint Online. This rule applies to all users but only affects access to sites included in SharePoint Online access policies.
|**Sensitive**|[Require MFA when sign-in risk is *low*, *medium* or *high*](#require-mfa-when-sign-in-risk-is-low-medium-or-high)| Include SharePoint Online in the assignments of cloud apps.|
|         |[Require compliant PCs *and* mobile devices](#require-compliant-pcs-and-mobile-devices)|Include SharePoint Online in the list of cloud apps.|
||SharePoint Online access control policy: Allow browser-only access to specific SharePoint sites from unmanaged devices|This prevents edit and download of files. User PowerShell to specify sites.|
|**Highly regulated**|[*Always* requrie MFA](#always-require-mfa)|Include SharePoint Online in the assignments of cloud apps. |
||SharePoint Online access control policy: Block access to specific SharePoint sites from unmanaged devices|Use PowerShell to specify sites.|

## Use app enforced restrictions in SharePoint Online
If you implement access controls in SharePoint Online, you must create this conditional access policy in Azure AD to tell Azure AD to enforce the policies you configure in SharePoint Online. This rule applies to all users, but only affects access to the sites you specify using PowerShell when you create the access controls in SharePoint Online.

To configure this policy see "Block or limit access to specific SharePoint site collections or OneDrive accounts" in this article: [Control access from unmanaged devices](https://support.office.com/en-us/article/Control-access-from-unmanaged-devices-5ae550c4-bd20-4257-847b-5c20fb053622?ui=en-US&rs=en-US&ad=US).


## SharePoint Online access control policies
Microsoft recommends you protect content in SharePoint sites with sensitive and highly regulated content with device access controls. You do this by creating a policy that specifies the level of protection and the sites to apply the protection to. 
- Sensitive sites — Allow browser-only access. This prevents users from editing and downloading files.
- Highly regulated sites — Block access from unmanaged devices.

See "Block or limit access to specific SharePoint site collections or OneDrive accounts" in this article: [Control access from unmanaged devices](https://support.office.com/en-us/article/Control-access-from-unmanaged-devices-5ae550c4-bd20-4257-847b-5c20fb053622?ui=en-US&rs=en-US&ad=US) . 


<!---
##Block access to content from unmanaged devices (SharePoint admin center)
In the case of SharePoint Online, when a conditional access policy is applied to enforce Intune app protection policies, this might not apply to all applications that access SharePoint Online. Some applications, such as Exchange, have access to some SharePoint resources. For example, Exchange allows attaching SharePoint files by default. Conditional access policies applied to SharePoint Online will not restrict this access. 

To ensure baseline protection is applied uniformly, regardless of which service is accessing SharePoint Online and OneDrive for Business, configure access controls directly in SharePoint admin center. We recommend you configure the following:
- Block access from unmanaged devices. This includes devices that aren't compliant or joined to a domain. 
- Block access from app that don't use modern authentication.

See [Control access from unmanaged devices](https://support.office.com/en-us/article/Control-access-from-unmanaged-devices-5ae550c4-bd20-4257-847b-5c20fb053622?ui=en-US&rs=en-US&ad=US).
-->



## Next steps
[Secure SharePoint Online sites and files](https://docs.microsoft.com/en-us/office365/enterprise/secure-sharepoint-online-sites-and-files)
