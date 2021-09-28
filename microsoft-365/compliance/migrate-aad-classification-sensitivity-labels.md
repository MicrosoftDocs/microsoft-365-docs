---
title: Azure Active Directory classification and sensitivity labels for Microsoft 365 groups
ms.reviewer: vijagan
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
f1.keywords: NOCSH
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
description: "This article discusses classic Azure Active Directory classification and sensitivity labels."
---

# Azure Active Directory classification and sensitivity labels for Microsoft 365 groups

This article discusses classic Azure Active Directory classification and sensitivity labels.

Sensitivity labels are supported by [these services](./sensitivity-labels-teams-groups-sites.md).

For complete info about sensitivity labels, see [Learn about sensitivity labels](sensitivity-labels.md).

To learn more about sensitivity labels and their behavior for sites and Microsoft 365 groups, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](sensitivity-labels-teams-groups-sites.md).

See the following scenarios for best practices when migrating from classic AAD classification to the sensitivity labels.

## Scenario 1: Tenant never used classic AAD classifications or sensitivity labels for documents and emails

- Tenant Admin enables sensitivity labels for groups by setting the tenant flag “EnableMIPLabels” to true via AAD powershell cmdlet.
- Tenant Admin creates the sensitivity labels in the [Microsoft 365 compliance center](https://compliance.microsoft.com).
    - Tenant admin can choose file and email-related actions like encryption and watermarking.
    - Tenant admin can choose Microsoft 365 Groups and SharePoint Online site-related actions to the sensitivity labels.
- Tenant Admin publishes the policy.
- **Compatible workloads** show sensitivity labels. Use the sensitivity labels to create groups. Compatible workloads are the services which support sensitivity labels.
- **Non-compatible workloads** are the services which do not support sensitivity labels yet. Groups can be created, however, they cannot be associated with the sensitivity label through non-compatible workloads. To associate such groups with sensitivity labels, tenant admins can run PowerShell cmdlets.

Table 1. Behavior of compatible and non-compatible workloads – create, edit, or delete groups

|Workload|What label list does user see in group window?|Create new group |Edit group |Delete group |
|:-------|:-------|:--------|:--------|:--------|   
|Compatible   |sensitivity labels. |No change in behavior. |No change in behavior. |No change in behavior. |
|Non-compatible |No sensitivity labels visible. |User can create a group without selecting sensitivity label. <br><br> Note, the admin can run cmdlets to apply sensitivity labels in the background. |**Case 1**: No sensitivity label previously selected. User can edit a group.<br><br> **Case 2**: sensitivity label applied previously in the background using cmdlet. User can edit a group successfully, excluding the case where user selects invalid combination of privacy setting with respect to the label. |No change in behavior.|

> [!NOTE]
> In the case of Outlook desktop client (Win 32), after admin enables sensitivity labels on their tenant, and their user is on an older version of the Outlook desktop client (Win 32):
>
> - User sees sensitivity labels appear on the older version of the Outlook desktop client.
> - However, when the user edits a group, and saves the group with a sensitivity label, the selected privacy setting is overridden by the privacy setting of the applied sensitivity label.
>
> We recommend that your users on an old version of Outlook client upgrading to the newer version.

## Scenario 2: Tenant is already using classic AAD [classifications](../enterprise/manage-microsoft-365-groups-with-powershell.md)

### Case A: Tenant never used sensitivity labels for documents and emails

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), we recommend creating sensitivity labels with same name as the existing classic Azure AD labels.
2. Use the PowerShell cmdlet to apply these sensitivity labels to existing Microsoft 365 groups and SharePoint sites using name mapping.
3. Admin can choose to delete the classic Azure AD labels:
    - Compatible workloads show these sensitivity labels and groups get created with them.
    - Non-compatible workloads work when creating groups, but no sensitivity label is attached to them.
4. Admins can run PowerShell cmdlets to apply sensitivity labels to these groups with no labels.
    - Alternatively, an admin can choose to keep the classic Azure AD labels:
        - Compatible workloads show these sensitivity labels, and groups get created with them. Compatible workloads are the services which support sensitivity labels.
        - Non-compatible workloads work when creating groups, and show classic Azure AD labels. These classic Azure AD labels are attached to these groups created with non-compatible workloads.
5. We highly recommend that admins run PowerShell cmdlets to apply sensitivity labels to these groups with classic Azure AD labels.

Table 2. Behavior of compatible and non-compatible workloads – create, edit, or delete groups

|Workload|What label list does user see in group window?|Create new group |Edit group |Delete group |
|:-------|:-------|:--------|:--------|:--------|   
|Compatible   |sensitivity labels. |No change in behavior. |No change in behavior. |No change in behavior. |
|Non-compatible |Old classic AAD labels. |User can create a group with classic Azure AD label selected. <br><br>Note, the admin can run cmdlets to apply sensitivity labels in the background. |**Case 1**: No sensitivity label previously selected. User can edit a group.<br><br> **Case 2**: Classic AAD labels previously selected. User can edit a group.<br><br> **Case 3**: sensitivity label previously applied in the background using cmdlet. User should be able to edit a group, excluding one case where user selects invalid combination of privacy setting with respect to the label. |User can delete a group. |

> [!NOTE]
> In the case of Outlook desktop client (Win 32), after admin enables sensitivity labels on their tenant, and their user is on an older version of the Outlook desktop client (Win 32):
>
> - User sees sensitivity labels appear on the older version of the Outlook desktop client.
> - However, when the user edits a group, and saves the group with a sensitivity label, the selected privacy setting is overridden by the privacy setting of the applied sensitivity label.
>
> We recommend that your users on an old version of Outlook client upgrading to the newer version.

### Case B: Tenant used sensitivity labels for documents and emails

1. As soon as admin enables sensitivity label feature on the tenant by setting the tenant flag ‘EnableMIPLabels’ to true, the document and email sensitivity labels in group/site/team create and edit dialog boxes appear.
2. An admin can use the same document and email sensitivity labels to enforce privacy and external user access on the group/site/team by specifying related group settings:
    1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), select the **Sites and Groups** tab.
    2. Edit a document or email sensitivity label.

## Sample script

For a sample script to migrate groups with classic AAD labels to sensitivity labels, see [Classic Azure AD group classification](./sensitivity-labels-teams-groups-sites.md#classic-azure-ad-group-classification).