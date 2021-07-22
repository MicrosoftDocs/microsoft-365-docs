---
title: "Redirect users from the Office 365 Security and Compliance center to the Microsoft 365 compliance center"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.service: O365-seccomp
audience: ITPro
ms.topic: article
localization_priority: Normal
description: Learn about automatically redirecting Office 365 Security and Compliance center users to the Microsoft 365 compliance center..
ms.collection: M365-security-compliance
---

# Redirect users from the Office 365 Security and Compliance center to the Microsoft 365 compliance center

This article explains how automatic redirection works for users accessing compliance solutions from the Office 365 Security and Compliance Center (protection.office.com) to the Microsoft 365 compliance center (compliance.microsoft.com).

## What to expect

Automatic redirection is enabled by default for all users accessing compliance-related solutions in Office 365 Security and Compliance (protection.office.com):

- [Advanced eDiscovery](overview-ediscovery-20.md)
- [Communication compliance](communication-compliance.md)
- [Content search](search-for-content.md)
- [Core eDiscovery](get-started-core-ediscovery.md)
- [Data classification](data-classification-overview.md)
- [Data loss prevention (DLP)](dlp-learn-about-dlp.md)
- [Data subject requests](/compliance/regulatory/gdpr-manage-gdpr-data-subject-requests-with-the-dsr-case-tool)
- [Information governance](manage-information-governance.md)
- [Records management](records-management.md)

Users are automatically routed to the same compliance solutions in the Microsoft 365 compliance center (compliance.microsoft.com).

This feature and associated controls does not enable the automatic redirection of Security features for Microsoft Defender for Office 365. To enable the redirection for security features, see [Redirecting accounts from Microsoft Defender for Office 365 to the Microsoft 365 security center](/microsoft-365/security/defender/microsoft-365-security-mdo-redirection) for details.

## Can I go back to using the former portal?

If something isn't working for you or if there's anything you're unable to complete through the Microsoft 365 compliance center portal, you can temporarily disable the automatic redirection for all users.

> [!IMPORTANT]
> The Microsoft 365 compliance center is the replacement management portal for compliance solutions currently managed in the Office 365 Security and Compliance center. All Microsoft 365 compliance solutions will be managed solely in the Microsoft 365 compliance center. Disabling redirection to the Microsoft 365 compliance center should be considered a short-term solution.

To switch back to the Office 365 Security and Compliance center (protection.microsoft.com) for all users, complete the following steps:

1. Sign in to the [Microsoft 365 compliance center](https://compliance.microsoft.com) as a global administrator or using any account with compliance administrator permissions in Azure Active directory.
2. Navigate to **Settings** > **Compliance center redirection**.
3. Toggle the Automatic redirection setting to **Off**.
4. Select **Turn off** and share feedback when prompted.

Once disabled, users will no longer be routed to compliance.microsoft.com and they will be directed to the Office 365 Security and Compliance center (protection.microsoft.com). This setting can be enabled again at any time by Global or Compliance admins.

## Related information

- [Microsoft 365 compliance center overview](/microsoft-365/compliance/microsoft-365-compliance-center)
