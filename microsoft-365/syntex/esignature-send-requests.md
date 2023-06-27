---
title: Create, review, and sign signature requests using Microsoft Syntex eSignature (Preview)
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

# Create, review, and sign signature requests using Microsoft Syntex eSignature (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Microsoft Syntex eSignature lets you safely and easily send PDF documents for signature to multiple recipients. It allows you to add a message and edit the name of the request, and to send it to multiple recipients while leveraging the security and compliance of Microsoft 365.

## Before you begin

Before you can use Syntex eSignature, an admin must [set up the Syntex eSignature service](esignature-set-up) in the Microsoft 365 admin center.

You must be signed in to SharePoint Online with your work email.

## Create a signature request

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

### Cancel a signature request

If you create a signature request and want to cancel it, following these steps.

1. From one of your notification emails, select **View Request**.

2. When the document is open in the document viewer, select **More options** (...), and then select **Cancel request**.

    ![Screenshot of a document showing the Cancel signature request option.](../media/content-understanding/esignature-cancel-signature-request-option.png)

3. On the **Cancel signature request** confirmation screen, enter a message detailing why the request is canceled if needed, and then select **Yes, cancel**.

    ![Screenshot of the Cancel signature request confirmation screen.](../media/content-understanding/esignature-cancel-signature-request-confirmation.png)

    Once canceled, the status of the request is set to **Canceled** and recipients will receive a notification email telling them that the request was cancelled and that no further action will be possible on this request.

## Review and sign a signature request

When a signature request is created, a notification email is sent to the recipients. The notification email contains details of the request, including all recipients who are required to sign, and any signing instructions. A recipient doesn't need to have a Syntex eSignature or Microsoft account to sign the request. This section summarizes how a recipient can add their signature to a document.

### Access the document to be signed

When you receive the notification email, select **View request** to begin the signing process.

![Screenshot of a notification email showing the View request button.](../media/content-understanding/esignature-notification-view-request.png)

### Consent to use your electronic signature

To continue the electronic signing process, you must consent to the terms and conditions and agree to use your electronic signature for signing. On the **Electronic Record and Signature Disclosure** screen:

- Select **Agree** to use your electronic signature and continue with the signing process.  
- Or select **Decline** if you'd prefer not to use your digital signature, and contact the person who requested your signature to complete the signature by using a different method.

![Screenshot of the Electronic Record and Signature Disclosure screen.](../media/content-understanding/esignature-signature-disclosure-screen.png)

### Sign the document

Once you click Agree, the document viewer will open in a new browser tab from where you can navigate and read the document, and review the content.  When you’re happy to sign, click the Start button – this will bring you to the first location where your input is needed.  
 
There are three different types of input you can be asked for:

- Signature
- Initials
- Date

Signature
Electronic signatures enable you to digitally sign a document by enabling you to add a representation of your physical signature.  
To add your signature, type your name and choose a font.	 
	
Clicking Done will add your signature to the document:
	 
	
Clicking Next will bring you to the next location requiring input
	 

Initials
In some locations within the document, you may be asked to add your initials to acknowledge a particular clause.
Click Initial here to add your initials
	 
	
Enter your initials. This will be prepopulated if you have entered your signature already. 
Hit Done when complete	 
			
Date
The date will be prepopulated as today’s date.	 

Once you have entered input in all the requested locations within the document, the Submit button will be enabled.  Clicking this will complete signing process and change the status of the request from In Progress to Completed. The document will become read only. You will get an email notification that your signature has been received and the Creator will be notified.
Once everyone has signed the document, you will get an email notification where you can view the document and request details.  The document is available via View Request button in the email for 30 days, so make sure you download it for your own records.

Declining to sign the document
If you review the document and don’t wish to sign it, you can decline to sign by clicking on the Decline to Sign button found in the overflow menu:

 

You can enter a reason for not signing document and then hit Decline to complete the request.  Or hit Go back if you change your mind.  Once you hit Decline, you will not be able to add your signature but will be able to see the document in read-only mode.
 
Declining to sign will send a notification to the creator saying that you don’t wish to sign the document. Declining to Sign will complete signing process and change the status of the request from In Progress to Declined.
  
If there are additional recipients, they will also get a notification saying that the request has been declined.   
