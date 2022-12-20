---
title: "Single item error remediation"
description: "You can fix a processing error in a document in a review set in eDiscovery (Premium) without having to follow the bulk error remediation process."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Single item error remediation in eDiscovery (Premium)

Error remediation gives Microsoft Purview eDiscovery (Premium) users the ability to rectify data issues that prevent eDiscovery (Premium) from properly processing the content. For example, files that are password protected can't be processed because those files are locked or encrypted. Previously, you could only remediate errors in bulk by using [this workflow](ediscovery-error-remediation-when-processing-data.md). But sometimes, it doesn't make sense to remediate errors in multiple files when you’re unsure if any of those files are responsive to the case you’re investigating. It also might not make sense to remediate errors before you’ve had a chance to review the file metadata (such as file location or who had access) to help you make up-front decisions about responsiveness. A new feature called *single item error remediation* gives eDiscovery managers the ability to view the metadata of files with a processing error and if necessary remediate the error directly in the review set. The article discusses how to identify, ignore, and remediate files with processing errors in a review set.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Identify documents with errors

Documents with processing errors in a review set are now identified (with a banner). You can remediate or ignore the error. The following screenshot shows the processing error banner for a Word document in a review set that is password-protected. Also notice that you can view the file metadata of documents with processing errors.

![Banner displayed for document with processing error.](../media/SIERimage1.png)

You can also search for documents that have processing errors by using the **Processing status** condition when [querying the documents in a review set](ediscovery-review-set-search.md).

![Use the Processing status condition to search for error documents.](../media/SIERimage2.png)

### Ignore errors

You can ignore a processing error by clicking **Ignore** in the processing error banner. When you ignore an error, the document is removed from the [bulk error remediation workflow](ediscovery-error-remediation-when-processing-data.md). After an error is ignored, the document banner changes color and indicates that the processing error was ignored. At any time, you can revert the decision to ignore the error by clicking **Revert**.

![Click Ignore to ignore the processing error.](../media/SIERimage3.png)

You can also search for all documents that had a processing error that was ignored by using the *Ignored processing errors* condition when querying documents in a review set.

![Use the Ignored processing errors condition to search for ignored error documents.](../media/SIERimage4.png)

## Remediate a document with errors

Sometimes you may be required to remediate a processing error in documents (by removing a password, decrypting an encrypted file, or recovering a corrupted document) and then add the remediated document to the review set. This allows you to review and export the error document together with the other documents in the review set. 

To remediate a single document, follow these steps:

1. Click **Download** > **Download original** to download a copy of the file to a local computer.

   ![Download the document with the processing error.](../media/SIERimage5.png)

2. Remediate the error in the file offline. For encrypted files, that would require decryption software, to remove password protection, either provide the password and save the file or use a password cracker. After you remediate the file, go to the next step.

3. In the review set, select the file with the processing error that you remediated, and then  click **Remediation**.

   ![Click Remediation in the banner of the document with processing error.](../media/SIERimage6.png)


4. Click **Browse**, go to the location of the remediated file on your local computer, and then select the file.

   ![Click Browse and select the remediated file on your local computer.](../media/SIERimage7.png)

    After selecting the remediated file, it is automatically uploaded to the review set. You can track the processing status of the file.

    ![The status of the remediation process is displayed.](../media/SIERimage8.png)

   After processing is completed, you can view the remediated document.

    ![You can view the remediated file in the native format in the review set.](../media/SIERimage9.png)

For more information about what happens when a document is remediated, see [What happens when files are remediated](ediscovery-error-remediation-when-processing-data.md#what-happens-when-files-are-remediated).

## Search for remediated documents

You can search for all documents in a review set that were remediated by using the **Keywords** condition and specifying the following property:value pair: **IsFromErrorRemediation:true**. This property is also available in the export load file when you export documents from a review set.
