---
title: "Set up a connector to archive Cisco Jabber on PostgreSQL data in Microsoft 365"
description: "Learn how to set up and use a connector in the Microsoft Purview compliance portal to import and archive data from Cisco Jabber on PostgreSQL to Microsoft 365."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MET150
ms.collection:
- tier3
- purview-compliance
- data-connectors
ms.custom: seo-marvel-apr2020
---

# Set up a connector to archive Cisco Jabber on PostgreSQL data

Use a Veritas connector in the Microsoft Purview compliance portal to import and archive data from the Cisco Jabber platform to user mailboxes in your Microsoft 365 organization. Veritas provides a [Cisco Jabber on PostgreSQL](https://www.veritas.com/insights/merge1/jabber) connector that is configured to capture items from the third-party data source (on a regular basis) and import those items to Microsoft 365. The connector converts the content such as messages, chats, and shared content from Cisco Jabber on PostgreSQL to an email message format and then imports those items to the user's mailbox in Microsoft 365.

After Cisco Jabber on PostgreSQL data is stored in user mailboxes, you can apply Microsoft Purview features such as Litigation Hold, eDiscovery, retention policies and retention labels. Using a Cisco Jabber on PostgreSQL connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview of archiving Cisco Jabber on PostgreSQL data

The following overview explains the process of using a connector to archive the Cisco Jabber on PostgreSQL data in Microsoft 365.

![Archiving workflow for Cisco Jabber on PostgreSQL data.](../media/CiscoJabberonPostgreSQLConnectorWorkflow.png)

1. Your organization works with Cisco Jabber on PostgreSQL to set up and configure a Cisco Jabber on PostgreSQL site.

2. Once every 24 hours, Cisco Jabber on PostgreSQL items are copied to the Veritas Merge1 site. The connector also converts Cisco Jabber on PostgreSQL items to an email message format.

3. The Cisco Jabber on PostgreSQL connector that you create in the compliance portal, connects to the Veritas Merge1 site every day, and transfers the Jabber content to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports the converted items to the mailboxes of specific users using the value of the *Email* property of the automatic user mapping as described in [Step 3](#step-3-map-users-and-complete-the-connector-setup). A subfolder in the Inbox folder named **Cisco Jabber on PostgreSQL** is created in the user mailboxes, and items are imported to that folder. The connector does this by using the value of the *Email* property. Every Jabber item contains this property, which is populated with the email address of every participant of the item.

## Before you begin

- Create a Merge1 account for Microsoft connectors. To do this, contact [Veritas Customer Support](https://www.veritas.com/content/support/en_US). You need to sign into this account when you create the connector in Step 1.

- The user who creates the Cisco Jabber on PostgreSQL connector in Step 1 (and completes it in Step 3) must be assigned the Data Connector Admin role. This role is required to add connectors on the **Data connectors** page in the compliance portal. This role is added by default to multiple role groups. For a list of these role groups, see the "Roles in the security and compliance centers" section in [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center). Alternatively, an admin in your organization can create a custom role group, assign the Data Connector Admin role, and then add the appropriate users as members. For instructions, see the "Create a custom role group" section in [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md#create-a-custom-role-group).

- This Veritas data connector is in public preview in GCC environments in the Microsoft 365 US Government cloud. Third-party applications and services might involve storing, transmitting, and processing your organization's customer data on third-party systems that are outside of the Microsoft 365 infrastructure and therefore are not covered by the Microsoft Purview and data protection commitments. Microsoft makes no representation that use of this product to connect to third-party applications implies that those third-party applications are FEDRAMP compliant.

## Step 1: Set up the Cisco Jabber on PostgreSQL connector

The first step is to access to the **Data Connectors** page in the compliance portal and create a connector for Jabber data.

1. Go to <https://compliance.microsoft.com> and then select **Data connectors** &gt; **Cisco Jabber on PostgreSQL**.

2. On the **Cisco Jabber on PostgreSQL** product description page, select **Add connector**.

3. On the **Terms of service** page, select **Accept**.

4. Enter a unique name that identifies the connector, and then select **Next**.

5. Sign in to your Merge1 account to configure the connector.

## Step 2: Configure the Cisco Jabber on PostgreSQL on the Veritas Merge1 site

The second step is to configure the Cisco Jabber on PostgreSQL connector on the Veritas Merge1 site. For information about how to configure the Cisco Jabber on PostgreSQL connector, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20Cisco%20Jabber%20on%20PostgreSQL%20User%20Guide.pdf).

After you select **Save & Finish**, the **User mapping** page in the connector wizard in the compliance portal is displayed.

## Step 3: Map users and complete the connector setup

To map users and complete the connector setup in the compliance portal, follow these steps:

1. On the **Map Cisco Jabber on PostgreSQL users to Microsoft 365 users** page, enable automatic user mapping. The Cisco Jabber on PostgreSQL items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user's mailbox.

2. Select **Next**, review your settings, and then go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the Cisco Jabber on PostgreSQL connector

After you create the Cisco Jabber on PostgreSQL connector, you can view the connector status in the compliance portal.

1. Go to <https://compliance.microsoft.com/> and select **Data connectors** in the left nav.

2. Select the **Connectors** tab and then select the **Cisco Jabber on PostgreSQL** connector to display the flyout page, which contains the properties and information about the connector.

3. Under **Connector status with source**, select the **Download log** link to open (or save) the status log for the connector. This log contains information about the data that's been imported to the Microsoft cloud. For more information, see [View admin logs for data connectors](data-connector-admin-logs.md).

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
