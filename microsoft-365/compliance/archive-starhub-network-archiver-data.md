---
title: "Set up a connector to archive StarHub mobile network data in Microsoft 365"
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
description: "Admins can set up a TeleMessage connector to import and archive data from the StarHub mobile network in Microsoft 365. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive StarHub Network data (preview)

Use the TeleMessage connector in the Microsoft 365 compliance center to import and archive voice call data from the StarHub mobile network. After you set up and configure a StarHub Network Archiver connector, it connects to your organization's StarHub mobile network, and imports voice call data to mailboxes in Microsoft 365.

After data from the StarHub mobile network is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, Content search, and Microsoft 365 retention policies to the data. For example, you can search for SMS and MMS messages from the StarHub mobile network using Content search or a search associated with a Core eDiscovery case. Using a StarHub Network Archiver connector to import and archive data in Microsoft 365 can help your organization stay compliant with corporate governance regulations and regulatory policies.

## Overview of archiving StarHub mobile network data

The following overview explains the process of using a connector to archive StarHub voice call data in Microsoft 365.

![StarHub Network archiving workflow.](../media/StarHubNetworkConnectorWorkflow.png)

1. Your organization works with TeleMessage to set up a StarHub Network Archiver connector. For more information, see [Activating the TeleMessage StarHub Network Archiver for Microsoft 365](https://www.telemessage.com/activating-the-telemessage-starhub-network-archiver-connector-for-microsoft-365/).

2. In real time, your organization's StarHub mobile network data is copied to the TeleMessage site.

3. The StarHub Network Archiver connector that you create in the Microsoft 365 compliance center connects to the TeleMessage site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

4. The connector imports the mobile communication items to the mailbox of a specific user. A new folder named StarHub SMS/MMS Network Archiver will be created in the specific user's mailbox and the items will be imported to it. The connector does the mapping by using the value of the *User's Email address* property. Every email message contains this property, which is populated with the email address of every participant of the email message.

   In addition to automatic user mapping using the value of the *User's Email address* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file should contain User's mobile Number and the corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's mobile number, the connector will use the user's email address property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *user's email address* property of the email item, the item won't be imported.

## Before you set up a connector

- Order the [StarHub Network Archiver service from TeleMessage](https://www.telemessage.com/mobile-archiver/order-mobile-archiver-for-o365/) and get a valid administration account for your organization. You'll need to sign into this account when you create the connector in the compliance center.

- Register all users that require StarHub Network archiving in the TeleMessage account. When registering users, be sure to use the same email address that's used for their Microsoft 365 account.

- Install and activate the TeleMessage Voice Call Archiver app on the mobile phones of your employees. For more information, see the  [TeleMessage Voice Call Archiver Onboarding Guide](https://www.telemessage.com/voice-call-archiver-forwarding-incoming-calls/).

- The user who creates a StarHub Network Archiver connector in Step 3 must be assigned the Mailbox Import Export role in Exchange Online. This is required to add connectors in the **Data connectors** page in the Microsoft 365 compliance center. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Create a StarHub Network Archiver connector

After you've completed the prerequisites described in the previous section, you can create the StarHub Network Archiver connector in the Microsoft 365 compliance center. The connector uses the information you provide to connect to the TeleMessage site and transfer StarHub voice call data to the corresponding user mailbox boxes in Microsoft 365.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **StarHub Network Archiver**.

2. On the **StarHub Network Archiver** product description page, click **Add connector**.

3. On the **Terms of service** page, click **Accept**.

4. On the **Login to TeleMessage** page, under Step 3, enter the required information in the following boxes and then click **Next**.

    - **Username:** Your TeleMessage username.

    - **Password:** Your TeleMessage password.

5. After the connector is created, you can close the pop-up window and go to the next page.

6. On the **User mapping** page, enable automatic user mapping. To enable custom mapping, upload a CSV file that contains the user mapping information, and then click **Next**.

7. Review your settings, and then click **Finish** to create the connector.

8. Go to the Connectors tab in **Data connectors** page to see the progress of the import process for the new connector.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
