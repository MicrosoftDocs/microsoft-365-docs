---
title: "Archive third-party data"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- m365solution-mig
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 0ce338d5-3666-4a18-86ab-c6910ff408cc
ms.custom:
- seo-marvel-apr2020
description: "Learn how to import third-party data from  social media platforms, instant messaging platforms, and document collaboration platforms to Microsoft 365 mailboxes."
---

# Archive third-party data

Microsoft 365 lets administrators use data connectors to import and archive third-party data from social media platforms, instant messaging platforms, and document collaboration platforms, to mailboxes in your Microsoft 365 organization. One primary benefit of using data connectors to import and archive third-party data in Microsoft 365 is that you can apply various Microsoft 365 compliance solutions to that after it's been imported. This helps you ensure that your organization's non-Microsoft data is in compliance with the regulations and standards that affect your organization.

## Third-party data connectors

The following table lists the third-party data connectors available in the Microsoft 365 compliance center. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive in Microsoft 365. See the [next section](#overview-of-compliance-solutions-that-support-third-party-data) for a more detailed description of each compliance solution and how it can benefit third-party data.

> [!TIP]
> Click the link in the **Third-party data** column to go the step-by-step instructions for creating a connector for that data type.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[Android <sup>1</sup>](archive-android-archiver-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[AT&T Network <sup>1</sup>](archive-att-network-archiver-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Bell Network <sup>1</sup>](archive-bell-network-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Bloomberg Message](archive-bloomberg-message-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[CellTrust <sup>2</sup>](archive-celltrust-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on MS SQL <sup>2</sup>](archive-ciscojabberonmssql-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on Oracle <sup>2</sup>](archive-ciscojabberonoracle-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on PostgreSQL <sup>2</sup>](archive-ciscojabberonpostgresql-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[EML <sup>2</sup>](archive-eml-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Enterprise Number <sup>1</sup>](archive-enterprise-number-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Facebook](archive-facebook-data-with-sample-connector.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[FX Connect <sup>2</sup>](archive-fxconnect-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Human resources (HR)](import-hr-data.md) ||||||![Check mark](../media/checkmark.png)
|[ICE Chat](archive-icechat-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Instant Bloomberg](archive-instant-bloomberg-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Jive <sup>2</sup>](archive-jive-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[LinkedIn](archive-linkedin-data.md)   |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[MS SQL Database <sup>2</sup>](archive-mssqldatabaseimporter-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[O2 Network <sup>1</sup>](archive-o2-network-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Physical badging](import-physical-badging-data.md) ||||||![Check mark](../media/checkmark.png)|
|[Pivot <sup>2</sup>](archive-pivot-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Redtail Speak <sup>2</sup>](archive-redtailspeak-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters Dealing <sup>2</sup>](archive-reutersdealing-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters Eikon <sup>2</sup>](archive-reuterseikon-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters FX <sup>2</sup>](archive-reutersfx-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Salesforce Chatter <sup>2</sup>](archive-salesforcechatter-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[ServiceNow <sup>2</sup>](archive-servicenow-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Slack eDiscovery <sup>2</sup>](archive-slack-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Symphony <sup>2</sup>](archive-symphony-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[TELUS Network <sup>1</sup>](archive-telus-network-data.md)    |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Text-delimited <sup>2</sup>](archive-text-delimited-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Twitter](archive-twitter-data-with-sample-connector.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Verizon Network <sup>1</sup>](archive-verizon-network-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Webex Teams <sup>2</sup>](archive-webexteams-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Webpages <sup>2</sup>](archive-webpagecapture-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[WhatsApp <sup>1</sup>](archive-whatsapp-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Workplace from Facebook <sup>2</sup>](archive-workplacefromfacebook-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[XIP <sup>2</sup>](archive-xip-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[XSLT/XML <sup>2</sup>](archive-xslt-xml-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Yieldbroker <sup>2</sup>](archive-yieldbroker-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Zoom Meetings <sup>2</sup>](archive-zoommeetings-data.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
||||||||

> [!NOTE]
> <sup>1</sup> Data connector provided by TeleMessage. Before you can archive data in Microsoft 365, you have to work with TeleMessage to set up their archiving service for your organization. For more information, see the prerequisite section in the step-by-step instructions for this data type. TeleMessage data connectors are also available in GCC environments in the Microsoft 365 US Government cloud. For more information, see the [Data connectors in the US Government cloud](#data-connectors-in-the-us-government-cloud) section in this article. <br/><br/><sup>2</sup> Data connector provided by Veritas. Before you can archive data in Microsoft 365, you have to work with Veritas to set up their archiving service for your organization. For more information, see the prerequisite section in the step-by-step instructions for this data type.

The third-party data listed in the previous table (except for HR data and physical badging data) is imported into user mailboxes. The corresponding compliance solutions that support third-party data are applied to the user mailbox where the data is stored.

## Overview of compliance solutions that support third-party data

The following sections describe some of the things that the Microsoft 365 compliance solutions can help you to manage the third-party data listed in the previous table.

### Litigation hold

You place a [Litigation hold](create-a-litigation-hold.md) on a user mailbox to retain third-party data. When you create a hold, you can specify a hold duration (also called a *time-based hold*) so that deleted and modified third-party data is retained for a specified period and then permanently deleted from the mailbox. Or you can just retain content indefinitely (called an *infinite hold*) or until the Litigation hold is removed.

### eDiscovery

The three primary eDiscovery tools in Microsoft 365 are Content search, Core eDiscovery, and Advanced eDiscovery.

- **[Content search](content-search.md).** You can use the content search tool to search mailboxes for third-party data that you imported. You can use search queries and conditions to narrow your search results, and the export the search results.

- **[Core eDiscovery](get-started-core-ediscovery.md).** This tool builds on the basic search and export functionality by enabling you to create cases that let you control who can access case data, place a hold on user mailboxes or mailbox content that matches search criteria. That means you can place an eDiscovery hold on the third-party data that was imported to user mailboxes.

- **[Advanced eDiscovery](overview-ediscovery-20.md).** This powerful tool expands the case functionality of Core eDiscovery by letting you add custodians to a case, placing custodian's data on hold, and then loading a custodian's third-party data into a review for further analysis such as themes and duplicate detection. After you load third-party data into a review set, you can query and filter it to a narrow result set.

   Both Core eDiscovery and Advanced eDiscovery let you manage third-party data that may be relevant to your organization's legal or internal investigations.

### Retention settings

You can apply a [retention policy](retention.md) to user mailboxes to retain and then delete third-party data (and other mailbox content) after retention period expires. You can also use retention policies to delete third-party data of a certain age or [use retention labels to trigger a disposition review](disposition.md) when the retention period for third-party data expires.

### Records management

The [records management](records-management.md) feature in Microsoft 365 lets you declare third-party data as a record. This can be done manually by users who apply a retention label that marks third-party data in their mailbox as record. Or you can auto-apply retention labels by identifying sensitive information, keywords, or content types in third-party data.

### Communication compliance

You can use [Communication compliance](communication-compliance.md) to examine third-party data to make sure it is compliant with your organization's data standards. You can do this by you detecting, capturing, and taking remediation actions for inappropriate messages in your organization. For example, you can monitor the third-party data that you import for offensive language, sensitive information, and regulatory compliance.

### Insider risk management

Signals from third-party data, like selective HR data, can be used by the [Insider risk management](insider-risk-management.md) solution to minimize internal risks by letting you to detect, investigate, and act on risky activities in your organization. For example, data imported by the HR data connector is used as risk indicators to help detect departing employee data theft.

## Data connectors in the US Government cloud

As previously mentioned, data connectors provided by TeleMessage are available in the US Government cloud. The following table indicates the specific government environments that support each data connector. For more information about US Government clouds, see [Microsoft 365 US Government](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/microsoft-365-government-how-to-buy).

|TeleMessage data connector  |GCC  |GCC High  |DoD  |
|:---------|:---------|:---------|:---------|
|Android Archiver | Yes | No | No |
|AT&T SMS/MMS Network Archiver | Yes | No | No |
|Bell SMS/MMS Network Archiver | Yes | No | No |
|Enterprise Number Archiver | Yes | No | No |
|O2 SMS and Voice Network Archiver | Yes         | No | No |
|TELUS SMS Network Archiver | Yes | No | No |
|Verizon SMS/MMS Network Archiver | Yes | No | No |
|WhatsApp Archiver | Yes | No | No |
|||||

## Working with a Microsoft partner to archive third-party data

Another option for importing and archiving third-party data is for your organization to work with a Microsoft Partner. If a third-party data type isn't supported by the data connectors available in the Microsoft compliance center, you can work with a partner who can provide a custom connector that will be configured to extract items from the third-party data source on a regular basis and then connect to the Microsoft cloud by a third-party API and import those items to Microsoft 365. The partner connector also converts the content of an item from the third-party data source to an email message and then imports it to a mailbox in Microsoft 365.

For a list of partners that you can work with and the step-by-step process for this method, see [Work with a partner to archive third-party data in Microsoft 365](work-with-partner-to-archive-third-party-data.md).
