---
title: "Microsoft Information Protection in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
ms.collection: 
- m365solution-mip
- m365initiative-compliance
recommendations: false
description: "Implement Microsoft Information Protection (MIP) to help you protect sensitive information wherever it lives or travels."
---

# Microsoft Information Protection in Microsoft 365

>*[Licensing for Microsoft 365 Security & Compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

Implement Microsoft Information Protection (MIP) to help you discover, classify, and protect sensitive information wherever it lives or travels.

MIP capabilities are included with Microsoft 365 Compliance and give you the tools to [know your data](#know-your-data), [protect your data](#protect-your-data), and [prevent data loss](#prevent-data-loss).

![Image of how MIP helps you discover, classify, and protect sensitive data](../media/powered-by-intelligent-platform.png)

:::image type="content" source="../media/data-table1-4638524-new.png" alt-text="Know your data":::

For information about governing your data, see [Microsoft Information Governance in Microsoft 365](manage-Information-governance.md).

## Know your data

> [!NOTE]
> For information about classifying and labeling data in Azure Purview, currently in preview, see [Automatically label your content in Azure Purview](/azure/purview/create-sensitivity-label).
> 
> For release announcements for Azure Purview, see the following blog posts: [Microsoft Information Protection and Microsoft Azure Purview: Better Together](https://techcommunity.microsoft.com/t5/microsoft-security-and/microsoft-information-protection-and-microsoft-azure-purview/ba-p/1957481) and [Azure Purview at Spring Ignite 2021](https://techcommunity.microsoft.com/t5/azure-purview/azure-purview-at-spring-ignite-2021/ba-p/2175919).

To understand your data landscape and identify important data across your hybrid environment, use the following capabilities:

:::image type="content" source="../media/knowyourdata-new.png" alt-text="know your data"::: 


|**Capability**|**What problems does it solve?**|**Get started**|**Licensing**|
|--|--|--|--|
|[Sensitive information types](sensitive-information-type-entity-definitions.md)| Identifies sensitive data by using built-in or custom regular expressions or a function, together with corroborative evidence that includes keywords, confidence levels, and proximity. Use sensitive information types to identify specific types of data in your organization. Use the out-of-the-box sensitive information types to find standard types of data, such as passport numbers. Create a custom information type to identify information that is unique to your environment, such as part numbers. | [Customize a built-in sensitive information type](customize-a-built-in-sensitive-information-type.md)| |
|[Trainable classifiers (preview)](classifier-learn-about.md)| Classifies data for you, using one of the built-in classifiers or train a classifier with your own content | [Get started with trainable classifiers (preview)](classifier-get-started-with.md)| |
|[Data classification](data-classification-overview.md) | Identifies items that have a sensitivity label, a retention label, or have been classified as a sensitive information type in your organization and the actions that your users are taking on them  | [Get started with content explorer](data-classification-content-explorer.md)<br /><br /> [Get started with activity explorer](data-classification-activity-explorer.md)| |



## Protect your data

To apply flexible protection actions that include encryption, access restrictions, and visual markings, use the following capabilities:


:::image type="content" source="../media/protectyourdata-4638524-new.png" alt-text="Protect your data":::

|**Capability**|**What problems does it solve?**|**Get started**|**Licensing**|
|--|--|--|--|
|[Sensitivity labels](sensitivity-labels.md)| A single solution across apps, services, and devices to label and protect your data as it travels inside and outside your organization <br /><br />Example scenario: [Apply and view sensitivity labels in Power BI, and protect data when it is exported](/power-bi/admin/service-security-apply-data-sensitivity-labels)|[ Get started with sensitivity labels](get-started-with-sensitivity-labels.md) |
|[Microsoft Cloud App Security](/cloud-app-security/what-is-cloud-app-security)| Discovers,labels, and protects sensitive information that resides in data stores that are in the cloud | [Discover, classify, label, and protect regulated and sensitive data stored in the cloud](/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)|
|[Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner)| Discovers, labels, and protects sensitive information that resides in data stores that are on premises | [Configuring and installing the Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner-configure-install)|
|[Activity Explorer]()||||


## Transition from AIP to MIP
The classic Azure Information Protection admin experience and client are being deprecated early next year. It is recommended to move to Microsoft Information Protection.This entails migrating all your existing labels and policies over. 

:::image type="content" source="../media/transition-aip2mip-4638524-new.png" alt-text="Transition from AIP to MIP":::

## Additional capabilities
Microsoft 365 includes these capabilities to help protect data:

|**Capability**|**What problems does it solve?**|**Get started**|
|--|--|--|
| Office 365 Message Encryption(OME) | Encrypts email messages and attached documents that are sent to any user on any device, so only authorized recipients can read emailed information. <br /><br /> Example scenario: Revoke email encrypted by Advanced Message Encryption | Set up new Message Encryption capabilities |
| Double Key Encryption | Under all circumstances only you can ever decrypt protected content, or for regulatory requirements you must hold encryption keys within a geographical boundary | Deploy Double Key Encryption |  
| Service encryption with Customer Key | Protects against viewing of data by unauthorized systems or personnel, and complements bitlocker disk encryption in Microsoft data centers | Set up Customer Key for Office 365 |
| SharePoint Information Rights Management(IRM) | Protects SharePoint lists and libraries so that when a user checks out a document, the downloaded file is protected so that only authorized can view and use the file according to policies that you specify | Set up Information Rights Management (IRM) in SharePoint admin center |
| Rights Management Connector | Protection-only for existing on-premises deployments that use Exchange or SharePoint Server and File Classification Infrastructure (FCI) | Steps to deploy the RMS Connector |



## Prevent data loss

To help prevent accidental oversharing of sensitive information, use the following capabilities:

:::image type="content" source="../media/dlp-4638524-new.png" alt-text="Prevent data loss":::

|**Step**|**Description**|**More information**|
|--|--|--|
|[Design DLP policies](data-loss-prevention-policies.md)| Plan for the mode of identifying info(sensitive info type, label, other) <br /><br /> Plan where the policies will target(services, client, 3rd party apps.) <br /><br /> Plan policy tips, other||
||||




|**Capability**|**What problems does it solve?**|**Get started**|
|--|--|--|
|[Learn about data loss prevention](dlp-learn-about-dlp.md)| Helps prevent unintentional sharing of sensitive items. | [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)|
|[Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)| Extends DLP capabilities to items that are used and shared on Windows 10 computers. | [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)|
|[Learn about the Microsoft Compliance Extension (preview)](dlp-chrome-learn-about.md) | Extends DLP capabilities to the Chrome browser | [Get started with the Microsoft Compliance Extension (preview)](dlp-chrome-get-started.md)|
|[Learn about Microsoft 365 data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-learn.md)|Extends DLP monitoring of file activities and protective actions for those files to on-premises file shares and SharePoint folders and document libraries.|[Get started with Microsoft 365 data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-get-started.md)|
|[Protect sensitive information in Microsoft Teams chat and channel messages](dlp-microsoft-teams.md) | Extends some DLP functionality to Teams chat and channel messages | [Learn about the default data loss prevention policy in Microsoft Teams (preview)](dlp-teams-default-policy.md)| 


## Additional resources

Many organizations are using these information protection capabilities to comply with data privacy regulations. To help, we’ve designed a workflow to guide you through an end-to-end process to plan and implement capabilities across Microsoft 365, including secure access, threat protection, information protection, and data governance. For more information, see [Deploy information protection for data privacy regulations with Microsoft 365](../solutions/information-protection-deploy.md) (aka.ms/m365dataprivacy). 

Additionally, to help you plan an integrated strategy for implementing information protection capabilities, download the *Microsoft 365 information protection and compliance capabilities* set of illustrations.  Feel free to adapt these illustrations for your own use.

| Item | Description |
|:-----|:------------|
|[![Model poster: Microsoft 365 information protection and compliance capabilities](../media/solutions-architecture-center/m365-compliance-illustrations-thumb.png)](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf) <br/> [Download as a PDF](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.vsdx) <br/> Japanese: [Download as a PDF](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.vsdx) <br/> Updated October 2020|Includes: <ul><li>  Microsoft information protection and data loss prevention</li><li>Retention policies and retention labels </li><li>Information barriers</li><li>Communication compliance</li><li>Insider risk management</li><li>Third-party data ingestion</li>|

