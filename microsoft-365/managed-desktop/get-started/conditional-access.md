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

After you've completed enrollment in Microsoft Managed Desktop, you need to adjust the Microsoft Intune and Azure Active Directory (Azure AD) settings specified in this article to allow for management and maintain security. Set the following settings to exclude specific Azure AD groups that contain Microsoft Managed Desktop devices and users. For steps to exclude groups, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups#exclude-users).

> [!NOTE]
> If you make any changes after enrollment to policies in Microsoft Intune, Azure Active Directory, or Microsoft 365, it's possible that Microsoft Managed Desktop could stop operating properly. To avoid problems with Microsoft Managed Desktop operations, check the specific settings described in [Fix issues found by the readiness assessment tool](../get-ready/readiness-assessment-fix.md) before you change any policies.


## Microsoft Intune settings

- Autopilot deployment profile: for Autopilot profiles created by admins in your company, exclude the **Modern Workplace Devices -All** Azure AD group. For steps, see [Enroll Windows devices in Intune by using Windows Autopilot](https://docs.microsoft.com/mem/autopilot/enrollment-autopilot). Do not exclude the **Modern Workplace Devices -All** Azure AD group from any deployment policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name (for example, **Modern Workplace Autopilot Profile**). 
- Conditional Access policies: for conditional access policies created by admins in your company, exclude the **Modern Workplace Service Accounts** Azure AD group. For steps, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups). Do not exclude the **Modern Workplace Devices -All** Azure AD group from any policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name (for example, **Modern Workplace Secure Workstation**).
- Multifactor authentication: make sure any conditional access policies created by admins in your company that require multifactor authentication exclude the **Modern Workplace Service Accounts** Azure AD group. For more information, see [Conditional access policies](../get-ready/readiness-assessment-fix.md#conditional-access-policies) and [Conditional Access: Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).
- Security baseline: for security baseline policies created by admins in your company, exclude the **Modern Workplace Devices -All**  Azure AD group. For steps, see [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/protect/security-baselines). Do not exclude the **Modern Workplace Devices -All** Azure AD group from from any policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name (for example, **Modern Workplace Security Baseline**).
- Windows 10 update ring: for Windows 10 update ring policies created by admins in your company, exclude the **Modern Workplace Devices -All**  Azure AD group. For steps, see [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure). Do not exclude the **Modern Workplace Devices -All** Azure AD group from any policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name (for example, the **Modern Workplace Update** policy).


## Azure Active Directory settings

Self-service password reset: choose **Selected** setting, and then select **Modern Workplace Devices -All** Azure AD group. For more information, see [Tutorial: Enable users to unlock their account or reset passwords using Azure Active Directory self-service password reset](https://docs.microsoft.com/azure/active-directory/authentication/tutorial-enable-sspr).



## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md)
2. Adjust settings after enrollment (this article)
3. [Assign licenses](assign-licenses.md)
4. [Deploy Intune Company Portal](company-portal.md)
5. [Enable Enterprise State Roaming](enterprise-state-roaming.md)
6. [Set up devices](set-up-devices.md)
7. [Get your users ready to use devices](get-started-devices.md)
8. [Deploy apps](deploy-apps.md)
