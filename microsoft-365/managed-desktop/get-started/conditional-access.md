---
title: Adjust settings after enrollment
description:  How to exclude certain Microsoft accounts
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Adjust settings after enrollment

After you’ve completed enrollment in Microsoft Managed Desktop, you need to review and take the steps below to ensure that your existing configurations within Microsoft Endpoint Manager and Azure Active Directory (Azure AD) do not conflict with Microsoft Managed Desktop. Run the readiness assessment tool [readiness assessment tool](https://aka.ms/mmdart) after these changes to ensure these specific settings are still compatible with Microsoft Managed Desktop. Note some checks in the assessment tool, such as Microsoft Managed Desktop service accounts, will show as Not ready after enrollment due to changes made during Microsoft Managed Desktop enrollment.

> [!NOTE]
> If you make any changes after enrollment to policies in Microsoft Intune, Azure Active Directory, or Microsoft 365, it's possible that Microsoft Managed Desktop could stop operating properly. To avoid problems with Microsoft Managed Desktop operations, check the specific settings described in [Fix issues found by the readiness assessment tool](../get-ready/readiness-assessment-fix.md) before you change any policies.


## Microsoft Intune settings

- Autopilot deployment profile: if your company has deployed an Autopilot policy, update each policy to exclude the **Modern Workplace Devices -All** Azure AD group.  To do this, in the Excluded groups section under Assignments, select the **Modern Workplace Devices -All** Azure AD group that was created during Microsoft Managed Desktop enrollment.  Do not exclude the **Modern Workplace Devices -All** Azure AD group from the Microsoft Managed Desktop created deployment policy, Modern Workplace Autopilot Profile.
- Conditional Access policies: for conditional access policies created by admins in your company, exclude the **Modern Workplace Service Accounts** Azure AD group. For steps, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups). Do not exclude the **Modern Workplace Devices -All** Azure AD group from any policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name (for example, **Modern Workplace Secure Workstation**).
- Multifactor authentication: make sure any conditional access policies created by admins in your company that require multifactor authentication exclude the **Modern Workplace Service Accounts** Azure AD group. For more information, see [Conditional access policies](../get-ready/readiness-assessment-fix.md#conditional-access-policies) and [Conditional Access: Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).
- Windows 10 update ring: for any Windows 10 update ring policies created by admins in your company, exclude the **Modern Workplace Devices -All** Azure AD group from each policy. For steps, see [Create and assign update rings](https://docs.microsoft.com/en-us/mem/intune/protect/windows-10-update-rings#create-and-assign-update-rings). Do not exclude **Modern Workplace Devices -All** Azure AD group from Microsoft Managed Desktop created Windows 10 update ring policies, which have Modern Workplace in the name (e.g. Modern Workplace Update Policy [Broad], Modern Workplace Update Policy [Fast], Modern Workplace Update Policy [First], Modern Workplace Update Policy [Test]).


## Azure Active Directory settings

Self-service password reset: if your company is using Self-service password reset for all users, adjust the assignment to exclude Microsoft Managed Desktop service accounts. To do this, create a Azure AD dynamic group for all users except Microsoft Managed Desktop service accounts and then use that group for assignment instead of all users.   An example of the dynamic query is as follows: 
(user.objectID -ne null) and (user.userPrincipalName -ne "mstest@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "msadmin@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "msadminint@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "mwaas_wdgsoc@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "mwaas_soc_ro@TENANT.onmicrosoft.com") and (user.objectID -ne null) where @TENANT should be replaced by your tenant domain.



## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md)
2. Adjust settings after enrollment (this article)
3. [Assign licenses](assign-licenses.md)
4. [Deploy Intune Company Portal](company-portal.md)
5. [Enable Enterprise State Roaming](enterprise-state-roaming.md)
6. [Set up devices](set-up-devices.md)
7. [Get your users ready to use devices](get-started-devices.md)
8. [Deploy apps](deploy-apps.md)
