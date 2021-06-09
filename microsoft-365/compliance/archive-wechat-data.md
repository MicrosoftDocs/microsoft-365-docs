---
title: "Set up a connector to archive WeChat data in Microsoft 365"
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
description: "Set up and use a connector in the Microsoft 365 compliance center to import and archive WeChat data in Microsoft 365."
---

# Set up a connector to archive WeChat data (preview)

Use the TeleMessage connector in the Microsoft 365 compliance center to import and archive WeChat and WeCom calls, chats, attachments, files, and recalled messages. After you set up and configure a connector, it connects to your organization's TeleMessage account, and imports the mobile communication of employees using the TeleMessage WeChat Archiver to mailboxes in Microsoft 365.

After WeChat Archiver connector data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, eDiscovery, In-Place Archiving, Auditing, Communication compliance, and Microsoft 365 retention policies to WeChat communication data. For example, you can search WeChat communication using Content Search or associate the mailbox that contains the WeChat Archiver connector data with a custodian in an Advanced eDiscovery case. Using a WeChat Archiver connector to import and archive data in Microsoft 365 can help your organization stay compliant with corporate governance regulations and regulatory policies.

## Overview of archiving WeChat communication data

The following overview explains the process of using a connector to archive WeChat communications data in Microsoft 365.

![Archiving workflow for WeChat Archiver data](../media/WeChatConnectorWorkflow.png)

1. Your organization works with TeleMessage to set up a WeChat Archiver connector.

2. In real time, your organization's WeChat data is copied to the TeleMessage site.

3. The WeChat Archiver connector that you create in the Microsoft 365 compliance center connects to the TeleMessage site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

4. The connector imports the mobile communication items to the mailbox of a specific user. A new folder named WeChat Archiver will be created in the specific user's mailbox and the items will be imported to it. The connector does mapping by using the value of the *User's Email address* property. Every email message contains this property, which is populated with the email address of every participant of the email message. In addition to automatic user mapping using the value of the *User's Email address* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file should contain User's mobile Number and the corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's mobile number, the connector will use the User ‘s email address property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *user's email address* property of the email item, the item won't be imported.

## Before you set up a connector

- Work with TeleMessage to set up a WeChat archive connector. For more information, see [Activating the TeleMessage WeChat Archiver for Microsoft 365](https://www.telemessage.com/microsoft-365-activation-for-wechat-archiver/).

- Set up a TeleMessage connector for Microsoft 365 and get a valid company administration account. For more information, see [Order Microsoft 365 Mobile Archiving](https://www.telemessage.com/mobile-archiver/order-mobile-archiver-for-microsoft-365/).

- Register all users that require WeChat archiving in the TeleMessage account with the same email address that is used for the user's Microsoft 365 account.

- You'll need to install the Tencent WeCom app on the mobile phones of users in your organization and activate it. The WeCom app lets users communicate and chat with other WeChat and WeCom users.

- The user who creates a WeChat Archiver connector in the Microsoft 365 compliance center must be assigned the Mailbox Import Export role in Exchange Online. This is required to add connectors in the **Data connectors** page in the compliance center. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

- This data connector is available in GCC environments in the Microsoft 365 US Government cloud. Third-party applications and services might involve storing, transmitting, and processing your organization's customer data on third-party systems that are outside of the Microsoft 365 infrastructure and therefore are not covered by the Microsoft 365 compliance and data protection commitments. Microsoft makes no representation that use of this product to connect to third-party applications implies that those third-party applications are FEDRAMP compliant.

## Create a WeChat Archiver connector

Follow the steps in this section to create a WeChat Archiver connector in the Microsoft 365 compliance center. The connector uses the information you provide to connect to the TeleMessage site and transfer WeChat communications data to the corresponding user mailboxes in Microsoft 365.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **WeChat Archiver**.

2. On the **WeChat Archiver** product description page, click **Add connector**

3. On the **Terms of service** page, click **Accept**.

4. On the **Login to TeleMessage** page, under Step 3, enter the required information in the following boxes and then click **Next**.

    - **Username**: Your TeleMessage user name.

    - **Password**: Your TeleMessage password.

5. After the connector is created, you can close the pop-up window go to the next page.

6. On the **User mapping** page, enable automatic user mapping. You can also upload a custom user mapping CSV file.

7. Click **Next**, review your settings, and then click **Finish** to create the connector.

8. Go to the **Connectors** tab on **Data connectors** page to see the progress of the import process for the new connector.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
