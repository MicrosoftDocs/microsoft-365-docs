---
title: Set up eSignature in Microsoft Syntex (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: amcdonnell
ms.date: 07/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to set up Microsoft Syntex eSignature to send electronic signature requests to people inside and outside of your organization. 
---

# Set up eSignature in Microsoft Syntex (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Before you can use eSignature in Microsoft Syntex, it must be configured in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use eSignature in Syntex, you must first enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). The eSignature feature in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up eSignature in Syntex.  

## Set up eSignature

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **eSignature**.

4. On the **eSignature** page, select **Edit** to choose which site or sites for which this service should be enabled.

    To restrict user access to this service, select **No sites** or **Selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites.

5. Select **Save**.
<!---
### Disable eSignature

1. On the **Manage Microsoft Syntex** page, select **eSignature**.

2. On the **Disable eSignature** page, select **Disable**.
--->

## Document storage

Syntex eSignature lets you start a signature request from any document (Word or PDF) that is saved in a SharePoint library for which eSignature has been enabled. After all required parties have signed, the eSignature service saves a copy of the signed document to the folder of the original document (originating folder). The sender is notified in an email that includes a link to view the document and a separate link to the SharePoint folder where the signed document was saved.

Before you send a signature request and at the completion of the request, certain checks are done to ensure that the sender has the permission to write to the document and the originating folder. If the permission changes when the eSignature request is in progress, the service might not be able to save a copy of the signed document in the originating folder. This event can happen when:

- The sender of the request no longer has access to the originating folder. For example, the sender’s access has been revoked by the owner of the originating folder or a SharePoint admin.

- Initial write permission of the sender to the originating folder was downgraded to view only.

- The originating folder was deleted.

## Expiration of URL links in email

Every email notification you receive in relation to an eSignature request contains a URL link that allows you to view, review, and sign the document. When a request reaches a terminal state, you have 30 days to view, download, and store it in your preferred location. After the link expires, it can no longer be used to access the document.
  
For more protection, when a sender cancels a request, recipients immediately lose access to the request document. The email received by recipients won't contain a URL link to view the request.

## Document retention

When you create an eSignature request from a document in SharePoint, the eSignature service creates a working copy of the document. It's this working copy that is sent out to all recipients for signing, and it's how the sender can track the status of their requests. The working copy of the request is stored in a hidden document library in SharePoint. The signature will only be added to the working copy of the request document after all parties have signed; otherwise, it will appear as unsigned even if one of the parties has added their signature.

The working copy of the request is stored and retained for five years or in accordance with the document retention policy set up by the SharePoint or tenant admin. Learn more about [retention policies](https://learn.microsoft.com/microsoft-365/compliance/retention-policies-sharepoint).

