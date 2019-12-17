---
title: "Use network upload to import RMS-encrypted PST files to Office 365"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: 84a595b8-cd77-4f66-ac52-57a33ddd4773
description: "Learn how to use network upload to import RMS-encrypted PST files to user mailboxes in Office 365."
---

# Use network upload to import RMS-encrypted PST files to Office 365

**This article is for administrators. Are you trying to import PST files to your own mailbox? See [Import email, contacts, and calendar from an Outlook .pst file](https://go.microsoft.com/fwlink/p/?LinkID=785075)**
   
Use the network upload option and the Office 365 Import service to import PST files to user mailboxes. Network upload means that you upload the PST files a temporary storage area in the Microsoft cloud. Then the Office 365 Import service copies the PST files from the storage area to the target user mailboxes. A new feature of the Import service lets you encrypt your PST files before they are uploaded and stored on the Microsoft cloud. These files will be un-encrypted when they're imported to user mailboxes. 
  
Here are the steps required to encrypt and import PST files to Office 365 mailboxes:
  
[Step 1: Set up Azure Rights Management for PST Import](#step-1-set-up-azure-rights-management-for-pst-import)

[Step 2: Generate an encryption key for PST Import](#step-2-generate-an-encryption-key-for-pst-import)

[Step 3: Obtain RMS tenant ID and licensing URL](#step-3-obtain-rms-tenant-id-and-licensing-url)

[Step 4: Download the PST Import tools and copy the SAS URL](#step-4-download-the-pst-import-tools-and-copy-the-sas-url)

[Step 5: Encrypt and upload your PST files to Office 365](#step-5-encrypt-and-upload-your-pst-files-to-office-365)

[(Optional) Step 6: View a list of the PST files uploaded to Office 365](#optional-step-6-view-a-list-of-the-pst-files-uploaded-to-office-365)

[Step 7: Create the PST Import mapping file](#step-7-create-the-pst-import-mapping-file)

[Step 8: Create a PST Import job in Office 365](#step-8-create-a-pst-import-job-in-office-365)
  
> [!IMPORTANT]
> You have to perform Step 1 through Step 4 only once to set up and configure your organization to encrypt and import PST files to Office 365 mailboxes. After you perform these steps, follow Step 5 through Step 8 each time you want to encrypt, upload, and import a batch of PST files. 
  
For more information about importing data to Office 365, see [Overview of importing your organization PST files to Office 365](importing-pst-files-to-office-365.md).
  
## Before you begin

- You have to be assigned the Mailbox Import Export role in Exchange Online to import PST files to Office 365 mailboxes. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group. Or you can create a new role group, assign the Mailbox Import Export role, and then add yourself as a member. For more information, see the "Add a role to a role group" or the "Create a role group" sections in [Manage role groups](https://go.microsoft.com/fwlink/p/?LinkId=730688).
    
    Additionally, to create import jobs in the Security & Compliance Center, one of the following must be true:
    
  - You have to be assigned the Mail Recipients role in Exchange Online. By default, this role is assigned to the Organization Management and Recipient Management roles groups.
    
    Or
    
  - You have to be a global administrator in your Office 365 organization.
    
  > [!TIP]
  > Consider creating a new role group in Exchange Online that's specifically intended for importing PST files to Office 365. For the minimum level of privileges required to import PST files, assign the Mailbox Import Export and Mail Recipients roles to the new role group, and then add members. 

- Large PST files may impact the performance of the PST import process. So we recommend that each PST file you upload to the Azure Storage location in Step 2 should be no larger than 20 GB.
  
- You need to store the PST files that you want to import to Office 365 on a file server or shared folder in your organization. In Step 5, you'll run the Office 365 ImportTool, which will encrypt and upload the PST files that are stored on this file server or shared folder to Office 365.
    
- This procedure involves copying and saving a copy of an encryption key, a storage key, and a number of identification keys and URLs. This information will be used in Step 5 to encrypt and upload your PST files. Be sure to take precautions to protect these just like you would protect passwords or other security-related information. For example, you might save them to a password-protected Microsoft Word document or save them to an encrypted USB drive. See the [More information](#more-information) section for an example of these keys, IDs, and URLs. 
    
- You can import PST files to an inactive mailbox in Office 365. You do this by specifying the GUID of the inactive mailbox in the  `Mailbox` parameter in the PST Import mapping file. See [Step 7](#step-7-create-the-pst-import-mapping-file) for more information. 
    
- In an Exchange hybrid deployment, you can import PST files to a cloud-based archive mailbox for a user whose primary mailbox is on-premises. You do this by doing the following in the PST Import mapping file:
    
  - Specify the email address for the user's on-premises mailbox in the  `Mailbox` parameter. 
    
  - Specify the **TRUE** value in the  `IsArchive` parameter. 
    
    See [Step 7](#step-7-create-the-pst-import-mapping-file) for more information. 
    
- After PST files are imported to an Office 365 mailbox, the retention hold setting for the mailbox is turned on for an indefinite duration. This means that the retention policy assigned to the mailbox won't be processed until you turn off the retention hold or set a date to turn off the hold. Why do we do this? If messages imported to a mailbox are old, they might be permanently deleted (purged) because their retention period has expired based on the retention settings configured for the mailbox. Placing the mailbox on retention hold will give the mailbox owner time to manage these newly imported messages or give you time to change the retention settings for the mailbox. See the [More information](#more-information) section for suggestions about managing the retention hold. 
    
- If you don't need to encrypt your PST files before you upload them to Office 365, see [Use network upload to import PST files to Office 365](use-network-upload-to-import-pst-files.md).
    
- For frequently asked questions about using network upload to import PST files to Office 365, see [FAQ about importing PST files to Office 365](faqimporting-pst-files-to-office-365.md).
  
## Step 1: Set up Azure Rights Management for PST Import

PST Import uses the encryption functionality provided by the Azure Rights Management (Azure RMS) service in Office 365. This lets you encrypt PST files before uploading them to Office 365. 
  
Configuring Azure RMS for PST Import consists of three steps:
  
- [Activating Azure RMS](#activating-azure-rms)
    
- [Configuring RMS in Exchange Online](#configuring-rms-in-exchange-online)
    
- [Installing the Active Directory RMS Client](#installing-the-active-directory-rms-client)
    
### Activating Azure RMS

Azure RMS is disabled by default, but you or another administrator in your organization might have activated it. Follow instructions on [Activating Azure Rights Management](https://docs.microsoft.com/azure/information-protection/deploy-use/activate-service) to install and activate Azure DRM.
  
### Configuring RMS in Exchange Online

After you've activated the Rights Management service, the next step is to set up Information Rights Management (IRM) in Exchange Online to use Azure RMS. For more information, see [Configure IRM to use Azure Rights Management](https://go.microsoft.com/fwlink/p/?LinkId=394816).
  
1. [Connect to Exchange Online using Remote PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=396554 ).
    
2. Run the following command to set the RMS key sharing URL.
    
    ```powershell
    Set-IRMConfiguration -RMSOnlineKeySharingLocation <RMS key sharing location>
    ```

    Use the following table to determine the correct RMS key sharing location for the location of your organization.
    
    |**Location**|**RMS key sharing location**|
    |:-----|:-----|
    |North America  <br/> | `https://sp-rms.na.aadrm.com/TenantManagement/ServicePartner.svc` <br/> |
    |European Union  <br/> | `https://sp-rms.eu.aadrm.com/TenantManagement/ServicePartner.svc` <br/> |
    |Asia  <br/> | `https://sp-rms.ap.aadrm.com/TenantManagement/ServicePartner.svc` <br/> |
    |South America  <br/> | `https://sp-rms.sa.aadrm.com/TenantManagement/ServicePartner.svc` <br/> |
    |Office 365 for Government (Government Community Cloud)  <br/> | `https://sp-rms.govus.aadrm.com/TenantManagement/ServicePartner.svc`<sup>1</sup> <br/> |
   
    > [!NOTE]
    > <sup>1</sup> Only customers who have purchased Office 365 for Government SKUs (Government Community Cloud) should use this RMS key sharing location. 
  
    For example, this command configures the RMS Online key sharing location in Exchange Online for a customer located in North America.
    
    ```powershell
    Set-IRMConfiguration -RMSOnlineKeySharingLocation "https://sp-rms.na.aadrm.com/TenantManagement/ServicePartner.svc"
    ```

3. Run the following command to import a Trusted Publishing Domain (TPD) from RMS Online to your Office 365 organization. 
    
    ```powershell
  	Import-RMSTrustedPublishingDomain -RMSOnline -Name "RMS Online"
    ```

    A TPD contains the settings needed to use RMS features in your organization, including encrypting PST files. 
    
4. Run the following command to enable IRM for your Office 365 organization.
    
    ```powershell
    Set-IRMConfiguration -InternalLicensingEnabled $true
    ```

### Installing the Active Directory RMS Client

The last step in this section is to download the Rights Management Services (RMS) Client 2.1. This software helps protect access to Azure RMS and protects information flowing through applications that use Azure RMS. Install the RMS client on the same computer that you'll use to encrypt and upload PST files in Step 5. 
  
1. Download [Rights Management Service Client 2.1](https://www.microsoft.com/download/details.aspx?id=38396).
    
2. Run the Active Directory Rights Management Service Client 2.1 wizard to install the client.

## Step 2: Generate an encryption key for PST Import

After you've set up Azure RMS, the next step is to generate an encryption key (called a symmetric key) that will be used to encrypt the PST files that you upload to Office 365. You'll do this by adding the PST Import service as a service principal in Azure Active Directory. Adding this application as a service principal will allow the PST Import service to authenticate directly with Azure Active Directory when you upload encrypted the PST files to the Azure Storage location in Step 5.
  
1. Start the Azure Active Directory Module for Windows PowerShell.
    
2. Run the following command to connect to the Microsoft Online service.
    
    ```powershell
    Connect-MsolService
    ```

3. Enter the credentials for an administrator account in your Office 365 organization, and then click **OK**.
    
4. Run the following command to generate an encryption key (call a symmetric key). You'll do this by creating a new PST Encryption Principal.
    
    ```powershell
    New-MsolServicePrincipal -DisplayName PstEncryptionPrincipal
    ```

    The system displays the symmetric key and the properties for the new PST Encryption Principal.
    
    ![Copy and save the symmetric key that's displayed](media/0003fdea-dace-41d2-b49d-f5c98c6230ca.png)
  
5. Copy the symmetric key to a text or Word file. As previously stated, be sure to take precautions to protect this file. Because this is the only time that the symmetric key is displayed, you might also consider taking a screenshot of this window and saving it to the same file. 
    
    > [!IMPORTANT]
    > After you create the PST Encryption Principal, you won't be able to retrieve the symmetric key by using the **Get-MsolServicePrincipal** cmdlet. That's why it's important to save the key. 
  
Keep the Azure Active Directory Module for Windows PowerShell open and connected to the Microsoft Online service. You'll run a command in this window in the next step.

## Step 3: Obtain RMS tenant ID and licensing URL

The next step is to obtain the tenant ID and licensing location URL for the Azure RMS service for your organization. Copy and save this information to the same file that contains the symmetric key from Step 2. The ID and URL will be used in Step 5 to encrypt your PST files.
  
1. In the Azure Active Directory Module for Windows PowerShell (which is connected to the Microsoft Online service), run the following command to connect to the Azure RMS service in your Office 365 organization.
    
    ```powershell
    Connect-AadrmService 
    ```

2. Enter the credentials for an administrator account in your Office 365 organization and then click **OK**.
    
3. Run the following command to display the tenant ID for the Azure RMS service in your Office 365 organization.
    
    ```powershell
    Get-AadrmConfiguration | FL BPOSId
    ```

    Copy and save the value for the  `BPOSId` property. 
    
4. Run the following command to display the licensing location for your Azure RMS service.
    
    ```powershell
    Get-AadrmConfiguration | FL LicensingIntranetDistributionPointUrl
    ```

    Copy and save the value for the  `LicensingIntranetDistributionPointUrl` property. 

## Step 4: Download the PST Import tools and copy the SAS URL

Now that you've configured Azure RMS and obtained the IDs necessary to encrypt PST files, the next step is to download and install the tools that you will run in Step 5 to encrypt and upload PST files to Office 365. These tools are the Azure AzCopy tool and the Office 365 Data Encryption tool. You'll also copy the SAS URL for your organization. This URL is a combination of the network URL for the Azure Storage location in the Microsoft cloud for your organization and a Shared Access Signature (SAS) key. This key provides you with the necessary permissions to upload PST files to your Azure Storage location. Save it to the same file that you've copied the other information to in Step 2 and Step 3. As previously stated, take precautions to protect the SAS URL. 
  
> [!IMPORTANT]
> You have to use Azure AzCopy version 5.0 to successfully upload PST files to the Azure storage location. Newer versions of the AzCopy tool aren't supported for importing PST files to Office 365. Be sure to download the AzCopy tool from the **Upload files over the network** page by following the procedures in this step. 
  
1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in to Office 365 using the credentials for an administrator account in your Office 365 organization.
    
3. In the left pane, click **Information governance** \> **Import** \> **Import PST files**.
    
4. On the **Import PST files** page, click **Go to the Import service**.
    
5. On the **Import data to Office 365** page, click **New job** ![Add Icon](media/ITPro-EAC-AddIcon.gif), and then click **Upload email messages (PST files)**.
    
6. On the **Upload files over the network** page, in step 2, click **Show network upload SAS URL**.
    
7. After the URL is displayed, copy it and save it in the file where you saved the other keys. Be sure to copy the entire URL. 
    
8. In step 3, click **Download the Azure AzCopy tool** to download and install the Azure AzCopy tool. 
    
9. In the pop-up window, click **Run** to install the Azure AzCopy tool. 
    
    > [!IMPORTANT]
    > Be sure to install the Azure AzCopy tool in the default location, which is `%ProgramFiles(x86)%\Microsoft SDKs\Azure\AzCopy` on a computer running 64-bit Windows. That's because when you run the O365ImportTool.exe in Step 5, it looks for the AzCopy tool in this location. 
  
10. After you've installed the Azure AzCopy tool, click **Download the Office 365 Data Encryption and Import tool**.
    
11. In the pop-up window, click **Save** \> **Save as** to save the O365ImportTool.zip file to a folder on your local computer. 
    
12. Extract the O365ImportTool.zip file.
    
13. Click **Cancel** to close the **Upload files over the network** page. 
 
## Step 5: Encrypt and upload your PST files to Office 365

After you have completed Step 1 through Step 4, you're ready to use the O365ImportTool.exe tool to encrypt and upload PST files to Office 365. This tool encrypts your PST files and then uploads and stores them in an Azure Storage location in the Microsoft cloud. To complete this step, the PST files have to be located in a file share or file server in your organization. This is known as the source directory in the following procedure. Each time you run the O365ImportTool.exe tool, you'll can specify a different source directory. 

> [!NOTE]
> As previously stated, each PST file that you upload to the Azure Storage location should be no larger than 20 GB. PST files larger than 20 GB may impact the performance of the PST import process that you start in Step 8.
  
1. Open a Command Prompt on your local computer.
    
2. Go to the directory where you installed the O365ImportTool.exe tool in Step 4.
    
3. Run the following command to encrypt and upload PST files to Office 365.
    
    ```powershell
    O365ImportTool.exe /srcdir:<Location of PST files> /protect-rmsserver:<RMS licensing location> /protect-tenantid:<BPOSId> /protect-key:<Symmetric key> /transfer:upload /upload-dest:<Network upload URL> /upload-destSAS:<SAS key>
    ```

    The following table describes the parameters and their required values. The information you obtained in the previous steps is used in the values for these parameters.
    
    |**Parameter**|**Description**|**Example**|
    |:-----|:-----|:-----|
    | `/srcdir:` <br/> |Specifies the source directory in your organization that contains the PST files that will be uploaded to Office 365.  <br/> | `/srcdir:\\FILESERVER01\PSTs` <br/> |
    | `/protect-rmsserver:` <br/> |Specifies the licensing location for your Azure RMS service. Use the value of the  `LicensingIntranetDistributionPointUrl` property that you obtained in Step 3. Be sure to surround the value of this parameter with double-quotation marks (" ")  <br/> | `/protect-rmsserver:"https://afcbd8ec-cb2b-4a1a-8246-0b4bc22d1978.rms.na.aadrm.com/_wmcs/licensing"` <br/> |
    | `/protect-tenantid:` <br/> |Specifies the identity of your Azure RMS organization. Use the value of the  `BPOSId` property that you obtained in Step 3.  <br/> | `/protect-tenantid:42745b33-2a5c-4726-8a2a-ca43caa0f74b` <br/> |
    | `/protect-key:` <br/> |Specifies the symmetric key that you obtained in Step 2. Be sure to surround the value of this parameter with double-quotation marks (" ").  <br/> | `/protect-key:"l+R+Umc5RGmSBh1oW+DoyMxm/h5h2JJXFcNOFiNp867="` <br/> |
    | `/transfer:` <br/> |Specifies whether you upload PST files over the network or ship them on a hard drive. The value  `upload` indicates that you are uploading the files over the network. The value  `drive` indicates that you are shipping the PSTs on a hard drive.  <br/> | `/transfer:upload` <br/> |
    | `/upload-dest:` <br/> |Specifies the destination in Office 365 where your PST files will be uploaded to; this is the Azure Storage location for your organization. The value for this parameter consists of the network upload URL from the SAS URL that you copied in Step 4. Be sure to surround the value of this parameter with double-quotation marks (" ").  <br/><br/> **Tip:** (Optional) You can specify a subfolder in the Azure Storage location to upload the encrypted PST files to. You do this by adding a subfolder location (after "ingestiondata") in the network upload URL. The first example doesn't specify a subfolder; that means the PSTs will be uploaded to the root (named  *ingestiondata*) of the Azure Storage location. The second example uploads the PST files to a subfolder (named  *EncryptedPSTs*) in the Azure Storage location.           | `/upload-dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata"` <br/> Or  <br/>  `/upload-dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata/EncryptedPSTs"` <br/> |
    | `/upload-destSAS:` <br/> |Specifies the SAS key for your organization. The value for this parameter consists of the SAS key from the SAS URL that you copied in Step 4. The first character in the SAS key is a question mark ("?"). Be sure to surround the value of this parameter with double-quotation marks (" ").<br/><br/>**Note:** If you use the SAS URL in a script or batch file, you need to watch out for certain characters that need to be escaped. For example, you have to change `%` to `%%` and change `&` to `^&`. | `/upload-destSAS:"?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"` <br/> |
    | `/recurse` <br/> |This optional switch specifies the recursive mode so that the O365ImportTool.exe tool will copy PST files that are located in subfolders in the source directory that is specified by the  `/srcdir:` parameter.  <br/><br/> **Note:** If you include this switch, PST files in subfolders will have a different file pathname in the Azure Storage location after they're uploaded. You'll have to specify the exact file pathname in the CSV file that you create in Step 7.           | `/recurse` <br/> |
   
    Here's an example of the syntax for the O365ImportTool.exe tool using actual values for each parameter:
    
    ```powershell
    O365ImportTool.exe /srcdir:\\FILESERVER01\PSTs /protect-rmsserver:"https://afcbd8ec-cb2b-4a1a-8246-0b4bc22d1978.rms.na.aadrm.com/_wmcs/licensing" /protect-tenantid:42745b33-2a5c-4726-8a2a-ca43caa0f74b  /protect-key:"l+R+Umc5RGmSBh1oW+DoyMxm/h5h2JJXFcNOFiNp867=" /transfer:upload /upload-dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata" /upload-destSAS:"?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"
    ```

    After you run the command, status messages are displayed that show the progress of encrypting and uploading the PST files. A final status message shows the total number of files that were successfully encrypted and uploaded. 
    
    > [!TIP]
    > After you successfully run the O365ImportTool.exe command and verify that all the parameters are correct, save a copy of the command line syntax to the same (secured) file where you copied the information you obtained in the previous steps. Then you can copy and paste this command in a Command Prompt each time that you want to run the O365ImportTool.exe tool to encrypt and upload PST files to Office 365. The only values you might have to change are the ones for the  `/srcdir:` and  `/upload-dest:` parameters. 
  
## (Optional) Step 6: View a list of the PST files uploaded to Office 365

As an optional step, you can install and use the Microsoft Azure Storage Explorer (which is a free, open source tool) to view the list of the PST files that you've uploaded to the Azure blob. There are three good reasons to do this:
  
- Verify that PST files from the shared folder or file server in your organization were successfully uploaded to the Azure blob.

- Verify that the PST files are encrypted. Encrypted PST files have a  `.pfile` extension appended to the PST filename; for example,  `pilarp.pst.pfile`.
    
- Verify the filename (and the subfolder pathname if you included one) for each PST file uploaded to the Azure blob. This is helpful when you're creating the PST mapping file in the next step because you have to specify both the folder pathname and filename for each PST file. Verifying these names can help reduce potential errors in your PST mapping file.
    
The Microsoft Azure Storage Explorer is in Preview. 
  
 > [!IMPORTANT]
>  You can't use the Azure Storage Explorer to upload or modify PST files. The only supported method for importing PST files to Office 365 is to use AzCopy. Also, you can't delete PST files that you've uploaded to the Azure blob. If you try to delete a PST file, you'll receive an error about not having the required permissions. Note that all PST files are automatically deleted from your Azure storage area. If there are no import jobs in progress, then all PST files in the **ingestiondata** container are deleted 30 days after the most recent import job was created. 
  
To install the Azure Storage Explorer and connect to your Azure Storage area:
  
1. Download and install the [Microsoft Azure Storage Explorer tool](https://go.microsoft.com/fwlink/p/?LinkId=544842).
    
2. Start the Microsoft Azure Storage Explorer, right-click **Storage Accounts** in the left pane, and then click **Connect to Azure Storage**. 
    
    ![Right-click Storage Accounts and then click Connect to Azure Storage](media/75b80cc3-c336-4f96-ad32-54ac9b96a7af.png)
  
3. In the box under **Connect to Azure Storage**, paste the SAS URL that you obtained in Step 4, and then click **Next**. 
    
    ![Paste the SAS URL  in the box on the Connect to Azure Storage page](media/5d034128-e087-48e1-9ebc-4c9fa262d5b7.png)
  
4. On the **Connection summary** page, you can review the connection information, and then click **Connect**. 
    
5. Under **Storage Accounts**, expand the **(Service SAS)** node, and then expand the **Blob Containers** node. 
    
6. Right-click **ingestiondata**, and then click **Open Blob Container Editor**.
    
    ![Right-click ingestiondata and then click Open Blob Container Editor](media/f50eee30-9202-4efc-904a-2895a0bc388d.png)
  
    The Azure Storage area, with a list of the PST files that you uploaded in Step 5 is displayed.
    
    ![Azure Storage Explorer displays a list of the PST files that you uploaded](media/a448ae43-e744-4153-8304-22b59e93883c.png)
  
7. When you're finished using the Microsoft Azure Storage Explorer, right-click **ingestiondata**, and then click **Detach** to disconnect from your Azure Storage area. Otherwise, you'll receive an error the next time you try to attach. 
    
    ![Right-click ingestion and click Detach to disconnect from your Azure Storage area](media/1e8e5e95-4215-4ce4-a13d-ab5f826a0510.png)
  
## Step 7: Create the PST Import mapping file

After the PST files have been encrypted and uploaded to the Azure Storage location for your Office 365 organization, the next step is to create a comma-separated value (CSV) file that specifies which user mailboxes the PST files will be imported to. You will submit this CSV file in the next step when you create a PST Import job.
  
1. [Download a copy of the PST Import mapping file](https://go.microsoft.com/fwlink/p/?LinkId=544717). 
    
2. Open or save the CSV file to your local computer. The following example shows a completed PST Import mapping file (opened in NotePad). It's much easier to use Microsoft Excel to edit the CSV file.
    
    ```text
    Workload,FilePath,Name,Mailbox,IsArchive,TargetRootFolder,ContentCodePage,SPFileContainer,SPManifestContainer,SPSiteUrl
    Exchange,,annb.pst.pfile,annb@contoso.onmicrosoft.com,FALSE,/,,,,
    Exchange,,annb_archive.pst.pfile,annb@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,,donh.pst.pfile,donh@contoso.onmicrosoft.com,FALSE,/,,,,
    Exchange,,donh_archive.pst.pfile,donh@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,EncryptedPSTs,pilarp.pst.pfile,pilarp@contoso.onmicrosoft.com,FALSE,,,,,
    Exchange,EncryptedPSTs,pilarp_archive.pst.pfile,pilarp@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,EncryptedPSTs,tonyk.pst.pfile,tonyk@contoso.onmicrosoft.com,FALSE,,,,,
    Exchange,EncryptedPSTs,tonyk_archive.pst.pfile,tonyk@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    Exchange,EncryptedPSTs,zrinkam.pst.pfile,zrinkam@contoso.onmicrosoft.com,FALSE,,,,,
    Exchange,EncryptedPSTs,zrinkam_archive.pst.pfile,zrinkam@contoso.onmicrosoft.com,TRUE,/ImportedPst,,,,
    ```

    The first row, or header row, of the CSV file lists the parameters that will be used by the PST Import service to import the PST files to user mailboxes. Each parameter name is separated by a comma. Each row under the header row represents the parameter values for importing a PST file to a specific mailbox. You will need a row for each PST file that you want to import to a user mailbox. Be sure to replace the placeholder data in the mapping file with your actual data.
    
    > [!NOTE]
    > Don't change anything in the header row, including the SharePoint parameters; they will be ignored during the PST Import process. 
  
3. Use the information in the following table to populate the CSV file with the required information.
    
    |**Parameter**|**Description**|**Example**|
    |:-----|:-----|:-----|
    | `Workload` <br/> |Specifies the Office 365 service that data will be imported to. To import PST files to user mailboxes, use  `Exchange`.  <br/> | `Exchange` <br/> |
    | `FilePath` <br/> |Specifies the folder location in the Azure Storage location that you uploaded the PST files to in Step 5.  <br/>  If you didn't include an optional subfolder name in the network URL in the  `/upload-dest:` parameter in Step 5, leave this parameter blank in the CSV file. If you included a subfolder name, specify it in this parameter. The value for this parameter is case-sensitive. Either way,  *don't*  include "ingestiondata" in the value for the  `FilePath` parameter.  <br/> <br/>**Important:** The case for the file path name must be the same case that you used if you included an optional subfolder name in the SAS URL in the  `/upload-dest:` parameter in Step 5. For example, if you used  `EncryptedPSTs` for the subfolder name in Step 5 and then use  `encryptedpsts` in the  `FilePath` parameter in CSV file, the import for the PST file will fail. Be sure to use the same case in both instances.           |(leave blank)  <br/> Or  <br/>  `EncryptedPSTs` <br/> |
    | `Name` <br/> |Specifies the name of the PST file that will be imported to the user mailbox. The value for this parameter is case-sensitive. Because the PST files that are uploaded to the Azure Storage location are encrypted, a  `.pfile` extension is added to the PST filename. You must add the  `.pfile` extension to the name of the PST files in the CSV file.  <br/><br/> **Important:** The case for the PST file name in the CSV file must be the same as the PST file that was uploaded to the Azure Storage location in Step 5. For example, if you use  `annb.pst.pfile` in the  `Name` parameter in the CSV file, but the name of the actual PST file is  `AnnB.pst`, the import for that PST file will fail. Be sure that the name of the PST in the CSV file uses the same case as the actual PST file.           | `annb.pst.pfile` <br/> |
    | `Mailbox` <br/> |Specifies the email address of the mailbox that the PST file will be imported to.  <br/> To import a PST file to an inactive mailbox, you have to specify the mailbox GUID for this parameter. To obtain this GUID, run the following PowerShell command in Exchange Online:  `Get-Mailbox -InactiveMailboxOnly <identity of inactive mailbox> | FL Guid` <br/><br/> **Note:** In some cases, you might have multiple mailboxes with the same email address, where one mailbox is an active mailbox and the other mailbox is in a soft-deleted (or inactive) state. In these situations, you have to specify the mailbox GUID to uniquely identify the mailbox to import the PST file to. To obtain this GUID for active mailboxes, run the following PowerShell command:  `Get-Mailbox - <identity of active mailbox> | FL Guid`. To obtain the GUID for soft-deleted (or inactive) mailboxes, run this command  `Get-Mailbox - <identity of soft-deleted or inactive mailbox> -SoftDeletedMailbox | FL Guid`           | `annb@contoso.onmicrosoft.com` <br/> Or  <br/>  `2d7a87fe-d6a2-40cc-8aff-1ebea80d4ae7` <br/> |
    | `IsArchive` <br/> | Specifies whether or not to import the PST file to the user's archive mailbox. There are two options:  <br/> **FALSE** Imports the PST file to the user's primary mailbox.  <br/> **TRUE** Imports the PST file to the user's archive mailbox.  <br/>  If you leave this parameter blank, the PST file is imported to the user's primary mailbox.  <br/><br/> **Note:** To import a PST file to a cloud-based archive mailbox for a user whose primary mailbox is on-premises, just specify **TRUE** for this parameter and specify the email address for the user's on-premises mailbox for the  `Mailbox` parameter.           | `FALSE` <br/> Or  <br/>  `TRUE` <br/> |
    | `TargetRootFolder` <br/> | Specifies the mailbox folder that the PST file is imported to.  <br/>  If you leave this parameter blank, the PST will be imported to a new folder named **Imported** located at the root level of the mailbox (the same level as the Inbox folder and the other default mailbox folders).  <br/>  If you specify  `/`, items in the PST file will be imported directly in to the user's Inbox folder.  <br/>  If you specify  `/<foldername>`, items in the PST file will be imported to a subfolder named  *\<foldername\>*  . For example, if you used  `/ImportedPst`, items would be imported to a subfolder named **ImportedPst**. This subfolder will be located in the user's Inbox folder.  <br/><br/> **Tip:** Consider running a few test batches to experiment with this parameter so you can determine the best folder location to import PST files to.           |(leave blank)  <br/> Or  <br/>  `/` <br/> Or  <br/>  `/ImportedPst` <br/> |
    | `ContentCodePage` <br/> |This optional parameter specifies a numeric value for the code page to use for importing PST files in the ANSI file format. This parameter is used for importing PST files from Chinese, Japanese, and Korean (CJK) organizations because these languages typically use a double byte character set (DBCS) for character encoding. If this parameter isn't used to import PST files for languages that use DBCS for mailbox folder names, the folder names are often garbled after they're imported. For a list of supported values to use for this parameter, see [Code Page Identifiers](https://go.microsoft.com/fwlink/p/?LinkId=328514).  <br/><br/> **Note:** As previously stated, this is an optional parameter and you don't have to include it in the CSV file. Or you can include it and leave the value blank for one or more rows.           |(leave blank)  <br/> Or  <br/>  `932` (which is the code page identifier for ANSI/OEM Japanese)  <br/> |
    | `SPFileContainer` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |
    | `SPManifestContainer` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |
    | `SPSiteUrl` <br/> |For PST Import, leave this parameter blank.  <br/> |Not applicable  <br/> |
  
## Step 8: Create a PST Import job in Office 365

The last step is to create the PST Import job in the Import service in Office 365. As previously explained, you will submit the PST Import mapping file that you created in Step 7. After you create the new job, the Import service will use the information in the mapping file to unencrypt and import the PST files (that you uploaded to Office 365 in Step 5) to the specified user mailbox. 
  
1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in to Office 365 using the credentials for an administrator account in your Office 365 organization.
    
3. In the left pane, click **Information governance > Import > Import PST files**.
    
4. On the **Import PST files** page, click **Go to the Import service**.
    
5. On the **Import data to Office 365** page, click **New job**![Add Icon](media/ITPro-EAC-AddIcon.gif), and then click **Upload email messages (PST files)**.
    
6. On the **Upload files over the network** page, click the **I'm done uploading my files** and **I have access to the mapping file** check boxes, and then click **Next**. 
    
7. Type a name for the PST Import job, and then click **Next**.
    
8. Click **Add** ![Add Icon](media/ITPro-EAC-AddIcon.gif) to select the PST Mapping file that you created in Step 7. 
    
9. After the name of the CSV file appears in the list, select it and then click **Validate** to check your CSV file for errors. 
    
    > [!NOTE]
    > As previous explained, when the PST files are encrypted, a  `.pfile` extension is appended to the PST filename. You must add the  `.pfile` extension to the name of the PST files in the CSV file. If you don't, the validation of the CSV file will fail. 
  
    The CSV file has to be successfully validated to create a PST Import job. If the validation fails, click the **Invalid** link in the **Status** column. A copy of your PST Import mapping file is opened, with an error message for each row in the file that failed. 
    
10. When the PST mapping file is successfully validated, read the terms and conditions document, and then click the checkbox.
    
11. Click **Finish** to submit the job. 
    
    The job is displayed in the list of PST Import jobs on the **Import data to Office 365** page. 
    
12. Select the job and click **Refresh**![Refresh icon](media/O365-MDM-Policy-RefreshIcon.gif) to update the status information that's displayed in the details pane. 
    
13. In the details pane, click **View details** to get the latest status for the selected job. 
 
## More information

- Why import PST files to Office 365?
    
  - It's a good way to migrate your organization's email to Office 365.
    
  - It helps address compliance needs of your organization by letting you:
    
  - Enable archive mailboxes to give users additional mailbox storage space.
    
  - Place mailboxes on hold to preserve content.
    
  - Use Microsoft eDiscovery tools to search for content in mailboxes.
    
  - Use retention policies to control how long mailbox content is retained.
    
  - Search the Office 365 audit log for mailbox-related events.
    
  - It helps protect against data loss. PST files that are imported to Office 365 mailboxes inherit the high availability features of Exchange Online, as opposed to storing the data on a user's computer.
    
  - The data is available to the user from all devices because it's stored in the cloud.
    
- Here's an example of the keys, IDs, and URLs that are obtained in Steps 2, 3, and 4. This example also contains the syntax for the command that you run in the O365ImportTool.exe tool to encrypt and upload PST files to Office 365. Be sure to take precautions to protect these just like you would protect passwords or other security-related information.
    
  ```text
  Symmetric key: l+R+Umc5RGmSBh1oW+DoyMxm/h5h2JJXFcNOFiNp867=

  BPOSId: 42745b33-2a5c-4726-8a2a-ca43caa0f74b

  LicensingIntranetDistributionPointUrl (RMS licensing location): https://afcbd8ec-cb2b-4a1a-8246-0b4bc22d1978.rms.na.aadrm.com/_wmcs/licensing
  
  SAS URL: https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D
  
  O365ImportTool.exe /srcdir:<Location of PST files> /protect-rmsserver:<RMS licensing location> /protect-tenantid:<BPOSId> /protect-key:<Symmetric key> /transfer:upload /upload-dest:<Network upload URL from the SAS URL> /upload-destSAS:<SAS key from the SAS URL>
  
  EXAMPLES
  
  This example uploads PST files to the root of the Azure storage location:

  O365ImportTool.exe /srcdir:\\FILESERVER01\PSTs /protect-rmsserver:"https://afcbd8ec-cb2b-4a1a-8246-0b4bc22d1978.rms.na.aadrm.com/_wmcs/licensing" /protect-tenantid:42745b33-2a5c-4726-8a2a-ca43caa0f74b /protect-ownerid:45beb445-4d06-47df-8e61-6ca1a88a080e /protect-key:"l+R+Umc5RGmSBh1oW+DoyMxm/h5h2JJXFcNOFiNp867=" /transfer:upload /upload-dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata" /upload-destSAS:"?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"
  
  This example uploads PST files to a subfolder named EncryptedPSTs  in the Azure storage location:
  
  O365ImportTool.exe /srcdir:\\FILESERVER01\PSTs /protect-rmsserver:"https://afcbd8ec-cb2b-4a1a-8246-0b4bc22d1978.rms.na.aadrm.com/_wmcs/licensing" /protect-tenantid:42745b33-2a5c-4726-8a2a-ca43caa0f74b /protect-ownerid:45beb445-4d06-47df-8e61-6ca1a88a080e /protect-key:"l+R+Umc5RGmSBh1oW+DoyMxm/h5h2JJXFcNOFiNp867=" /transfer:upload /upload-dest:"https://3c3e5952a2764023ad14984.blob.core.windows.net/ingestiondata/EncryptedPSTs" /upload-destSAS:"?sv=2012-02-12&amp;se=9999-12-31T23%3A59%3A59Z&amp;sr=c&amp;si=IngestionSasForAzCopy201601121920498117&amp;sig=Vt5S4hVzlzMcBkuH8bH711atBffdrOS72TlV1mNdORg%3D"
  ```

- As previously explained, the Office 365 Import service turns on the retention hold setting (for an indefinite duration) after PST files are imported to a mailbox. This means the  *RentionHoldEnabled*  property is set to  `True` so that the retention policy assigned to the mailbox won't be processed. This gives the mailbox owner time to manage the newly imported messages by preventing a deletion or archive policy from deleting or archiving older messages. Here are some steps you can take to manage this retention hold: 
    
  - After a certain period of time, you can turn off the retention hold by running the  `Set-Mailbox -RetentionHoldEnabled $false` command. For instructions, see [Place a mailbox on retention hold](https://go.microsoft.com/fwlink/p/?LinkId=544749).
    
  - You can configure the retention hold so that it's turned off on some date in the future. You do this by running the  `Set-Mailbox -EndDateForRetentionHold <date>` command. For example, assuming that today's date is June 1, 2016 and you want the retention hold turned off in 30 days, you would run the following command:  `Set-Mailbox -EndDateForRetentionHold 7/1/2016`. In this scenario, you would leave the  *RentionHoldEnabled*  property set to `True`. For more information, see [Set-Mailbox](https://go.microsoft.com/fwlink/p/?LinkId=150317).
    
  - You can change the settings for the retention policy that's assigned to the mailbox so that older items that were imported won't be immediately deleted or moved to the user's archive mailbox. For example, you could lengthen the retention age for a deletion or archive policy that's assigned to the mailbox. In this scenario, you would turn off the retention hold on the mailbox after you changed the settings of the retention policy. For more information, see [Set up an archive and deletion policy for mailboxes in your Office 365 organization](set-up-an-archive-and-deletion-policy-for-mailboxes.md).
