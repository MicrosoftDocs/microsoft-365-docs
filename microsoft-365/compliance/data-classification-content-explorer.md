---
title: "Get started with content explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MOE150
- MET150
description: "Content explorer allows you to natively view labeled items."
---

# Get started with content explorer

Content explorer allows you to natively view the items that were summarized on the overview page.

## Prerequisites

For licensing requirements, see [Information Protection: Data Classification Analytics: Overview Content & Activity Explorer](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-classification-analytics-overview-content--activity-explorer)

### Permissions

In order to get access to the content explorer tab, an account must be assigned membership in any one of these roles or role groups. 

**Microsoft 365 role groups**

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

> [!IMPORTANT]
> Membership in these role groups does not allow you to view the list of items in content explorer or to view the contents of the items in content explorer.

> [!IMPORTANT]
> Only Global admins can manage or assign permissions to other users in the compliance portal. For more information, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).
> 
### Required permissions to access items in content explorer

Access to content explorer is highly restricted because it lets you read the contents of scanned files.

> [!IMPORTANT]
> These permissions supercede permissions that are locally assigned to the items, which allows viewing of the content. 

There are two roles that grant access to content explorer and it is granted using the <a href="https://go.microsoft.com/fwlink/p/?linkid=2173597" target="_blank">Microsoft Purview compliance portal</a>:

- **Content Explorer List viewer**: Membership in this role group allows you to see each item and its location in list view. The `data classification list viewer` role has been pre-assigned to this role group.

- **Content Explorer Content viewer**: Membership in this role group allows you to view the contents of each item in the list. The `data classification content viewer` role has been pre-assigned to this role group.

The account you use to access content explorer must be in one or both of the role groups. These are independent role groups and aren't cumulative. For example, if you want to grant an account the ability to view the items and their locations only, grant Content Explorer List viewer rights. If you want that same account to also be able to view the contents of the items in the list, grant Content Explorer Content viewer rights as well.

You can also assign either or both of the roles to a custom role group to tailor access to content explorer.

A Global admin, can assign the necessary Content Explorer List Viewer, and Content Explorer Content Viewer role group membership.

#### Roles and Role Groups in preview

There are roles and role groups in preview that you can test out to fine tune your access controls.

Here's a list of applicable roles that are in preview. To learn more about them, see [Roles in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center)

- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups that are in preview. To learn more, see [Role groups in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#role-groups-in-the-security--compliance-center)

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

## Content explorer

Content explorer shows a current snapshot of the items that have a sensitivity label, a retention label or have been classified as a sensitive information type in your organization.

### Sensitive information types

A [DLP policy](dlp-learn-about-dlp.md) can help protect sensitive information, which is defined as a **sensitive information type**. Microsoft 365 includes [definitions for many common sensitive information types](sensitive-information-type-entity-definitions.md) from across many different regions that are ready for you to use. For example, a credit card number, bank account numbers, and national ID numbers.

### Sensitivity labels

A [sensitivity label](sensitivity-labels.md) is simply a tag that indicates the value of the item to your organization. It can be applied manually, or automatically. Once applied, the label gets embedded in the document and will follow the document everywhere it goes. A sensitivity label enables various protective behaviors, such as mandatory watermarking or encryption.

Sensitivity labels must be enabled for files that are in SharePoint and OneDrive in order for the corresponding data to surface in the data classification page. For more information, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

### Retention labels

A [retention label](retention.md) allows you to define how long a labeled item is kept and the steps to be taken prior to deleting it. They're applied manually or automatically via policies. They can play a role in helping your organization stay in compliance with legal and regulatory requirements.

### How to use content explorer

1. Open **Microsoft Purview compliance portal**  > **Data classification** > **Content explorer**.
2. If you know the name of the label, or the sensitive information type, you can type that into the filter box.
3. Alternately, you can browse for the item by expanding the label type and selecting the label from the list.
4. Select a location under **All locations** and drill down the folder structure to the item.
5. Double-click to open the item natively in content explorer.

### Export
The **export** control will create a .csv file that contains a listing of whatever the focus of the pane is.

![data classification export control.](../media/data_classification_export_control.png)


> [!NOTE]
> It can take up to *seven days* for counts to be updated in content explorer.

### Filter

When you drill down into a location, such as an Exchange or Teams folder, or a SharePoint or OneDrive site, the **Filter** tool appears.

![content explorer search tool.](../media/data_classification_search_tool.png)

The scope of the search tool is what is displaying in the **All locations** pane and what you can search on varies depending on the selected location. 

When **Exchange** or **Teams** is the selected location, you can search on the full email address of the mailbox, for example `user@domainname.com`.

When either **SharePoint** or **OneDrive** are selected location, the search tool will appear when you drill down to site names, folders and files. 

You can search on:

|value|example  |
|---------|---------|
|full site name    |`https://contoso.onmicrosoft.com/sites/sitename`    |
|file name    |    `RES_Resume_1234.txt`     |
|text at the beginning of file name| `RES`|
|text after an underscore character ( _ ) in file name|`Resume` or `1234`| 
|file extension|`txt`|

## Provide match/not a match accuracy feedback in content explorer

You can view the number of matches a SIT or trainable classifier has in **Content explorer**. You can also provide feedback on whether an item is actually a match or not using the **Match**, **Not a Match** feedback mechanism and use that feedback to tune your classifiers. See, [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) for more information. 


## See also

- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions.md](sensitive-information-type-entity-definitions.md)
- [Learn about Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)
