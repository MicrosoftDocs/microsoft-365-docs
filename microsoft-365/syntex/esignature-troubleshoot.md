---
title: Troubleshoot a signature request for Microsoft SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 01/11/2024
audience: enabler
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to use Microsoft SharePoint eSignature to create and send electronic signature requests to people inside and outside of your organization. 
---

# Troubleshoot a signature request for Microsoft SharePoint eSignature

## Unable to create a request

If you aren't able to create a signature request, check the PDF viewer settings, the collaboration settings, or the access policies.

### PDF settings from the PDF viewer

The PDF viewer is opened by selecting a PDF file from SharePoint Online. The ability to request signatures won't be available if the PDF is viewed in any other way (for example, in Microsoft Edge). If  PDF files are opened in any other way, the **Get signatures** option isn't available.

### Collaboration settings

SharePoint eSignature is an extension of SharePoint document storage and management service. Therefore, all existing access, sharing, and data loss prevention policies that are already applied at the tenant level, SharePoint site and library level, or folder and file level might affect whether a request can be started from a document in SharePoint and who it can be sent to. Some of the scenarios that might affect the signature request process are:

- If encryption is applied (for example, sensitivity labeling applied to the file), the ability to view the document wouldn't be available from SharePoint Online and therefore can't start a Signature request from there. Read more about [sensitivity labels](/purview/sensitivity-labels).

- The document is stored in a library or folder that has unique permissions or sharing settings. This event might override the default settings of the SharePoint site or tenant and either allow or block certain users from initiating or accessing an eSignature request with that document.

- Microsoft Entra collaboration settings restrict document sharing to specific individuals. This event limits who the requests can be sent to.

### Conditional access policies

Certain [conditional access](/entra/identity/conditional-access/overview) policies might determine whether an external recipient (signers outside of your organization or Microsoft 365 tenant) will be able sign a document. When this happens, the external signers might not be able to access the document for signing. In some other cases, they might be able to access the document for signing but the signing operation will be unsuccessful. One common way to resolve this is to contact your IT admin who will be able to add the eSignature app to the list of approved apps via the  Microsoft Entra admin center.

## Unable to sign a document as an external recipient

When you receive a document for signing from someone outside of your organization, you might be able to access and read the document but the signing operation fails when you attempt to sign it. Other times, you might not be able to access and read the document. If you're experiencing any issues with signing a document sent from someone outside your organization, contact the sender who will be able to resolve the issue.

## Unable to access a signed document

Before a signature request is sent and at the completion of the request, certain checks are done to ensure that the sender has the permissions to write to the document and the originating folder because the final signed document is saved in this folder. If the sender loses access to this folder at any point before signing is complete, they might not be able to access the signed document permanently. In this scenario, the sender will be provided temporary access of 30 days to the signed document through the completion email. To access the folder and document, the sender should ensure that they have read permission to the originating folder or request access from the owner.

Additionally, the eSignature service might not be able to save a copy of the signed document to the originating folder if the folder was accidentally deleted before the signature request was completed.

To avoid potential issues, you should check the status and settings of the documents and folders before starting a signature request. Ensure that there are sufficient permissions and roles to access and share the documents with their intended recipients.

- Data loss prevention (DLP) policies
- Microsoft Entra ID collaboration settings
- SharePoint sharing settings and policies
- User permissions and document access
