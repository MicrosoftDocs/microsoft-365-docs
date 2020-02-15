---
title: "Turn Office 365 audit log search on or off"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: e893b19a-660c-41f2-9074-d3631c95a014
description: "You can turn on the Audit log search feature in the Security & Compliance Center. If you change you mind, you can turn if off at any time. When Audit log search is off, admins can't search the Office 365 audit log for user and admin activity in your organization."
---

# Turn Office 365 audit log search on or off

You (or another admin) must turn on audit logging before you can start searching the Office 365 audit log. When audit log search in the Security & Compliance Center is turned on, user and admin activity from your organization is recorded in the audit log and retained for 90 days. However, your organization may not want to record and retain audit log data. Or you may be using a third-party security information and event management (SIEM) application to access your auditing data. In those cases, a global admin can turn off audit log search in Office 365.
  
## Before you begin

- You have to be assigned the Audit Logs role in Exchange Online to turn audit log search on or off in your Office 365 organization. By default, this role is assigned to the Compliance Management and Organization Management role groups on the **Permissions** page in the Exchange admin center. Global admins in Office 365 are members of the Organization Management role group in Exchange Online. 
    
    > [!IMPORTANT]
    > Users have to be assigned permissions in Exchange Online to turn audit log search on or off. If you assign users the Audit Logs role on the **Permissions** page in the Security & Compliance Center, they won't be able to turn audit log search on or off. This is because the underlying cmdlet is an Exchange Online cmdlet. 
  
- If you turn off audit log search in Office 365, you can't use the Office 365 Management Activity API to access auditing data for your organization. Turning off audit log search by following the steps in this article means that no results will be returned when you search the audit log using the Security & Compliance Center or when you run the **Search-UnifiedAuditLog** cmdlet in Exchange Online PowerShell. This also means that your audit logs won't be available through the Office 365 Management Activity API.  
    
- For step-by-step instructions on searching the Office 365 audit log, see [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md).
    
## Turn on audit log search

You can use the Security & Compliance Center or PowerShell to turn on audit log search in Office 365. It may take several hours after you turn on audit log search before you can return results when you search the audit log. You have to be assigned the Audit Logs role in Exchange Online to turn on audit log search.
  
### Use the Security & Compliance Center to turn on audit log search

1. In the Security & Compliance Center, go to **Search** \> **Audit log search**.
    
   A banner is displayed saying that auditing has to be turned on to record user and admin activity.

2. Click **Turn on auditing**.
    
    ![Click Turn on auditing](../media/39a9d35f-88d0-4bbe-a962-0be2f838e2bf.png)
  
    The banner is updated to say the audit log is being prepared and that you can search for user and admin activity in a few hours.
    
### Use PowerShell to turn on audit log search

1. [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?LinkID=396554)
    
2. Run the following PowerShell command to turn on audit log search in Office 365.
    
    ```powershell
    Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true
    ```

    A message is displayed saying that it may take up to 60 minutes for the change to take effect.
  
## Turn off audit log search

You have to use remote PowerShell connected to your Exchange Online organization to turn off audit log search. Similar to turning on audit log search, you have to be assigned the Audit Logs role in Exchange Online to turn off audit log search.
  
1. [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?LinkID=396554)
    
2. Run the following PowerShell command to turn off audit log search in Office 365.
    
    ```powershell
    Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $false
    ```

3. After a while, verify that audit log search is turned off (disabled). There are two ways to do this:
    
    - In PowerShell, run the following command:

    ```powershell
    Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
    ```

      The value of  `False` for the  _UnifiedAuditLogIngestionEnabled_ property indicates that audit log search is turned off. 
    
    - In the Security & Compliance Center, go to **Search** \> **Audit log search**.
    
      A banner is displayed saying that auditing has to be turned on in order to record user and admin activity.
