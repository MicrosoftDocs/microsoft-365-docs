---
title: "Manage audit log retention policies"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
ms.assetid: 
description: "Audit log retention policies are part of the new Advanced Audit capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization."
---

# Manage audit log retention policies

You can create and manage audit log retention policies in the Security & Compliance Center. Audit log retention policies are part of the new Advanced Audit capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization. You can retain audit logs for up to 10 years. You can create policies based on the following criteria:

- All activities in one or more Microsoft 365 services

- Specific activities (in a Microsoft 365 service) performed by all users or by specific users

- A priority level that specifies which policy takes precedence in you have multiple policies in your organization

## Default audit log retention policy

Advanced Audit in Microsoft 365 provides a default audit log retention policy for all organizations. This policy retains all Exchange, SharePoint, and Azure Active Directory audit records for one year. This default policy retains audit records that contain the value of **AzureActiveDirectory**, **Exchange**, or **SharePoint** for the **Workload** property (which is the service in which the activity occurred). The default policy can't be modified. See the [More information](#more-information) section in this article for a list of record types for each workload that are included in the default policy.

> [!NOTE]
> The default audit log retention policy only applies to audit records for activity performed by users who are assigned an Office 365 or Microsoft 365 E5 license or have a Microsoft 365 E5 Compliance or E5 eDiscovery and Audit add-on license. If you have non-E5 users or guest users in your organization, their corresponding audit records are retained for 90 days.

## Before you create an audit log retention policy

- You have to be assigned the Organization Configuration role in the Security & Compliance Center to create or modify an audit retention policy.

- You can have a maximum of 50 audit log retention policies in your organization.

- To retain an audit log for longer than 90 days, the user who generated the audit log must be assigned an Office 365 E5 or Microsoft 365 E5 license or have a Microsoft 365 E5 Compliance or E5 eDiscovery and Audit add-on license.

- All custom audit log retention policies (created by your organization) take priority over the default retention policy. For example, if you create an audit log retention policy for Exchange mailbox activity that has a retention period that's shorter than one year, audit records for Exchange mailbox activities will be retained for the shorter duration specified by the custom policy.

## Create an audit log retention policy in the compliance center

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in with user account that's assigned the Organization Configuration role in the Security & Compliance Center.

2. In the left pane of the Microsoft 365 compliance center, click **Show all**, and then click **Audit**.

    The **Audit** page is displayed.

    ![The Audit log search page in the compliance center](../media/AuditLogRetentionPolicy1.png)

3. Click **Create audit retention policy**, and then complete the following fields on the flyout page:

    ![Audit retention policy flyout page](../media/AuditLogRetentionPolicy2.png)

   1. **Name:** The name of the audit log retention policy. This name must be unique in your organization.

   2. **Description:** Optional, but helpful to provide information about the policy, such as the record type or workload, users specified in the policy, and the duration.

   3. **Users:** Select one or more users to apply the policy to. If you leave this box blank, then the policy will apply to all users. If you leave the **Record type** blank, then you must select a user.

   4. **Record type:** The audit record type the policy applies to. If you leave this property blank, you must select a user in the **Users** box. You can select a single record type or multiple record types:

   - If you select a single record type, the **Activities** field is dynamically displayed. You can use the drop-down list to select activities from the selected record type to apply the policy to. If you don't choose specific activities, the policy will apply to all activities of the selected record type.

   - If you select multiple record types, you don't have the ability to select activities. The policy will apply to all activities of the selected record types.

   5. **Duration:** The amount of time to retain the audit logs that meet the criteria of the policy.

   6. **Priority:** This value determines the order in which audit log retention policies in your organization are processed. A higher value indicates a higher priority. For example, a policy with a priority value of **5** would take priority over a policy with a priority value of **0**. As previously explained, any custom audit log retention policy takes priority over the default policy for your organization.

4. Click **Save** to create the new audit log retention policy.

## Create an audit log retention policy in PowerShell

You can also use Security & Compliance Center PowerShell to create audit log retention policies.

1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell).

2. Run the following command to create an audit log retention policy.

   ```powershell
   New-UnifiedAuditLogRetentionPolicy -Name "Microsoft Teams Audit Policy" -Description "One year retention policy for all Microsoft Teams activities" -RecordTypes MicrosoftTeams -RetentionDuration TenYears -Priority 100
   ```

    This example creates an audit log retention policy named "Microsoft Teams Audit Policy" with these settings:

   - A description of the policy.

   - Retains all Microsoft Teams activities (as defined by the *RecordType* parameter).

   - Retains Microsoft Teams audit logs for 10 years.

   - A priority of 100.

Here's another example of creating an audit log retention policy. This policy retains audit logs for the "User logged in" activity for six months for the user admin@contoso.onmicrosoft.com.

```powershell
New-UnifiedAuditLogRetentionPolicy -Name "SixMonth retention for admin logons" -RecordTypes AzureActiveDirectoryStsLogon -Operations UserLoggedIn -UserIds admin@contoso.onmicrosoft.com -RetentionDuration SixMonths -Priority 25
```

For more information, see [New-UnifiedAuditLogRetentionPolicy](https://docs.microsoft.com/powershell/module/exchange/new-unifiedauditlogretentionpolicy).

## View audit log retention policies

At this time, the only way to view custom audit log retention policies is to use the **Get-UnifiedAuditRetentionPolicy** cmdlet in Security & Compliance Center PowerShell. Here's a sample command to display the settings (that you configured in the previous step) for the audit log retention policies in your organization. This command sorts the policies from the highest to lowest priority.

```powershell
Get-UnifiedAuditLogRetentionPolicy | Sort-Object -Property Priority -Descending | FL Priority,Name,Description,RecordTypes,Operations,UserIds,RetentionDuration
```

> [!NOTE]
> At this time, the **Get-UnifiedAuditLogRetentionPolicy** cmdlet doesn't return the default audit log policy for your organization.

For more information, see [Get-UnifiedAuditLogRetentionPolicy](https://docs.microsoft.com/powershell/module/exchange/get-unifiedauditlogretentionpolicy).

## Some audit log retention policies not supported in the UI

If you use the **New-UnifiedAuditLogRetentionPolicy** cmdlet, it's possible to create an audit log retention policy for record types or activities that aren't available in the **Create audit retention policy** tool in the Microsoft 365 compliance center. In this case, you won't be able to edit the policy (for example, change the retention duration or add and remove activities) from the **Audit retention policies** tab in the compliance center. You'll only be able to view and delete the policy in the compliance center. To edit the policy, you'll have to use the **Set-UnifiedAuditLogRetentionPolicy** cmdlet in Security & Compliance Center PowerShell.

## More information

- Use the **Set-UnifiedAuditLogRetentionPolicy** cmdlet in Security & Compliance Center PowerShell to modify an existing audit log retention policy. For more information, see [Set-UnifiedAuditLogRetentionPolicy](https://docs.microsoft.com/powershell/module/exchange/set-unifiedauditlogretentionpolicy).

- Use the **Remove-UnifiedAuditLogRetentionPolicy** cmdlet in Security & Compliance Center PowerShell to delete an audit log retention policy. It might take up to 30 minutes for the policy to be removed. For more information, see [Remove-UnifiedAuditLogRetentionPolicy](https://docs.microsoft.com/powershell/module/exchange/remove-unifiedauditlogretentionpolicy).

- As previously stated, audit records for operations in Azure Active Directory, Exchange, and SharePoint are retained for one year. The following table lists all the record types (for each of these services) included in the default audit log retention policy. This means that audit logs for any operation with this record type are retained for one year unless a custom audit log retention policy takes precedence for a specific record type, operation, or user. The Enum value (which is displayed as the value for the RecordType property in an audit record) for each record type is shown in parentheses.

   |AzureActiveDirectory |Exchange  |SharePoint|
   |:---------|:---------|:---------|
   |AzureActiveDirectory (8)|ExchangeAdmin (1)|ComplianceDLPSharePoint (11)|
   |AzureActiveDirectoryAccountLogon (9)|ExchangeItem (2)|ComplianceDLPSharePointClassification (33)|
   |AzureActiveDirectoryStsLogon (15)|Campaign (62)|Project (35)|
   ||ComplianceDLPExchange (13)|SharePoint (4)|
   ||ComplianceSupervisionExchange (68)|SharePointCommentOperation (37)|
   ||CustomerKeyServiceEncryption (69)|SharePointContentTypeOperation (55)|
   ||ExchangeAggregatedOperation (19)|SharePointFieldOperation (56)|
   ||ExchangeItemAggregated (50)|SharePointFileOperation (6)|
   ||ExchangeItemGroup (3)|SharePointListOperation (36)|
   ||InformationBarrierPolicyApplication (53)|SharePointSharingOperation (14)|
   ||||
