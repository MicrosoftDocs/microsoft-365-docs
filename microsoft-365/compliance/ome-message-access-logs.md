---
title: "Encrypted message access log by Advanced Message Encryption"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.date: 03/31/2022
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
description: "Access logs are available for encrypted messages retrieved through the OME portal."
---

# Encrypted message access log by Advanced Message Encryption

Access logs are available for encrypted messages through the Office 365 Message Encryption (OME) portal that lets your organization determine when messages are read, and forwarded by your external recipients. To ensure logs are available for any external recipients, you should enable tracking and should apply a custom branding template to protected emails sent by your organization to external recipients. See [Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md).

## Enabling message tracking audit logs in PowerShell

Access log can be enabled using Exchange Online PowerShell. The *-EnablePortalTrackingLogs* parameter of Set-IrmConfiguration specifies whether to enable the audit logs of accessing the OME portal. Valid values are:

- $true: Turn on audit feature.
- $false: Turn off audit feature

Example: Set-IrmConfiguration -EnablePortalTrackingLogs $true

To learn more, see [Set-IRMConfiguration (ExchangePowerShell)](/powershell/module/exchange/set-irmconfiguration).

## Message tracking audit information

Each audit entry for a tracked message will contain the following fields:

- MessageID - Contains the ID of the message being tracked. This is the key identifier used to follow a message through the system.
- Recipient - List of all recipient email addresses.
- Sender - The originating email address.
- AuthenticationMethod - Describes the authenticating method for accessing the message, for example OTP, Yahoo, Gmail, or Microsoft.
- AuthenticationStatus - Contains a value indicating that the authentication succeeded or failed.
- OperationStatus - Indicates whether the indicated operation succeeded or failed.
- AttachmentName - Name of the attachment.
- OperationProperties - A list of optional properties, for example the number of OTP passcodes sent, or the email subject.
