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
description: "Learn how to set up and use a Slack eDiscovery dat connector to import and archive instant messaging data."
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

- Obtain the username and password for your organization's Slack enterprise account. You use these credentials to sign into this account when you create the data connector. It's also recommended that you have automated user provisioning in your Slack organization configured to use single sign on (SSO).

- The user who creates the Slack eDiscovery connector must be assigned to the Mailbox Import Export role in Exchange Online. This role is required to add connectors on the **Data connectors** page in the Microsoft 365 compliance center. By default, this role is not assigned to a role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Create a Slack eDiscovery connector

1. Go to <https://compliance.microsoft.com> and click **Data connectors** on the left navigation pane.

2. On the **Overview** tab, click **Filter** and select **By Microsoft**, and then apply the filter.

3. Click **Slack eDiscovery (preview)**.

4. On the **Slack eDiscovery (preview)** product description page, click **Add connector**.

5. On the **Terms of service** page, click **Accept**.

6. Enter a unique name that identifies the connector and then click **Next**. The name you enter will identify the connector on the **Data connectors** page after you create it.

7. On the **Sign in with Slack** page, click **Sign into Slack** to sign into your organization's Slack workspace.

8. On the Slack sign in page, enter the username username and password for your organization's Slack enterprise account.

   After you successfully sign in, Slack will display a list of the workspaces that you are the owner of.

9. On the **Specify user information** page, select one of the following options to specify the users that you want to import Slack data for.

    - **All users**. Select this option to import Slack data for all Slack users in your organization.

    - **Users on Legal hold**. Select this option to import data only into the user mailboxes that are placed on Litigation hold. If you select this option, the connector only imports Slack data to mailboxes where the *LitigationHoldEnabled* property is set to `True`. For more information about Litigation hold, see [Create a Litigation hold](create-a-litigation-hold.md).

    > [!NOTE]
    > Selecting this option doesn't import data to mailboxes that are placed on other types of holds, such as holds associated with Core and Advanced eDiscovery cases or mailboxes that assigned retention policies.

11. 

1. *<u>User Mapping of Slack and M365</u>**

**Step 8** - To bring in users' Slack data into M365 Compliance Center, system should be able to map the users' Slack Ids to corresponding M365 Ids. This can be achieved by any of the following ways –

-   **<u>Automatic Mapping</u>:** Please ensure you have SSO configured before you proceed with this option. System should be able to map a Slack Id to a corresponding M365 Id via the “Email” property. The expectation is addition/update/deletion of any user to the Slack workspaces of your org. is managed by automated user provisioning and thus system should always be able to retrieve updated Slack users' info and map them to M365 Ids.

-   **<u>Custom User Mapping</u>:** If you want to provide a custom mapping of users' Slack user names and Microsoft 365 email addresses, you need to download the template and provide a mapping of Slack login names to Microsoft 365 email addresses. For id to M365 Ids.

e.g. in the template, provide the following mapping

| **ExternalUserId** (This is the Login Name in Slack) | **O365UserMailbox**   |
|------------------------------------------------------|-----------------------|
| Alex Jones                                           | alexjones@contoso.com |

**<u>Select Types of Data to be ingested:</u>**

**Step 9 -** Here, you are expected to select the sources and data types you want to ingest through the connector. If you want to ingest messages from all channels of your workspace/s, then select all options \[General, Random, Public, Private, Shared, Multi Workspace, Direct Message, Group Message\]. If you want to filter out the sources, please select only those from where you want to ingest the data.

Besides messages, you can also specify what other options you would want to ingest. E.g., for persistent channels, if you want to ingest the revisions \[users added, removed, attachment shared etc\], you can select the options accordingly. Please note, the ability to ingest revisions is governed by the Retention Policy your org. has with Slack.

-   If the Retention Policy says, “Keep Everything”, system will be able to ingest the revision.

-   If the Retention Policy says, “Keep all messages but don't track revisions”, system <u>will not</u> be able to ingest the revision.

-   If the Retention Policy says, “Delete messages and their revisions after ..”, system will only be able to ingest revision till the specified date.

**Step 10** – Here, you are expected to review all the choices you have made till now. You can click on “Back” to go back and change any configuration you need. Once you are confirmed, please click on “Finish”. Once you select the same, <u>system will start setting up the connector and corresponding data ingestion.</u>

To see the status of the connector, please see the tab “Connectors” in the Data Connectors Home page. You should be able to locate your connector by the name you had provided above, the column “Connection status with source” should show whether your connector is set up \[If it displays “Connected”, that indicates connector set up is done and it's ready to fetch the data from Slack\]

## Known issues

- At this time, we don't support importing attachments or items that are larger than 10 MB. Support for larger items will be available at a later date.
