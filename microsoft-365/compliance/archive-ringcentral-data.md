---
title: "Set up a connector to archive RingCentral data in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
description: "Admins can set up a connector to import and archive RingCentral data from Veritas to Microsoft 365. This connector lets you archive data from third-party data sources in Microsoft 365. After your archive this data, you can use compliance features such as legal hold, eDiscovery, and retention policies to manage third-party data."
---

# Set up a connector to archive RingCentral data

Use a Veritas connector in the Microsoft 365 compliance center to import and archive data from the RingCentral platform to user mailboxes in your Microsoft 365 organization. Veritas provides a [RingCentral](https://www.veritas.com/insights/merge1/ringcentral) connector that is configured to capture items from the third-party data source and import those items to Microsoft 365. The connector converts content such as chats, attachments, tasks, notes, and posts from RingCentral to an email message format and then imports those items to the user mailboxes in Microsoft 365.

After RingCentral data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, eDiscovery, retention policies and retention labels. Using a RingCentral connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving RingCentral data

The following overview explains the process of using a connector to archive the RingCentral data in Microsoft 365.

![Archiving workflow for RingCentral data](../media/RingCentralConnectorWorkflow.png)

1. Your organization works with RingCentral to set up and configure a RingCentral site.

2. Once every 24 hours, RingCentral items are copied to the Veritas Merge1 site. The connector also converts RingCentral items to an email message format.

3. The RingCentral connector that you create in the Microsoft 365 compliance center, connects to the Veritas Merge1 site every day, and transfers the RingCentral content to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports the converted items to the mailboxes of specific users using the value of the *Email* property of the automatic user mapping as described in [Step 3](#step-3-map-users-and-complete-the-connector-setup). A subfolder in the Inbox folder named **RingCentral** is created in the user mailboxes, and items are imported to that folder. The connector determines which mailbox to import items to by using the value of the *Email* property. Every RingCentral item contains this property, which is populated with the email address of every participant of the item.

## Before you set up a connector

- Create a Merge1 account for Microsoft connectors. To create this account, contact [Veritas Customer Support](https://www.veritas.com/form/requestacall/ms-connectors-contact). You need to sign into this account when you create the connector in Step 1.

- Create a RingCentral application to fetch data from your RingCentral account. For step-by step instructions about creating the application, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20RingCentral%20User%20Guide.pdf).

- The user who creates the RingCentral connector in Step 1 (and completes it in Step 3) must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Set up the RingCentral connector

The first step is to access to the **Data Connectors** page in the Microsoft 365 compliance center and create a connector for RingCentral data.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **RingCentral**.

2. On the **RingCentral** product description page, click **Add connector**.

3. On the **Terms of service** page, click **Accept**.

4. Enter a unique name that identifies the connector, and then click **Next**.

5. Sign in to your Merge1 account to configure the connector.

## Step 2: Configure the RingCentral on the Veritas Merge1 site

The second step is to configure the RingCentral connector on the Veritas Merge1 site. For information about how to configure the RingCentral connector, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20RingCentral%20User%20Guide.pdf).

After you click **Save & Finish,** the **User mapping** page in the connector wizard in the Microsoft 365 compliance center is displayed.

## Step 3: Map users and complete the connector setup

To map users and complete the connector setup in the Microsoft 365 compliance center, follow these steps:

1. On the **Map RingCentral users to Microsoft 365 users** page, enable automatic user mapping. The RingCentral items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user’s mailbox.

2. Click **Next**, review your settings, and then go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the RingCentral connector

After you create the RingCentral connector, you can view the connector status in the Microsoft 365 compliance center.

1. Go to <https://compliance.microsoft.com/> and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **RingCentral** connector to display the flyout page, which contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains data that has been imported to the Microsoft cloud.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
