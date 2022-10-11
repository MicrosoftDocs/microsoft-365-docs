---
title: "Set up a connector to archive XSLT/XML data in Microsoft 365"
description: "Admins can set up a connector to import and archive XSLT/XML data from Veritas in Microsoft 365. This connector lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
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
ms.collection:
- tier3
- purview-compliance
- data-connectors
---

# Set up a connector to archive XSLT/XML data

Use a Veritas connector in the Microsoft Purview compliance portal to import and archive data from the Web page source to user mailboxes in your Microsoft 365 organization. Veritas provides you with an [XSLT/XML connector](https://globanet.com/xslt-xml) that allows the rapid development of files created by using XSLT (Extensible Style sheet Language Transformations) to transform XML files into other file formats (such as HTML or text) that can be imported to Microsoft 365. The connector converts the content of an item from the XSLT/XML source to an email message format and then imports the converted item to Microsoft 365 mailboxes.

After XSLT/XML data is stored in user mailboxes, you can apply Microsoft Purview features such as Litigation Hold, eDiscovery, and retention policies and retention labels. Using an XSLT/XML connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview of archiving XSLT/XML data

The following overview explains the process of using a connector to archive XSLT/XML source data in Microsoft 365.

![Archiving workflow for XSLT/XML data.](../media/XSLT-XMLConnectorWorkflow.png)

1. Your organization works with the XSLT/XML source to set up and configure an XSLT/XML site.

2. Once every 24 hours, chat messages from the XSLT/XML source are copied to the Veritas Merge1 site. The connector also converts the content to an email message format.

3. The XSLT/XML connector that you create in the compliance portal, connects to the Veritas Merge1 site every day and transfers the messages to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports the converted message items to the mailboxes of specific users using the value of the *Email* property of the automatic user mapping as described in Step 3. A new subfolder in the Inbox folder named **XSLT/XML** is created in the user mailboxes, and the message items are imported to that folder. The connector does this by using the value of the *Email* property. Every message contains this property, which is populated with the email address of every participant of the message.

## Before you begin

- Create a Veritas Merge1 account for Microsoft connectors. To create this account, contact [Veritas Customer Support](https://www.veritas.com/content/support/). You will sign into this account when you create the connector in Step 1.

- The user who creates the XSLT/XML connector in Step 1 (and completes it in Step 3) must be assigned the Data Connector Admin role. This role is required to add connectors on the **Data connectors** page in the compliance portal. This role is added by default to multiple role groups. For a list of these role groups, see the "Roles in the security and compliance centers" section in [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center). Alternatively, an admin in your organization can create a custom role group, assign the Data Connector Admin role, and then add the appropriate users as members. For instructions, see the "Create a custom role group" section in [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md#create-a-custom-role-group).

- This Veritas data connector is in public preview in GCC environments in the Microsoft 365 US Government cloud. Third-party applications and services might involve storing, transmitting, and processing your organization's customer data on third-party systems that are outside of the Microsoft 365 infrastructure and therefore are not covered by the Microsoft Purview and data protection commitments. Microsoft makes no representation that use of this product to connect to third-party applications implies that those third-party applications are FEDRAMP compliant.

## Step 1: Set up an XSLT/XML connector

The first step is to access to the **Data Connectors** in the compliance portal and create a connector for XSLT/XML data.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com/) and then click **Data connectors** > **XSLT/XML**.

2. On the **XSLT/XML** product description page, click **Add new connector**.

3. On the **Terms of service** page, click **Accept**.

4. Enter a unique name that identifies the connector, and then click **Next**.

5. Sign in to your Merge1 account to configure the connector.

## Step 2: Configure an XSLT/XML connector

The second step is to configure the XSLT/XML connector on the Merge1 site. For information about how to configure the XSLT/XML connector on the Veritas Merge1 site, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20XSLT-XML%20User%20Guide%20.pdf).

After you click **Save & Finish**, the **User mapping** page in the connector wizard in the compliance portal is displayed.

## Step 3: Map users and complete the connector setup

1. To map users and complete the connector setup in the compliance portal, follow the steps below:

2. On the **Map XSLT/XML users to Microsoft 365 users** page, enable automatic user mapping. The XSLT/XML items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user’s mailbox.

3. Click **Next**, review your settings, and go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the XSLT/XML connector

After you create the XSLT/XML connector, you can view the connector status in the compliance portal.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **XSLT/XML** connector to display the flyout page. This page contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains information about the data that's been imported to the Microsoft cloud. For more information, see [View admin logs for data connectors](data-connector-admin-logs.md).

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
