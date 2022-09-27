---
title: "Manage issuing officers in eDiscovery (Premium)"
description: "You can add organization-wide issuing officers in eDiscovery (Premium) so they can be added to any custodial communication in any case in your organization."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
---

# Manage issuing officers in eDiscovery (Premium)

When you or others create a hold notification or other type of communication that is sent to a user who is a custodian in case, you have to specify an issuing officer. The notification is sent to the custodian on behalf of the specified issuing officer. For example, a paralegal in your organization might be responsible for creating and sending hold notifications to custodians in a case. In this scenario, the paralegal can specify an attorney in the organization as the issuing officer. Who can be specified as an issuing officer? There are two types of users who can be selected as an issuing officer for a custodian communication:

- Any member of the specific case the communication is being sent in behalf of.

- Any user who is added to a list of organization-wide issuing officers. Users from this list can be added an issuing officer to any case in your organization.

This article explains how to add and remove users to the list of organization-wide issuing officers.

## Before you add an issuing officer

- You must be an eDiscovery Administrator in your organization to add or remove issuing officers. For more information, see [Assign eDiscovery permissions in the Microsoft Purview compliance portal](assign-ediscovery-permissions.md)  

- The user who is added as an issuing officer must have an active mailbox in your Microsoft 365 organization.

- Your organization can have a maximum of 15 issuing officers. Members of a case who can be specified as an issuing officer aren't counted toward this limit. This limit only applies to the number of users that can be added to the **Issuing officers** page in eDiscovery (Premium).

## Add an issuing officer

1. In the compliance portal, go to [eDiscovery (Premium)](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **eDiscovery (Premium) settings**.

   ![Select eDiscovery (Premium) settings](..\media\HistoricalVersions1.png)

2. On the **Settings** page, select the **Issuing officers** tab to display the **Manage issuing officers** page.

   ![Issuing officers settings page.](..\media\AeDIssuingOfficers1.png)

3. Click **Add** and then search for and add one or more users to the list of issuing officers.

After you add users as issuing officers, you or other users will be able to specify these users as an issuing officer for custodian communications for any case in your organization. For more information about creating custodian communications, see [Create a legal hold notice](create-hold-notification.md).

## Remove an issuing officer

1. In the compliance portal, go to [eDiscovery (Premium)](https://go.microsoft.com/fwlink/p/?linkid=2173764), and then click **eDiscovery (Premium) settings**.

2. On the **Settings** page, select the **Issuing officers** tab.

3. Select one or more users in the issuing officers list, and then click **Delete**.

After you delete users from the list of issuing officers, those users can no longer be specified as an issuing officer in new custodian communications, unless the user is a member of the specific case the communication is being issued from. Also, removing an issuing officer won't affect any communications that were sent before the user was removed as an issuing officer.
