---
title: "Get started with sensitivity labels"
f1.keywords:
- CSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier1
- highpri
- SPO_Content
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MOE150
- MET150
description: "Prescriptive steps for admins, licensing requirements, and common scenarios that use sensitivity labels to help protect your organization's data."
---

# Get started with sensitivity labels

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

For information about what sensitivity labels are and how they can help you protect your organization's data, see [Learn about sensitivity labels](sensitivity-labels.md).

If you have [Azure Information Protection](/azure/information-protection/what-is-information-protection) and are still using Azure Information Protection labels that were managed from the Azure portal, you must migrate these labels to the [unified labeling platform](/azure/information-protection/faqs#how-can-i-determine-if-my-tenant-is-on-the-unified-labeling-platform). We then recommend you disable the AIP add-in for Office apps, to benefit from the newer, built-in labeling experience. For more information, see [Migrate the Azure Information Protection (AIP) add-in to built-in labeling for Office apps](sensitivity-labels-aip.md).

When you're ready to start protecting your organization's data by using sensitivity labels:

1. **Create the labels.** Create and name your sensitivity labels according to your organization's classification taxonomy for different sensitivity levels of content. Use common names or terms that make sense to your users. If you don't already have an established taxonomy, consider starting with label names such as Personal, Public, General, Confidential, and Highly Confidential. You can then use sublabels to group similar labels by category. When you create a label, use the  tooltip text to help users select the appropriate label.
    
    For more extensive guidance for defining a classification taxonomy, download the white paper, "Data Classification & Sensitivity Label Taxonomy" from the [Service Trust Portal](https://aka.ms/DataClassificationWhitepaper).

2. **Define what each label can do.** Configure the protection settings you want associated with each label. For example, you might want lower sensitivity content (such as a "General" label) to have just a header or footer applied, while higher sensitivity content (such as a "Confidential" label) should have a watermark and encryption.

3. **Publish the labels.** After your sensitivity labels are configured, publish them by using a label policy. Decide which users and groups should have the labels and what policy settings to use. A single label is reusable—you define it once, and then you can include it in several label policies assigned to different users. So for example, you could pilot your sensitivity labels by assigning a label policy to just a few users. Then when you're ready to roll out the labels across your organization, you can create a new label policy for your labels and this time, specify all users.

> [!TIP]
> You might be eligible for the automatic creation of default labels and a default label policy that takes care of steps 1-3 for you. For more information, see [Default labels and policies for Microsoft Purview Information Protection](mip-easy-trials.md).

The basic flow for deploying and applying sensitivity labels:

![Diagram showing workflow for sensitivity labels.](../media/Sensitivity-label-flow.png)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Subscription and licensing requirements for sensitivity labels

A number of different subscriptions support sensitivity labels and the licensing requirements for users depend on the features you use.

To see the options for licensing your users to benefit from Microsoft Purview features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For sensitivity labels, see the [Microsoft Purview Information Protection: Sensitivity labeling](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-information-protection-sensitivity-labeling) section and related [PDF download](https://go.microsoft.com/fwlink/?linkid=2139145) for feature-level licensing requirements.

## Permissions required to create and manage sensitivity labels

Members of your compliance team who will create sensitivity labels need permissions to the Microsoft Purview compliance portal.

By default, global administrators for your tenant have access to this admin center and can give compliance officers and other people access, without giving them all of the permissions of a tenant admin. For this delegated limited admin access, add users to the **Compliance Data Administrator**, **Compliance Administrator**, or **Security Administrator** role group. 

Alternatively to using the default roles, you can create a new role group and add either **Sensitivity Label Administrator** or **Organization Configuration** roles to this group. For a read-only role, use **Sensitivity Label Reader**. 

> [!NOTE]
> Now in preview, you can use the following role groups:
> - **Information Protection**
> - **Information Protection Admins**
> - **Information Protection Analysts**
> - **Information Protection Investigators**
> - **Information Protection Readers**
>
> For an explanation of each one, and the new roles that they contain, select a role group in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> > **Permissions & roles** > **Compliance center** > **Roles**, and then review the description in the flyout pane. Or, see [Role groups in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#role-groups-in-the-defender-and-compliance-portals).

For instructions to add users to the default role group, roles, or create your own role groups, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

These permissions are required only to create and configure sensitivity labels and their label policies. They are not required to apply the labels in apps or services. If additional permissions are needed for specific configurations that relate to sensitivity labels, those permissions will be listed in their respective documentation instructions.

## Deployment strategy for sensitivity labels
A successful strategy to deploy sensitivity labels for an organization is to create a working virtual team that identifies and manages the business and technical requirements, proof of concept testing, internal checkpoints and approvals, and final deployment for the production environment.

Using the table in the next section, we recommend identifying your top one or two scenarios that map to your most impactful business requirements. After these scenarios are deployed, return to the list to identify the next one or two priorities for deployment.

## Common scenarios for sensitivity labels

All scenarios require you to [Create and configure sensitivity labels and their policies](create-sensitivity-labels.md).

|I want to ...|Documentation|
|----------------|---------------|
|Manage sensitivity labels for Office apps so that content is labeled as it's created—includes support for manual labeling on all platforms |[Manage sensitivity labels in Office apps](sensitivity-labels-office-apps.md)|
|Extend labeling to File Explorer and PowerShell, with additional features for Office apps on Windows (if needed)|[Azure Information Protection unified labeling client for Windows](/azure/information-protection/rms-client/aip-clientv2)|
|Encrypt documents and emails with sensitivity labels and restrict who can access that content and how it can be used |[Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md)|
|Enable sensitivity labels for Office on the web, with support for coauthoring, eDiscovery, data loss prevention, search—even when documents are encrypted | [Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md)
|Files in SharePoint to be automatically labeled with a default sensitivity label | [Configure a default sensitivity label for a SharePoint document library](sensitivity-labels-sharepoint-default-label.md)
|Use co-authoring and AutoSave in Office desktop apps when documents are encrypted | [Enable co-authoring for files encrypted with sensitivity labels](sensitivity-labels-coauthoring.md)
|Automatically apply sensitivity labels to documents and emails | [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)|
|Use sensitivity labels to protect content in Teams and  SharePoint |[Use sensitivity labels with Microsoft Teams, Microsoft 365 groups, and SharePoint sites](sensitivity-labels-teams-groups-sites.md)|
|Use sensitivity labels to configure the default sharing link type for sites and individual documents in SharePoint and OneDrive |[Use sensitivity labels to set the default sharing link for sites and documents in SharePoint and OneDrive](sensitivity-labels-default-sharing-link.md)|
|Apply a sensitivity label to a document understanding model, so that identified documents in a SharePoint library are automatically classified and protected |[Apply a sensitivity label to a model in Microsoft SharePoint Syntex](/microsoft-365/contentunderstanding/apply-a-sensitivity-label-to-a-model)|
|Prevent or warn users about sharing files or emails with a specific sensitivity label |[Use sensitivity labels as conditions in DLP policies](dlp-sensitivity-label-as-condition.md) |
|Apply a sensitivity label to a file when I receive an alert that content containing personal data is being shared and needs protection| [Investigate and remediate alerts in Privacy Risk Management](/privacy/priva/risk-management-alerts)|
|Apply a retention label to retain or delete files or emails that have a specific sensitivity label|[Automatically apply a retention label to retain or delete content](apply-retention-labels-automatically.md) |
|Discover, label, and protect files stored in data stores that are on premises |[Deploying the Azure Information Protection scanner to automatically classify and protect files](/azure/information-protection/deploy-aip-scanner)|
|Discover, label, and protect files stored in data stores that are in the cloud|[Discover, classify, label, and protect regulated and sensitive data stored in the cloud](/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)|
|Label SQL database columns by using the same sensitivity labels as those used for files and emails so that the organization has a unified labeling solution that can continue to protect this structured data when it's exported |[Data Discovery & Classification for Azure SQL Database, Azure SQL Managed Instance, and Azure Synapse Analytics](/azure/azure-sql/database/data-discovery-and-classification-overview) <br /><br /> [SQL Data Discovery and Classification for SQL Server on-premises](/sql/relational-databases/security/sql-data-discovery-and-classification)|
|Apply and view labels in Power BI, and protect data when it's saved outside the service|[Sensitivity labels in Power BI](/power-bi/admin/service-security-sensitivity-label-overview)|
|Monitor and understand how sensitivity labels are being used in my organization|[Learn about data classification](data-classification-overview.md)|
|Extend sensitivity labels to third-party apps and services|[Microsoft Information Protection SDK](/information-protection/develop/overview#microsoft-information-protection-sdk)|
|Extend sensitivity labels across content in my Microsoft Purview Data Map assets, such as Azure Blob Storage, Azure Files, Azure Data Lake Storage, and multi-cloud data sources|[Labeling in Microsoft Purview Data Map](/azure/purview/create-sensitivity-label) |

## End-user documentation for sensitivity labels

The most effective end-user documentation will be customized guidance and instructions you provide for the label names and configurations you choose. You can use the label policy setting **Provide users with a link to a custom help page** to specify an internal link for this documentation. Users can then easily access it from the **Sensitivity** button:

- For built-in labeling: **Learn More** menu option.
- For the Azure Information Protection unified labeling client: **Help and Feedback** menu option > **Tell Me More** link in the Microsoft Azure Information Protection dialog box.

To help you provide your customized documentation, see the following page and downloads that you can use to help train your users: [End User Training for Sensitivity Labels](https://microsoft.github.io/ComplianceCxE/enduser/sensitivity/). 

You can also use the following resources for basic instructions:

- [Apply sensitivity labels to your files and email in Office](https://support.microsoft.com/en-us/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
    - [Known issues with sensitivity labels in Office](https://support.microsoft.com/en-us/office/known-issues-with-sensitivity-labels-in-office-b169d687-2bbd-4e21-a440-7da1b2743edc)

- [Automatically apply or recommend sensitivity labels to your files and emails in Office](https://support.office.com/article/automatically-apply-or-recommend-sensitivity-labels-to-your-files-and-emails-in-office-622e0d9c-f38c-470a-bcdb-9e90b24d71a1)
    - [Known issues with automatically applying or recommending sensitivity labels](https://support.office.com/article/known-issues-with-automatically-applying-or-recommending-sensitivity-labels-451698ae-311b-4d28-83aa-a839a66f6efc)

- [Create protected PDFs from Office files](https://support.microsoft.com/topic/aba7e367-e482-49e7-b746-a385e48d01e4)

- [Azure Information Protection unified labeling user guide](/azure/information-protection/rms-client/clientv2-user-guide)

If your sensitivity labels apply encryption for PDF documents, these documents can be opened with Microsoft Edge on Windows or Mac. For more information, and alternative readers, see [Which PDF readers are supported for protected PDFs?](/azure/information-protection/rms-client/protected-pdf-readers#viewing-protected-pdfs-in-microsoft-edge-on-windows-or-mac)
