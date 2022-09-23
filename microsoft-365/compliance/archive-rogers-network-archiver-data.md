---
title: "Set up a connector to archive Rogers Network data in Microsoft 365"
description: "Admins can set up a TeleMessage connector to import and archive Rogers Network data in Microsoft 365. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
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
- tier1
- M365-security-compliance
- data-connectors
---

# Set up a connector to archive Rogers Network data

Use the TeleMessage connector in the Microsoft Purview compliance portal to import and archive SMS and MMS data from the Rogers mobile network. After you set up and configure a [Rogers Network Archiver connector](https://www.telemessage.com/mobile-archiver/network-archiver/rogers/), it connects to your organization's Rogers mobile network, and imports SMS and MMS data to mailboxes in Microsoft 365.

After data from the Rogers mobile network is stored in user mailboxes, you can apply Microsoft Purview features such as Litigation Hold, Content search, and Microsoft 365 retention policies to the data. For example, you can search for SMS and MMS messages from the Rogers mobile network using Content search or a search associated with a Microsoft Purview eDiscovery (Standard) case. Using a Rogers Network Archiver connector to import and archive data in Microsoft 365 can help your organization stay compliant with corporate governance regulations and regulatory policies.

## Overview of archiving Rogers mobile network data

The following overview explains the process of using a connector to archive Rogers SMS and MMS data in Microsoft 365.

![Rogers Network archiving workflow.](../media/RogersNetworkConnectorWorkflow.png)

1. Your organization works with TeleMessage to set up a Rogers Network Archiver connector. For more information, see [Activating the TeleMessage Rogers Network Archiver for Microsoft 365](https://www.telemessage.com/microsoft-365-activation-for-the-rogers-network-archiver/).

2. In real time, your organization's Rogers mobile network data is copied to the TeleMessage site.

3. The Rogers Network Archiver connector that you create in the compliance portal connects to the TeleMessage site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

4. The connector imports the mobile communication items to the mailbox of a specific user. A new folder named Rogers SMS/MMS Network Archiver will be created in the specific user's mailbox and the items will be imported to it. The connector does the mapping by using the value of the *User's Email address* property. Every email message contains this property, which is populated with the email address of every participant of the email message.

   In addition to automatic user mapping using the value of the *User's Email address* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file should contain User's mobile Number and the corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's mobile number, the connector will use the user's email address property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *user's email address* property of the email item, the item won't be imported.

## Before you set up a connector

- Order the [Rogers Network Archiver service from TeleMessage](https://www.telemessage.com/mobile-archiver/order-mobile-archiver-for-o365/) and get a valid administration account for your organization. You'll need to sign into this account when you create the connector in the compliance center.

- Register all users that require Rogers Network archiving in the TeleMessage account. When registering users, be sure to use the same email address that's used for their Microsoft 365 account.

- Your employees must have corporate-owned and corporate-liable mobile phones on the O2 mobile network. Archiving messages in Microsoft 365 isn't available for employee-owned or "Bring Your Own Devices (BYOD) devices.

- Obtain the Rogers account and billing contact details for your organization so that you can complete the onboarding forms and order the message archiving service from Rogers.

- The user who creates a Rogers Network Archiver connector in Step 3 must be assigned the Data Connector Admin role. This role is required to add connectors on the **Data connectors** page in the compliance portal. This role is added by default to multiple role groups. For a list of these role groups, see the "Roles in the security and compliance centers" section in [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center). Alternatively, an admin in your organization can create a custom role group, assign the Data Connector Admin role, and then add the appropriate users as members. For instructions, see the "Create a custom role group" section in [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md#create-a-custom-role-group).

- This TeleMessage data connector is available in GCC environments in the Microsoft 365 US Government cloud. Third-party applications and services might involve storing, transmitting, and processing your organization's customer data on third-party systems that are outside of the Microsoft 365 infrastructure and therefore are not covered by the Microsoft Purview and data protection commitments. Microsoft makes no representation that use of this product to connect to third-party applications implies that those third-party applications are FEDRAMP compliant.

## Create a Rogers Network Archiver connector

After you've completed the prerequisites described in the previous section, you can create the Rogers Network Archiver connector in the compliance portal. The connector uses the information you provide to connect to the TeleMessage site and transfer Rogers SMS/MMS data to the corresponding user mailbox boxes in Microsoft 365.

1. Go to <https://compliance.microsoft.com> and then click **Data connectors** > **Rogers Network Archiver**.

2. On the **Rogers Network Archiver** product description page, click **Add connector**.

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
