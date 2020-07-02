---
title: Adjust conditional access
description:  How to exclude certain Microsoft accounts
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Adjust conditional access

If you use [conditional access](https://docs.microsoft.com/azure/active-directory/conditional-access/overview) policies in your organization, you'll have to set them to exclude certain accounts so that Microsoft Managed Desktop can work properly.

To do this, follow these steps:

1. Refer to the "Rollback steps" section of [How To: Plan your Conditional Access deployment in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/conditional-access/plan-conditional-access#rollback-steps).
2. Follow the steps there to exclude the *Modern Workplace Service Accounts* group for all policies.


If you have any difficulty with conditional access, contact admin [support](../working-with-managed-desktop/admin-support.md).

## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md)
2. Adjust conditional access (this topic)
3. [Assign licenses](assign-licenses.md)
4. [Deploy Intune Company Portal](company-portal.md)
5. [Enable Enterprise State Roaming](enterprise-state-roaming.md)
6. [Set up devices](set-up-devices.md)
7. [Get your users ready to use devices](get-started-devices.md)
8. [Deploy apps](deploy-apps.md)
