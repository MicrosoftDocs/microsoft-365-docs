---
title: Enable Enterprise State Roaming
description:  This article describes how to enable enterprise state roaming
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Enable Enterprise State Roaming

[Enterprise State Roaming](/azure/active-directory/devices/enterprise-state-roaming-overview) lets users securely synchronize user and application settings data to the cloud. This means they'll have the same experience no matter which Windows device they sign into. For example, if you replace one of their Microsoft Managed Desktop devices with a new device, it will look and behave exactly the same as the last one.

Enterprise State Roaming is an optional feature for the Microsoft Managed Desktop service that you can configure for your users. It isn't included or managed as part of Microsoft Managed Desktop.

To enable Enterprise State Roaming, follow the steps in [Enable Enterprise State Roaming in Azure Active Directory](/azure/active-directory/devices/enterprise-state-roaming-enable).

>[!NOTE]
>If you enable Enterprise State Roaming, your preferred language list will overwrite the language selected during device setup. Although users can fix this easily, it could cause an inconsistent localization experience initially. Determine if Enterprise State Roaming is right for your users before setting up devices.

## Steps to get started with Microsoft Managed Desktop

1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md).
2. [Adjust conditional access](conditional-access.md).
3. [Assign licenses](assign-licenses.md).
4. [Deploy Intune Company Portal](company-portal.md).
5. Enable Enterprise State Roaming (this topic).
6. [Prepare devices](prepare-devices.md).
7. [Get your users ready to use devices](get-started-devices.md).
8. [Deploy apps](deploy-apps.md).
