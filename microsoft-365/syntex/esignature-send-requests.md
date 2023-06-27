---
title: Send and receive signature requests using Microsoft Syntex eSignature (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: amcdonnell
ms.date: 07/01/2023
audience: enabler
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to use Microsoft Syntex eSignature to send electronic signature requests to people inside and outside of your organization. 
---

# Send and receive signature requests using Microsoft Syntex eSignature (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Syntex eSignature lets you safely and easily send PDF documents for signature to multiple recipients. It allows you to add a message and edit the name of the request, and to send it to multiple recipients while leveraging the security and compliance of Microsoft 365.
  
Microsoft Syntex eSignature is a key component of the Microsoft Syntex suite of products. The Create flow is the process of initializing a request for eSignature on a PDF document through the OneDrive One-Up Viewer.

## Request an eSignature

### Before you begin

Before you can use Syntex eSignature, an admin must [set up the Syntex eSignature service](esignature-set-up) in the Microsoft 365 admin center.

You must be signed in to SharePoint Online with your work email.

### Create a signature request

1. From a SharePoint document library, open the file for which you want to start the Syntex eSignature process.

2. In the document viewer, select **More options** (...), and then select **Get signatures**.

    ![Screenshot of a document showing the Get signatures option.](../media/content-understanding/esignature-get-signatures-option.png)

3. On the **Add recipients** panel, add up to 10 internal or external recipients you want to sign the document, and then select **Next**.

    ![Screenshot of the Add recipients panel.](../media/content-understanding/esignature-add-recipients-panel.png)

4. On the **Add form fields** panel, drag and drop the **Signature**, **Initials**, and **Date** fields to the appropriate locations in the document for each recipient. Then select **Next**. At least one signature field is needed for each recipient. Up to 50 fields (total) can be added to the document.

    ![Screenshot of the Add form fields panel.](../media/content-understanding/esignature-add-form-fields-panel.png)

5. On the **Review request** panel, enter a title for the request, add an optional message, and review the details on the panel to make sure it is correct. Then select **Send**.

    ![Screenshot of the Review request panel.](../media/content-understanding/esignature-review-request-panel.png)

    Once sent, the status of the request is set to **In progress** and recipients will be able to add their signatures.

### Troubleshoot creating requests

#### PDF settings from the PDF viewer

The PDF viewer is opened by selecting a PDF file from SharePoint Online. The ability to request signatures won't be available if the PDF is viewed in any other way (for example, in Microsoft Edge). If  PDF files are opened in any other way, the **Get signatures** option is not available.

#### Collaboration settings

Syntex eSignature is an extension of SharePoint document storage and management service. Therefore, all existing access, sharing, and data loss prevention policies that are already applied at the tenant, SharePoint site and library, folder and file level might impact whether a request can be started from a document in SharePoint and who it can be sent to. Some of the scenarios that might affect the signature request process are:

- The document has a sensitivity label applied that restricts access or sharing. This will limit who can start signature request with that document or the recipients that it can be sent to, depending on the label settings and the user's role.

- The document is stored in a library or folder that has unique permissions or sharing settings. This might override the default settings of the SharePoint site or tenant and either allow or block certain users from initiating or accessing an eSignature request with that document.

- Azure Active Directory (AAD) collaboration settings restrict document sharing to specific individuals. This will limit who the requests can be sent to.

## Cancel a signature request