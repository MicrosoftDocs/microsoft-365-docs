---
title: Set up Microsoft SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 11/15/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to set up and manage sites in Microsoft SharePoint eSignature. 
---

# Set up Microsoft SharePoint eSignature

> [!NOTE]
> Microsoft SharePoint eSignature is currently rolling out to the US market. If a tenant's location is the United States, SharePoint eSignature will be available for that tenant. For US-located, multi-geo enabled tenants, eSignature will be available in the home geo only. SharePoint eSignature will roll out to other regions in 2024.

The SharePoint eSignature service is set up in the Microsoft 365 admin center. SharePoint eSignature uses simple electronic signatures. Before you begin, determine whether this feature is appropriate for your needs and then read the [Microsoft SharePoint eSignature terms of service](/legal/microsoft-365/esignature-terms-of-service).

## Prerequisites

### Licensing

Before you can use SharePoint eSignature, you must first link your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). SharePoint eSignature is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up SharePoint eSignature.  

## Set up SharePoint eSignature

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **eSignature**.

4. For existing customers, read the [terms of service](/legal/microsoft-365/esignature-terms-of-service), and then select **Turn on** to enable the service.

5. For new Syntex customers, the Syntex eSignature service is turned on once you enter your billing information and accepted the [terms of service](/legal/microsoft-365/esignature-terms-of-service). On the **eSignature** page:

   - To turn off the service, select **Turn off**.
   - To manage which sites the service is available, see [Manage sites](#manage-sites).

### Manage sites

By default, SharePoint eSignature is turned on for libraries in all SharePoint sites. Follow these steps to limit which sites users can use eSignature.

1. On the **Manage Microsoft Syntex** page, select **eSignature**.

2. On the **eSignature** panel, under **SharePoint libraries where Syntex eSignature is turned on**, select **Select sites**.

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, select **No SharePoint libraries** or **Libraries in selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.

> [!NOTE]
> The first eSignature request in a Microsoft 365 tenant might take a little longer to execute than usual. It can take a few seconds to a few minutes; however, subsequent requests are executed normally. We recommend that admins create the first eSignature request in a SharePoint site as the final setup step.

### Turn off eSignature

1. On the **Manage Microsoft Syntex** page, select **eSignature**.

2. If SharePoint eSignature is turned on, there will be a **Turn off** button visible. To turn off SharePoint eSignature, select **Turn off**.

## Document storage and retention

### Document storage

SharePoint eSignature lets a requester start a signature request from a PDF document that is saved in a SharePoint library for which eSignature has been enabled. After all required parties have signed, the SharePoint eSignature service saves a copy of the signed document to the folder of the original document (originating folder). The sender is notified in an email that includes a link to view the document and a separate link to the SharePoint folder where the signed document was saved.

Before a signature request is sent and at the completion of the request, certain checks are done to ensure that the sender has the permission to write to the document and the originating folder. If the permission changes when the signature request is in progress, the service might not be able to save a copy of the signed document in the originating folder. This event can happen when:

- The sender of the request no longer has access to the originating folder. For example, the sender’s access has been revoked by the owner of the originating folder or a SharePoint admin.

- Initial write permission of the sender to the originating folder was downgraded to view only.

- The originating folder was deleted.

### Document retention

When a signature request is created for a document in SharePoint, the SharePoint eSignature service creates a working copy of the document. It's this working copy that is sent out to all recipients for signing, and it's how the sender can track the status of their requests. The working copy of the request is stored in a hidden document library in SharePoint. The signature will only be added to the working copy of the request document after all parties have signed; otherwise, it will appear as unsigned even if one of the parties has added their signature.

The working copy of the request is stored and retained for five years or in accordance with the document retention policy set up by the SharePoint or tenant admin. Learn more about [retention policies](/purview/retention-policies-sharepoint).

### Expiration of URL links in email

Every email notification sent in relation to a signature request contains a URL link that allows the recipient to view, review, and sign the document. When a request reaches a terminal state (when the status is **Completed**, **Canceled**, or **Declined**), the recipient has 30 days to view, download, and store the document in a preferred location. After the link expires, it can no longer be used to access the document.
  
For more protection, when a sender cancels a request, recipients immediately lose access to the request document. The email notification received by recipients won't contain a URL link to view the request.

## External signers

### Conditional access

Certain [conditional access](/entra/identity/conditional-access/overview) might determine whether external recipients (signers outside of your organization or Microsoft 365 tenant) will be able sign a document. Depending on the admin setup, external signers might not be able to access and read the document for signing. In some other cases, they might be able to access the document for signing, but the signing operation will be unsuccessful. One common way to resolve this is to add the **Microsoft eSignature Service** to the list of approved apps via the Microsoft Entra admin center.

### Authentication

External users might need to authenticate before they're able to access a document for signing. The type of authentication required by the external recipients depends on the configuration for guest users at the SharePoint level or at the tenant level. Additionally, if the external user belongs to an organization with a Microsoft 365 tenant, it's possible for their organization's setup to affect their authentication experience when attempting to sign the document.
