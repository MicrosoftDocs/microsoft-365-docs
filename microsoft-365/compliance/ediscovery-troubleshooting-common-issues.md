---
title: "Troublshooting common eDiscovery issues"
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "Investigate, troubleshoot and resolve common issues in Office 365 eDiscovery."
siblings_only: true
---
# Investigate, troubleshoot and resolve common eDiscovery issues

This topic covers basic troubleshooting steps that you can take to identify and resolve several issues you may encounter during an eDiscovery search or elsewhere in the eDiscovery process. Resolving some of these scenarios requires help from Customer Support Services (CSS). Information on when to contact CSS is included in the resolution steps.

## Error/issue ambiguous location

the location is ambiguous

"The compliance search contains the following invalid location `(s):useralias@contoso.com. The location "useralias@contoso.com" is ambiguous"`

### Details

You may receive this error if you tried to add user’s mailbox location to search and there are duplicate or conflicting object with the same user Ids in the Exchange Online Protection(EOP) directory.

### Resolution

Check for duplicate users or distribution list with the same user ID.

1. Connect to [EXO PowerShell](https://docs.microsoft.com/en-us/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?view=exchange-ps).
2. Retrieve all instances of the username, type:

```powershell
Get-Recipient <username>
```

The output for 'useralias@contoso.com' might be

> 
> |Name  |RecipientType  |
> |---------|---------|
> |Alias, User     |MailUser         |
> |Alias, User     |MailUser         |
> |Alias, User     |MailUser         |

3. If multiple users are returned, locate and fix the conflicting object.

## Error/issue specific location search fails

Specific locations in a large search fails

### Details

This search completed with # errors.  Would you like to retry the search on the failed locations?

### Resolution