---
title: Set an expiration date for email encrypted by Office 365 Advanced Message Encryption
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 10/8/2019
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
description: Use Office 365 Advanced Message Encryption to extend your email security by setting an expiration date on emails through a custom branded template.
ms.custom: seo-marvel-apr2020
---

# Set an expiration date for email encrypted by Office 365 Advanced Message Encryption

Office 365 Advanced Message Encryption is included in [Microsoft 365 Enterprise E5](https://www.microsoft.com/microsoft-365/enterprise/home), Office 365 E5, Microsoft 365 E5 (Nonprofit Staff Pricing), Office 365 Enterprise E5 (Nonprofit Staff Pricing), and Office 365 Education A5. If your organization has a subscription that does not include Office 365 Advanced Message Encryption, you can purchase it with the Microsoft 365 E5 Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), or the Office 365 Advanced Compliance SKU add-on for Microsoft 365 E3, Microsoft 365 E3 (Nonprofit Staff Pricing), or Office 365 SKUs.

You can use message expiration on emails that your users send to external recipients who use the OME Portal to access encrypted emails. You force recipients to use the OME portal to view and reply to encrypted emails sent by your organization by using a custom branded template that specifies an expiration date in Windows PowerShell.

As an Office 365 global administrator, when you apply your company brand to customize the look of your organization's email messages, you can also specify an expiration for these email messages. With Office 365 Advanced Message Encryption, you can create multiple templates for encrypted emails that originate from your organization. Using a template, you can control how long recipients have access to mail sent by your users.

When an end user receives mail that has an expiration date set, the user sees the expiration date in the wrapper email. If a user tries to open an expired mail, an error appears in the OME portal.

You can only set expiration dates for emails to external recipients.

With Office 365 Advanced Message Encryption, anytime you apply custom branding, the Office 365 applies the wrapper to email that fits the mail flow rule to which you apply the template. In addition, you can only use expiration if you use custom branding.

## Create a custom branding template to force mail expiration by using PowerShell

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) with an account that has global administrator permissions in your organization.

2. Run the New-OMEConfiguration cmdlet.

    ```powershell
    New-OMEConfiguration -Identity "Expire in 7 days" -ExternalMailExpiryInDays 7
    ```

Where:

- `Identity` is the name of the custom template.

- `ExternalMailExpiryInDays` identifies the number of days that recipients can keep mail before it expires. You can use any value between 1–730 days.

## More information about Office 365 Advanced Message Encryption

- [Office 365 Advanced Message Encryption](ome-advanced-message-encryption.md)

- [Revoke email encrypted by Office 365 Advanced Message Encryption](revoke-ome-encrypted-mail.md)

- [Message policy and compliance service description](/office365/servicedescriptions/exchange-online-service-description/message-policy-and-compliance)