---
title: Create a signature request from Word
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: stephea
ms.date: 08/01/2025
audience: enabler
ms.topic: how-to
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to use eSignature to create and send electronic signature requests from a Word file to people inside and outside of your organization. 
---

# Create a signature request from Word

> [!NOTE]
> This feature is currently rolling out to users on the Microsoft 365 Beta and Current channels. To get access to the feature, your admin must [complete these steps to allow signature requests in Microsoft Word](esignature-setup.md#allow-signature-requests-in-microsoft-word).

The eSignature service is now integrated with Microsoft Word. This new capability allows you to request electronic signatures directly from Word documents, without the need to manually create PDFs.

By bringing eSignatures into the flow of Word, you can create eSignature templates, accelerate document approvals, eliminate physical signing steps, and maintain compliance and security within the Microsoft 365 environment.

## Key features

- Seamless Word integration: You can insert signature fields into Word documents and request signatures without leaving the familiar Word interface. The eSignature functionality is accessed from the Word Insert ribbon and eliminates toggling between applications or converting files to PDFs before sending for signature.

- Automatic PDF creation & storage: When you send a signature request from Word, recipients will sign an automatically generated PDF copy of the Word document. The signed PDF is saved in the same SharePoint location as the original Word file. Your document never leaves the Microsoft 365 trust boundary during this process, ensuring end-to-end security and compliance.

- Word documents as eSignature templates: You can reuse your Word files as eSignature templates, streamlining repetitive signing processes.

- Integrated audit trail and notifications: eSignature provides built-in tracking. Both senders and signers get email notifications throughout the signing process, and you can view the activity history (audit trail) in the signed PDF to verify when and by whom it was signed.

- Security and compliance controls: Administrators have control over how eSignature for Word is used in the organization – it can be enabled for specific users via an Office group policy and even limited to certain SharePoint sites. And eSignature enables logging of eSignature activities in the Purview Audit log.

When you request electronic signatures from Word, the recipients sign a PDF copy of the Word document.

- Recipients don't access the source Word document during the signing process.
- Recipient information, such as an email address, isn't stored in the Word document.
- Upon completion of signing, the signed PDF is stored in the same location as the Word document.
- Requests can be sent from editable Word documents and read-only Word documents with prepositioned eSignature fields placeholders.

## eSignature for Word scenarios

- Create a request directly from a Word document. 
- Reuse the same document to create multiple requests.
- Create a template with prepositioned eSignature fields.
- Create a request from an eSignature template.
- Allow multiple users to create requests in parallel.

## Usage Prerequisites

- A subscription version of Word desktop.
- User is on the Microsoft 365 Beta Channel or Current Channel.
- The document is stored in a SharePoint site that is enabled for eSignature.
- The document is in the .docx format.
- The document is unencrypted.

## Create a signature request from Word

Follow these steps to use eSignature for Microsoft Word.

1. Open a document from a eSignature enabled site in Word (Desktop).

2. On the Word **Insert** ribbon, select **eSignatures fields**.

    ![Screenshot of the eSignature fields option on the Insert ribbon in Word.](../media/content-understanding/esignature-fields-option-word.png)

3. From the side panel, select **Add recipient**.

    ![Screenshot of the eSignature side panel in Word with the Add recipient option.](../media/content-understanding/esignature-add-recipient-option-word.png)

4. Add one or more recipients to sign the document.

    ![Screenshot of the Recipient panel in Word.](../media/content-understanding/esignature-recipient-fields-word.png)

5. Select the document location where you want to add an eSignature field. From the side panel, select **Insert** to add signature fields to the document.

6. The fields are inserted at the location of the insertion point in the document canvas.

7. Repeat step 5 for all fields you want to be inserted into the document.

    ![Screenshot of the Recipient panel to add more fields in Word.](../media/content-understanding/esignature-recipient-more-fields-word.png)

8. Optionally, you can add a message to the recipient.

    ![Screenshot of the Optional message option in Word.](../media/content-understanding/esignature-optional-message-word.png)

9. Select **Create request**.

    ![Screenshot of the Create request button in Word.](../media/content-understanding/esignature-create-request-button-word.png)

10. You'll receive a mail confirmation when the request was sent and recipients receive a link in mail to sign a PDF copy of the Word document.

11. You can now close the eSignature panel in Word or select **Start new request** to create another eSignature request.


<br>

> [!div class="nextstepaction"]
> [Review and sign a request](esignature-review-sign-requests.md)
