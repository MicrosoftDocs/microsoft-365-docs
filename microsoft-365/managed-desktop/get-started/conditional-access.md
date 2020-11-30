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

After you've completed enrollment in Microsoft Managed Desktop, you need to adjust certain Microsoft Intune and Azure Active Directory (Azure AD) settings to allow for management and maintain security. Set the following settings to exclude the Azure AD groups that contain Microsoft Managed Desktop devices and users. For steps to exclude groups, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups#exclude-users).

## Microsoft Intune settings

- Autopilot deployment profile: exclude the **Modern Workplace Devices -All**  Azure AD group. For steps, see [Enroll Windows devices in Intune by using Windows Autopilot](https://docs.microsoft.com/mem/autopilot/enrollment-autopilot).
- Conditional Access policies: exclude the **Modern Workplace Service Accounts** Azure AD group. For steps, see [Conditional Access: Users and groups](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-users-groups).
- Multifactor authentication: make sure any conditional access policies that require multifactor authentication exclude the **Modern Workplace Service Accounts** Azure AD group. For more information, see [Conditional access policies](#conditional-access-policies) and [Conditional Access: Require MFA for all users](https://docs.microsoft.com/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).
- Security baseline: exclude the **Modern Workplace Devices -All**  Azure AD group. For steps, see [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/protect/security-baselines).
- Windows 10 update ring: exclude the **Modern Workplace Devices -All**  Azure AD group. For steps, see [Manage Windows 10 software updates in Intune](https://docs.microsoft.com/mem/intune/protect/windows-update-for-business-configure).


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
