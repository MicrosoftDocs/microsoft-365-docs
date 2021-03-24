---
title: "Set up a connector to archive FX Connect data in Microsoft 365"
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
description: "Admins can set up a connector to import and archive data from Veritas FX Connect in Microsoft 365. This connector lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive FX Connect data

Use a Veritas connector in the Microsoft 365 compliance center to import and archive data from the FX Connect collaboration platform to user mailboxes in your Microsoft 365 organization. Veritas provides an [FX Connect](https://globanet.com/fx-connect/) connector that is configured to capture FX Connect items and import those items to Microsoft 365. The connector converts the content from FX Connect, such as  trades, messages, and other details from your organization's FX Connect account, to an email message format and then imports those items to the user's mailbox in Microsoft 365.

After FX Connect data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, eDiscovery, retention policies and retention labels, and communication compliance. Using an FX Connect connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving FX Connect data

The following overview explains the process of using a connector to archive the FX Connect information in Microsoft 365.

![Archiving workflow for FX Connect data](../media/FXConnectConnectorWorkflow.png)

1. Your organization works with FX Connect to set up and configure an FX Connect site.

2. Once every 24 hours, items from FX Connect accounts are copied to the Veritas Merge1 site. The connector also converts the FX Connect items to an email message format.

3. The FX Connect connector that you create in the Microsoft 365 compliance center, connects to the Veritas Merge1 site every day and transfers the FX Connect items to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports items to the mailboxes of specific users by using the value of the *Email* property of the automatic user mapping as described in [Step 3](#step-3-map-users-and-complete-the-connector-setup). A subfolder in the Inbox folder named **FX Connect** is created in the user mailboxes, and the items are imported to that folder. The connector does this by using the value of the *Email* property. Every FX Connect item contains this property, which is populated with the email address of every participant of the item.

## Before you begin

- Create a Veritas Merge1 account for Microsoft connectors.  To create an account, contact [Veritas Customer Support](https://globanet.com/ms-connectors-contact). You will sign into this account when you create the connector in Step 1.

- The user who creates the FX Connect connector in Step 1 (and completes it in Step 3) must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to a role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Set up the FX Connect connector

The first step is to access to the **Data Connectors** page in the Microsoft 365 compliance center and create a connector for FX Connect data.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com/) and then click **Data connectors** > **FX Connect**.

2. On the **FX Connect** product description page, click **Add connector**.

3. On the **Terms of service** page, click **Accept**.

4. Enter a unique name that identifies the connector, and then click **Next**.

5. Sign in to your Merge1 account to configure the connector.

## Step 2: Configure the FX Connect connector on the Veritas Merge1 site

The second step is to configure the FX Connect connector on the Merge1 site. For information about how to configure the FX Connect connector, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20FX%20Connect%20User%20Guide%20.pdf).

After you click **Save & Finish**, the **User mapping** page in the connector wizard in the Microsoft 365 compliance center is displayed.

## Step 3: Map users and complete the connector setup

To map users and complete the connector setup in the Microsoft 365 compliance center, follow these steps:

1. On the **Map FX Connect users to Microsoft 365 users** page, enable automatic user mapping. The FX Connect items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user’s mailbox.

2. Click **Next**, review your settings, and then go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the FX Connect connector

After you create the FX Connect connector, you can view the connector status in the Microsoft 365 compliance center.

1. Go to <https://compliance.microsoft.com/> and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **FX Connect** connector to display the flyout page. This page contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains data that has been imported to the Microsoft cloud.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.