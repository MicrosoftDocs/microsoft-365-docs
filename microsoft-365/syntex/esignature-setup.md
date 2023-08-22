---
title: Set up Microsoft Syntex eSignature (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: amcdonnell
ms.date: 08/01/2023
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

# Set up Microsoft Syntex eSignature (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

The Microsoft Syntex eSignature service is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use Syntex eSignature, you must first link your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Syntex eSignature is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). (Billing and pricing aren't activated during this preview.)

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up Syntex eSignature.  

## Set up Syntex eSignature

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Syntex eSignature**.

4. By default, the Syntex eSignature service is turned on. On the **Syntex eSignature** page:

   - To turn off the service, select **Turn off**.
   - To manage which sites the service is available, see [Manage sites](#manage-sites).

### Manage sites

By default, Syntex eSignature is turned on for libraries in all SharePoint sites. Follow these steps to manage which SharePoint sites users can use Syntex eSignature.

1. On the **Manage Microsoft Syntex** page, select **Syntex eSignature**.

2. On the **Syntex eSignature** page, under **SharePoint libraries where Syntex eSignature is turned on**, select **Select sites**.

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, select **No SharePoint libraries** or **Libraries in selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
<!---
### Turn off Syntex eSignature

1. On the **Manage Microsoft Syntex** page, select **Syntex eSignature**.

2. On the **Turn off Syntex eSignature** page, select **Turn off**.
--->
## Document storage and retention

### Document storage

Syntex eSignature lets a requester start a signature request from a PDF document that is saved in a SharePoint library for which Syntex eSignature has been enabled. After all required parties have signed, the Syntex eSignature service saves a copy of the signed document to the folder of the original document (originating folder). The sender is notified in an email that includes a link to view the document and a separate link to the SharePoint folder where the signed document was saved.

Before a signature request is sent and at the completion of the request, certain checks are done to ensure that the sender has the permission to write to the document and the originating folder. If the permission changes when the signature request is in progress, the service might not be able to save a copy of the signed document in the originating folder. This event can happen when:

- The sender of the request no longer has access to the originating folder. For example, the sender’s access has been revoked by the owner of the originating folder or a SharePoint admin.

- Initial write permission of the sender to the originating folder was downgraded to view only.

- The originating folder was deleted.

### Document retention

When a signature request is created for a document in SharePoint, the Syntex eSignature service creates a working copy of the document. It's this working copy that is sent out to all recipients for signing, and it's how the sender can track the status of their requests. The working copy of the request is stored in a hidden document library in SharePoint. The signature will only be added to the working copy of the request document after all parties have signed; otherwise, it will appear as unsigned even if one of the parties has added their signature.

The working copy of the request is stored and retained for five years or in accordance with the document retention policy set up by the SharePoint or tenant admin. Learn more about [retention policies](/purview/retention-policies-sharepoint).

### Expiration of URL links in email

Every email notification sent in relation to a signature request contains a URL link that allows the recipient to view, review, and sign the document. When a request reaches a terminal state (when the status is **Completed**, **Canceled**, or **Declined**), the recipient has 30 days to view, download, and store the document in a preferred location. After the link expires, it can no longer be used to access the document.
  
For more protection, when a sender cancels a request, recipients immediately lose access to the request document. The email notification received by recipients won't contain a URL link to view the request.

For user instructions about how to use Syntex eSignature, see [Create, review, and sign signature requests using Microsoft Syntex eSignature (Preview)](esignature-send-requests.md).