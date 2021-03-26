---
title: "Reports in the Security & Compliance Center"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: overview
f1_keywords:
- 'ms.o365.cc.AuditingHelp'
ms.service: O365-seccomp
search.appverid: 
- MET150
localization_priority: Normal
ms.assetid: 7acd33ce-1ec8-49fb-b625-43bac7b58c5a
description: "Use the Security & Compliance Center to get various reports for your SharePoint Online and Exchange Online organization, plus Azure Active Directory reports."
---

# Reports in the Security & Compliance Center

You can use the **View reports** page in the Security & Compliance Center to quickly access audit reports for your SharePoint Online and Exchange Online organizations. You can also access Azure Active Directory (AD) user sign-in reports, user activity reports, and the Azure AD audit log from the **View reports** page. This is because your paid Microsoft 365 subscription includes a free subscription to Microsoft Azure. The first time that you try to access these Azure reports, you will have to complete a one-time registration process. 
  
> [!TIP]
> To view additional reports about activity in your organization, see [Activity Reports in the Microsoft 365 admin center](../admin/activity-reports/activity-reports.md). 
  
 **Before you begin**
  
You need the following permissions to view reports in the Security & Compliance Center.
  
- You have to be assigned the Security Reader role in the Exchange admin center (EAC) to view reports in the Security & Compliance Center. By default, this role is assigned to the Organization Management and Security Reader role groups in the EAC.
    
- You have to be assigned the View-Only DLP Compliance Management role in the Security & Compliance Center to view DLP reports in the Security & Compliance Center. By default, this role is assigned to the Compliance Administrator, Organization Management, Security Administrator, and Security Reader role groups in the Security & Compliance Center.

- Additionally, you have to be assigned the View-Only Recipients role in the EAC to view DLP reports in the EAC. By default, this role is assigned to the Compliance Management, Organization Management, and View-Only Organization Management role groups in the EAC.
  
 **To open the View reports page in the Security & Compliance Center:**
  
1. Go to [https://protection.office.com/#/viewreports](https://protection.office.com/#/viewreports).
    
2. Sign in using the credentials for a user account in your organization.
    
On the **View reports** page, you can view the following types of reports: 
  
- [Auditing reports](#auditing-reports)
- [Supervisory review report](#supervisory-review-report)
- [Data loss prevention reports](#data-loss-prevention-reports)
    
## Auditing reports

The following table describes the reports in the **Auditing** section on the **View reports** page in the Security & Compliance Center. 
  
|**Report**|**Description**|
|:-----|:-----|
|**audit log report** <br/> |You can search the audit log for user and admin activity in your organization. The report contains entries user and admin activity in Exchange Online, SharePoint Online, OneDrive for Business, and Azure Active Directory, which is the directory service for Office 365. For more information, see [Search the audit log in the Office 365](search-the-audit-log-in-security-and-compliance.md).  <br/> |
|**Azure AD reports** <br/> |To look for unusual or suspicious sign-in activity in your organization, you can use sign-in and activity reports in Microsoft Azure. You can also view events in the Azure AD audit log. To view reports in Azure, just click **View Azure AD reports**. For more information, see: <br/><br/>[Use your free Azure Active Directory subscription in Office 365](use-your-free-azure-ad-subscription-in-office-365.md). <br/> [View your access and usage reports](/azure/active-directory/reports-monitoring/overview-reports).  <br/> |
|**Exchange audit reports** <br/> | You can use the auditing functionality in Microsoft 365 to track changes made to your Exchange Online configuration by your organization's administrators. Changes made to your Exchange Online organization by a Microsoft data center administrator or by a delegated administrator are also logged. For Exchange Online, administrator audit logging is enabled by default, so you don't have to do anything to turn it on. Exchange Online also provides mailbox audit logging to let you track access to mailboxes by someone other than the mailbox owner. You have to enable mailbox audit logging for each mailbox that you want to track non-owner access.  <br/>  For both admin and mailbox audit logging, you can run audit reports to view the audit log entries. You can also export mailbox and admin audit logs, which are sent to you within 24 hours in an XML file that is attached to email message. <br/><br/>For more information about exporting audit logs, see:  <br/><br/> [Export mailbox audit logs](/exchange/security-and-compliance/exchange-auditing-reports/export-mailbox-audit-logs) <br/> [View and export the datacenter admin audit log](/exchange/security-and-compliance/exchange-auditing-reports/view-external-admin-audit-log) <br/> [Search the role group changes or administrator audit logs](/exchange/security-and-compliance/exchange-auditing-reports/search-role-group-changes) <br/>   [Exchange auditing reports](/exchange/security-and-compliance/exchange-auditing-reports/exchange-auditing-reports).  <br/> |
   
## Supervisory review report

With the supervisory review report, you can see the status of all the supervisory review policies in your organization. For more information, see [Configure supervisory review policies for your organization](./communication-compliance-configure.md).
  
## Data loss prevention reports

Data loss prevention (DLP) reports contain information about the DLP policies and rules that have been applied to content contain sensitive data in your organization. You can also configure the report to display information about DLP actions that were based on your DLP policy and rules. For more information, see [View the report for data loss prevention](view-the-dlp-reports.md).