---
title: "Microsoft Purview Information Protection"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: high
search.appverid:
- MOE150
- MET150
ms.collection:
- m365solution-mip
- m365initiative-compliance
- highpri
- tier1
recommendations: false
description: "Implement Microsoft Purview Information Protection capabilities to help you protect sensitive information wherever it lives or travels."
---

# Protect your sensitive data with Microsoft Purview

>*[Licensing for Microsoft 365 Security & Compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

Implement capabilities from **Microsoft Purview Information Protection** (formerly Microsoft Information Protection) to help you discover, classify, and protect sensitive information wherever it lives or travels.

These information protection capabilities give you the tools to [know your data](#know-your-data), [protect your data](#protect-your-data), and [prevent data loss](#prevent-data-loss).

![Image of how Microsoft Purview Information Protection helps you discover, classify, and protect sensitive data.](../media/powered-by-intelligent-platform.png)

Use the following sections to learn more about the available capabilities and how to get started with each one. However, if you're looking for a guided deployment, see [Deploy an information protection solution with Microsoft Purview](information-protection-solution.md).

For information about governing your data for compliance or regulatory requirements, see [Govern your data with Microsoft Purview](manage-data-governance.md).

## Know your data

To understand your data landscape and identify sensitive data across your hybrid environment, use the following capabilities:

|Capability|What problems does it solve?|Get started|
|:------|:------------|:--------------------|
|[Sensitive information types](sensitive-information-type-learn-about.md)| Identifies sensitive data by using built-in or custom regular expressions or a function. Corroborative evidence includes keywords, confidence levels, and proximity.| [Customize a built-in sensitive information type](customize-a-built-in-sensitive-information-type.md)|
|[Trainable classifiers](classifier-learn-about.md)| Identifies sensitive data by using examples of the data you're interested in rather than identifying elements in the item (pattern matching). You can use built-in classifiers or train a classifier with your own content.| [Get started with trainable classifiers](classifier-get-started-with.md) |
|[Data classification](data-classification-overview.md) | A graphical identification of items in your organization that have a sensitivity label, a retention label, or have been classified. You can also use this information to gain insights into the actions that your users are taking on these items. | [Get started with content explorer](data-classification-content-explorer.md) <p> [Get started with activity explorer](data-classification-activity-explorer.md) |

## Protect your data

To apply flexible protection actions that include encryption, access restrictions, and visual markings, use the following capabilities:

|Capability|What problems does it solve?|Get started|
|:------|:------------|---------------------|
|[Sensitivity labels](sensitivity-labels.md)| A single labeling solution across apps, services, and devices to protect your data as it travels inside and outside your organization. <br /><br /> Example scenarios: <br />- [Manage sensitivity labels for Office apps](sensitivity-labels-office-apps.md) <br />- [Encrypt documents and emails](encryption-sensitivity-labels.md) <br />-  [Apply and view labels in Power BI](/power-bi/admin/service-security-apply-data-sensitivity-labels) <br /><br /> For a comprehensive list of supported scenarios for sensitivity labels, see the Get started documentation.|[Get started with sensitivity labels](get-started-with-sensitivity-labels.md) |
|[Azure Information Protection unified labeling client](/azure/information-protection/rms-client/aip-clientv2)| For Windows computers, extends labeling to File Explorer and PowerShell, with additional features for Office apps if needed| [Azure Information Protection unified labeling client administrator guide](/azure/information-protection/rms-client/clientv2-admin-guide)|
|[Double Key Encryption](double-key-encryption.md)| Under all circumstances, only your organization can ever decrypt protected content or for regulatory requirements, you must hold encryption keys within a geographical boundary. | [Deploy Double Key Encryption](double-key-encryption.md#deploy-dke)|
|[Office 365 Message Encryption (OME)](ome.md)| Encrypts email messages and attached documents that are sent to any user on any device, so only authorized recipients can read emailed information. <br /><br />  Example scenario: [Revoke email encrypted by Advanced Message Encryption](revoke-ome-encrypted-mail.md) | [Set up new Message Encryption capabilities](set-up-new-message-encryption-capabilities.md)|
|[Service encryption with Customer Key](customer-key-overview.md) | Protects against viewing of data by unauthorized systems or personnel, and complements BitLocker disk encryption in Microsoft datacenters. | [Set up Customer Key for Office 365](customer-key-set-up.md)|
|[SharePoint Information Rights Management (IRM)](set-up-irm-in-sp-admin-center.md#irm-enable-sharepoint-document-libraries-and-lists)|Protects SharePoint lists and libraries so that when a user checks out a document, the downloaded file is protected so that only authorized people can view and use the file according to policies that you specify. | [Set up Information Rights Management (IRM) in SharePoint admin center](set-up-irm-in-sp-admin-center.md)|
[Rights Management connector](/azure/information-protection/deploy-rms-connector) |Protection-only for existing on-premises deployments that use Exchange or SharePoint Server, or file servers that run Windows Server and File Classification Infrastructure (FCI). | [Steps to deploy the RMS connector](/azure/information-protection/deploy-rms-connector#steps-to-deploy-the-rms-connector)
|[Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner)| Discovers, labels, and protects sensitive information that resides in data stores that are on premises. | [Configuring and installing the Azure Information Protection unified labeling scanner](/azure/information-protection/deploy-aip-scanner-configure-install)|
|[Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security)| Discovers, labels, and protects sensitive information that resides in data stores that are in the cloud. | [Discover, classify, label, and protect regulated and sensitive data stored in the cloud](/cloud-app-security/best-practices#discover-classify-label-and-protect-regulated-and-sensitive-data-stored-in-the-cloud)|
|[Microsoft Purview Data Map](/azure/purview/overview) |Identifies sensitive data and applies automatic labeling to content in Microsoft Purview Data Map assets. These include files in storage such as Azure Data Lake and Azure Files, and schematized data such as columns in Azure SQL DB, and Cosmos DB. |[Labeling in Microsoft Purview Data Map](/azure/purview/create-sensitivity-label) |
|[Microsoft Information Protection SDK](/information-protection/develop/overview#microsoft-information-protection-sdk)|Extends sensitivity labels to third-party apps and services. <br /><br />  Example scenario: [Set and get a sensitivity label (C++)](/information-protection/develop/quick-file-set-get-label-cpp) |[Microsoft Information Protection (MIP) SDK setup and configuration](/information-protection/develop/setup-configure-mip)|


## Prevent data loss

To help prevent accidental oversharing of sensitive information, use the following capabilities:


|Capability|What problems does it solve?|Get started|
|:------|:------------|:---------------------|
|[Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md)| Helps prevent unintentional sharing of sensitive items. | [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)|
|[Endpoint data loss prevention](endpoint-dlp-learn-about.md)| Extends DLP capabilities to items that are used and shared on Windows 10 computers. | [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)|
|[Microsoft Compliance Extension](dlp-chrome-learn-about.md) | Extends DLP capabilities to the Chrome browser | [Get started with the Microsoft Compliance Extension](dlp-chrome-get-started.md)|
|[Microsoft Purview data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-learn.md)|Extends DLP monitoring of file activities and protective actions for those files to on-premises file shares and SharePoint folders and document libraries.|[Get started with Microsoft Purview data loss prevention on-premises scanner (preview)](dlp-on-premises-scanner-get-started.md)|
|[Protect sensitive information in Microsoft Teams chat and channel messages](dlp-microsoft-teams.md) | Extends some DLP functionality to Teams chat and channel messages | [Learn about the default data loss prevention policy in Microsoft Teams (preview)](dlp-teams-default-policy.md)|

## Licensing requirements

License requirements for Microsoft Purview Information Protection depend on the scenarios and features you use, rather than set licensing requirements for each capability listed on this page. To understand your licensing requirements and options for Microsoft Purview Information Protection, see the **Information Protection** sections from [Microsoft 365 guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance) and the related [PDF download](https://go.microsoft.com/fwlink/?linkid=2139145) for feature-level licensing requirements.
