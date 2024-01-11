---
title: Troubleshoot a signature request in Microsoft SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 11/15/2023
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

# Troubleshoot a signature request in Microsoft SharePoint eSignature

## Troubleshoot a signature request

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

