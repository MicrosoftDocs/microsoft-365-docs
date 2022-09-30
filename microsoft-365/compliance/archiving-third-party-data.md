---
title: "Use data connectors to import and archive third-party data in Microsoft 365"
description: "Learn how to import and archive third-party data from social media platforms, instant messaging platforms, and document collaboration platforms to Microsoft 365 mailboxes."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier3
- purview-compliance
- data-connectors
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020

---

# Learn about connectors for third-party data

Microsoft 365 lets administrators use data connectors to import and archive non-Microsoft, third-party data from social media platforms, instant messaging platforms, and document collaboration platforms, to mailboxes in your Microsoft 365 organization. One primary benefit of using data connectors to import and archive third-party data in Microsoft 365 is that you can apply various Microsoft Purview solutions to the data after it's been imported. This helps you ensure that your organization's non-Microsoft data is in compliance with the regulations and standards that affect your organization.

Watch this interactive guide that demonstrates how to create data connectors to import and archive third-party data and examples of applying compliance solutions to data after it's imported to Microsoft 365.

> [!VIDEO https://mslearn.cloudguides.com/guides/Archive%20data%20from%20non-Microsoft%20sources%20in%20Microsoft%20365]

## Third-party data connectors

The Microsoft Purview compliance portal provides native third-party data connectors from Microsoft to import data from various data sources, such as LinkedIn, Instant Bloomberg, and Twitter and data connectors that support the Insider risk management solution. In addition to these data connectors, Microsoft works with the following partners to provide many more third part data connectors in the compliance portal. Your organization works with these partners to set up their archiving service before creating a corresponding data connector in the compliance portal.

- [Veritas](#veritas-data-connectors)

- [TeleMessage](#telemessage-data-connectors)

- [17a-4 LLC](#17a-4-data-connectors)

- [CellTrust](#celltrust-data-connectors)

The third-party data listed in the next sections (except for HR data and physical badging data that is used for the Microsoft Purview Insider Risk Management solution) is imported into user mailboxes. The Microsoft Purview solutions that support third-party data are applied to the user mailbox where the data is stored.

### Microsoft data connectors

The following table lists the native third-party data connectors available in the compliance portal. The table also summarizes the compliance solutions that you can apply after you import and archive third-party data in Microsoft 365. See the [Overview of compliance solutions that support third-party data](#overview-of-compliance-solutions-that-support-third-party-data) section for a more detailed description of each compliance solution and how it supports third-party data.

Click the link in the **Third-party data** column to go the step-by-step instructions for creating a connector for that data type.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[Bloomberg Message](archive-bloomberg-message-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)||
|[Epic EHR healthcare](import-epic-data.md) ||||||![Check mark](../media/checkmark.png)|
|[Facebook](archive-facebook-data-with-sample-connector.md)     |![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Generic EHR healthcare](import-healthcare-data.md) ||||||![Check mark](../media/checkmark.png)|
|[Human resources (HR)](import-hr-data.md) ||||||![Check mark](../media/checkmark.png)|
|[ICE Chat](archive-icechat-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Instant Bloomberg](archive-instant-bloomberg-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[LinkedIn](archive-linkedin-data.md)   |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Physical badging](import-physical-badging-data.md) ||||||![Check mark](../media/checkmark.png)|
|[Slack eDiscovery](archive-slack-data-microsoft.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Twitter](archive-twitter-data-with-sample-connector.md)     |![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
||||||||

### Veritas data connectors

The table in this section lists the third-party data connectors available in partnership with Veritas. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive it in Microsoft 365. See the [Overview of compliance solutions that support third-party data](#overview-of-compliance-solutions-that-support-third-party-data) section for a more detailed description of each compliance solution and how it supports third-party data.

Before you can archive third-party data in Microsoft 365, you have to work with Veritas to set up their archiving service (called *Merge1*) for your organization. For more information, click the link in the **Third-party data** column to go the step-by-step instructions for creating a connector for that data type.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[CellTrust](archive-celltrust-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on MS SQL](archive-ciscojabberonmssql-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on Oracle](archive-ciscojabberonoracle-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber on PostgreSQL](archive-ciscojabberonpostgresql-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[EML](archive-eml-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[FX Connect](archive-fxconnect-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Jive](archive-jive-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[MS SQL Database](archive-mssqldatabaseimporter-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Pivot](archive-pivot-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Redtail Speak](archive-redtailspeak-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters Dealing](archive-reutersdealing-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters Eikon](archive-reuterseikon-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Reuters FX](archive-reutersfx-data.md)|![Check mark.](../media/checkmark.png)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[RingCentral](archive-ringcentral-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Salesforce Chatter](archive-salesforcechatter-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[ServiceNow](archive-servicenow-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Skype for Business](archive-skypeforbusiness-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Slack eDiscovery](archive-slack-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Symphony](archive-symphony-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Text-delimited](archive-text-delimited-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Twitter](archive-veritas-twitter-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Webex Teams](archive-webexteams-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Webpages](archive-webpagecapture-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Workplace from Facebook](archive-workplacefromfacebook-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[XIP](archive-xip-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[XSLT/XML](archive-xslt-xml-data.md)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Yieldbroker](archive-yieldbroker-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[YouTube](archive-youtube-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|||
|[Zoom Meetings](archive-zoommeetings-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
||||||||

### TeleMessage data connectors

The table in this section lists the third-party data connectors available in partnership with TeleMessage. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive it in Microsoft 365. See the [Overview of compliance solutions that support third-party data](#overview-of-compliance-solutions-that-support-third-party-data) section for a more detailed description of each compliance solution and how it supports third-party data.

Before you can archive third-party data in Microsoft 365, you have to work with TeleMessage to set up their archiving service for your organization. For more information, click the link in the **Third-party data** column to go the step-by-step instructions for creating a connector for that data type.

TeleMessage data connectors are also available in GCC environments in the Microsoft 365 US Government cloud. For more information, see the [Data connectors in the US Government cloud](#data-connectors-in-the-us-government-cloud) section in this article.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[Android](archive-android-archiver-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[AT&T Network](archive-att-network-archiver-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Bell Network](archive-bell-network-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Enterprise Number](archive-enterprise-number-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[O2 Network](archive-o2-network-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Rogers Network](archive-rogers-network-archiver-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Signal](archive-signal-archiver-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Telegram](archive-telegram-archiver-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[TELUS Network](archive-telus-network-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Verizon Network](archive-verizon-network-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[WeChat](archive-wechat-data.md)|![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[WhatsApp](archive-whatsapp-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
||||||||

### 17a-4 data connectors

The table in this section lists the third-party data connectors available in partnership with 17a-4 LLC. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive it in Microsoft 365. See the [Overview of compliance solutions that support third-party data](#overview-of-compliance-solutions-that-support-third-party-data) section for a more detailed description of each compliance solution and how it supports third-party data.

Before you can archive third-party data in Microsoft 365, you have to work with 17a-4 LLC to set up their archiving service (called *DataParser*) for your organization. For more information, click the link in the **Third-party data** column to go the step-by-step instructions for creating a connector for that data type.

17a-4 data connectors are also available in GCC environments in the Microsoft 365 US Government cloud. For more information, see the [Data connectors in the US Government cloud](#data-connectors-in-the-us-government-cloud) section in this article.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[BlackBerry](archive-17a-4-blackberry-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Bloomberg](archive-17a-4-bloomberg-data.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Jabber](archive-17a-4-cisco-jabber-data.md)   |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Cisco Webex](archive-17a-4-webex-teams-data.md)   |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[FactSet](archive-17a-4-factset-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Fuze](archive-17a-4-fuze-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[FX Connect](archive-17a-4-fxconnect-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[ICE Chat](archive-17a-4-ice-im-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[InvestEdge](archive-17a-4-investedge-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[LivePerson Conversational Cloud](archive-17a-4-liveperson-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Quip](archive-17a-4-quip-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Refinitiv Eikon Messenger](archive-17a-4-refinitiv-messenger-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[ServiceNow](archive-17a-4-servicenow-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
[Skype for Business Server](archive-17a-4-skype-for-business-server-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Slack](archive-17a-4-slack-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[SQL](archive-17a-4-sql-database-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Symphony](archive-17a-4-symphony-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
|[Zoom](archive-17a-4-zoom-data.md)    |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
||||||||

### CellTrust data connectors

The table in this section lists the third-party data connector available in partnership with CellTrust. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive it in Microsoft 365. See the [Overview of compliance solutions that support third-party data](#overview-of-compliance-solutions-that-support-third-party-data) section for a more detailed description of each compliance solution and how it supports third-party data.

Before you can archive third-party data in Microsoft 365, you have to work with CellTrust to set up their archiving service (called *CellTrust SL2*) for your organization. For more information, click the link in the **Third-party data** column to go the step-by-step instructions for creating a CellTrust SL2 connector.

|Third-party data  |Litigation hold|eDiscovery  |Retention settings  |Records management  |Communication compliance  |Insider risk management  |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|[CellTrust SL2](archive-data-from-celltrustsl2.md)     |![Check mark.](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)|![Check mark](../media/checkmark.png)||
||||||||

The CellTrust SL2 data connector is also available in GCC environments in the Microsoft 365 US Government cloud. For more information, see the [Data connectors in the US Government cloud](#data-connectors-in-the-us-government-cloud) section in this article.

## Overview of compliance solutions that support third-party data

The following sections describe some of the things that the Microsoft Purview solutions can help you to manage the third-party data listed in the previous table.

### Litigation hold

You place a [Litigation hold](create-a-litigation-hold.md) on a user mailbox to retain third-party data. When you create a hold, you can specify a hold duration (also called a *time-based hold*) so that deleted and modified third-party data is retained for a specified period and then permanently deleted from the mailbox. Or you can just retain content indefinitely (called an *infinite hold*) or until the Litigation hold is removed.

### eDiscovery

The three primary eDiscovery tools in Microsoft 365 are Content search, Microsoft Purview eDiscovery (Standard), and Microsoft Purview eDiscovery (Premium).

- **[Content search](content-search.md).** You can use the content search tool to search mailboxes for third-party data that you imported. You can use search queries and conditions to narrow your search results, and the export the search results.

- **[eDiscovery (Standard)](get-started-core-ediscovery.md).** This tool builds on the basic search and export functionality by enabling you to create cases that let you control who can access case data, place a hold on user mailboxes or mailbox content that matches search criteria. That means you can place an eDiscovery hold on the third-party data that was imported to user mailboxes.

- **[eDiscovery (Premium)](overview-ediscovery-20.md).** This powerful tool expands the case functionality of eDiscovery (Standard) by letting you add custodians to a case, placing custodian's data on hold, and then loading a custodian's third-party data into a review for further analysis such as themes and duplicate detection. After you load third-party data into a review set, you can query and filter it to a narrow result set.

   Both eDiscovery (Standard) and eDiscovery (Premium) let you manage third-party data that may be relevant to your organization's legal or internal investigations.

### Retention settings

You can apply a [retention policy](retention.md) to user mailboxes to retain and then delete third-party data (and other mailbox content) after retention period expires. You can also use retention policies to delete third-party data of a certain age or [use retention labels to trigger a disposition review](disposition.md) when the retention period for third-party data expires.

### Records management

The [records management](records-management.md) feature in Microsoft 365 lets you declare third-party data as a record. This can be done manually by users who apply a retention label that marks third-party data in their mailbox as record. Or you can auto-apply retention labels by identifying sensitive information, keywords, or content types in third-party data.

### Communication compliance

You can use [Communication compliance](communication-compliance.md) to examine third-party data to make sure it is compliant with your organization's data standards. You can do this by you detecting, capturing, and taking remediation actions for inappropriate messages in your organization. For example, you can monitor the third-party data that you import for offensive language, sensitive information, and regulatory compliance.

### Insider risk management

Signals from third-party data, like selective HR data, can be used by the [Insider risk management](insider-risk-management.md) solution to minimize internal risks by letting you to detect, investigate, and act on risky activities in your organization. For example, data imported by the HR data connector is used as risk indicators to help detect departing employee data theft.

## Using eDiscovery tools to search for third-party data

After you use data connectors to import and archive third-party data in user mailboxes, you can use Microsoft 365 eDiscovery tools to search for third-party data. You can also eDiscovery tools to create query-based holds associated with eDiscovery (Standard) and eDiscovery (Premium) cases to preserve third-party data. For more information about eDiscovery tools, see [eDiscovery solutions in Microsoft 365](ediscovery.md).

To search for (or place a hold on) any type of third-party data that you've imported to user mailboxes using a data connector, you can use the following search query. Be sure to scope the search to user mailboxes.

```powershell
kind:externaldata
```

You can use this query in the **Keywords** box for a Content search, a search associated with a eDiscovery (Standard) case, or a collection in eDiscovery (Premium).

![Query to search for third-party data.](..\media\SearchThirdPartyData1.png)

You can also use the `kind:externaldata` property:value pair to narrow the scope of searches to third-party data. For example, to search for items imported from any third-party data source that contain the word *contoso* in the **Subject** property of the imported item, use the following query in the **Keywords** box:

```powershell
subject:contoso AND kind:externaldata
```

Alternatively, you can use the **Message kind** condition to configure the same query.

![Use Message kind condition to narrow searches to third-party data.](..\media\SearchThirdPartyData2.png)

To search for a specific type of archived third-party data, use the **itemclass** mailbox property in a search query. Use the following property:value format:

```powershell
itemclass:ipm.externaldata.<third-party data type>
```

Every item imported by a third-party data connector includes the **itemclass** property with a value that corresponds to the third-party data type. For example, to search for Facebook data that contains the word *contoso*, in the **Subject** property of the imported item, use the following query:

```powershell
subject:contoso AND itemclass:ipm.externaldata.facebook*
```

Here are a few examples for **itemclass** values for different types of third-party data.

| **Third-party data type** | **Value for itemclass property**   |
|---------------------------|-------------------------------------|
| Bloomberg Message         | ipm.externaldata.bloombergmessage* |
| CellTrust                 | ipm.externaldata.celltrust*        |
| Pivot                     | ipm.externaldata.pivot*            |
| WhatsApp Archiver         | ipm.externaldata.whatsapparchiver* |
|||

Values for the *itemclass* property are not case-sensitive. In general, use the name of the third-party data type (without spaces) followed by a wildcard ( * ) character.

For more information about creating eDiscovery search queries, see [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md).

## Data connectors in the US Government cloud

Some data connectors are available in the US Government cloud. The following sections indicate the specific government environments that support third-party data connectors. For more information about US Government clouds, see [Microsoft 365 US Government](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/microsoft-365-government-how-to-buy).

### Veritas data connectors in the US Government cloud (preview)

|Data connector  |GCC  |GCC High  |DoD  |
|:---------|:---------|:---------|:---------|
|CellTrust| Yes | No | No |
|Cisco Jabber on MS SQL| Yes | No | No |
|Cisco Jabber on Oracle| Yes | No | No |
|Cisco Jabber on PostgreSQL| Yes | No | No |
|EML| Yes | No | No |
|FX Connect| Yes | No | No |
|Jive| Yes | No | No |
|MS SQL Database| Yes | No | No |
|Pivot| Yes | No | No |
|Redtail Speak| Yes | No | No |
|Reuters Dealing| Yes | No | No |
|Reuters Eikon| Yes | No | No |
|Reuters FX| Yes | No | No |
|RingCentral| Yes | No | No |
|Salesforce Chatter| Yes | No | No |
|ServiceNow| Yes | No | No |
|Skype for Business| Yes | No | No |
|Slack eDiscovery| Yes | No | No |
|Symphony| Yes | No | No |
|Text-delimited| Yes | No | No |
|Twitter| Yes | No | No |
|Webex Teams| Yes | No | No |
|Webpages| Yes | No | No |
|Workplace from Facebook| Yes | No | No |
|XIP| Yes | No | No |
|XSLT/XML| Yes | No | No |
|Yieldbroker| Yes | No | No |
|YouTube| No | No | No |
|Zoom Meetings| Yes | No | No |
|||||

### TeleMessage data connectors in the US Government cloud

|Data connector  |GCC  |GCC High  |DoD  |
|:---------|:---------|:---------|:---------|
|Android Archiver | Yes | No | No |
|AT&T SMS/MMS Network Archiver | Yes | No | No |
|Bell SMS/MMS Network Archiver | Yes | No | No |
|Enterprise Number Archiver | Yes | No | No |
|O2 SMS and Voice Network Archiver | Yes         | No | No |
|Rogers Network Archiver | Yes         | No | No |
|Signal Archiver | Yes | No | No |
|Telegram Archiver | Yes | No | No |
|TELUS SMS Network Archiver | Yes | No | No |
|Verizon SMS/MMS Network Archiver | Yes | No | No |
|WeChat Archiver | Yes | No | No |
|WhatsApp Archiver | Yes | No | No |
|||||

### 17a-4 data connectors in the US Government cloud

|Data connector  |GCC  |GCC High  |DoD  |
|:---------|:---------|:---------|:---------|
|BlackBerry DataParser | Yes | No | No |
|Bloomberg DataParser  | Yes | No | No |
|Cisco Jabber DataParser  | Yes | No | No |
|Cisco Webex DataParser  | Yes | No | No |
|FactSet DataParser  | Yes | No | No |
|Fuze DataParser  | Yes | No | No |
|FX Connect DataParser  | Yes | No | No |
|ICE DataParser  | Yes | No | No |
|InvestEdge DataParser  | Yes | No | No |
|LivePerson Conversational Cloud DataParser  | Yes | No | No |
|Quip DataParser  | Yes | No | No |
|Refinitiv Eikon Messenger DataParser  | Yes | No | No |
|ServiceNow DataParser  | Yes | No | No |
|Skype for Business Server DataParser | Yes | No | No |
|Slack DataParser | Yes | No | No |
|SQL DataParser  | Yes | No | No |
|Symphony DataParser | Yes | No | No |
|Zoom DataParser | Yes | No | No |
|||||

### CellTrust data connectors in the US Government cloud

|Data connector  |GCC  |GCC High  |DoD  |
|:---------|:---------|:---------|:---------|
|CellTrust SL2 | Yes | No | No |
|||||

## Working with a Microsoft partner to archive third-party data

Another option for importing and archiving third-party data is for your organization to work with a Microsoft Partner. If a third-party data type isn't supported by the data connectors available in the Microsoft compliance center, you can work with a partner who can provide a custom connector that will be configured to extract items from the third-party data source on a regular basis and then connect to the Microsoft cloud by a third-party API and import those items to Microsoft 365. The partner connector also converts the content of an item from the third-party data source to an email message and then imports it to a mailbox in Microsoft 365.

For a list of partners that you can work with and the step-by-step process for this method, see [Work with a partner to archive third-party data in Microsoft 365](work-with-partner-to-archive-third-party-data.md).
