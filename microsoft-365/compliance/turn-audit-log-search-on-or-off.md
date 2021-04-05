---
title: "Turn audit log search on or off"
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
ms.custom: seo-marvel-apr2020
description: How to turn on or off the Audit log search feature in the Security & Compliance Center to enable or disable the ability of admins to search the audit log.
---

# Turn audit log search on or off

Audit logging is turned on by default for Microsoft 365 and Office 365 enterprise organizations. This includes organizations with E3/G3 or E5/G5 subscriptions. When audit log search in the compliance center is turned on, user and admin activity from your organization is recorded in the audit log and retained for 90 days, and up to one year depending on the license assigned to users. However, your organization may have reasons for not wanting to record and retain audit log data. In those cases, a global admin may decide to turn off auditing in Microsoft 365.

> [!IMPORTANT]
> If you turn off audit log search in Microsoft 365, you can't use the Office 365 Management Activity API or Azure Sentinel to access auditing data for your organization. Turning off audit log search by following the steps in this article means that no results will be returned when you search the audit log using the Security & Compliance Center or when you run the **Search-UnifiedAuditLog** cmdlet in Exchange Online PowerShell. This also means that audit logs won't be available through the Office 365 Management Activity API or Azure Sentinel.
  
## Before you turn audit log search on or off

- You have to be assigned the Audit Logs role in Exchange Online to turn audit log search on or off in your Microsoft 365 organization. By default, this role is assigned to the Compliance Management and Organization Management role groups on the **Permissions** page in the Exchange admin center. Global admins in Microsoft 365 are members of the Organization Management role group in Exchange Online. 
    
    > [!NOTE]
    > Users have to be assigned permissions in Exchange Online to turn audit log search on or off. If you assign users the Audit Logs role on the **Permissions** page in the Security & Compliance Center, they won't be able to turn audit log search on or off. This is because the underlying cmdlet is an Exchange Online PowerShell cmdlet. 
    
- For step-by-step instructions on searching the audit log, see [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md). For more information about the Microsoft 365 Management Activity API, see [Get started with Microsoft 365 Management APIs](/office/office-365-management-api/get-started-with-office-365-management-apis).

- To verify that audit log search is turned on, you can run the following command in Exchange Online PowerShell:

    ```powershell
    Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
    ```

    The value of  `True` for the  _UnifiedAuditLogIngestionEnabled_ property indicates that audit log search is turned on. 
    
## Turn on audit log search

If audit log search is not turned on for your organization, you can turn it on in the compliance center or by using Exchange Online PowerShell. It may take several hours after you turn on audit log search before you can return results when you search the audit log.
  
### Use the compliance center to turn on audit log search

1. [Go to the compliance center](https://protection.office.com) and sign in.

2. In the compliance center, go to **Search** > **Audit log search**.

   If audit log search is not turned on for your organization, a banner is displayed saying that auditing has to be turned on to record user and admin activity.

3. Click **Turn on auditing**.

    ![Click Turn on auditing](../media/39a9d35f-88d0-4bbe-a962-0be2f838e2bf.png)
  
    The banner is updated to say the audit log is being prepared and that you can search for user and admin activity in a few hours.

### Use PowerShell to turn on audit log search

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

2. Run the following PowerShell command to turn on audit log search in Office 365.

    ```powershell
    Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true
    ```

    A message is displayed saying that it may take up to 60 minutes for the change to take effect.
  
## Turn off audit log search

You have to use Exchange Online PowerShell to turn off audit log search.
  
1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

2. Run the following PowerShell command to turn off audit log search.

    ```powershell
    Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $false
    ```

3. After a while, verify that audit log search is turned off (disabled). There are two ways to do this:

    - In Exchange Online PowerShell, run the following command:

      ```powershell
      Get-AdminAuditLogConfig | FL UnifiedAuditLogIngestionEnabled
      ```

      The value of  `False` for the  _UnifiedAuditLogIngestionEnabled_ property indicates that audit log search is turned off. 

    - In the [compliance center](https://protection.office.com), go to **Search** \> **Audit log search**.

      A banner is displayed saying that auditing has to be turned on in order to record user and admin activity.