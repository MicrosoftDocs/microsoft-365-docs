---
title: "Run an administrator role group report in standalone EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 23b47b57-0eec-46a3-a03b-366ea014ab31
description: "Admins can learn how to run an administrator role group report in standalone Exchange Online Protection (EOP). This report logs when an admin adds members to or removes members from administrator role groups, EOP logs each occurrence."
---

# Run an administrator role group report in standalone EOP

 When an admin adds members to or removes members from administrator role groups, Exchange Online Protection (EOP) logs each occurrence. When you run an administrator role group report in the Exchange admin center (EAC), entries are displayed as search results and include the role groups affected, who changed the role group membership and when, and what membership updates were made. Use this report to monitor changes to the administrative permissions assigned to users in your organization.


 Auditing reports in Exchange Online Protection (EOP) can help you meet regulatory, compliance, and litigation requirements for your organization. You can obtain auditing reports at any time to determine the changes that have been made to your EOP configuration. These reports can help you troubleshoot configuration issues or find the cause of security-related or compliance-related problems.

There are two auditing reports available in EOP:

- **Administrator role group report**: The administrator role group report lets you view when a user is added to or removed from membership in an administrator role group. You can use this report to monitor changes to the administrative permissions assigned to users in your organization. For more information, see [Run an administrator role group report in EOP](run-an-administrator-role-group-report-in-eop-eop.md).

- **Administrator audit log**: The administrator audit log records any action (based on Exchange Online Protection PowerShell cmdlets) by an admin or a user with administrative privileges. For more information, see [View the Administrator Audit Log](https://docs.microsoft.com/exchange/security-and-compliance/exchange-auditing-reports/view-administrator-audit-log).


## What do you need to know before you begin?

- To open the Exchange admin center, see [Exchange admin center in Exchange Online Protection](exchange-admin-center-in-exchange-online-protection-eop.md).

- You need to be assigned permissions before you can perform these procedures. Specifically, you need the Audit Logs or View-Only Audit Logs role, which are assigned to the ComplianceManagement, OrganizationManagement (global admins), and SecurityAdministrator role groups by default. For more information, see [Permissions in standalone EOP](feature-permissions-in-eop.md) and [Use the EAC modify the list of members in role groups](manage-admin-role-group-permissions-in-eop.md#use-the-eac-modify-the-list-of-members-in-role-groups).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use the EAC to run an administrator role group report

Run the administrator role group report to find the changes to management role groups in your organization within a particular time frame.

1. In the EAC, go to **Compliance management** \> **Auditing**, and choose **Run an administrator role group report**.

2. In the **Search for changes to administrator role groups** page that opens, configure the following settings:

   - **Start date** and **End date**: Enter a date range. By default, the report searches for changes made to administrator role groups in the past two weeks.

   - **Select role groups**: By default, all role groups are searched. To filter the results by specific role groups, click **Select role groups**. In the dialog that appears, select a role group and click **Add**. Repeat this step as many times as necessary, and then click **OK** when you're finished.

3. When you're finished, click **Search**.

If any changes are found using the criteria you specified, they will appear in the results pane. Click a role group in the search results to see the changes in the details pane.

## How do you know this worked?

If you've successfully run an administrator role group report, role groups that have been changed within the date range are displayed in the search results pane. If there are no results, then no changes to role groups have taken place within the specified date range. If you think there should be results, change the date range and then run the report again.

## Monitor changes to role group membership

When members are added to or removed from a role group, the search results displayed in the details pane indicate that the role group membership was updated and lists the current members. The results don't explicitly state which user was added or removed.

To determine if a user was added or removed, you have to compare two separate entries in the report. For example, let's look at the following log entries for the **HelpDesk** role group:

> 1/27/2018 4:43 PM <br> Administrator <br> Updated members: Administrator;annb,florencef;pilarp <br> 2/06/2018 10:09 AM <br> Administrator <br> Updated members: Administrator;annb;florencef;pilarp;tonip <br> 2/19/2018 2:12 PM <br> Administrator <br> Updated members: Administrator;annb;florencef;tonip

In this example, the Administrator user account made the following changes:

- On 2/06/2018, they added the user tonip.

- On 2/19/2018, they removed the user pilarp.
