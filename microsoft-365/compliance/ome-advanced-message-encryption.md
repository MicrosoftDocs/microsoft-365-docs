---
title: "Advanced Message Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.date: 05/12/2022
ms.collection: 
- Strat_O365_IP
- purview-compliance
search.appverid:
- MET150
description: "Advanced Message Encryption helps organizations meet their compliance obligations by enabling admins to do even more with protected messages."
---

# Advanced Message Encryption

Microsoft Purview Advanced Message Encryption is included in [Microsoft 365 Enterprise E5](https://www.microsoft.com/microsoft-365/enterprise/home), Office 365 E5, Microsoft 365 E5 (Nonprofit Staff Pricing), Office 365 Enterprise E5 (Nonprofit Staff Pricing), and Office 365 Education A5. If your organization has a subscription that does not include Microsoft Purview Advanced Message Encryption, you can purchase it with the Microsoft 365 E5 Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), or the Office 365 Advanced Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), Office 365 SKUs, or the Microsoft 365 E5/A5 Information Protection and Governance SKU add-on for Microsoft 365 A3/E3.

Advanced Message Encryption helps customers meet compliance obligations that require more flexible controls over external recipients and their access to encrypted emails. With Advanced Message Encryption in Office 365, you can control sensitive emails shared outside the organization with automatic policies and track those activities through the encrypted message portal access logs. You configure these policies to identify sensitive information types such as PII, Financial, or Health IDs, or you can use keywords to enhance protection. Once you've configured the policies, you pair policies with custom branded email templates and then add an expiration date for extra control of emails that fit the policy. Also, admins can further control encrypted emails accessed externally through a secure web portal by revoking access to the mail at any time.

You can only revoke and set an expiration date for emails sent to external recipients.

## Get started with Microsoft Purview Advanced Message Encryption

The following articles describe how you set up and use Advanced Message Encryption.

Your organization must have a subscription that includes Microsoft Purview Advanced Message Encryption. For detailed information about supported subscriptions, see the [Message policy and compliance service description](/office365/servicedescriptions/exchange-online-service-description/message-policy-and-compliance).

If you do not have Office 365 Message Encryption set up already, see [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md).

With Advanced Message Encryption, you're not limited to a single branding template. Instead, you can create and use multiple branding templates. Adding custom branding also lets you enable tracking a revocation of encrypted messages. For information, see [Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md). When you use custom branding, external recipients receive a notification email that contains a link to the OME portal. The mail flow rule determines which branding template the notification email and OME Portal use. This way, your secure content isn't sent outside your organization.

You can only revoke messages and apply expiration dates to messages that users receive through the portal. In other words, email that has a custom branding template applied. For more information and an example, see the guidance in [Ensure all external recipients use the OME Portal to read encrypted mail](manage-office-365-message-encryption.md#ensure-all-external-recipients-use-the-ome-portal-to-read-encrypted-mail).

[Set an expiration date for email encrypted by Microsoft Purview Advanced Message Encryption](ome-advanced-expiration.md). Control sensitive emails shared outside the organization with automatic policies that enhance protection by expiring access through a secure web portal to encrypted emails.

[Revoke email encrypted by Microsoft Purview Advanced Message Encryption](revoke-ome-encrypted-mail.md). Control sensitive emails shared outside the organization and enhance protection by revoking access through a secure web portal to encrypted emails.

[Encrypted message portal activity log by Microsoft Purview Advanced Message Encryption](ome-message-access-logs.md). Monitor sensitive emails shared outside the organization in the encrypted message portal.
