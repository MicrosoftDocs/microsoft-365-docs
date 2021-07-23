---
title: "Archive Slack eDiscovery data to Microsoft 365 using a data connector provided by Microsoft"
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
description: "Learn how to set up and use a Slack eDiscovery data connector provided by Microsoft to import and archive instant messaging data."
---

# Set up a connector to archive Slack eDiscovery data (preview)

The Slack eDiscovery data connector provided by Microsoft helps you to import and archive instant messaging data (such as messages, attachments, links, and revisions) from your organization's Slack workspaces to Microsoft 365. The data connector pulls data from the Slack API, converts it to an email message format, and then imports those items to user mailboxes in Microsoft 364. After the Slack data is imported, you can apply compliance solutions, such as Litigation hold, Advanced eDiscovery, Communication compliance, and retention settings to the Slack content. Using a Slack eDiscovery data connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Slack eDiscovery data

The following overview explains the process of using a Microsoft data connector to archive the Slack data in Microsoft 365.

1. Your organization works with Slack to set up and configure a Slack site.

2. After the data connector is set up, messages from your organization's Slack workspaces are copied to user mailboxes in Microsoft 365. The data connector also converts the contents of a chat message to an email message format.

3. The connector imports the converted chat messages to the mailboxes of specific users. A subfolder in the Inbox folder named **Slack eDiscovery** is created in the user mailboxes and the chat message items are imported to that folder.

## Before you set up a connector

- Your organization needs the Enterprise Grid subscription for Slack. For more information, see [Slack subscriptions and features](https://slack.com/intl/en-gb/help/articles/115003205446-Slack-subscriptions-and-features-).

- The user who creates the data connector must be assigned the **Org owners** application role in their Slack organization. For more information, see [Types of roles in Slack](https://slack.com/intl/en-gb/help/articles/360018112273-Types-of-roles-in-Slack).

- Obtain the username and password for your organization's Slack enterprise account. You use these credentials to sign into this account when you create the data connector. It's also recommended that you have automated user provisioning in your Slack organization configured to use single sign-on (SSO).

- The user who creates the Slack eDiscovery connector must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to a role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Create a Slack eDiscovery connector

1. Go to <https://compliance.microsoft.com> and click **Data connectors** on the left navigation pane.

2. On the **Overview** tab, click **Filter** and select **By Microsoft**, and then apply the filter.

3. Click **Slack eDiscovery (preview)**.

4. On the **Slack eDiscovery (preview)** product description page, click **Add connector**.

5. On the **Terms of service** wizard page, click **Accept**.

6. Enter a unique name that identifies the connector and then click **Next**. The name you enter will identify the connector on the **Data connectors** page after you create it.

## Step 2: Sign into your Slack organization

1. On the **Sign into Slack** wizard page, click **Sign into Slack** to sign into your organization's Slack workspace.

2. On the Slack **Sign into your workspace** page, type the name of the workspace that you want to archive data from, and then click **Continue**.

   A page is displayed with the name of your Slack workspace and a prompt to sign in.

3. Click the link in the string **Org Owners can also sign in here**.

4. On the workspace sign-in page, enter the email address and password for your organization's Slack enterprise account, and then click **Sign in**.

   After you successfully sign in, a page is displayed that requests permission to access your Slack organization by the connector app.

5. Click **Allow** to allow the app to administer your organization.

   After you click **Allow**, the Slack page closes and the **Map Slack eDiscovery users to Microsoft 365 users** page in the connector wizard is displayed.

## Step 3: Map users and select data types to import

1. Configure one or both of the following options to map Slack users to their Microsoft 365 mailboxes.

   - **Automatic user mapping**. Select this option to automatically map Slack user names to Microsoft 365 mailboxes. The connector does by using the value of the *Email* property, which every Slack message or item contains. This property is populated with an email address of every participant of the message. If the connector can associate the email addresses with corresponding Microsoft 365 users, the item is imported to the Microsoft 365 mailbox of those users. To use this option, you must have SSO configured for your Slack organization.

   - **Custom user mapping**. You also have the option to use custom user mapping instead of (or in addition to) automatic user mapping. With this option, you have to create and then upload a CSV file that maps users' Slack login names to their Microsoft 365 email address. To do this, click **Download CSV mapping template**, populate the CSV file with the Slack login name and Microsoft 365 email address for all users in your organization, then select and upload the CSV file to the wizard. Be sure not to change the column headings in the CSV file. Here's an example of the CSV mapping file:

     |**ExternalUserId**  | **O365UserMailbox**   |
     |:-------------------------------------------------|:-----------------------|
     | Alex Jones                                       | alexjones@contoso.onmicrosoft.com |
     | Pilar Pinilla| pilarp@contoso.onmicrosoft.com|
     | Sara Davis | sarad@contoso.onmicrosoft.com|
     |||

     If you enable automatic user mapping and provide a custom mapping file, the connector will first look at the custom mapping file to map the Slack user to a Microsoft 365 mailbox. If the connector doesn't find a valid Microsoft 365 user that corresponds to the Slack user, the connector will use the *Email* property of the Slack item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *Email* property of the message item, the item won't be imported.

2. On the **Select data types to import** wizard page, select the Slack data types you want to import. If you want to import messages from all channels, then select all options. Otherwise, select only the data types that you want to import.

     In addition to Slack messages, you can also specify other types of Slack content to import to Microsoft 365. 

3. After you configure the data types to import, click **Next**, review the connector settings, and then click **Finish** to create the connector.

## Step 4: Monitor the Slack eDiscovery connector

After you create the Slack eDiscovery connector, you can view the connector status in the Microsoft 365 compliance center.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com/) and click **Data connectors** in the left nav.

2. Click the **Connectors** tab and then select the **Slack eDiscovery** connector to display the flyout page, which contains the properties and information about the connector.

3. Under **Connector status with source**, click the **Download log** link to open (or save) the status log for the connector. This log contains data that has been imported to the Microsoft cloud.

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
