---
title: "Set up a connector to archive data from the TeleMessage Enterprise Number Archiver"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
description: "Admins can set up a connector to import and archive SMS and MMS data from TeleMessage Enterprise Number Archiver. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive Enterprise Number data

Use a TeleMessage connector in the Microsoft 365 compliance center to import and archive Short Messaging Service (SMS) and Multimedia Messaging Service (MMS) messages, chat messages, voice call recordings, and voice call logs from the Enterprise Number Archiver. After you set up and configure a connector, it connects to your organization's TeleMessage account once every day and imports the mobile communication data of employees using the TeleMessage Enterprise Number Archiver to mailboxes in Microsoft 365.

After the TeleMessage Enterprise Number Archiver connector data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, Communication compliance, and Microsoft 365 retention policies to Enterprise Number Archiver data. For example, you can search the TeleMessage Enterprise Number Archiver SMS, MMS, and Voice Call using Content Search or associate the mailbox that contains the Enterprise Number Archiver connector data with a custodian in an Advanced eDiscovery case. Using an Enterprise Number Archiver connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Enterprise Number data

The following overview explains the process of using a connector to archive Enterprise Network data in Microsoft 365.

![Enterprise Number archiving workflow](../media/EnterpriseNumberConnectorWorkflow.png)

1. Your organization works with TeleMessage to set up an Enterprise Number Archiver connector. For more details refer to [here](https://www.telemessage.com/office365-activation-for-enterprise-number-archiver/).

2. The Enterprise Number Archiver connector that you create in the Microsoft 365 compliance center connects to the TeleMessage site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

3. The connector imports the mobile communication items to the mailbox of a specific user. A new folder named Enterprise Number Archiver will be created in the specific user's mailbox and the items will be imported to it. The connector does mapping by using the value of the *User’s Email address* property. Every email message contains this property, which is populated with the email address of every participant of the email message. In addition to automatic user mapping using the value of the *User’s Email address* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file should contain User’s mobile Number and the corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's mobile number, the connector will use the User ‘s email address property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *user’s email address* property of the email item, the item won't be imported.

## Before you begin

Many of the implementation steps required to archive Enterprise Number Archiver data are external to Microsoft 365 and must be completed before you can create the connector in the compliance center.

- Your organization must consent to allow the Office 365 Import service to access mailbox data in your organization. To consent to this request, go to [<span class="underline">this page</span>](https://login.microsoftonline.com/common/oauth2/authorize?client_id=570d0bec-d001-4c4e-985e-3ab17fdc3073&response_type=code&redirect_uri=https://portal.azure.com/&nonce=1234&prompt=admin_consent), sign in with the credentials of an Office 365 global admin, and then accept the request. You have to complete this step before you can successfully create the Enterprise Number Archiver connector in Step 3.

- The user who creates an Enterprise Number Archiver connector in Step 3 must be assigned the Mailbox Import Export role in Exchange Online. This is required to add connectors in the **Data connectors** page in the Microsoft 365 compliance center. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [<span class="underline">Create role groups</span>](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#create-role-groups) or [<span class="underline">Modify role groups</span>](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

- You will also need to [order the service from TeleMessage](https://www.telemessage.com/mobile-archiver/order-mobile-archiver-for-o365/) and get a valid company administration account.

- Register all users that require Enterprise Number SMS/MMS Network archiving in the TeleMessage account with the same email as configured in the Microsoft 365 account.

- You’ll need to install the TeleMessage Enterprise Number Archiver app on the mobile phones of your employees and activate it.

## Create an Enterprise Number Archiver connector

The last step is to create an Enterprise Number Archiver connector in the Microsoft 365 compliance center. The connector uses the information you provide to connect to the TeleMessage site and transfer SMS,MMS, and Voice Call messages to the corresponding user mailbox boxes in Microsoft 365.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com/) and then click **Data connectors** \> **Enterprise Number Archiver**.

2. On the **Enterprise Number Archiver** product description page, click **Add connector**

3. On the **Terms of service** page, click **Accept**.

4. On the **Login to TeleMessage** page, under Step 3, enter the required information in the following boxes and then click **Next**.
    
    - **Username :** Your TeleMessage Username
    
    - **Password:** Your TeleMessage password

<!-- end list -->

1. Once the connector is created, you can close the pop up window and move forward.

2. On the **User mapping** page, enable automatic user mapping and click **Next**. In case you need custom mapping upload a CSV file, and click **Next**.

3. Provide admin consent, by clicking **Next**. Review your settings, and then click **Finish** to create the connector.

4. Go to the Connectors tab in **Data connectors** page to see the progress of the import process for the new connector.

## Known issues

This connector doesn’t archive any attachment larger than 10 MB.
