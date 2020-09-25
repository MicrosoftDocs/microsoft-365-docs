---
title: "Error remediation when processing data for an investigation"
f1.keywords:
- NOCSH
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
description: "Learn how to use error remediation to correct data issues in Data Investigations (preview) that might prevent proper processing of content."
ms.custom: 
 - seo-marvel-mar2020
 - seo-marvel-apr2020
---

# Error remediation when processing data for an investigation

Error remediation allows investigators the ability to rectify data issues that prevent Data Investigations (preview) from properly processing the content. For example, files that are password protected cannot be processed since the files are locked or encrypted. Using error remediation, investigators can download files with such errors, remove the password protection, and upload the remediated files.

Use the following workflow to remediate files with errors in Data Investigations (preview) cases.

## Creating an error remediation session to remediate files with processing errors

>[!NOTE]
>If the the error remediation wizard is closed at any time during the following procedure, you can return to the error remediation session from the **Processing** tab by selecting **Error remediations** in the **View** drop down menu.

1. On the **Processing** tab in a data investigation, select **Errors** in the **View** dropdown menu.

2. Select the errors you want to remediate by clicking the radio button next to either the error type or file type.  In the following example, we're remediating a password protected file.

3. Click **+ New error remediation**.

    ![Click the New error remediation button](../media/8c2faf1a-834b-44fc-b418-6a18aed8b81a.png)

    The error remediation session begins, starting with a preparation stage where the files with errors are copied to a secure Azure location so that they can be downloaded.

    ![Preparing for error remediation](../media/390572ec-7012-47c4-a6b6-4cbb5649e8a8.png)

4. After the preparation is completed, click **Next: Download files** to proceed with download.

    ![Download the files that need remediation](../media/6ac04b09-8e13-414a-9e24-7c75ba586363.png)

5. To download files, specify the **Destination path for download**. This is a path on your local computer where the file should be downloaded.  The default path, %USERPROFILE%\Downloads\errors, points to the logged-in user's downloads folder; this can be changed as needed.

    >[!NOTE]
    >We recommend that you use a local file path instead of a remote network path for optimal performance.

    > [!NOTE]
    > If you haven't installed AzCopy, go to [Get started with AzCopy](https://docs.microsoft.com/azure/storage/common/storage-use-azcopy) to install it.

6. Copy the predefined command by clicking **Copy to clipboard**. Start a windows command prompt, paste the command, and then press **Enter**.  

    The files will be downloaded.

    ![Info about the downloaded files in the command prompt](../media/f364ab4d-31c5-4375-b69f-650f694a2f69.png)

    > [!NOTE]
    > If you have issues running this command, see [Troubleshoot AzCopy in Advanced eDiscovery](troubleshooting-azcopy.md).

7. After downloading the files, you can remediate them with an appropriate tool. For password protected files, there are several password cracking tools you can use. If you know the passwords for the files, you can open them and remove the password protection.
    
   > [!NOTE]
    > It's important that you retain the directory structure and file names of the remediated files. The path names of the downloaded files and folders make it possible to associate the remediated files with the original files.  If the directory structure or file names are changed, you'll receive the following error: `Cannot apply Error Remediation to the current Evidenceset`.

8. Now, return to Data Investigations (preview) and click **Next: Upload files**.  This will move to the next step where you can now upload the files.

    ![The Upload files tab](../media/af3d8617-1bab-4ecd-8de0-22e53acba240.png)

9. Specify the location of the remediated files in the **Path to location of files** text box, then click **Copy to clipboard**.

10. Paste the command into a Windows Command Prompt and press **Enter** to upload the files.

    ![Info about uploaded files in the command prompt](../media/ff2ff691-629f-4065-9b37-5333f937daf6.png)

11. Finally, return to Data Investigations (preview) and click **Next: Process files**.

12. When processing is complete.  You can return to the working set and see the remediated file.

## What happens when files are remediated

When remediated files are uploaded, the original metadata is preserved except for the following fields: 

- ExtractedTextSize
- HasText
- IsErrorRemediate
- LoadId
- ProcessingErrorMessage
- ProcessingStatus
- Text
- WordCount
- WorkingsetId

For a definition of all document metadata fields in Data Investigations (preview), see [Document metadata fields](document-metadata-fields.md).
