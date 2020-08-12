---
title: "Set up a connector to archive Slack eDiscovery data in Microsoft 365"
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
description: "Admins can set up a connector to import and archive data from Globanet Slack eDiscovery into Microsoft 365. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, content search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive Slack eDiscovery data (preview)

Microsoft 365 allows the administrators to import and archive third-party data from social media, instant messaging, and document collaboration platforms to mailboxes in your Microsoft 365 organization. Globanet provides you with a Slack eDiscovery connector that is configured to capture items from the third-party data source (on a regular basis) and then import those items to Microsoft 365. Slack eDiscovery pulls messages and files from Slack API and converts them to an email message format and then imports the item to user mailboxes.

After Slack eDiscovery data is stored in user mailboxes, you can apply Microsoft 365 compliance features such as Litigation Hold, Content Search, and Microsoft 365 retention policies. Using a Slack eDiscovery connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Slack eDiscovery data

The following overview explains the process of using a connector to archive the Slack eDiscovery information in Microsoft 365.

![Slack eDiscovery archiving workflow](../media/SlackeDiscoveryConnectorWorkflow.png)

1. Your organization works with Slack eDiscovery to set up and configure a Slack eDiscovery site.

2. Once every 24 hours, chat messages from Slack eDiscovery are copied to the Globanet Merge1 site. The connector also converts the content of a chat message to an email message format.

3. The Slack eDiscovery connector that you create in the Microsoft 365 compliance center, connects to the Globanet Merge1 site every day and transfers the chat messages to a secure Azure Storage location in the Microsoft cloud.

4. The connector imports the converted chat message items to the mailboxes of specific users using the value of the *Email* property and automatic user mapping, as described in Step 3. A new subfolder in the Inbox folder named **Slack eDiscovery** is created in the user mailboxes, and the chat message items will be imported to that folder. The connector does this by using the value of the *Email* property. Every chat message contains this property, which is populated with the email address of every participant of the chat message.

## Before you begin

Many of the implementation steps required to archive Slack eDiscovery data are external to Microsoft 365 and must be completed before you can create the connector in the compliance center.

- Create a Globanet Merge1 account by accepting the terms and conditions for a Slack eDiscovery connector. To do this, contact [Globanet Customer Support](https://globanet.com/contact-us).

- Obtain the username and password for your organization's Slack enterprise account. You'll need to sign into this account in Step 2 when you configure Slack eDiscovery.

- The user who creates the Slack eDiscovery connector in Step 1 (and completes it in Step 3) must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Set up the Slack eDiscovery connector

The first step is to access to the **Data Connectors** page in the Microsoft 365 compliance center and set up the Slack eDiscovery connector.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and click **Data connectors** in the left nav.

2. Click the **Connectors** tab, click **Add a connector**, and then select **Slack eDiscovery**.

3. On the **Terms of service** page, click **Accept**.

4. Define a unique name that can represent or identify the connector and click **Next**.

5. Log in to your Globanet Merge1 account to configure the connector.

## Step 2: Configure Slack eDiscovery

The second step is to configure the Slack eDiscovery connector on the Merge1 site. For more information about how to configure the Slack eDiscovery connector in the Globanet Merge1 site, see [Merge1 Third-Party Connectors User Guide](https://docs.ms.merge1.globanetportal.com/Merge1%20Third-Party%20Connectors%20Slack%20eDiscovery%20User%20Guide.pdf).

After you click **Save & Finish,** you are directed back to the Microsoft 365 compliance center, to the **User mapping** page in the data connector wizard.

## Step 3: Map users and complete the connector setup

1. On the **Map external users to Microsoft 365 users** page, enable automatic user mapping.

   Slack eDiscovery items include a property called *Email*, which contains email addresses for users in your organization. If the connector can associate this address with a Microsoft 365 user, the items are imported to that user's mailbox.

2. On the **Admin Consent** page, click the **Provide Consent** button. You will be redirected to the Microsoft site. Click **Accept** to provide the consent.

   Your organization must consent to allow the Office 365 Import service to access mailbox data in your organization. To consent to this request, go to [this](https://login.microsoftonline.com/common/oauth2/authorize?client_id=570d0bec-d001-4c4e-985e-3ab17fdc3073&response_type=code&redirect_uri=https://portal.azure.com/&nonce=1234&prompt=admin_consent) page, sign in with the credentials of a global admin, and then accept the request. You have to complete this step before you can successfully create the Slack eDiscovery connector.

3. Click **Next**, review your settings, and go to the **Data connectors** page to see the progress of the import process for the new connector.

## Step 4: Monitor the Slack eDiscovery connector

After you create the Slack eDiscovery connector, you can view the connector status in the Microsoft 365 compliance center.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **Slack eDiscovery** connector to display the flyout page, which contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains data that has been imported to the Microsoft cloud.

## Known issues

- The connector doesn’t import any item larger than 10 MB.