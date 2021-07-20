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

After you’ve completed enrollment in Microsoft Managed Desktop, some management settings might need to be adjusted. To check and adjust if needed, follow these steps:

1. Review the Microsoft Intune and Azure Active Directory settings described in the next section.
2. If any of the items apply to your environment, make the adjustments described.
3. If you want to double-check that all settings are correct, you can rerun the [readiness assessment tool](https://aka.ms/mmdart) to make sure nothing conflicts with Microsoft Managed Desktop.

> [!NOTE]
> As your operations continue in following months, if you make changes after enrollment to policies in Microsoft Intune, Azure Active Directory, or Microsoft 365 that affect Microsoft Managed Desktop, it's possible that Microsoft Managed Desktop could stop operating properly. To avoid problems with the service, check the specific settings described in [Fix issues found by the readiness assessment tool](../get-ready/readiness-assessment-fix.md) before you change the policies listed there. You can also rerun the readiness assessment tool at any time.


## Microsoft Intune settings

- Autopilot deployment profile: if you use any Autopilot policies, update each one to exclude the **Modern Workplace Devices -All** Azure AD group. To update them, in the **Excluded groups** section under **Assignments**, select the **Modern Workplace Devices -All** Azure AD group that was created during Microsoft Managed Desktop enrollment. Microsoft Managed Desktop will also have created an Autopilot profile, which will have "Modern Workplace" in the name (the **Modern Workplace Autopilot Profile**). When you update your own Autopilot profiles, make sure that you *do not* exclude the **Modern Workplace Devices -All** Azure AD group from the **Modern Workplace Autopilot Profile** that was created by Microsoft Managed Desktop.

- Conditional Access policies: If you create any new conditional access policies related to Azure AD, Microsoft Intune, or Microsoft Defender for Endpoint after Microsoft Managed Desktop enrollment, exclude the **Modern Workplace Service Accounts** Azure AD group from them. For steps, see [Conditional Access: Users and groups](/azure/active-directory/conditional-access/concept-conditional-access-users-groups). Microsoft Managed Desktop maintains separate conditional access policies to restrict access to these accounts. To review the Microsoft Managed Desktop conditional access policy (**Modern Workplace – Secure Workstation**), go to Microsoft Endpoint Manager and navigate to **Conditional Access** in **Endpoint Security**. Don't modify any Azure AD conditional access policies created by Microsoft Managed Desktop that have "Modern Workplace" in the name.

- Multifactor authentication: If you create any new multifactor authentication requirements in conditional access policies related to Azure AD, Intune, or Microsoft Defender for Endpoint after Microsoft Managed Desktop enrollment, exclude the **Modern Workplace Service Accounts** Azure AD group from them. For steps, see [Conditional Access: Users and groups](/azure/active-directory/conditional-access/concept-conditional-access-users-groups). Microsoft Managed Desktop maintains separate conditional access policies to restrict access to members of this group. To review the Microsoft Managed Desktop conditional access policy (**Modern Workplace -**), go to Microsoft Endpoint Manager and navigate to **Conditional Access** in **Endpoint Security**. 

- Windows 10 update ring: for any Windows 10 update ring policies you've created, exclude the **Modern Workplace Devices -All** Azure AD group from each policy. For steps, see [Create and assign update rings](/mem/intune/protect/windows-10-update-rings#create-and-assign-update-rings). Microsoft Managed Desktop will also have created some update ring policies, all of which will have "Modern Workplace" in the name (for example **Modern Workplace Update Policy [Broad]**, **Modern Workplace Update Policy [Fast]**, **Modern Workplace Update Policy [First]**, and **Modern Workplace Update Policy [Test]**). When you update your own policies, make sure that you *do not* exclude the **Modern Workplace Devices -All** Azure AD group from those that Microsoft Managed Desktop created.


## Azure Active Directory settings

Self-service password reset: if you use self-service password reset for all users, adjust the assignment to exclude Microsoft Managed Desktop service accounts. To adjust this assignment, create a Azure AD dynamic group for all users *except* Microsoft Managed Desktop service accounts, and then use that group for assignment instead of "all users."

To help you find and exclude the service accounts, here is an example of a dynamic query you can use:

```Console
(user.objectID -ne null) and (user.userPrincipalName -ne "MSADMIN@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "MSADMININT@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "MWAAS_SOC_RO@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "MWAAS_WDGSOC@TENANT.onmicrosoft.com") and (user.userPrincipalName -ne "MSTEST@TENANT.onmicrosoft.com")
```

In this query, replace @TENANT with your tenant domain name.



## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md)
2. Adjust settings after enrollment (this article)
3. [Assign licenses](assign-licenses.md)
4. [Deploy Intune Company Portal](company-portal.md)
5. [Enable Enterprise State Roaming](enterprise-state-roaming.md)
6. [Set up devices](set-up-devices.md)
7. [Get your users ready to use devices](get-started-devices.md)
8. [Deploy apps](deploy-apps.md)