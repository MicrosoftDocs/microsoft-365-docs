---
title: "OME message tracking and revocation"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.date: 03/22/2022
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
description: "OME auditing enables tracking and revocation of encrypted messages."
---

# Office 365 Message Encryption message tracking and revocation


## Enabling message tracking audit logs in PowerShell

This parameter is available only in the cloud-based service.
The *EnablePortalTrackingLogs* parameter specifies whether to enable the audit logs of accessing the Office 365 Message Encryption (OME) portal. Valid values are:
•         $true: Turn on audit feature.
•         $false: Turn off audit feature

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
