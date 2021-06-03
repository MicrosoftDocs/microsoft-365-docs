---
title: "Set up a connector to archive Rogers Network SMS/MMS data in Microsoft 365"
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
description: "Admins can set up a TeleMessage connector to import and archive Rogers Network data in Microsoft 365. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive Rogers Network data (preview)

Use the TeleMessage connector in the Microsoft 365 compliance center to import and archive SMS and MMS data from the Rogers Network. After you set up and configure a connector, it connects to your organization's Rogers Network once every day, and imports SMS/MMS data to mailboxes in Microsoft 365.

After Rogers Network connector data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, Content Search, and Microsoft 365 retention policies to Rogers Network data. For example, you can search Rogers Network SMS/MMS using Content search or associate the mailbox that contains the Rogers Network connector data with a custodian in an Advanced eDiscovery case. Using a Rogers Network connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Rogers Network data

The following overview explains the process of using a connector to archive  Rogers Network data in Microsoft 365.

![Rogers Network archiving workflow](../media/RogersNetworkConnectorWorkflow.png)

1. Your organization works with TeleMessage and Rogers to set up a Rogers Network connector. For more information, see [Activating the TeleMessage Rogers Network Archiver for Microsoft 365](https://www.telemessage.com/microsoft-365-activation-for-the-rogers-network-archiver/).

2. In real time, SMS and MMS messages from your organization's Rogers Network are copied to the TeleMessage site.

3. The Rogers Network connector that you create in the Microsoft 365 compliance center connects to the TeleMessage site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

4. The connector imports the mobile communication items to the mailbox of a specific user. A new folder named Rogers SMS/MMS Network Archiver will be created in the specific user's mailbox and the items will be imported to it. The connector does this mapping by using the value of the *User's Email address* property. Every email message contains this property, which is populated with the email address of every participant of the email message.

   In addition to automatic user mapping using the value of the *User's Email address* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file should contain User's mobile Number and the corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's mobile number, the connector will use the User ‘s email address property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *user's email address* property of the email item, the item won't be imported.

## Before you set up a connector

- Order the [Microsoft 365 mobile archiving connector from TeleMessage](https://www.telemessage.com/mobile-archiver/order-mobile-archiver-for-o365/) and get a valid administration account for your organization. You'll need to sign into this account when you create the connector in the compliance center.

- You should know your Rogers account and billing contact information when you complete the onboarding forms and order the message archiving service from Rogers.

- Register all users that require Rogers SMS/MMS Network archiving in the TeleMessage account. When registering users, be sure to use the same email address that's used for their Microsoft 365 account.

- Employees in your organization must have corporate-owned and corporate-liable mobile phones on the Rogers Mobile Network. This product is not available for employee-owned devices (but can be combined with other products for capturing mobile communication from employee-owned devices).

- The user who creates a Rogers Network connector in Step 3 must be assigned the Mailbox Import Export role in Exchange Online. This is required to add connectors in the **Data connectors** page in the Microsoft 365 compliance center. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Create a Rogers Network connector

After you've completed the prerequisites described in the previous section, you can create the Rogers Network Archiver connector in the Microsoft 365 compliance center. The connector uses the information you provide to connect to the TeleMessage site and transfer the Telegram communications data to the corresponding user mailbox boxes in Microsoft 365.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **Rogers Network**.

2. On the **Rogers Network** product description page, click **Add connector**.

3. On the **Terms of service** page, click **Accept**.

4. On the **Login to TeleMessage** page, under Step 3, enter the required information in the following boxes and then click **Next**.

    - **Username:** Your TeleMessage username.

    - **Password:** Your TeleMessage password.

5. After the connector is created, you can close the pop-up window and go to the next page.

6. On the **User mapping** page, enable automatic user mapping. To enable custom mapping, upload a CSV file that contains the user mapping information, and then click **Next**.

7. Review your settings, and then click **Finish** to create the connector.

8. Go to the Connectors tab in **Data connectors** page to see the progress of the import process for the new connector.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
