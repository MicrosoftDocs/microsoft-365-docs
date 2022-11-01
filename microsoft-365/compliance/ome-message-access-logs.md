---
title: "Encrypted message portal activity log"
description: "Access logs are available for encrypted messages retrieved through the encrypted message portal."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.date: 07/21/2022
ms.collection:
- tier1
- purview-compliance
- audit
search.appverid:
- MET150
---

# Encrypted message portal activity log by Microsoft Purview Advanced Message Encryption

Access logs are available for encrypted messages through the encrypted message portal that lets your organization determine when messages are read, and forwarded by your external recipients. To ensure logs are available for any external recipients, you should apply a custom branding template to protected emails sent by your organization to external recipients that enforces a portal experience. See [Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Enabling message access audit logs in PowerShell

Access log can be enabled using [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). The *EnablePortalTrackingLogs* parameter of the **[Set-IrmConfiguration](/powershell/module/exchange/set-irmconfiguration)** cmdlet specifies whether to enable the audit logs of accessing the encrypted message portal. Valid values are:

- $true: Turn on audit feature.
- $false: Turn off audit feature

Example: Set-IrmConfiguration -EnablePortalTrackingLogs $true

To learn more, see [Set-IRMConfiguration (ExchangePowerShell)](/powershell/module/exchange/set-irmconfiguration).

## Message access audit information

The access log contains entries for messages sent through the encrypted message portal for the following types of activity:

- External user login timestamp and authentication method
- External user read messages or attachments
- Attachment download
- mail replies and forward

For more information on the message access log schema, see [Search the audit log in the compliance portal](search-the-audit-log-in-security-and-compliance.md#encrypted-message-portal-activities).

## Search for events in the message access logs

To view the events captured in the message access logs:

1. In the Microsoft Purview compliance portal, under **Solutions**, select **Audit**.
1. Under **Search**, click the drop down for **Activities** and type encrypted message portal activities.
1. Under encrypted message portal activities, select the event types to use in the search. Set the date range for the search (default is the previous week), you can also optionally add a particular user in your organization for the search. When ready, select **Search**.
1. Select an event from the list to view the audit properties.
