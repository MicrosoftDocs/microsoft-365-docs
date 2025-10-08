---
title: Troubleshoot a signature request in eSignature
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: amcdonnell
ms.date: 08/01/2025
audience: enabler
ms.topic: troubleshooting-general
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to troubleshoot issues with sending, receiving, or viewing requests in eSignature. 
---

# Troubleshoot a signature request in eSignature

## Unable to create a request

If you can't create a signature request, ensure you have edit rights to the folder containing the document and that the PDF is under 10 MB. If the document is stored in a private group, the signers must be members of the private group to receive the request. You can also check the PDF viewer settings, the collaboration settings, or the access policies. Refer to [Admin setup](esignature-setup.md) to ensure the correct settings are done. Also, check that the PDF you're attempting to sign isn't already electronically signed using eSignature or any other electronic signature provider.

> [!NOTE]
> New electronic signature requests can't be started from documents that were previously signed. You need to choose another document to create the request.

### Default program for PDF viewing

The PDF viewer is opened by selecting a PDF file from a SharePoint library. The ability to use the **Get signatures** option isn't available if the PDF is viewed in any other way, for example, in Microsoft Edge or Adobe Reader.

### Collaboration settings

The eSignature service is an extension of SharePoint document storage and management service. Existing access, sharing, and data loss prevention policies at various levels (tenant, SharePoint site, library, folder, or file) might impact whether a request can be initiated from a document in SharePoint and who it can be sent to. Some of the scenarios that might affect the signature request process are:

- If encryption is applied (for example, sensitivity labeling applied to the file), the ability to view the document wouldn't be available from SharePoint and therefore can't start a Signature request from there. Read more about [sensitivity labels](/purview/sensitivity-labels).

- The document is stored in a library or folder that has unique permissions or sharing settings. This event might override the default settings of the SharePoint site or tenant and either allow or block certain users from initiating or accessing an eSignature request with that document.

- Microsoft Entra collaboration settings restrict document sharing to specific individuals. This event limits who the requests can be sent to.

To check whether all SharePoint external sharing settings are enabled, you can use the following PowerShell script:

~~~
</> Shell
Connect-SPOService -Url "https://yourtenant.sharepoint.com"
Get-SPOSite -Limit All | Select-Object Url, SharingCapability
~~~

### Unable to send a request to an external recipient

Your IT admin might not have configured Microsoft Entra B2B to allow new external guests. Review the [External recipients](esignature-setup.md#external-recipients) section in [Admin setup](esignature-setup.md) to determine if this meets your compliance and security requirements when enabling eSignature.

Certain [conditional access](/entra/identity/conditional-access/overview) policies might determine whether an external recipient (signers outside of your organization or Microsoft 365 tenant) is able sign a document. When this happens, the external signers might not be able to access the document for signing. In some other cases, they might be able to access the document for signing but the signing operation is unsuccessful. One common way to resolve this is to contact your IT admin who can add the eSignature app to the list of approved apps via the Microsoft Entra admin center.

In some cases, the admin might need to add the eSignature app (formally called Microsoft eSign service) to the **Excluded Apps** list in the **Conditional Access policy** > **Target resources** section so that the policy doesn't apply to the eSignature app. The admin can verify the changes using the WhatIf tool with the policy.

## Unable to create a request from another signature provider

When you initiate a signature request from a document for another provider, such as Adobe Acrobat Sign and DocuSign, the document might have security and access policies applied that prevent the document from opening in the provider service. The most common policies include download and encryption policies applied. You must ensure that the document isn't encrypted before initiating the signature request and that the creator of the request has permission to download the file.  

## Unable to find the request emails

If you can't find an eSignature request in your email inbox, check your spam or junk folder. It's also good practice to mark the sender as safe so that future emails from the same sender go directly into your inbox.

## Unable to sign a document as an external recipient

When you receive a document for signing from someone outside of your organization, you might be able to access and read the document but the signing operation fails when you attempt to sign it. Other times, you might not be able to access and read the document. If you're experiencing any issues with signing a document sent from someone outside your organization, contact the sender who can resolve the issue.

## Unable to access a signed document

Before sending a signature request and upon its completion, checks are performed to ensure the sender has permission to write to the document and the originating folder, as the final signed document will be saved in this folder. If the sender loses access to this folder at any point before signing is complete, they might not be able to access the signed document permanently. In this scenario, the sender is provided temporary access of 30 days to the signed document through the completion email. To access the folder and document, the sender should ensure that they have read permission to the originating folder or request access from the owner.

Additionally, the eSignature service might not be able to save a copy of the signed document to the originating folder if the folder was accidentally deleted before the signature request was completed.

To avoid potential issues, you should check the status and settings of the documents and folders before starting a signature request. Ensure that there are sufficient permissions and roles to access and share the documents with their intended recipients.

- Data loss prevention (DLP) policies
- Microsoft Entra ID collaboration settings
- SharePoint sharing settings and policies
- User permissions and document access

## Unable to create a signature request in Word

#### I don't have the eSignature ribbon action in Word

- The ribbon action is available for Word Desktop on the Beta and Current channels.
- To change your channel, in Word, go to **File** > **Account** > **Update Channel**.

    ![Screenshot showing the Update Channel button in Word.](../media/content-understanding/esignature-word-update-channel.png)

- Select the **Beta** or **Current** channel.
- If you don't have the **Update Channel** option, your admin has disabled it, or you don't have local administrator permissions. Learn more about the [Update Channel option](/microsoft-365-apps/insider/deploy/user-choice).

#### When I select the ribbon action in Word, I receive a message that eSignature isn't enabled

- The Word document must be located on a eSignature-enabled site.  
- Word hasn't been enabled in the Microsoft 365 admin center.

    ![Screenshot showing that eSignature is turned off.](../media/content-understanding/esignature-turned-off-message.png)

#### I get a message to change the sensitivity label

- The eSignature service supports unencrypted documents such as General, non-Business, Public, Confidential (Any user/No protection), High Confidential (Any user/No protection), and non-encrypted labeled documents.

#### I can't send a request in Word to new external signers

- Your admin hasn't configured eSignature to send requests to external senders who aren't existing guests on your tenant. 

#### As an admin, I don't have a toggle to disable requesting signatures from PDFs

- The PDF eSignature capability is enabled by default and can't be disabled if eSignature is enabled as a provider.
