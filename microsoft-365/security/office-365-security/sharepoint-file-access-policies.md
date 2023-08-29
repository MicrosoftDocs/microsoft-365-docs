---
title: Recommended secure document policies
description: Describes the policies for Microsoft recommendations about how to secure SharePoint file access.
ms.author: dansimp
author: dansimp
manager: dansimp
ms.service: microsoft-365-security
ms.topic: conceptual
audience: Admin
f1.keywords:
  - NOCSH
ms.reviewer: martincoetzer
ms.custom:
  - it-pro
  - goldenconfig
ms.collection:
  - M365-identity-device-management
  - m365-security
  - m365solution-identitydevice
  - m365solution-scenario
  - zerotrust-solution
  - highpri
  - tier1
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Policy recommendations for securing SharePoint sites and files

This article describes how to implement the recommended Zero Trust identity and device access policies to protect SharePoint and OneDrive for Business. This guidance builds on the [common identity and device access policies](identity-access-policies.md).

These recommendations are based on three different tiers of security and protection for SharePoint files that can be applied based on the granularity of your needs: **starting point**, **enterprise**, and **specialized security**. You can learn more about these security tiers, and the recommended client operating systems, referenced by these recommendations in [the overview](microsoft-365-policies-configurations.md).

In addition to implementing this guidance, be sure to configure SharePoint sites with the right amount of protection, including setting appropriate permissions for enterprise and specialized security content.

## Updating common policies to include SharePoint and OneDrive for Business

To protect files in SharePoint and OneDrive, the following diagram illustrates which policies to update from the common identity and device access policies.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-access-ruleset-sharepoint.png" alt-text="The summary of policy updates for protecting the access to SharePoint" lightbox="../../media/microsoft-365-policies-configurations/identity-access-ruleset-sharepoint.png":::

If you included SharePoint when you created the common policies, you only need to create the new policies. For Conditional Access policies, SharePoint includes OneDrive.

The new policies implement device protection for enterprise and specialized security content by applying specific access requirements to SharePoint sites that you specify.

The following table lists the policies you either need to review and update or create new for SharePoint. The common policies link to the associated configuration instructions in the [Common identity and device access policies](identity-access-policies.md) article.

|Protection level|Policies|More information|
|---|---|---|
|**Starting point**|[Require MFA when sign-in risk is *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint in the assignment of cloud apps.|
||[Block clients that don't support modern authentication](identity-access-policies.md#block-clients-that-dont-support-multifactor-authentication)|Include SharePoint in the assignment of cloud apps.|
||[Apply APP data protection policies](identity-access-policies.md#app-protection-policies)|Be sure all recommended apps are included in the list of apps. Be sure to update the policy for each platform (iOS, Android, Windows).|
||[Use app enforced restrictions in SharePoint](#use-app-enforced-restrictions-in-sharepoint)|Add this new policy. This tells Azure Active Directory (Azure AD) to use the settings specified in SharePoint. This policy applies to all users, but only affects access to sites included in SharePoint access policies.|
|**Enterprise**|[Require MFA when sign-in risk is *low*, *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint in the assignments of cloud apps.|
||[Require compliant PCs *and* mobile devices](identity-access-policies.md#require-compliant-pcs-and-mobile-devices)|Include SharePoint in the list of cloud apps.|
||[SharePoint access control policy](#sharepoint-access-control-policies): Allow browser-only access to specific SharePoint sites from unmanaged devices.|This prevents editing and downloading of files. Use PowerShell to specify sites.|
|**Specialized security**|[*Always* require MFA](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include SharePoint in the assignment of cloud apps.|
||[SharePoint access control policy](#use-app-enforced-restrictions-in-sharepoint): Block access to specific SharePoint sites from unmanaged devices.|Use PowerShell to specify sites.|

## Use app-enforced restrictions in SharePoint

If you implement access controls in SharePoint, Conditional Access policies are created in Azure AD to tell Azure AD to enforce the policies you configure in SharePoint. By default, this policy applies to all users, but only affects access to the sites you specify using PowerShell when you create the access controls in SharePoint. The policy can also be scoped for specific users, groups, or sites.

To configure this policy see "Block or limit access to specific SharePoint site collections or OneDrive accounts" in [Control access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices).

## SharePoint access control policies

Microsoft recommends you protect content in SharePoint sites with enterprise and specialized security content with device access controls. You do this by creating a policy that specifies the level of protection and the sites to apply the protection to.

- Enterprise sites: Allow browser-only access. This prevents users from editing and downloading files.
- Specialized security sites: Block access from unmanaged devices.

See "Block or limit access to specific SharePoint site collections or OneDrive accounts" in [Control access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices).

## How these policies work together

It's important to understand that SharePoint site permissions are typically based on business need for access to sites. These permissions are managed by site owners and can be highly dynamic. Using SharePoint device access policies ensures protection to these sites, regardless of whether users are assigned to an Azure AD group associated with starting point, enterprise, or specialized security protection.

The following illustration provides an example of how SharePoint device access policies protect access to sites for a user.

:::image type="content" source="../../media/microsoft-365-policies-configurations/SharePoint-rules-scenario.png" alt-text="An example of how SharePoint device access policies protect sites" lightbox="../../media/microsoft-365-policies-configurations/SharePoint-rules-scenario.png":::

James has starting point Conditional Access policies assigned, but he can be given access to SharePoint sites with enterprise or specialized security protection.

- If James accesses a site he is a member of with enterprise or specialized security protection using his PC, his access is granted.
- If James accesses an enterprise protection site he is a member of using his unmanaged phone, which is allowed for starting point users, he will receive browser-only access to the enterprise site due to the device access policy configured for this site.
- If James accesses a specialized security site he is a member of using his unmanaged phone, he will be blocked due to the access policy configured for this site. He can only access this site using his managed PC.

## Next step

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png" alt-text="The Step 4 - Policies for Microsoft 365 cloud apps" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png":::

Configure Conditional Access policies for:

- [Microsoft Teams](teams-access-policies.md)
- [Exchange Online](secure-email-recommended-policies.md)
