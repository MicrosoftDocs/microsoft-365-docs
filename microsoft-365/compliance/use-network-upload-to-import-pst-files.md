---
title: "Use network upload to import your organization's PST files"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: 103f940c-0468-4e1a-b527-cc8ad13a5ea6
description: "For administrators: Learn how to use network upload to bulk-import multiple PST files to user mailboxes in Microsoft 365."
ms.custom: seo-marvel-apr2020
---

# Use network upload to import your organization's PST files to Microsoft 365

> [!NOTE]
> This article is for administrators. Are you trying to import PST files to your own mailbox? See [Import email, contacts, and calendar from an Outlook .pst file](https://go.microsoft.com/fwlink/p/?LinkID=785075)
  
Here are the step-by-step instructions required to use network upload to bulk-import multiple PST files to Microsoft 365 mailboxes. For frequently asked questions about using network upload to bulk-import PST files to Microsoft 365 mailboxes, see [FAQs for using network upload to import PST files](./faqimporting-pst-files-to-office-365.yml#using-network-upload-to-import-pst-files).
  
[Step 1: Copy the SAS URL and install AzCopy](#step-1-copy-the-sas-url-and-install-azcopy)

[Step 2: Upload your PST files to Microsoft 365](#step-2-upload-your-pst-files-to-office-365)

[(Optional) Step 3: View a list of the PST files uploaded](#optional-step-3-view-a-list-of-the-pst-files-uploaded-to-office-365)

[Step 4: Create the PST Import mapping file](#step-4-create-the-pst-import-mapping-file)

[Step 5: Create a PST Import job](#step-5-create-a-pst-import-job)

[Step 6: Filter data and start the PST Import job](#step-6-filter-data-and-start-the-pst-import-job)

You have to perform Step 1 only once to import PST files to Microsoft 365 mailboxes. After you perform these steps, follow Step 2 through Step 6 each time you want to upload and import a batch of PST files.

## Before you import PST files
  
- You have to be assigned the Mailbox Import Export role in Exchange Online to import PST files to Microsoft 365 mailboxes. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group. Or you can create a role group, assign the Mailbox Import Export role, and then add yourself as a member. For more information, see the "Add a role to a role group" or the "Create a role group" sections in [Manage role groups](/Exchange/permissions-exo/role-groups).

    Also, to create import jobs in the Microsoft 365 compliance center, one of the following must be true:

  - You have to be assigned the Mail Recipients role in Exchange Online. By default, this role is assigned to the Organization Management and Recipient Management roles groups.

    Or

  - You have to be a global administrator in your organization.

  > [!TIP]
    > Consider creating a new role group in Exchange Online that's specifically intended for importing PST files. For the minimum level of privileges required to import PST files, assign the Mailbox Import Export and Mail Recipients roles to the new role group, and then add members.
  
- The only supported method for importing PST files to Microsoft 365 is to use the AzCopy tool, as described in this topic. You can't use the Azure Storage Explorer to upload PST files directly to the Azure Storage area.

- You need to store the PST files that you want to import to Microsoft 365 on a file server or shared folder in your organization. In Step 2, you run the AzCopy tool to upload the PST files that are stored on a file server or shared folder to Microsoft 365.

- Large PST files may impact the performance of the PST import process. So we recommend that each PST file you upload to the Azure Storage location in Step 2 should be no larger than 20 GB.

- This procedure involves copying and saving a copy of a URL that contains an access key. This information will be used in Step 2 to upload your PST files, and in Step 3 if you want to view a list of the PST files uploaded to Office 365. Be sure to take precautions to protect this URL like you would protect passwords or other security-related information. For example, you might save it to a password-protected Microsoft Word document or to an encrypted USB drive. See the [More information](#more-information) section for an example of this combined URL and key.

- You can import PST files to an inactive mailbox in Office 365. You do this by specifying the GUID of the inactive mailbox in the  `Mailbox` parameter in the PST Import mapping file. See Step 4 on the **Instructions** tab in this topic for information.

- In an Exchange hybrid deployment, you can import PST files to a cloud-based archive mailbox for a user whose primary mailbox is on-premises. You do this by doing the following in the PST Import mapping file:

  - Specify the email address for the user's on-premises mailbox in the  `Mailbox` parameter.

  - Specify the **TRUE** value in the  `IsArchive` parameter.

    See [Step 4](#step-4-create-the-pst-import-mapping-file) for more information.

- After PST files are imported, the retention hold setting for the mailbox is turned on for an indefinite duration. This means that the retention policy assigned to the mailbox won't be processed until you turn off the retention hold or set a date to turn off the hold. Why do we do this? If messages imported to a mailbox are old, they might be permanently deleted (purged) because their retention period has expired based on the retention settings configured for the mailbox. Placing the mailbox on retention hold gives the mailbox owner time to manage these newly imported messages or give you time to change the retention settings for the mailbox. See the [More information](#more-information) section in this topic for suggestions about managing the retention hold.

- By default, the maximum message size that can be received by a Microsoft 365 mailbox is 35 MB. That's because the default value for the  *MaxReceiveSize*  property for a mailbox is set to 35 MB. However, the limit for the maximum message receive size in Microsoft 365 is 150 MB. So if you import a PST file that contains an item larger than 35 MB, the Office 365 Import service we will automatically change the value of the  *MaxReceiveSize*  property on the target mailbox to 150 MB. This allows messages up to 150 MB to be imported to user mailboxes.

    > [!TIP]
    > To identify the message receive size for a mailbox, you can run this command in Exchange Online PowerShell:  `Get-Mailbox <user mailbox> | FL MaxReceiveSize`.

- For a high-level overview of the PST Import process, see [How the import process works](#how-the-import-process-works) section in this article.

## Step 1: Copy the SAS URL and install AzCopy

The first step is to download and install the AzCopy tool, which is the tool that you run in Step 2 to upload PST files to Office 365. You also copy the SAS URL for your organization. This URL is a combination of the network URL for the Azure Storage location in the Microsoft cloud for your organization and a Shared Access Signature (SAS) key. This key provides you with the necessary permissions to upload PST files to your Azure Storage location. Be sure to take precautions to protect the SAS URL. It's unique to your organization and will be used in Step 2.

> [!IMPORTANT]
> To import PST files using the network upload method and command syntax documented in this article, you must use the version of AzCopy that can be downloaded in step 6b in the following procedure. You can also download that same version of AzCopy from [here](https://aka.ms/downloadazcopy). Using a different version of AzCopy isn't supported.
  
1. Go to <https://compliance.microsoft.com> and sign in using the credentials for an administrator account in your organization.

2. In the left pane of the Microsoft 365 compliance center, click **Information governance** \> **Import**.

    > [!NOTE]
    > You have to be assigned the appropriate permissions to access the **Import** page in the Microsoft 365 compliance center. See the **Before you begin** section for more information. 

3. On the **Import** tab, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **New import job**.

    The import job wizard is displayed.

4. Type a name for the PST import job, and then click **Next**. Use lowercase letters, numbers, hyphens, and underscores. You can't use uppercase letters or include spaces in the name.

5. On the **Do you want to upload or ship data?** page, click **Upload your data** and then click **Next**.

    ![Click Upload your data to create a network upload import job](../media/e59f9dc3-ccde-44ff-ac38-c4e39d76ae85.png)
  
6. On the **Import data** page, do the following two things:

    ![Copy the SAS URL and download the AzCopy tool on the Import data page](../media/74411014-ec4b-4e25-9065-404c934cce17.png)
  
    1. In step 2, click **Show network upload SAS URL**. After the SAS URL is displayed, click **Copy to clipboard** and then paste it and save it to a file so you can access it later.

    2. In step 3, click **Download Azure AzCopy** to download and install the AzCopy tool. In the pop-up window, click **Run** to install AzCopy.

   > [!NOTE]
   > You can leave the **Import data** page open (in case you need to copy the SAS URL again) or click **Cancel** to close it. 

## Step 2: Upload your PST files to Office 365

Now you're ready to use the AzCopy.exe tool to upload PST files to Office 365. This tool uploads and stores PST files in an Azure Storage location in the Microsoft cloud. As previously explained, the Azure Storage location that you upload your PST files to is located in the same regional Microsoft datacenter where your organization is located. To complete this step, the PST files have to be located in a file share or file server in your organization. This is known as the source directory in this procedure. Each time you run the AzCopy tool, you can specify a different source directory.

> [!NOTE]
> As previously stated, each PST file that you upload to the Azure Storage location should be no larger than 20 GB. PST files larger than 20 GB may impact the performance of the PST import process that you start in Step 6. Also, each PST file must have a unique name.

1. Open a Command Prompt on your local computer.

2. Go to the directory where you installed the AzCopy.exe tool in Step 1. If you installed the tool in the default location, go to `%ProgramFiles(x86)%\Microsoft SDKs\Azure\AzCopy`.

3. Run the following command to upload the PST files to Office 365.

    ```powershell
    AzCopy.exe /Source:<Location of PST files> /Dest:<SAS URL> /V:<Log file location> /Y
    ```

    > [!IMPORTANT]
    > You must specify a directory as the source location in the previous command; you can't specify an individual PST file. All PST files in the source directory will be uploaded.

    The following table describes the AzCopy.exe parameters and their required values. The information you obtained in the previous step is used in the values for these parameters.

    | Parameter | Description | Example |
    |:-----|:-----|:-----|
    | `/Source:` <br/> |Specifies the source directory in your organization that contains the PST files that will be uploaded to Office 365.  <br/> Be sure to surround the value of this parameter with double-quotation marks (" ").  <br/> | `/Source:"\\FILESERVER01\PSTs"` <br/> |
    | `/Dest:` <br/> |Specifies the SAS URL that you obtained in Step 1.  <br/> Be sure to surround the value of this parameter with double-quotation marks (" ").<br/><br/>**Note:** If you use the SAS URL in a script or batch file, you need to watch out for certain characters that need to be escaped. For example, you have to change `%` to `%%` and change `&` to `^&`.<br/><br/>**Tip:** (Optional) You can specify a subfolder in the Azure Storage location to upload the PST files to. You do this by adding a subfolder location (after "ingestiondata") in the SAS URL. The first example doesn't specify a subfolder. That means the PSTs are uploaded to the root (named  *ingestiondata*) of the Azure Storage location. The second example uploads the PST files to a subfolder (named  *PSTFiles*) in the root of the Azure Storage location.  <br/> | `/Dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"` <br/> Or  <br/>  `/Dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata/PSTFiles?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"` <br/> |
    | `/V:` <br/> |Outputs verbose status messages into a log file. By default, the verbose log file is named AzCopyVerbose.log in %LocalAppData%\Microsoft\Azure\AzCopy. If you specify an existing file location for this option, the verbose log will be appended to that file.  <br/> Be sure to surround the value of this parameter with double-quotation marks (" ").  <br/> | `/V:"c:\Users\Admin\Desktop\Uploadlog.log"` <br/> |
    | `/S` <br/> |This optional switch specifies the recursive mode so that the AzCopy tool copies PSTs files that are located in subfolders in the source directory that is specified by the  `/Source:` parameter.  <br/> **Note:** If you include this switch, PST files in subfolders will have a different file pathname in the Azure Storage location after they're uploaded. You'll have to specify the exact file pathname in the CSV file that you create in Step 4.  <br/> | `/S` <br/> |
    | `/Y` <br/> |This required switch allows the use of write-only SAS tokens when you upload the PST files to the Azure Storage location. The SAS URL you obtained in step 1 (and specified in  `/Dest:` parameter) is a write-only SAS URL, which is why you must include this switch. A write-only SAS URL won't prevent you from using the Azure Storage Explorer to view a list of the PST files uploaded to the Azure Storage location.  <br/> | `/Y` <br/> |

Here's an example of the syntax for the AzCopy.exe tool using actual values for each parameter:

```powershell
  AzCopy.exe /Source:"\\FILESERVER1\PSTs" /Dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D" /V:"c:\Users\Admin\Desktop\AzCopy1.log" /Y
```

After you run the command, status messages are displayed that show the progress of uploading the PST files. A final status message shows the total number of files that were successfully uploaded.

> [!TIP]
> After you successfully run the AzCopy.exe command and verify that all the parameters are correct, save a copy of the command line syntax to the same (secured) file where you copied the information you obtained in Step 1. Then you can copy and paste this command in a Command Prompt each time that you want to run the AzCopy.exe tool to upload PST files to Office 365. The only value you might have to change are the ones for the `/Source:` parameter. This depends on the source directory where the PST files are located.

## (Optional) Step 3: View a list of the PST files uploaded to Office 365

As an optional step, you can install and use the Microsoft Azure Storage Explorer (which is a free, open-source tool) to view the list of the PST files that you've uploaded to the Azure blob. There are two good reasons to do this:
  
- Verify that PST files from the shared folder or file server in your organization were successfully uploaded to the Azure blob.

- Verify the filename (and the subfolder pathname if you included one) for each PST file uploaded to the Azure blob. This is helpful when you're creating the PST mapping file in the next step because you have to specify both the folder pathname and filename for each PST file. Verifying these names can help reduce potential errors in your PST mapping file.

The Azure Storage Explorer standalone application is generally available. You can download the latest version using the link in the following procedure.
  
> [!IMPORTANT]
> You can't use the Azure Storage Explorer to upload or modify PST files. The only supported method for importing PST files is to use AzCopy. Also, you can't delete PST files that you've uploaded to the Azure blob. If you try to delete a PST file, you'll receive an error about not having the required permissions. Note that all PST files are automatically deleted from your Azure storage area. If there are no import jobs in progress, then all PST files in the **ingestiondata** container are deleted 30 days after the most recent import job was created.
  
To install the Azure Storage Explorer and connect to your Azure Storage area:
  
1. Download and install the [Microsoft Azure Storage Explorer tool](https://go.microsoft.com/fwlink/p/?LinkId=544842).

2. Start the Microsoft Azure Storage Explorer.

3. On the **Select Resource** page in the **Connect to Azure Storage** dialog, click **Blob container**.
  
4. On the **Select Authentication Method** page, select the **Shared access signature (SAS)** option, and then click **Next**.

5. On the **Enter Connection Info** page, paste the SAS URL that you obtained in Step 1 into the box under **Blob container SAS URL**, and then click **Next**. After you paste the SAS URL, the box under **Display name** is auto-populated with **ingestiondata**.

6. On the **Summary** page, you can review the connection information, and then click **Connect**.

    The **ingestiondata** container is opened. It contains the PST files that you uploaded in Step 2. The **ingestiondata** container is located under **Storage Accounts** \> **(Attached Containers)** \> **Blob Containers**. 
  
7. When you're finished using the Microsoft Azure Storage Explorer, right-click **ingestiondata**, and then click **Detach** to disconnect from your Azure Storage area. Otherwise, you'll receive an error the next time you try to attach.
  
## Step 4: Create the PST Import mapping file

After the PST files have been uploaded to the Azure Storage location for your organization, the next step is to create a comma-separated value (CSV) file that specifies which user mailboxes the PST files will be imported to. You'll submit this CSV file in the next step when you create a PST Import job.
  
1. [Download a copy of the PST Import mapping file](https://go.microsoft.com/fwlink/p/?LinkId=544717).

2. Open or save the CSV file to your local computer. The following example shows a completed PST Import mapping file (opened in NotePad). It's much easier to use Microsoft Excel to edit the CSV file.

    ```console
    Workload,FilePath,Name,Mailbox,IsArchive,TargetRootFolder,ContentCodePage,SPFileContainer,SPManifestContainer,SPSiteUrl
    Exchange,,annb.pst,annb@contoso.onmicrosoft.com,FALSE,/,,,,
    Exchange,,annb_archive.pst,annb@contoso.onmicrosoft.com,TRUE,,,,,
    Exchange,,donh.pst,donh@contoso.onmicrosoft.com,FALSE,/,,,,
    Exchange,,donh_archive.pst,donh@contoso.onmicrosoft.com,TRUE,,,,,
    Exchange,PSTFiles,pilarp.pst,pilarp@contoso.onmicrosoft.com,FALSE,/,,,,
    Exchange,PSTFiles,pilarp_archive.pst,pilarp@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,PSTFiles,tonyk.pst,tonyk@contoso.onmicrosoft.com,FALSE,,,,,
    Exchange,PSTFiles,tonyk_archive.pst,tonyk@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,PSTFiles,zrinkam.pst,zrinkam@contoso.onmicrosoft.com,FALSE,,,,,
    Exchange,PSTFiles,zrinkam_archive.pst,zrinkam@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    ```

    The first row, or header row, of the CSV file lists the parameters that will be used by the PST Import service to import the PST files to user mailboxes. Each parameter name is separated by a comma. Each row under the header row represents the parameter values for importing a PST file to a specific mailbox. You need a row for each PST file that you want to import to a user mailbox. You can have a maximum of 500 rows in the CSV mapping file. To import more than 500 PST files, you'll have to create multiple mapping files and create multiple import jobs in Step 5.

    > [!NOTE]
    > Don't change anything in the header row, including the SharePoint parameters; they will be ignored during the PST Import process. Also, be sure to replace the placeholder data in the mapping file with your actual data.

3. Use the information in the following table to populate the CSV file with the required information.

    | Parameter | Description | Example |
    |:-----|:-----|:-----|
    | `Workload` <br/> |Specifies the service that data will be imported to. To import PST files to user mailboxes, use  `Exchange`.  <br/> | `Exchange` <br/> |
    | `FilePath` <br/> |Specifies the folder location in the Azure Storage location that you uploaded the PST files to in Step 2.  <br/> If you didn't include an optional subfolder name in the SAS URL in the  `/Dest:` parameter in Step 2, leave this parameter blank in the CSV file. If you included a subfolder name, specify it in this parameter (see the second example). The value for this parameter is case-sensitive.  <br/> Either way,  *don't*  include "ingestiondata" in the value for the  `FilePath` parameter.  <br/><br/> **Important:** The case for the file path name must be the same as the case you used if you included an optional subfolder name in the SAS URL in the  `/Dest:` parameter in Step 2. For example, if you used  `PSTFiles` for the subfolder name in Step 2 and then use  `pstfiles` in the  `FilePath` parameter in CSV file, the import for the PST file will fail. Be sure to use the same case in both instances.  <br/> |(leave blank)  <br/> Or  <br/>  `PSTFiles` <br/> |
    | `Name` <br/> |Specifies the name of the PST file that will be imported to the user mailbox. The value for this parameter is case-sensitive. The file name of each PST file in the mapping file for an import job must be unique. <br/> <br/>**Important:** The case for the PST file name in the CSV file must be the same as the PST file that was uploaded to the Azure Storage location in Step 2. For example, if you use  `annb.pst` in the  `Name` parameter in the CSV file, but the name of the actual PST file is `AnnB.pst`, the import for that PST file will fail. Be sure that the name of the PST in the CSV file uses the same case as the actual PST file.  <br/> | `annb.pst` <br/> |
    | `Mailbox` <br/> |Specifies the email address of the mailbox that the PST file will be imported to. You can't specify a public folder because the PST Import Service doesn't support importing PST files to public folders.  <br/> To import a PST file to an inactive mailbox, you have to specify the mailbox GUID for this parameter. To obtain this GUID, run the following PowerShell command in Exchange Online:  `Get-Mailbox <identity of inactive mailbox> -InactiveMailboxOnly | FL Guid` <br/> <br/>**Note:** Sometimes you might have multiple mailboxes with the same email address, where one mailbox is an active mailbox and the other mailbox is in a soft-deleted (or inactive) state. In these situations, you have to specify the mailbox GUID to uniquely identify the mailbox to import the PST file to. To obtain this GUID for active mailboxes, run the following PowerShell command:  `Get-Mailbox <identity of active mailbox> | FL Guid`. To obtain the GUID for soft-deleted (or inactive) mailboxes, run this command  `Get-Mailbox <identity of soft-deleted or inactive mailbox> -SoftDeletedMailbox | FL Guid`.  <br/> | `annb@contoso.onmicrosoft.com` <br/> Or  <br/>  `2d7a87fe-d6a2-40cc-8aff-1ebea80d4ae7` <br/> |
    | `IsArchive` <br/> | Specifies whether to import the PST file to the user's archive mailbox. There are two options:  <br/><br/>**FALSE:** Imports the PST file to the user's primary mailbox.  <br/> **TRUE:** Imports the PST file to the user's archive mailbox. This assumes that the [user's archive mailbox is enabled](enable-archive-mailboxes.md). <br/><br/>If you set this parameter to  `TRUE` and the user's archive mailbox isn't enabled, the import for that user will fail. If an import fails for one user (because their archive isn't enabled and this property is set to  `TRUE`), the other users in the import job won't be affected.  <br/>  If you leave this parameter blank, the PST file is imported to the user's primary mailbox.  <br/> <br/>**Note:** To import a PST file to a cloud-based archive mailbox for a user whose primary mailbox is on-premises, just specify  `TRUE` for this parameter and specify the email address for the user's on-premises mailbox for the  `Mailbox` parameter.  <br/> | `FALSE` <br/> Or  <br/>  `TRUE` <br/> |
    | `TargetRootFolder` <br/> | Specifies the mailbox folder that the PST file is imported to.  <br/> <br/> If you leave this parameter blank, the PST file will be imported to a new folder named **Imported** at the root level of the mailbox (the same level as the Inbox folder and the other default mailbox folders).  <br/> <br/> If you specify  `/`, the folders and items in the PST file are imported to the top of the folder structure in the target mailbox or archive. If a folder exists in the target mailbox (for example, default folders such as Inbox, Sent Items, and Deleted Items), the items in that folder in the PST are merged into the existing folder in the target mailbox. For example, if the PST file contains an Inbox folder, items in that folder are imported to the Inbox folder in the target mailbox. New folders are created if they don't exist in the folder structure for the target mailbox.  <br/><br/>  If you specify  `/<foldername>`, items and folders in the PST file are imported to a folder named  *\<foldername\>*  . For example, if you use  `/ImportedPst`, items would be imported to a folder named **ImportedPst**. This folder will be located in the user's mailbox at the same level as the Inbox folder.  <br/><br/> **Tip:** Consider running a few test batches to experiment with this parameter so you can determine the best folder location to import PSTs files to.  <br/> |(leave blank)  <br/> Or  <br/>  `/` <br/> Or  <br/>  `/ImportedPst` <br/> |
    | `ContentCodePage` <br/> |This optional parameter specifies a numeric value for the code page to use for importing PST files in the ANSI file format. This parameter is used for importing PST files from Chinese, Japanese, and Korean (CJK) organizations because these languages typically use a double byte character set (DBCS) for character encoding. If this parameter isn't used to import PST files for languages that use DBCS for mailbox folder names, the folder names are often garbled after they're imported.  <br/><br/> For a list of supported values to use for this parameter, see [Code Page Identifiers](/windows/win32/intl/code-page-identifiers).  <br/> <br/>**Note:** As previously stated, this is an optional parameter and you don't have to include it in the CSV file. Or you can include it and leave the value blank for one or more rows.  <br/> |(leave blank)  <br/> Or  <br/>  `932` (which is the code page identifier for ANSI/OEM Japanese)  <br/> |
    | `SPFileContainer` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |
    | `SPManifestContainer` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |
    | `SPSiteUrl` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |

## Step 5: Create a PST Import job

The next step is to create the PST Import job in the Import service in Microsoft 365. As previously explained, you submit the PST Import mapping file that you created in Step 4. After you create the job, Microsoft 365 analyzes the data in the PST files and then gives you an opportunity to filter the data that actually gets imported to the mailboxes specified in the PST import mapping file (see [Step 6](#step-6-filter-data-and-start-the-pst-import-job)).
  
1. Go to <https://compliance.microsoft.com> and sign in using the credentials for an administrator account in your organization.

2. In the left pane of the Microsoft 365 compliance center, click **Information governance > Import**.

3. On the **Import** tab, click ![Add Icon](../media/ITPro-EAC-AddIcon.gif) **New import job**.

   > [!NOTE]
   > You have to be assigned the appropriate permissions to access the **Import** page in the Microsoft 365 compliance center to create an import job. See the **Before you begin** section for more information. 

4. Type a name for the PST import job, and then click **Next**. Use lowercase letters, numbers, hyphens, and underscores. You can't use uppercase letters or include spaces in the name.

5. On the **Do you want to upload or ship data?** page, click **Upload your data** and then click **Next**.
  
6. In step 4 on the **Import data** page, click the **I'm done uploading my files** and **I have access to the mapping file** check boxes, and then click **Next**.

    ![Click the two check boxes in step 4](../media/9f2427e8-3af2-4e27-95e6-a9f08430d3d8.png)
  
7. On the **Select the mapping file** page, click **Select mapping file** to submit the CSV mapping file that you created in Step 4.

    ![Click Select mapping file to submit the CSV file you created for the import job](../media/d30b1d73-80bb-491e-a642-a21673d06889.png)
  
8. After the name of the CSV file appears under **Mapping file name**, click **Validate** to check your CSV file for errors.

    ![Click Validate to check the CSV file for errors](../media/4680999d-5538-4059-b878-2736a5445037.png)
  
    The CSV file has to be successfully validated to create a PST Import job. The file name is changed to green after it's successfully validated. If the validation fails, click the **View log** link. A validation error report is opened, with an error message for each row in the file that failed.

   > [!NOTE]
   > As previously explained, a mapping file can have a maximum of 500 rows. Validation will fail if the mapping file contains more than 500 rows. To import more than 500 PST files, you'll have to create multiple mapping files and multiple import jobs.

9. After the mapping file is successfully validated, read the terms and conditions document, and then click the checkbox.

10. Click **Save** to submit the job, and then click **Close** after the job is successfully created.

    A status flyout page is displayed, with a status of **Analysis in progress** and the new import job is displayed in the list on the **Import PST files** page.

11. Click **Refresh** ![Refresh icon](../media/O365-MDM-Policy-RefreshIcon.gif) to update the status information that's displayed in the **Status** column. When the analysis is complete and the data is ready to be imported, the status is changed to **Analysis completed**.

    You can click the import job to display the status flyout page, which contains more detailed information about the import job such as the status of each PST file listed in the mapping file.

## Step 6: Filter data and start the PST Import job

After you create the import job in Step 5, Microsoft 365 analyzes the data in the PST files (in a safe and secure manner) by identifying the age of the items and the different message types included in the PST files. When the analysis is completed and the data is ready to import, you have the option to import all the data contained in the PST files or you can trim the data that's imported by setting filters that control what data gets imported.
  
1. On the **Import** tab in the Microsoft 365 compliance center, select the import jobs that you created in Step 5 and then click **Import to Office 365**.

    ![Click Ready to import to Microsoft 365 next to the import job you created](../media/5760aac3-300b-4e31-b894-253c42a4b82b.png)
  
   The **Filter your data** page is displayed. It contains the data insights resulting from the analysis performed on the PST files by Office 365, including information about the age of the data. At this point, you have the option to filter the data that will be imported or import all the data as is. 

    ![You can trim the data in the PST files or import all of it](../media/287fc030-99e9-417b-ace7-f64617ea5d4e.png)
  
2. Do one of the following:

   1. To trim the data that you import, click **Yes, I want to filter it before importing**.

      For detailed step-by-step instructions about filtering the data in the PST files and then starting the import job, see [Filter data when importing PST files to Office 365](filter-data-when-importing-pst-files.md).

      Or

   2. To import all data in the PST files, click **No, I want to import everything,** and click **Next**.

3. If you chose to import all the data, click **Import data** to start the import job. 

   The status of the import job is display on the **Import PST files** page. Click ![Refresh icon](../media/O365-MDM-Policy-RefreshIcon.gif) **Refresh** to update the status information that's displayed in the **Status** column. Click the import job to display the status flyout page, which displays status information about each PST file being imported.

## More information

- Why import PST files to Microsoft 365?

  - It's a good way to import your organization's archival messaging data to Microsoft 365.

  - The data is available to the user from all devices because it's stored in the cloud.

  - It helps address compliance needs of your organization by letting you apply Microsoft 365 compliance features to the data from the PST files that you imported. This includes:

  - Enabling [archive mailboxes](enable-archive-mailboxes.md) and [auto-expanding archiving](enable-unlimited-archiving.md) to give users additional mailbox storage space to store the data that you imported.

  - Placing mailboxes on [Litigation Hold](./create-a-litigation-hold.md) to retain the data that you imported.

  - Using Microsoft [eDiscovery tools](search-for-content.md) to search the data that you imported.

  - Using [Microsoft 365 retention policies](retention.md) to control how long the data that you imported will be retained, and what action to take after the retention period expires.

  - Searching the [audit log](search-the-audit-log-in-security-and-compliance.md) for mailbox-related events that affect the data that you imported.

  - Importing data to [inactive mailboxes](create-and-manage-inactive-mailboxes.md) to archive data for compliance purposes. 

  - Using [data loss prevention policies](dlp-learn-about-dlp.md) to prevent sensitive data from leaking outside your organization.
  
- Here's an example of the Shared Access Signature (SAS) URL that's obtained in Step 1. This example also contains the syntax for the command that you run in the AzCopy.exe tool to upload PST files. Be sure to take precautions to protect the SAS URL just like you would protect passwords or other security-related information.

    ```console
    SAS URL: https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D

    AzCopy.exe /Source:<Location of PST files> /Dest:<SAS URL> /V:<Log file location> /Y

    EXAMPLES

    This example uploads PST files to the root of the Azure storage location:

    AzCopy.exe /Source:"\\FILESERVER1\PSTs" /Dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D" /V:"c:\Users\Admin\Desktop\AzCopy1.log" /Y
    
    This example uploads PST files to a subfolder named PSTFiles  in the Azure storage location:

    AzCopy.exe /Source:"\\FILESERVER1\PSTs" /Dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata/PSTFiles?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D" /V:"c:\Users\Admin\Desktop\AzCopy1.log" /Y
    ```

- As previously explained, the Office 365 Import service turns on the retention hold setting (for an indefinite duration) after PST files are imported to a mailbox. This means the  *RetentionHoldEnabled*  property is set to  **True** so that the retention policy assigned to the mailbox won't be processed. This gives the mailbox owner time to manage the newly imported messages by preventing a deletion or archive policy from deleting or archiving older messages. Here are some steps you can take to manage this retention hold:

   - After a certain time, you can turn off the retention hold by running the **Set-Mailbox -RetentionHoldEnabled $false** command. For instructions, see [Place a mailbox on retention hold](/exchange/security-and-compliance/messaging-records-management/mailbox-retention-hold).

   - You can configure the retention hold so that it's turned off on some date in the future. You do this by running the **Set-Mailbox -EndDateForRetentionHold *date*** command. For example, assuming that today's date is June 1, 2016 and you want the retention hold turned off in 30 days, you would run the following command:  **Set-Mailbox -EndDateForRetentionHold 7/1/2016**. In this scenario, you would leave the  **RetentionHoldEnabled**  property set to  *True*. For more information, see [Set-Mailbox](/powershell/module/exchange/set-mailbox).

   - You can change the settings for the retention policy that's assigned to the mailbox so that older items that were imported won't be immediately deleted or moved to the user's archive mailbox. For example, you could lengthen the retention age for a deletion or archive policy that's assigned to the mailbox. In this scenario, you would turn off the retention hold on the mailbox after you changed the settings of the retention policy. For more information, see [Set up an archive and deletion policy for mailboxes in your organization](set-up-an-archive-and-deletion-policy-for-mailboxes.md).

### How the import process works
  
You can use the network upload option and the Office 365 Import service to bulk-import PST files to user mailboxes. Network upload means that you upload the PST files a temporary storage area in the Microsoft cloud. Then the Office 365 Import service copies the PST files from the storage area to the target user mailboxes.
  
Here's an illustration and description of the network upload process to import PST files to mailboxes in Office 365.
  
![Workflow of the network upload process to import PST files to Office 365](../media/9e05a19e-1e7a-4f1f-82df-9118f51588c4.png)
  
1. **Download the PST import tool and key to private Azure Storage location:** The first step is to download the AzCopy command-line tool and an access key used to upload the PST files to an Azure Storage location in the Microsoft cloud. You obtain these from the **Import** page in the Microsoft 365 compliance center. The key (called a secure access signature (SAS) key, provides you with the necessary permissions to upload PST files to a private and secure Azure Storage location. This access key is unique to your organization and helps prevent unauthorized access to your PST files after they're uploaded to the Microsoft cloud. Importing PST files doesn't require your organization to have a separate Azure subscription. 

2. **Upload the PST files to the Azure Storage location:** The next step is to use the AzCopy.exe tool (downloaded in step 1) to upload and store your PST files in an Azure Storage location that resides in the same regional Microsoft datacenter where your organization is located. To upload them, the PST files that you want to import have to be located in a file share or file server in your organization.

    There's an optional step that you can perform to view the list of PST files after they're uploaded to the Azure Storage location.

3. **Create a PST import mapping file:** After the PST files have been uploaded to the Azure Storage location, the next step is to create a comma-separated value (CSV) file that specifies which user mailboxes the PST files will be imported to, note that a PST file can be imported to a user's primary mailbox or their archive mailbox. The Office 365 Import service uses the information in the CSV file to import the PST files.

4. **Create a PST import job:** The next step is to create a PST import job on the **Import PST files** page in the Microsoft 365 compliance center and submit the PST import mapping file created in the previous step. After you create the import job, Microsoft 365 analyzes the data in the PST files and then gives you an opportunity to set filters that control what data actually gets imported to the mailboxes specified in the PST import mapping file. 

5. **Filter the PST data that will be imported to mailboxes:** After the import job is created and started, Microsoft 365 analyzes the data in the PST files (safely and securely) by identifying the age of the items and the different message types included in the PST files. When the analysis is completed and the data is ready to import, you have the option to import all the data contained in the PST files or you can trim the data that's imported by setting filters that control what data gets imported.

6. **Start the PST import job:** After the import job is started, Microsoft 365 uses the information in the PST import mapping file to import the PSTs files from the Azure Storage location to user mailboxes. Status information about the import job (including information about each PST file being imported) is displayed on the **Import PST files** page in the Microsoft 365 compliance center. When the import job is finished, the status for the job is set to **Complete**.
