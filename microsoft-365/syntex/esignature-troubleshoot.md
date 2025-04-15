---
title: Troubleshoot a signature request for SharePoint eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 04/11/2025
audience: enabler
ms.topic: troubleshooting-general
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to troubleshoot issues with sending, receiving, or viewing requests in SharePoint eSignature. 
---

# Troubleshoot a signature request for SharePoint eSignature

## Unable to create a request

If you aren't able to create a signature request, check the PDF viewer settings, the collaboration settings, or the access policies. Refer to the [setup page](/microsoft-365/syntex/esignature-setup) to ensure the correct settings are done. Also, check that the PDF you're attempting to sign isn't already electronically signed using SharePoint eSignature or any other electronic signature provider.

> [!NOTE]
> New eSignature requests can't be started from documents that have been previously signed. You need to choose another document to create the request.

### Default program for PDF viewing

The PDF viewer is opened by selecting a PDF file from a SharePoint library. The ability to use the **Get signatures** option won't be available if the PDF is viewed in any other way, for example, in Microsoft Edge or Adobe Reader.

### Collaboration settings

SharePoint eSignature is an extension of SharePoint document storage and management service. Existing access, sharing, and data loss prevention policies that are already applied at the tenant level, SharePoint site and library level, or folder and file level might affect whether a request can be started from a document in SharePoint and who it can be sent to. Some of the scenarios that might affect the signature request process are:

- If encryption is applied (for example, sensitivity labeling applied to the file), the ability to view the document wouldn't be available from SharePoint and therefore can't start a Signature request from there. Read more about [sensitivity labels](/purview/sensitivity-labels).

- The document is stored in a library or folder that has unique permissions or sharing settings. This event might override the default settings of the SharePoint site or tenant and either allow or block certain users from initiating or accessing an eSignature request with that document.

- Microsoft Entra collaboration settings restrict document sharing to specific individuals. This event limits who the requests can be sent to.

To check whether all SharePoint external sharing settings are enabled, you can use the following PowerShell script:

~~~
</> Shell
Connect-SPOService -Url "https://yourtenant.sharepoint.com"
Get-SPOSite -Limit All | Select-Object Url, SharingCapability
~~~

### Conditional access policies

Certain [conditional access](/entra/identity/conditional-access/overview) policies might determine whether an external recipient (signers outside of your organization or Microsoft 365 tenant) is able sign a document. When this happens, the external signers might not be able to access the document for signing. In some other cases, they might be able to access the document for signing but the signing operation is unsuccessful. One common way to resolve this is to contact your IT admin who will be able to add the SharePoint eSignature app to the list of approved apps via the  Microsoft Entra admin center.

In some cases, the admin might need to add the SharePoint eSignature app (formally called Microsoft eSign service) to the **Excluded Apps** list in the **Conditional Access policy** > **Target resources** section so that the policy doesn't apply to the SharePoint eSignature app. The admin can verify the changes using the WhatIf tool with the policy.

## Unable to create a request from another signature provider

When you initiate a signature request from a document for another provider, such as Adobe Acrobat Sign and DocuSign, the document might have security and access policies applied that prevent the document from opening in the provider service. The most common policies include download and encryption policies applied. You must ensure that the document isn't encrypted before initiating the signature request and that the creator of the request has permission to download the file.  

## Unable to find the request emails

If you were sent an eSignature request and can't find it in your email inbox, you should check your spam or junk folder. It's also good practice to mark the sender as non-spam so that future emails from the same sender go directly into your inbox.

## Unable to sign a document as an external recipient

When you receive a document for signing from someone outside of your organization, you might be able to access and read the document but the signing operation fails when you attempt to sign it. Other times, you might not be able to access and read the document. If you're experiencing any issues with signing a document sent from someone outside your organization, contact the sender who will be able to resolve the issue.

## Unable to access a signed document

Before a signature request is sent and at the completion of the request, certain checks are done to ensure that the sender has the permissions to write to the document and the originating folder because the final signed document is saved in this folder. If the sender loses access to this folder at any point before signing is complete, they might not be able to access the signed document permanently. In this scenario, the sender is provided temporary access of 30 days to the signed document through the completion email. To access the folder and document, the sender should ensure that they have read permission to the originating folder or request access from the owner.

Additionally, the eSignature service might not be able to save a copy of the signed document to the originating folder if the folder was accidentally deleted before the signature request was completed.

To avoid potential issues, you should check the status and settings of the documents and folders before starting a signature request. Ensure that there are sufficient permissions and roles to access and share the documents with their intended recipients.

- Data loss prevention (DLP) policies
- Microsoft Entra ID collaboration settings
- SharePoint sharing settings and policies
- User permissions and document access
