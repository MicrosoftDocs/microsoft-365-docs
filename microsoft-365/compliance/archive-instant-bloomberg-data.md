---
title: "Set up a connector to archive Instant Bloomberg data"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
description: "Administrators can set up a native connector to import data from the Instant Bloomberg chat tool into Office 365. This lets you archive data from third-party data sources in Office 365 so you can use compliance features such as legal hold, Content Search, and retention policies to manage your organization's third-party data."
---

# Set up a connector to archive Instant Bloomberg data

Use a native connector in the Security & Compliance Center in Office 365 to import and archive financial services chat data from the [Instant Bloomberg](https://www.bloomberg.com/professional/product/collaboration/) collaboration tool. After you set up and configure a connector, it connects to your organization's Bloomberg secure FTP site (SFTP) once every day, converts the content of chat messages to an email message format, and then imports those items to mailboxes in Office 365.

After Instant Bloomberg data is stored in user mailboxes, you can apply Office 365 compliance features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, [Communication compliance](communication-compliance.md), and Office 365 retention policies to Instant Bloomberg data. For example, you can search Instant Bloomberg chat messages using Content Search or associate the mailbox that contains the Instant Bloomberg data with a custodian in an Advanced eDiscovery case. Using an Instant Bloomberg connector to import and archive data in Office 365 can help your organization stay compliant with government and regulatory policies.

## Overview of archiving Instant Bloomberg data

The following overview explains the process of using a connector to archive Instant Bloomberg chat data in Office 365. 

![Instant Bloomberg import and archive process](media/InstantBloombergDataArchiving.png)

1. Your organization works with Bloomberg to set up a Bloomberg SFTP site. You'll also work with Bloomberg to configure Instant Bloomberg to copy chat messages to your Bloomberg SFTP site.

2. Once every 24 hours, chat messages from Instant Bloomberg are copied to the Bloomberg SFTP site.
    
3. The Instant Bloomberg connector that you create in the Security & Compliance Center connects to the Bloomberg SFTP site every day and transfers the chat messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud. The connector also converts the content of a chat massage to an email message format.
    
4. The connector imports the chat message items to the mailbox of a specific user or to an alternative mailbox. The connector does by using the value of the *CorporateEmailAddress* property. Every chat message contains this property, which is populated with the email address of every participant of the chat message. Whether an item is imported into a specific user mailbox or to the alternative mailbox is based on the following criteria:
    
    a. **Items that have a value in the CorporateEmailAddress property that corresponds to an Office 365 user account:** If the connector can associate the email address in the *CorporateEmailAddress* property to a specific user account in Office 365, the item is copied to the Inbox folder in the user's Office 365 mailbox.
    
    b. **Items that have a value in the CorporateEmailAddress property that doesn't correspond to an Office 365 user account:** If the connector can't associate an email address in the *CorporateEmailAddress* property to a specific user account in Office 365, the item is copied to the Inbox folder of an alternative "catch-all" mailbox in Office 365.

## Before you begin

Many of the implementation steps required to archive Instant Bloomberg data are external to Office 365 and must be completed before you can create the connector in the Security & Compliance Center.

- Your organization must consent to allow the Office 365 Import service to access mailbox data in your organization. To consent to this request, go to [this page](https://login.microsoftonline.com/common/oauth2/authorize?client_id=570d0bec-d001-4c4e-985e-3ab17fdc3073&response_type=code&redirect_uri=https://portal.azure.com/&nonce=1234&prompt=admin_consent), sign in with the credentials of an Office 365 global admin, and then accept the request. You have to complete this step before you can successfully create the Instant Bloomberg connector in Step 3.

- Subscribe to [Bloomberg Anywhere](https://www.bloomberg.com/professional/product/remote-access/?bbgsum-page=DG-WS-PROF-PROD-BBA). This is required so that you can log in to Bloomberg Anywhere to access the Bloomberg SFTP site that you have to set up and configure.

- Set up a Bloomberg SFTP (Secure file transfer protocol) site. After working with Bloomberg to set up the SFTP site, data from Instant Bloomberg is uploaded to the SFTP site every day. The connector you create in Step 2 connects to this SFTP site and transfers the chat data to Office 365 mailboxes. SFTP also encrypts the Instant Bloomberg chat data that is sent to Office 365 mailboxes during the transfer process.

    For information about Bloomberg SFTP (also called *BB-SFTP*):

    - See the "SFTP Connectivity Standards" document at [Bloomberg Support](https://www.bloomberg.com/professional/support/documentation/).
    
    - Contact [Bloomberg customer support](https://service.bloomberg.com/portal/sessions/new?utm_source=bloomberg-menu&utm_medium=csc).

    After you work with Bloomberg to set up an SFTP site, Bloomberg will provide some information to you after you respond to the Bloomberg implementation email message. Save a copy of the following information. You use it to set up a connector in Step 3.

    - Firm code, which is an ID for your organization and is used to log in to the Bloomberg SFTP site.

    - Password for your Bloomberg SFTP site

    - URL for Bloomberg SFTP site (for example, sftp.bloomberg.com)

    - Port number for Bloomberg SFTP site

- The user who creates an Instant Bloomberg connector in Step 3 (and who downloads the public keys and IP address in Step 1) must be assigned the Mailbox Import Export role in Exchange Online. This is required to access the **Archive third-party data** page in the Security & Compliance Center. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Obtain SSH and PGP public keys

The first step is to obtain a copy of the public keys for Secure Shell (SSH) and Pretty Good Privacy (PGP). You use these keys in Step 2 to configure the Bloomberg SFTP site to allow the connector (that you create in Step 3) to connect to the SFTP site and transfer the Instant Bloomberg chat data to Office 365 mailboxes. You also obtain an IP address in this step, which you use when configuring the Bloomberg SFTP site.

1. Go to <https://protection.office.com> and then click **Information governance \> Import** > **Archive third-party data**.

2. On the **Archive third-party data** page, click **Add a connector**, and then click **Instant Bloomberg**.

3. On the **Terms of service** page, click **Accept**.

4. On the **Add credentials for Bloomberg SFTP site** under step 1, click the **Download SSH key**, **Download PGP key**, and **Download IP address** links to save a copy of each file to your local computer. These files contain the following items that are used to configure the Bloomberg SFTP site in Step 2:

   - SSH public key: This key is used to configure Secure Shell (SSH) to enable a secure remote login when the connector connects to the Bloomberg SFTP site.

   - PGP public key: This key is used to configure the encryption of data that's transferred from the Bloomberg SFTP site to Office 365.

   - IP address: The Bloomberg SFTP site is configured to accept a connection request only from this IP address, which is used by the Instant Bloomberg connector that you create in Step 3. 

5. Click **Cancel** to close the wizard. You come back to this wizard in Step 3 to create the connector.

## Step 2: Configure the Bloomberg SFTP site

The next step is to use the SSH and PGP public keys and the IP address that you obtained in Step 1 to configure SSH authentication and PGP encryption for the Bloomberg SFTP site. This lets the Instant Bloomberg connector that you create in Step 3 connect to the Bloomberg SFTP site and transfer Instant Bloomberg data to Office 365. You need to work with Bloomberg customer support to set up your Bloomberg SFTP site. Contact [Bloomberg customer support](https://service.bloomberg.com/portal/sessions/new?utm_source=bloomberg-menu&utm_medium=csc) for assistance. 

> [!IMPORTANT]
> Bloomberg recommends that you attach the three files that you downloaded in Step 1 to an email message and send it to their customer support team when working with them to set up your Bloomberg SFTP site.

## Step 3: Create an Instant Bloomberg connector

The last step is to create an Instant Bloomberg connector in the Security & Compliance Center. The connector uses the information you provide to connect to the Bloomberg SFTP site and transfer chat messages to the corresponding user mailbox boxes in Office 365. 

1. Go to <https://protection.office.com> and then click **Information governance \> Import** > **Archive third-party data**.

2. On the **Archive third-party data** page, click **Add a connector**, and then click **Instant Bloomberg**.

3. On the **Terms of service** page, click **Accept**.

4. On the **Add credentials for Bloomberg SFTP site** page, under Step 3, enter the required information in the following boxes and then click **Next**.

    - **Firm code:** The ID for your organization and used as the username for the Bloomberg SFTP site.

    - **Password:** Password for Bloomberg SFTP site

    - **SFTP URL:** The URL for Bloomberg SFTP site (for example, sftp.bloomberg.com).

    - **SFTP port:** The port number for Bloomberg SFTP site. The connector uses this port to connect to the SFTP site.

5. On the **Alternative mailbox** page, type the email address of a mailbox that is used to store the chat messages from Instant Bloomberg that aren't associated with a user mailbox in your organization.

   > [!NOTE]
   > Every chat message in every conversation in Instant Bloomberg includes a property called *CorporateEmailAddress*, which contains your organization's email address for the chat participant. During the import process, the connector attempts to import chat messages to a user mailbox in Office 365 that has the same email addresses that matches the one in the *CorporateEmailAddress* property. If there isn't an Office 365 mailbox with the same address as the one in the *CorporateEmailAddress* property, the connector imports the chat message to the alternative mailbox that you specify on this page.

6. Click **Next**, review your settings, and then click **prepare** to create the connector.

7. Go to the **Archive third-party data** page to see the progress of the import process for the new connector.
