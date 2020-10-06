---
title: "Data Retention, Deletion, and Destruction in Microsoft 365"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: "An overview of Microsoft policies for Microsoft 365 regarding data retention, deletion, and destruction."
---

# Data Retention, Deletion, and Destruction in Microsoft 365

Microsoft has a Data Handling Standard policy for Microsoft 365 that specifies how long customer data is retained after deletion. There are generally two scenarios in which customer data is deleted:

- **Active Deletion**: The tenant has an active subscription and a user or administrator deletes data, or administrators delete a user.
- **Passive Deletion**: The tenant subscription ends.

## Data Retention

For each of these deletion scenarios, the following table shows the maximum data retention period, by data category and classification:

| Data Category | Data Classification | Description | Examples | Retention Period |
|-----------------|-----------------|-----------------|----------------------------------|-------------------------------|
| Customer Data | Customer Content| Content directly provided/created by admins and users <br><br> Includes all text, sound, video, image files, and software created and stored in Microsoft data centers when using the services in Microsoft 365 | Examples of the most commonly used Microsoft 365 applications that allow users to author data include Word, Excel, PowerPoint, Outlook, and OneNote <br><br> Customer content also includes customer-owned/provided secrets (passwords, certificates, encryption keys, storage keys) | **Active Deletion Scenario:** at most 30 days <br><br> **Passive Deletion Scenario:** at most 180 days |
| Customer Data | End User Identifiable Information (EUII) | Data that identifies or could be used to identify the user of a Microsoft service. EUII does not contain Customer content | User name or display name (DOMAIN\UserName) <br><br> User principal name (name@domain) <br><br>  User-specific IP addresses | **Active Deletion Scenario:** at most 180 days (only a tenant administrator action) <br><br> **Passive Deletion Scenario:** at most 180 days |
| Personal Data <br> (data not included in Customer Data) | End User Pseudonymous Identifiers (EUPI) | An identifier created by Microsoft tied to the user of a Microsoft service. When combined with other information, such as a mapping table, EUPI identifies the end user <br><br> EUPI does not contain information uploaded or created by the customer | User GUIDs, PUIDs, or SIDs <br><br> Session IDs | **Active Deletion Scenario:** at most 30 days <br><br> **Passive Deletion Scenario:** at most 180 days |

## Subscription Retention

In the term of an active subscription, a subscriber can access, extract, or delete customer data stored in Microsoft 365. If a paid subscription ends or is terminated, Microsoft retains customer data stored in Microsoft 365 in a limited-function account for 90 days to enable the subscriber to extract the data. After the 90-day retention period ends, Microsoft disables the account and deletes the customer data. No more than 180 days after expiration or termination of a subscription to Microsoft 365, Microsoft disables the account and deletes all customer data from the account. Once the maximum retention period for any data has elapsed, the data is rendered commercially unrecoverable.

For a free trial, your account moves into a grace status for 30 days in most countries and regions. During this grace period, you can purchase Microsoft 365. If you decide not to buy Microsoft 365, you can either cancel your trial or let the grace period expire, and your trial account information and data is deleted.

## Expedited Deletion

For any subscription, a subscriber can contact Microsoft Support and request expedited subscription de-provisioning. In this process, all user data is deleted three days after the administrator enters the lockout code provided by Microsoft. This includes data in SharePoint Online and Exchange Online under hold or stored in inactive mailboxes.

For more information on expedited de-provisioning, see [Cancel your subscription](https://docs.microsoft.com/microsoft-365/commerce/subscriptions/cancel-your-subscription).

## Related Links

- [Data Destruction](microsoft-365-data-destruction.md)
- [Immutability in Office 365](microsoft-365-data-immutability.md)
- [Exchange Online Data Deletion](microsoft-365-exchange-online-data-deletion.md)
- [SharePoint Online Data Deletion](microsoft-365-sharepoint-online-data-deletion.md)
- [Skype for Business Data Deletion](microsoft-365-skype-data-deletion.md)
