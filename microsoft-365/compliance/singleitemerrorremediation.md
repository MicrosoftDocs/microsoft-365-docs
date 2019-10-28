---
title: "Single item error remediation"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: ""
---

# Single item error remediation

Error remediation gives Advanced eDiscovery users the ability to rectify data issues that prevent Advanced eDiscovery from properly processing the content. For example, files that are password protected can't be processed because those files are locked or encrypted. Previously, you could only remediate errors in bulk by using the [<span class="underline">this workflow</span>](https://docs.microsoft.com/en-us/office365/securitycompliance/compliance20/error-remediation). But sometimes, it doesn't make sense to remediate errors in multiple files when you’re unsure if any of those files are responsive to the case you’re investigating. It also might not make sense to remediate errors before you’ve had a chance to review the file metadata (such as file location or who had access) to help you make up-front decisions about responsiveness. Now, a new feature called *single item error remediation* gives eDiscovery managers the ability to view the metadata of files with a processing errors and remediate errors, if necessary to the file in the review set. The article discusses how to identify, ignore, and remediate files with processing errors in a review set.

## Identify documents with errors

Documents with processing errors in a review set are now identified (with a banner). You can remediate or ignore the error. Because the file is identified, you can also view the file metadata.

> ![Machine generated alternative text:
> quickbrownfox - password protected witl
> Processing failed:Protected file
> Remediation
> Ignore
> File metadata
> Native View
> Word
> Text View
> Annotate View
> Accessibility Mode
> Immersive Reader
> Microsoft Word
> Sorry, Word cant open this document because it's
> encrypted using a password. To view this document
> please open it in Microsoft Word.
> Your feedback helps Microsoft improve Word. Give
> feedback to Microsoft ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png)
> 
>  
> 
> You can also search for all documents in a review set that have processing errors by using the *Processing status* condition when searching the documents in a review set.
> 
> ![Office 365 Security & Compliance
> Name
> Errors
> A Processing status
> Equals any of
> Success (7)
> Protected file (2)
> \+ Add a condition + Condition group
> Cancel
> Import from clipboard ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image2.png)

### Ignoring errors

To ignore an error, which will remove the item from Bulk error remediation workflow, click **Ignore** in the error banner. After the error is ignored, the document banner will still indicate that there was a processing error and that it was ignored. You have the option to revert the decision if the document was incorrectly ignored by clicking **Revert** in the banner.

>  
> 
> ![quickbrownfox - pa
> The processing error for this document was ignored.
> Revert
> File metadata
> Native View
> Word
> Text View
> Annotate View
> Accessibility Mode ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image3.png)

 

> You can also search for all documents that had a processing error that was ignored by using the *Ignored processing errors* condition when searching the documents in a review set.
> 
> ![Single Item Error Remediation Demo \> Review sets
> Error Remediation Demo
> View files
> Name
> Ignored Items
> A Ignored processing errors
> Equals any of
> Ignored (1)
> \+ Add a condition + Condition group
> Cancel
> Import from clipboard ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image4.png)

## Remediate a document with errors

Sometimes you may be required to remediate a processing error in documents (by removing a password, removing encryption, or recovering a corrupted document) and then adding the remediated document to the review set so it can be reviewed and exported with all other documents in the review set. To do this, follow these steps:

>  

1.  > Click **Download** to download a copy of the file to a local computer.

> ![quickbrownfox - password protected
> Processing failed:Protected file
> Remediation
> Ignore
> File metadata
> Native View
> Word
> Text View
> Annotate View
> Accessibility Mode
> Microsoft Word
> Sorry, Word can't open this document because it's
> encrypted using a password. To view this document
> please open it in Microsoft Word.
> Your feedback helps Microsoft improve Word. Give
> feedback to Microsoft
> Immersive Reader ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image5.png)
> 
>  

1.  > Remediate the error in the file offline. For encrypted files, that would require decryption software, to remove password protection, either provide the password and save the file or use a password cracker. After the file is remediated, go to the next step.

>  

1.  > In the review set, click **Remediation** in the banner of the file that you downloaded and remediated in the previous steps.

> ![quickbrownfox - password protected
> Processing failed:Protected file
> Remediation
> Ignore
> File metadata
> Native View
> Word
> Text View
> Annotate View
> Accessibility Mode
> Microsoft Word
> Sorry, Word can't open this document because it's
> encrypted using a password. To view this document
> please open it in Microsoft Word.
> Your feedback helps Microsoft improve Word. Give
> feedback to Microsoft
> Immersive Reader ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image6.png)
> 
>  

1.  > Click **Browse**, and go to the location of the remediated file on your local computer.

> ![Edit remediation
> Error remediation allows you to provide a repaired file in place of the original file that wasn't successfully
> processed. For example, for a password protected file, you can download the file, remove the password,
> and then upload the remediated file.
> To upload a remediated replacement file, click choose file.
> After uploading the replacement file, it will be processed and included in the review set.
> Browse...
> Close ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image7.png)
> 
>  

1.  > After selecting the remediated file, it will be automatically uploaded to the review set. You can track the processing status of the file.

> ![Edit remediation
> Error remediation allows you to provide a repaired file in place of the original file that wasn't successfully
> processed. For example, for a password protected file, you can download the file, remove the password,
> and then upload the remediated file.
> To upload a remediated replacement file, click choose file.
> After uploading the replacement file, it will be processed and included in the review set.
> 1 file was uploaded.
> Job type
> Adding remediated data to a review set
> Job status
> Created
> Process progress: 0%
> Support information
> Off
> Close ](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image8.png)
> 
>  

1.  > After processing is completed, you can view the remediated document.

> You can search for all documents in a review set that were remediated by using the Keywords condition and specifying the following property:value pair: **IsFromErrorRemediation:true**. This property is also available in the export load file when you export documents from a review set.
> 
> For more information about what happens when a document is remediated and how a remediated file is displayed in a review set, see [<span class="underline">What happens when files are remediated</span>](https://docs.microsoft.com/en-us/office365/securitycompliance/compliance20/error-remediation#what-happens-when-files-are-remediated).
