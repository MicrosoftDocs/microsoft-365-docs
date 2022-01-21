---
title: "Use sensitivity labels to set the default sharing link for sites and documents in SharePoint and OneDrive"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Use sensitivity labels to set the default sharing link for sites, or documents, or both for SharePoint and OneDrive."
---

# Use sensitivity labels to set the default sharing link for sites and documents in SharePoint and OneDrive

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

As an additional configuration to the settings you see in the Microsoft 365 compliance center for [sensitivity labels](sensitivity-labels.md), you can use these labels to set a default sharing link for a SharePoint site or OneDrive account, and for individual documents. The default link type sets the scope (who) and permissions (view or edit) that are automatically selected when users share files and folders. Although users can always override these default settings before sending the sharing link, the settings you choose provide a safe baseline for the majority of cases.

At the site level (SharePoint site or OneDrive account), the settings for sensitivity labels provide a convenient alternative for setting the default link type that can be set for a site in the SharePoint admin center. For more information, see [Change the default link type for a site](/sharepoint/change-default-sharing-link).

This configuration works well for SharePoint sites that have documents with the same level of sensitivity. But if sites contain some documents that have a higher level of sensitivity and so require more restrictive settings, you can configure the same settings but with different values using sensitivity labels that you apply to documents. In this scenario where the site has default link type settings, and a document in that site has different default link type settings, the more restrictive settings will be applied.

Configuring the default link type for documents might also be appropriate to use without the site-level setting for the default link type. For example, although SharePoint sites are typically organized to host the same type of documents, that isn't the case for OneDrive accounts. Users typically save a wide range of documents to OneDrive, including personal documents. Setting a default link type for all documents for a user's OneDrive account is probably not practical, but individual documents can still benefit from these settings. For example:

- Documents labeled **Highly Confidential** automatically have a default link type that restricts sharing to specific people rather than anybody in the organization.
- Documents labeled **General** have a default link type that restricts sharing to people in your organization.
- Documents labeled **Personal** have a default link type that allows sharing to anyone with the link.

## Prerequisites

To configure the default sharing link for sites, sensitivity labels must be enabled for containers. If this capability isn't yet enabled for your tenant, see [How to enable sensitivity labels for containers and synchronize labels](sensitivity-labels-teams-groups-sites.md#how-to-enable-sensitivity-labels-for-containers-and-synchronize-labels).

To configure the default sharing link for documents in SharePoint and OneDrive, sensitivity labels must be enabled for these services. If this capability isn't yet enabled for your tenant, see [How to enable sensitivity labels for SharePoint and OneDrive (opt-in)](sensitivity-labels-sharepoint-onedrive-files.md#how-to-enable-sensitivity-labels-for-sharepoint-and-onedrive-opt-in).

In a PowerShell session, you must [connect to Office 365 Security & Compliance Center PowerShell](/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell) to configure the settings for the default sharing link.

> [!NOTE]
> Although not required, it's easiest to first [configure sensitivity labels in the Microsoft 365 compliance center](create-sensitivity-labels.md), and then modify the labels for the default sharing link.

## How to configure settings for the default sharing link

The configuration settings for the default sharing link use the PowerShell *AdvancedSettings* parameter and the [Set-Label](/powershell/module/exchange/set-label) cmdlet for existing sensitivity labels, and [New-Label](/powershell/module/exchange/new-labelpolicy) cmdlet for existing sensitivity labels. These cmdlets are from [Security & Compliance Center PowerShell](/powershell/exchange/scc-powershell):

- **DefaultSharingScope**: The available values are:
    - **SpecificPeople**: Sets the default sharing link for the site to the "Specific people" link
    - **Organization**: Sets the default sharing link for the site to the "organization" link or company shareable link
    - **Anyone**: Sets the default sharing link for the site to an Anonymous Access or Anyone link

- **DefaultShareLinkPermission**:  The available values are:
    - **View**: Sets the default link permission for the site to "view" permissions
    - **Edit**: Sets the default link permission for the site to "edit" permissions

These two settings and values are the equivalent of the parameters *DefaultSharingScope* and *DefaultShareLinkPermission* from the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) cmdlet.

PowerShell examples, where the sensitivity label GUID is **8faca7b8-8d20-48a3-8ea2-0f96310a848e**:

- To set the sharing link type to SpecificPeople:
    
    ````powershell
    Set-Label -Identity 8faca7b8-8d20-48a3-8ea2-0f96310a848e -AdvancedSettings @{DefaultSharingScope="SpecificPeople"}
    ````

- To set the sharing link permissions to Edit:
    
    ````powershell
    Set-Label -Identity 8faca7b8-8d20-48a3-8ea2-0f96310a848e -AdvancedSettings @{DefaultShareLinkPermission="Edit"}
    ````

To configure the default sharing link settings for a site, make sure the [scope of the sensitivity label](sensitivity-labels.md#label-scopes) includes **Groups & sites**. For documents, the scope must include **Files & emails**. Then:

- When the scope includes **Groups & sites**, you can apply the label to a site, which sets the default sharing link for that site. For information how to apply a sensitivity label to a site, see [How to apply sensitivity labels to containers](sensitivity-labels-teams-groups-sites.md#how-to-apply-sensitivity-labels-to-containers).

- When the scope of the sensitivity label includes **Files & emails**, you can apply the label to documents, which sets the default sharing link for that document. The label can be applied [manually](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9) or [automatically](apply-sensitivity-label-automatically.md).

> [!TIP]
> You can also specify that the label is the default sensitivity label to be applied for new sites or new documents, as a [label policy setting](sensitivity-labels.md#what-label-policies-can-do).

### PowerShell tips for specifying the advanced settings

Although you can specify the sensitivity label by its name, we recommend using the label GUID to avoid potential confusion over specifying the label name or display name. To find the GUID:

````powershell
Get-Label | Format-Table -Property DisplayName, Name, Guid
````

To remove either of these advanced settings from a sensitivity label, use the same AdvancedSettings parameter syntax, but specify a null string value. For example:

````powershell
Set-Label -Identity 8faca7b8-8d20-48a3-8ea2-0f96310a848e -AdvancedSettings @{DefaultSharingScope=""}
````

