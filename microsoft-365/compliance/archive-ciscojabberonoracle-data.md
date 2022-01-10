---
title: "Set up a connector to archive Cisco Jabber on Oracle data in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: M365-security-compliance
description: "Learn how to set up and use a connector in the Microsoft 365 compliance center to import and archive data from Cisco Jabber on Oracle to Microsoft 365."
---

# Set up a connector to archive Cisco Jabber on Oracle data

Use a Veritas connector in the Microsoft 365 compliance center to import and archive data from the Cisco Jabber on Oracle platform to user mailboxes in your Microsoft 365 organization. Veritas provides a [Cisco Jabber on Oracle](https://www.veritas.com/insights/merge1/jabber) connector that is configured to capture items from the third-party data source (on a regular basis) and import those items to Microsoft 365. The connector converts the content such as files and file operations, comments, and shared content from Cisco Jabber on Oracle to an email message format and then imports those items to the user's mailbox in Microsoft 365.

After Cisco Jabber on Oracle data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, eDiscovery, retention policies and retention labels. Using a Cisco Jabber on Oracle connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Cisco Jabber on Oracle data

The following overview explains the process of using a connector to archive the Cisco Jabber on Oracle data in Microsoft 365.

![Archiving workflow for Cisco Jabber on Oracle data.](../media/CiscoJabberOnOracleConnectorWorkflow.png)

1. Your organization works with Cisco Jabber on Oracle to set up and configure a Cisco Jabber on Oracle site.

2. Once every 24 hours, Cisco Jabber on Oracle items are copied to the Veritas Merge1 site. The connector also converts Cisco Jabber on Oracle items to an email message format.

3. The Cisco Jabber on Oracle connector that you create in the Microsoft 365 compliance center, connects to the Veritas Merge1 site every day and transfers the Jabber content to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports the converted items to the mailboxes of specific users using the value of the *Email* property of the automatic user mapping as described in [Step 3](#step-3-map-users-and-complete-the-connector-setup). A subfolder in the Inbox folder named **Cisco Jabber on Oracle** is created in the user mailboxes, and items are imported to that folder. The connector does this by using the value of the *Email* property. Every Jabber item contains this property, which is populated with the email address of every participant of the item.

## Before you begin

- Create a Merge1 account for Microsoft connectors. To do this, contact [Veritas Customer Support](https://www.veritas.com/content/support/en_US). You need to sign into this account when you create the connector in Step 1.

- The user who creates the Cisco Jabber on Oracle connector in Step 1 (and completes it in Step 3) must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

- This Veritas data connector is in public preview in GCC environments in the Microsoft 365 US Government cloud. Third-party applications and services might involve storing, transmitting, and processing your organization's customer data on third-party systems that are outside of the Microsoft 365 infrastructure and therefore are not covered by the Microsoft 365 compliance and data protection commitments. Microsoft makes no representation that use of this product to connect to third-party applications implies that those third-party applications are FEDRAMP compliant.

## Step 1: Set up the Cisco Jabber on Oracle connector

The first step is to access to the **Data Connectors** page in the Microsoft 365 compliance center and create a connector for Jabber data.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **Cisco Jabber on Oracle**.

2. On the **Cisco Jabber on Oracle** product description page, click **Add connector**.

3. On the **Terms of service** page, click **Accept**.

4. Enter a unique name that identifies the connector, and then click **Next**.

5. Sign in to your Merge1 account to configure the connector.

## Step 2: Configure the Cisco Jabber on Oracle on the Veritas Merge1 site

The second step is to configure the Cisco Jabber on Oracle connector on the Veritas Merge1 site. For information about how to configure the Cisco Jabber on Oracle connector, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20Cisco%20Jabber%20on%20Oracle%20User%20Guide.pdf).

After you click **Save & Finish**, the **User mapping** page in the connector wizard in the Microsoft 365 compliance center is displayed.

## Step 3: Map users and complete the connector setup

To map users and complete the connector setup in the Microsoft 365 compliance center, follow these steps:

1. On the **Map Cisco Jabber on Oracle users to Microsoft 365 users** page, enable automatic user mapping. The Cisco Jabber on Oracle items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user's mailbox.

2. Click **Next**, review your settings, and then go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the Cisco Jabber on Oracle connector

After you create the Cisco Jabber on Oracle connector, you can view the connector status in the Microsoft 365 compliance center.

1. Go to <https://compliance.microsoft.com/> and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **Cisco Jabber on Oracle** connector to display the flyout page, which contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains data that has been imported to the Microsoft cloud.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
