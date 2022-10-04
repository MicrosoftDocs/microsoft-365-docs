---
title: "Set up a connector to archive Bloomberg Message data"
description: "Administrators can set up a data connector to import and archive data from the Bloomberg Message email tool in Microsoft 365. This lets you archive data from third-party data sources in Microsoft 365 so you can use compliance features such as legal hold, Content Search, and retention policies to manage your organization's third-party data."
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
- tier3
- purview-compliance
- data-connectors
---

# Set up a connector to archive Bloomberg Message data

Use a data connector in the Microsoft Purview compliance portal to import and archive financial services email data from the [Bloomberg Message](https://www.bloomberg.com/professional/product/collaboration/) collaboration tool. After you set up and configure a connector, it connects to your organization's Bloomberg secure FTP (SFTP) site once every day, and imports email items to mailboxes in Microsoft 365.

After Bloomberg Message data is stored in user mailboxes, you can apply Microsoft Purview features such as Litigation hold, content search, In-place archiving, auditing, Communication compliance, and Microsoft 365 retention policies to Bloomberg Message data. For example, you can search Bloomberg Message emails using the content search tool or associate the mailbox that contains the Bloomberg Message data with a custodian in an eDiscovery (Premium) case. Using a Bloomberg Message connector to import and archive data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview of archiving Bloomberg Message data

The following overview explains the process of using a connector to archive Bloomberg Message data in Microsoft 365.

![Bloomberg Message import and archive process.](../media/BloombergMessageArchiving.png)

1. Your organization works with Bloomberg to set up a Bloomberg SFTP site. You'll also work with Bloomberg to configure Bloomberg Message to copy email messages to the Bloomberg SFTP site.

2. Once every 24 hours, email messages from Bloomberg Message are copied to the Bloomberg SFTP site.

3. The Bloomberg Message connector that you create in the compliance portal connects to the Bloomberg SFTP site every day and transfers the email messages from the previous 24 hours to a secure Azure Storage area in the Microsoft Cloud.

4. The connector imports the email message items to the mailbox of a specific user. A new folder named BloombergMessage is created in the specific user's mailbox and the items will be imported to it.

   The connector does this by using the value of the CorporateEmailAddress property. Every email message contains this property, which is populated with the email address of every participant of the email message. In addition to automatic user mapping using the value of the *CorporateEmailAddress* property, you can also define a custom mapping by uploading a CSV mapping file. This mapping file contains a Bloomberg UUID and the corresponding Microsoft 365 mailbox address for each user in your organization. If you enable automatic user mapping and provide a custom mapping, for every email item the connector will first look at the custom-mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's Bloomberg UUID, the connector uses the *CorporateEmailAddress* property of the email item. If the connector doesn't find a valid Microsoft 365 user in either the custom-mapping file or the *CorporateEmailAddress* property of the email item, the item won't be imported.

## Before you set up a connector

Some of the implementation steps required to archive Bloomberg Message data are external to Microsoft 365 and must be completed before you can create the connector in the compliance center.

- To set up a Bloomberg Message connector, you have to use keys and key passphrases for Pretty Good Privacy (PGP) and Secure Shell (SSH). These keys are used to configure the Bloomberg SFTP site and used by the connector to connect to the Bloomberg SFTP site to import data to Microsoft 365. The PGP key is used to configure the encryption of data that's transferred from the Bloomberg SFTP site to Microsoft 365. The SSH key is used to configure secure shell to enable a secure remote login when the connector connects to the Bloomberg SFTP site.

  When setting up a connector, you have the option to use public keys and key passphrases provided by Microsoft or you can use your own private keys and passphrases. We recommend that you use the public keys provided by Microsoft. However, if your organization has already configured a Bloomberg SFTP site using private keys, then you can create a connector using these same private keys.

- Subscribe to [Bloomberg Anywhere](https://www.bloomberg.com/professional/product/remote-access/?bbgsum-page=DG-WS-PROF-PROD-BBA). This is required so that you can log in to Bloomberg Anywhere to access the Bloomberg SFTP site that you have to set up and configure.

- Set up a Bloomberg SFTP (Secure file transfer protocol) site. After working with Bloomberg to set up the SFTP site, data from Bloomberg Message is uploaded to the SFTP site every day. The connector you create in Step 2 connects to this SFTP site and transfers the email data to Microsoft 365 mailboxes. SFTP also encrypts the Bloomberg Message data that is sent to mailboxes during the transfer process.

  For information about Bloomberg SFTP (also called *BB-SFTP*):

  - See the "SFTP Connectivity Standards" document at [Bloomberg Support](https://www.bloomberg.com/professional/support/documentation/).

  - Contact [Bloomberg customer support](https://service.bloomberg.com/portal/sessions/new?utm_source=bloomberg-menu&utm_medium=csc).

- After you work with Bloomberg to set up an SFTP site, Bloomberg will provide some information to you after you respond to the Bloomberg implementation email message. Save a copy of the following information. You use it to set up a connector in Step 3.

  - Firm code, which is an ID for your organization and is used to log in to the Bloomberg SFTP site.

  - Password for your Bloomberg SFTP site

  - URL for Bloomberg SFTP site (for example, sftp.bloomberg.com). In addition, Bloomberg may also provide a corresponding IP address for the Bloomberg SFTP site, which also can be used to set up the connector.

  - Port number for Bloomberg SFTP site

- The Bloomberg Message connector can import a total of 200,000 items in a single day. If there are more than 200,000 items on the SFTP site, none of those items will be imported to Microsoft 365.

- The user who creates a Bloomberg Message connector in Step 3 (and who downloads the public keys and IP address in Step 1) must be assigned the Data Connector Admin role. This role is required to add connectors on the **Data connectors** page in the compliance portal. This role is added by default to multiple role groups. For a list of these role groups, see the "Roles in the security and compliance centers" section in [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center). Alternatively, an admin in your organization can create a custom role group, assign the Data Connector Admin role, and then add the appropriate users as members. For instructions, see the "Create a custom role group" section in [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md#create-a-custom-role-group).

## Set up a connector using public keys

The steps in this section show you how to set up a Bloomberg Message connector using the public keys for Pretty Good Privacy (PGP) and Secure Shell (SSH).

### Step 1: Obtain PGP and SSH public keys

The first step is to obtain a copy of the PGP and SSH public keys. You use these keys in Step 2 to configure the Bloomberg SFTP site to allow the connector (that you create in Step 3) to connect to the SFTP site and transfer the Bloomberg Message email data to Microsoft 365 mailboxes. You also obtain an IP address in this step, which you use when configuring the Bloomberg SFTP site.

1. Go to <https://compliance.microsoft.com> and click **Data connectors** in the left nav.

2. On the **Data connectors** page under **Bloomberg Message**, click **View**.

3. On the **Bloomberg Message** product description page, click **Add connector**

4. On the **Terms of service** page, click **Accept**.

5. On the **Add credentials for content source** page, click **I want to use PGP and SSH public keys provided by Microsoft**.

   ![Select the option to use public keys.](../media/BloombergMessagePublicKeysOption.png)

6. Under step 1, click the **Download SSH key**, **Download PGP key**, and **Download IP address** links to save a copy of each file to your local computer.

   ![Links to download public keys and IP address.](../media/BloombergMessagePublicKeyDownloadLinks.png)

   These files contain the following items that are used to configure the Bloomberg SFTP site in Step 2:

   - PGP public key: This key is used to configure the encryption of data that's transferred from the Bloomberg SFTP site to Microsoft 365.

   - SSH public key: This key is used to configure secure shell to enable a secure remote login when the connector connects to the Bloomberg SFTP site.

   - IP address: The Bloomberg SFTP site is configured to accept connection requests from this IP address. The same IP address is used by the Bloomberg Message connector to connect to the SFTP site and transfer Bloomberg Message data to Microsoft 365.

7. Click **Cancel** to close the wizard. You come back to this wizard in Step 3 to create the connector.

### Step 2: Configure the Bloomberg SFTP site

> [!NOTE]
> If your organization has previously set up a Bloomberg SFTP site to archive Instant Bloomberg data using public PGP and SSH keys, you don't have to set up another one. You can specify the same SFTP site when you create the connector in Step 3.

The next step is to use the PGP and SSH public keys and the IP address that you obtained in Step 1 to configure PGP encryption and SSH authentication for the Bloomberg SFTP site. This lets the Bloomberg Message connector that you create in Step 3 connect to the Bloomberg SFTP site and transfer Bloomberg Message data to Microsoft 365. You need to work with Bloomberg customer support to set up your Bloomberg SFTP site. Contact [Bloomberg customer support](https://service.bloomberg.com/portal/sessions/new?utm_source=bloomberg-menu&utm_medium=csc) for assistance.

> [!IMPORTANT]
> Bloomberg recommends that you attach the three files that you downloaded in Step 1 to an email message and send it to their customer support team when working with them to set up your Bloomberg SFTP site.

### Step 3: Create a Bloomberg Message connector

The last step is to create a Bloomberg Message connector in the compliance portal. The connector uses the information you provide to connect to the Bloomberg SFTP site and transfer email messages to the corresponding user mailbox boxes in Microsoft 365.

1. Go to <https://compliance.microsoft.com> and click **Data connectors** in the left nav.

2. On the **Data connectors** page under **Bloomberg Message**, click **View**.

3. On the **Bloomberg Message** product description page, click **Add connector**

4. On the **Terms of service** page, click **Accept**.

5. On the **Add credentials for content source** page, click **I want to use PGP and SSH public keys provided by Microsoft**.

6. Under Step 3, enter the required information in the following boxes and then click **Validate connection**.

      - **Name:** The name for the connector. It must be unique in your organization.

      - **Firm code:** The ID for your organization that is used as the username for the Bloomberg SFTP site.

      - **Password:** The password for your organization's Bloomberg SFTP site.

      - **SFTP URL:** The URL for the Bloomberg SFTP site (for example, `sftp.bloomberg.com`). You can also use an IP address for this value.

      - **SFTP port:** The port number for the Bloomberg SFTP site. The connector uses this port to connect to the SFTP site.

7. After the connection is successfully validated, click **Next**.

8. On the **Define user** page, specify the users to import data for.

     - **All users in your organization**. Select this option to import data for all users.

     - **Only users on Litigation hold**. Select this option to import data only for users whose mailboxes are placed on Litigation hold. This option imports data to user mailboxes that have the LitigationHoldEnabled property set to True. For more information, see [Create a Litigation hold](create-a-litigation-hold.md).

9. On the **Map Bloomberg Message users to Microsoft 365 users** page, enable automatic user mapping and provide custom user mapping as required.

   > [!NOTE]
   > The connector imports message items to the mailbox of a specific user. A new folder named **BloombergMessage** is created in the specific user's mailbox and the items will be imported to it. The connector does by using the value of the *CorporateEmailAddress* property. Every chat message contains this property, and the property is populated with the email address of every participant of the chat message. In addition to automatic user mapping using the value of the *CorporateEmailAddress* property, you can also define custom mapping by uploading a CSV mapping file. The mapping file should contain the Bloomberg UUID and corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every message item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's Bloomberg UUID, the connector will use the *CorporateEmailAddress* property of the chat item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *CorporateEmailAddress* property of the message item, the item won't be imported.

10. Click **Next**, review your settings, and then click **Finish** to create the connector.

11. Go to the **Data connectors** page to see the progress of the import process for the new connector. Click the connector to display the flyout page, which contains information about the connector.

## Set up a connector using private keys

The steps in this section show you how to set up a Bloomberg Message connector using PGP and SSH private keys. This connector setup option is intended for organizations that have already configured a Bloomberg SFTP site using private keys.

### Step 1: Obtain an IP address to configure the Bloomberg SFTP site

> [!NOTE]
> If your organization has previously configured a Bloomberg SFTP site to archive Instant Bloomberg data using PGP and SSH private keys, you don't have to configure another one. You can specify the same SFTP site when you create the connector in Step 2.

If your organization has used PGP and SSH private keys to set up a Bloomberg SFTP site, then you have to obtain an IP address and provide it to Bloomberg customer support. The Bloomberg SFTP site must be configured to accept  connection requests from this IP address. The same IP address is used by the Bloomberg Message connector to connect to the SFTP site and transfer Bloomberg Message data to Microsoft 365.

To obtain the IP address:

1. Go to <https://compliance.microsoft.com> and click **Data connectors** in the left nav.

2. On the **Data connectors** page under **Bloomberg Message**, click **View**.

3. On the **Bloomberg Message** product description page, click **Add connector**

4. On the **Terms of service** page, click **Accept**.

5. On the **Add credentials for content source** page, click **I want to use PGP and SSH private keys**.

6. Under step 1, click **Download IP address** to save a copy of the IP address file to your local computer.

   ![Download the IP address.](../media/BloombergMessageConnectorIPAddress.png)

7. Click **Cancel** to close the wizard. You come back to this wizard in Step 2 to create the connector.

You need to work with Bloomberg customer support to configure your Bloomberg SFTP site to accept connection requests from this IP address. Contact [Bloomberg customer support](https://service.bloomberg.com/portal/sessions/new?utm_source=bloomberg-menu&utm_medium=csc) for assistance.

### Step 2: Create a Bloomberg Message connector

After your Bloomberg SFTP site is configured, the next step is to create a Bloomberg Message connector in the compliance portal. The connector uses the information you provide to connect to the Bloomberg SFTP site and transfer email messages to the corresponding user mailbox boxes in Microsoft 365. To complete this step, be sure to have copies of the same private keys and key passphrases that you used to set up your Bloomberg SFTP site.

1. Go to <https://compliance.microsoft.com> and click **Data connectors** in the left nav.

2. On the **Data connectors** page under **Bloomberg Message**, click **View**.

3. On the **Bloomberg Message** product description page, click **Add connector**

4. On the **Terms of service** page, click **Accept**.

5. On the **Add credentials for content source** page, click **I want to use PGP and SSH private keys**.

   ![Select the option to use private keys.](../media/BloombergMessagePrivateKeysOption.png)

6. Under Step 3, enter the required information in the following boxes and then click **Validate connection**.

      - **Name:** The name for the connector. It must be unique in your organization.

      - **Firm code:** The ID for your organization that is used as the username for the Bloomberg SFTP site.

      - **Password:** The password for your organization's Bloomberg SFTP site.

      - **SFTP URL:** The URL for the Bloomberg SFTP site (for example, `sftp.bloomberg.com`). You can also use an IP address for this value.

      - **SFTP port:** The port number for the Bloomberg SFTP site. The connector uses this port to connect to the SFTP site.

      - **PGP private key:** The PGP private key for the Bloomberg SFTP site. Be sure to include the entire private key value, including the beginning and ending lines of the key block.

      - **PGP key passphrase:** The passphrase for the PGP private key.

      - **SSH private key:** The SSH private key for the Bloomberg SFTP site. Be sure to include the entire private key value, including the beginning and ending lines of the key block.

      - **SSH key passphrase:** The passphrase for the SSH private key.

7. After the connection is successfully validated, click **Next**.

8. On the **Define user** page, specify the users to import data for

     - **All users in your organization**. Select this option to import data for all users.

     - **Only users on Litigation hold**. Select this option to import data only for users whose mailboxes are placed on Litigation hold. This option imports data to user mailboxes that have the LitigationHoldEnabled property set to True. For more information, see [Create a Litigation hold](create-a-litigation-hold.md).

9. On the **Map Bloomberg Message users to Microsoft 365 users** page, enable automatic user mapping and provide custom user mapping as required.

   > [!NOTE]
   > The connector imports message items to the mailbox of a specific user. A new folder named **BloombergMessage** is created in the specific user's mailbox and the items will be imported to it. The connector does by using the value of the *CorporateEmailAddress* property. Every chat message contains this property, and the property is populated with the email address of every participant of the chat message. In addition to automatic user mapping using the value of the *CorporateEmailAddress* property, you can also define custom mapping by uploading a CSV mapping file. The mapping file should contain the Bloomberg UUID and corresponding Microsoft 365 mailbox address for each user. If you enable automatic user mapping and provide a custom mapping, for every message item the connector will first look at custom mapping file. If it doesn't find a valid Microsoft 365 user that corresponds to a user's Bloomberg UUID, the connector will use the *CorporateEmailAddress* property of the chat item. If the connector doesn't find a valid Microsoft 365 user in either the custom mapping file or the *CorporateEmailAddress* property of the message item, the item won't be imported.

10. Click **Next**, review your settings, and then click **Finish** to create the connector.

11. Go to the **Data connectors** page to see the progress of the import process for the new connector. Click the connector to display the flyout page, which contains information about the connector.

## Known issues

- Threading of Bloomberg Message email imported to Microsoft 365 isn't supported. Individual messages sent to a person are imported, but they aren't presented in a threaded conversation. Microsoft is working to support threading in later versions of the Bloomberg Message data connector.
