---
title: Use the PST Collection tool to find, copy, and delete PST files
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
search.appverid: MOE150
ms.assetid: 7a150c84-049c-4a9c-8c91-22355b35f2a7
description: "Use the Microsoft PST Collection Tool to search your organization's network to get an inventory of PST files that are scattered throughout your organization. After you find PST files, you can use the PST Collection Tool to copy them in a central location so you can import them to Office 365."
ms.custom: seo-marvel-apr2020
---

# Use the PST Collection tool to find, copy, and delete PST files in your organization

> [!IMPORTANT]
> The PST Collection tool described in this article isn't supported under any Microsoft standard support program or service. The tool is provided AS IS without warranty of any kind. Microsoft further disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a particular purpose. The entire risk arising out of the use or performance of the tool and documentation remains with you. In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the tool be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the tool or documentation, even if Microsoft has been advised of the possibility of such damages.

You can use the Microsoft PST Collection tool to search your organization's network for PST files. The tool helps you get an inventory of PST files that are scattered throughout your organization. After you find PST files, you can use the PST Collection tool to copy them in a central location. Having PSTs in a one place then allows you to import them to Exchange Online mailboxes (or a single Exchange Online mailbox), where you can then apply the rich set of compliance features in Office 365. This includes importing PSTs to users' archive mailboxes, searching for specific messages in the PST files that you imported by using eDiscovery search tools, retaining messages by using eDiscovery holds and Office 365 retention policies, and managing the life cycle of these messages using the messaging records management features in Exchange Online. After you're confident that the PST files that you collected have been successfully imported to Office 365, you can use the tool to delete them from their original location on your network. 
  
Another thing you can do with the PST Collection tool is prevent users from creating new PST files and changing the existing PST files that you find on your network. These "block" capabilities let you find, collect, and import a known set of PST files to Office 365 and prevent the future proliferation of PST files in your organization. 
  
## How the PST Collection tool works

Here's a quick overview of the process of using the PST Collection tool to find, control, collect, and delete PST files in your organization.
  
![Overview of the PST Collection tool process](../media/67a29f27-f83c-4f0a-9df4-7ed92d3086fe.png)
  
1. **[Step 1: Find PST files on your network](#step-1-find-pst-files-on-your-network)** - When you run the tool to find PST files, you specify a location, such as an organizational unit that contain Active Directory objects for client and server computers. You can also search specific machines or network file shares. When you run the tool, a "lightweight" Collection Agent is installed on the target computers. This agent searches the target computer for PST files and then sends information back to the PST Collection tool about any PST file it finds. The tool creates log files that contains information about the PST files that were found in the specified locations. These files are used when you run the tool in later steps. 
    
2. **[(Optional) Step 2: Control access to PST files](#optional-step-2-control-access-to-pst-files)** - The tool creates a Group Policy Object (GPO) with settings that prevent users from creating or changing PST files. This GPO is applied to every user in your domain. This optional step helps you "lock down" the PST files that were found in Step 1, so that you can collect, import, and delete them without having new PST files created or the existing PST files changed. 
    
3. **[Step 3: Copy the PST files to a collection location](#step-3-copy-the-pst-files-to-a-collection-location)** - This lets you collect the PST files in one location so that you can import them to Exchange Online mailboxes by using the Office 365 Import service in Step 4. When you run the tool in the "collect" mode, each Collection Agent copies the PST files from the target machine the agent is installed on to the collection location. 
    
4. **[Step 4: Import the PST files to Office 365](#step-4-import-the-pst-files-to-office-365)** - After you've copied the PST files to one location, you're ready to import them to Exchange Online mailboxes. 
    
5. **[Step 5: Delete the PST files found on your network](#step-5-delete-the-pst-files-found-on-your-network)** - After the PST files that you found and collected have been imported to Exchange Online mailboxes in Office 365, you can use the PST Collection tool to delete the PST files from the original locations where they were found in Step 1. 

## Before you begin

- Follow these steps to download the PST Collection tool to your local computer. 
    
    1. [Download the PST Collection tool](https://aka.ms/pstcollectiontool).
    
    2. In the pop-up window, click **Save** \> **Save as** to save the PSTCollectionTool.zip file to a folder on your local computer. 
    
    3. Extract the PSTCollectionTool.zip file to a folder on your local computer; the default folder name is PSTCollectionTool.
    
- To run the PST Collection tool in any mode (Find, Block, Copy, or Delete), you have to be a member of the Domain Administrators group in your Active Directory domain. 

## Step 1: Find PST files on your network

The first step is to run the PST Collection tool to find PST files in your organization. You can use the tool to search the following types of locations. 
  
- Organizational units (OUs) in an on-premises Active Directory domain. The tool searches all the machines that are contained in the specified OU. 
    
- Client and server computers. The tool searches the specified machines. 
    
- Network file shares. The tool searches the specified network file shares. 
    
See the description for the  `Locations` parameter in table in the following procedure for examples of the syntax to use for each of these location types. 
  
> [!IMPORTANT]
> You have to the run the PST Collection tool in the Find mode before you can perform other actions such as blocking, collecting, or deleting PST files. 
  
1. Open a Command Prompt (run as administrator) on your local computer.
    
2. Go to the PSTCollectionTool folder (or the folder that you extracted the PSTCollectionTool.zip file to).
    
3. Change to the DataCollectorMaster directory.
    
4. Run the following command to find PST files in a specified location.
    
    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Find -JobName <Name> -Locations <Locations to search for PSTs> -LogLocation <Location to store log files> -ConfigurationLocation <Location to store configuration files>
    ```

    The following table describes the parameters and their required values when you run the DataCollectorMaster.exe command to find PST files. 
    
    |****Parameter****|****Description****|****Examples****|
    |:-----|:-----|:-----|
    | `DataSource` <br/> |Specifies the type of data to search for. Currently, you can use the PST Collection tool to search for PST files.  <br/> | `-DataSource Pst` <br/> |
    | `Mode` <br/> |Specifies the type of operation that the tool will perform. Use the value  `Find` to locate PST files in the specified locations. Note that the tool can find and get information about PST files that are open in Outlook and PST files that are connected to Outlook profiles.  <br/> | `-Mode Find` <br/> |
    | `JobName` <br/> |Specifies the name of the PST Collection job. You will use this same job name when you run the PST Collection tool to block, collect, and delete the PST files that are found when you run the tool to find PST files. The job name will also be added to the log and configuration file names.  <br/> | `-JobName PstSearch1` <br/> |
    | `Locations` <br/> | Specifies one or more locations to search for PST files. If you specify more than one location, use a semi-colon (;) to separate individual locations. Be sure to surround the individual values of this parameter with double-quotation marks (" ").  <br/><br/>   Here is the required identity value format for the types of locations that you can search.  <br/><br/>        **OUs** - Use the distinguished name (DN) to identify OUs; for example:  `"OU=NorthAmerica,OU=NWRegion,OU=ITServices,DC=contoso,DC=com"` <br/> > [!IMPORTANT]>  You can't specify the built-in Computers container (for example, CN=Computers,DC=contoso,DC=com") because it isn't an organizational unit.<br/> <br/> **Machines** - Use the DN or the fully qualified domain name (FQDN) to identify client and server machines on your network; for example:  <br/>  DN:  `"CN=FILESERVER01,CN=Computers,DC=contoso,DC=com"` <br/>  Or  <br/>  FQDN:  `"FILESERVER01.contoso.com"` <br/><br/>  **Network file shares** - Use a UNC name to identify network file shares; for example,  `"\\FILESERVER02\Users"` <br/> | `-Locations "CN=FILESERVER01,CN=Computers,DC=contoso,DC=com";"CN=FILESERVER02,CN=Computers,DC=contoso,DC=com"` <br/> |
    | `LogLocation` <br/> |Specifies the folder that the log files will be copied to. If the folder doesn't exist, it will be created when you run the tool.  <br/> | `-LogLocation "c:\users\admin\desktop\PSTCollection"` <br/> |
    | `ConfigurationLocation` <br/> |Specifies the folder that the .xml configuration file will be copied to. This file contains information about each PST file that is found when you run the tool. This file will be used when you run the tool in Step 3 to copy the PST files that are found.  <br/> | `-ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration"` <br/> |
    | `ExcludedLocations` <br/> |This optional parameter specifies locations to skip during a Find operation. You can exclude specific OUs, machines, and network file shares. For example, you could exclude machines, such as machine configured as a SQL server (or other kinds of application servers), that users don't have access to. If you specify more than one location to exclude, use a semi-colon (;) to separate individual locations. Be sure to surround the individual values of this parameter with double-quotation marks (" ").  <br/> | `-ExcludedLocations "SQLSERVER01.contoso.com"` <br/> |
    | `ForceRestart` <br/> |This optional switch lets you run the tool in the Find mode for an existing PST Collection job. When you use the  `ForceRestart` switch, the results from the previous Find operation for the job will be discarded, and the tool will re-scan the specified locations and create new log and configuration files.  <br/> | `-ForceRestart` <br/> |
   
    Here's an example of the syntax for the DataCollectorMaster.exe command using actual values for each parameter:
    
    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Find -JobName PstSearch1 -Locations "CN=FILESERVER01,CN=Computers,DC=contoso,DC=com";"CN=FILESERVER02,CN=Computers,DC=contoso,DC=com" -LogLocation "c:\users\admin\desktop\PSTCollection" -ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration"
    ```

    After you run the command, detailed status messages are displayed that show the progress of finding PST files in the specified locations. After a while, a final status message shows the total number of PST files that were found, whether the job has completed, and if there were any errors. The same status messages are copied to the .log file.
    
### Results of running DataCollectorMaster.exe in the Find mode

After you successfully run the PST Collection tool the Find mode, the following files are created and stored in the folders specified by the  `LogLocation` and  `ConfigurationLocation` parameters. 
  
- **\<JobName\>_Find_\<DateTimeStamp\>.log** - The log file contains the status messages that were displayed. This file is created in the folder specified by the  `LogLocation` parameter. 
    
- **\<JobName\>_Find_\<DateTimeStamp\>.csv** - The CSV file contains a row for each PST file that was found. The information for each PST includes the computer where the PST file was found, the full file path location of the PST file, the owner of the PST file, and the size (in kilobytes, KBs) of the PST file. This file is created in the folder specified by the  `LogLocation` parameter. 
    
    > [!TIP]
    > Use the AutoSum tool in Excel to calculate the total size (in KB) of all the PST files listed in the CSV file. Then you can use a conversion calculator to convert the total size to megabytes (MB) or gigabytes (GB). 
  
- **\<JobName\>_Find_\<DateTimeStamp\>.xml** - The XML file contains information about the parameter values that where used when you ran the tool in the Find mode. This file also contains information about every PST file that was found. The data in this file is used when you run re-run the tool for the same job to block, collect, or delete the PST files that were found. This file is created in the folder specified by the  `ConfigurationLocation` parameter. 
    
    > [!IMPORTANT]
    > Don't rename, change, or move this file. It's used by the PST Collection tool when you re-run the tool in the Block, Copy, or Delete mode for the same job. 

## (Optional) Step 2: Control access to PST files

This optional step lets you "lock down" the PST files that were found in Step 1 so that you can collect and import a known set of PST files to Office 365. When you run the PST Collection tool in the Block mode, the following things happen: 
  
- The tool creates a Group Policy Object (GPO) named  *PST Usage Controls*  . This GPO is linked to your domain, and applies to all authenticated users in your organization. 
    
- The PST Usage Controls GPO creates registry settings on machines in your organization. Depending on the parameter that you use, you can create a registry setting to prevent users from creating new PST files and a registry setting that prevents users from changing existing PST files.
    
> [!NOTE]
> If controlling access to PST files is too disruptive for your organization, you might consider skipping this step, and performing Step 3 to copy PST files to a central location. Then you can repeat Step 1 for the same job (by using the  `ForceRestart` parameter) to find additional PSTs files that were created after you copied PSTs files to the collection location. If new PST files are found, you can copy them to the collection location. When you use the  `ForceRestart` parameter when you re-run the tool in the Find mode, the results from the previous Find operation for a job will be discarded, and the tool will re-scan the specified locations. 

To block access to PST files:

1. Open a Command Prompt (run as administrator) on your local computer.
    
2. Go to the directory where you downloaded the PST Collection tool to.
    
3. Run the following command to block access to the PST files found in Step 1.

    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Block -JobName <Name of job from Step 1> -ConfigurationLocation <Location of configuration files from Step 1> -BlockChangesToFiles -BlockNewFiles
    ```

    The following table describes the parameters and their required values when you run the DataCollectorMaster.exe command to block the creation and changing of PST files. 
    
    |****Parameter****|****Description****|****Examples****|
    |:-----|:-----|:-----|
    | `DataSource` <br/> |Specifies the type of data to search for. Currently, you can use the PST Collection tool to search for PST files.  <br/> | `-DataSource Pst` <br/> |
    | `Mode` <br/> |Specifies the type of operation that the tool will perform. Use the value  `Block` to prevent users from creating new PST files and making changes to existing PST files.  <br/> | `-Mode Block` <br/> |
    | `JobName` <br/> |Specifies the name of an existing PST Collection job. You have to use this same job name that you used when you ran the tool in the Find mode in Step 1. This job name is also added to the name of the log file that is created when you run the tool in the Block mode.  <br/> | `-JobName PstSearch1` <br/> |
    | `ConfigurationLocation` <br/> |Specifies the folder contains the .xml configuration file that was created when you ran the tool in the Find mode. Use the same value that you used for this parameter in Step 1.  <br/> | `-ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration"` <br/> |
    | `LogLocation` <br/> |Specifies the folder that the log file for the Block operation will be copied to. This is an optional parameter. If you don't include it, the log file is copied to the folder where you downloaded the PST Collection tool to. Consider using the same log location that you used when you ran the tool in the Find mode in Step 1 so that all the log files are saved in the same folder.  <br/> | `-LogLocation "c:\users\admin\desktop\PSTCollection"` <br/> |
    | `BlockChangesToFiles` <br/> |Use this switch to prevent users from changing a PST file. When you use this switch, the following registry entry is created:  `HKEY_CURRENT_USER\Software\Policies\Microsoft\Office\<version>\Outlook\PST\PstDisableGrow` and the data value is set to 1. This registry setting is created on the machines in your organization by the GPO that's created when you run the PST Collection tool in the Block mode.  <br/> | `-BlockChangesToFiles` <br/> |
    | `BlockNewFiles` <br/> |Use this switch to prevent users from creating new PST files, opening and importing PST files to Outlook, and exporting PST files from Outlook. When you use this switch, the following registry entry is created:  `HKEY_CURRENT_USER\Software\Policies\Microsoft\Office\<version>\Outlook\DisablePst` and the data value is set to 1. This registry setting is created on the machines in your organization by the GPO that's created when you run the PST Collection tool in the Block mode.  <br/> | `-BlockNewFiles` <br/> |
   
    Here's an example of the syntax for the DataCollectorMaster.exe command using actual values for each parameter:

    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Block -JobName PstSearch1 -ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration" -LogLocation "c:\users\admin\desktop\PSTCollection" -BlockChangesToFiles -BlockNewFiles
    ```

    You are prompted to confirm that you want to block new PST files or changes to existing PST files. After you confirm that you want to continue and the command successfully runs, a message is displayed saying that a new GPO, named "PST Usage Controls", has been created.
    
## Step 3: Copy the PST files to a collection location

The next step is to copy the PST files that where found when you ran the PST Collection tool in the Find mode. This lets you collect the PST files in one location so that you can later import them to Office 365. Before you copy the PST files to collection location, consider determining the total amount of storage space that is required. You can do this using the CSV file that was created in Step 1 to calculate the total size of all PST files.
  
> [!NOTE]
> After you've imported the PST files to Office 365 and deleted them from their original location, you might want to delete them from the collection location that you copied them to in this step. 
  
1. Open a Command Prompt (run as administrator) on your local computer.
    
2. Go to the directory where you downloaded the PST Collection tool to.
    
3. Run the following command to copy the PST files to a specified location.
    
    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Collect -JobName <Name of job from Step 1> -Locations <same locations from Step 1> -ConfigurationLocation <Location of configuration files from Step 1> -CopyLocation <Location to copy PST files to>
    ```

    The following table describes the parameters and their required values when you run the DataCollectorMaster.exe command to copy PST files. 
    
    |****Parameter****|****Description****|****Examples****|
    |:-----|:-----|:-----|
    | `DataSource` <br/> |Specifies the type of data to search for. Currently, you can use the PST Collection tool to search for PST files.  <br/> | `-DataSource Pst` <br/> |
    | `Mode` <br/> |Specifies the type of operation that the tool will perform. Use the value  `Collect` to copy that PST files that were found when you ran to the tool in the Find mode. Note that the tool is able copy PST files that are open in Outlook and copy PST files that are connected to Outlook profiles.  <br/> | `-Mode Collect` <br/> |
    | `JobName` <br/> |Specifies the name of an existing PST Collection job. You have to use this same job name that you used when you ran the tool in the Find mode in Step 1. This job name is also added to the name of the log file that is created when you run the tool in the Collect mode.  <br/> | `-JobName PstSearch1` <br/> |
    | `Locations` <br/> |Use the same value that you used for the  `Locations` parameter in Step 1. You have include this parameter when you run the tool in the Collect mode if you want to re-run the tool to delete the PST files from their source location in Step 5.  <br/> | `-Locations "CN=FILESERVER01,CN=Computers,DC=contoso,DC=com"; "CN=FILESERVER02,CN=Computers,DC=contoso,DC=com"` <br/> |
    | `ConfigurationLocation` <br/> |Specifies the folder that contains the .xml configuration file that was created when you ran the tool in the Find mode. Use the same value that you used for this parameter in Step 1.  <br/> | `-ConfigurationLocation "c:\users\admin\desktop \PSTCollection\Configuration"` <br/> |
    | `CopyLocation` <br/> |Specifies the collection location where you want to copy the PST files to. You can copy files to a file server, a network file share, or a hard drive. The location must exist before you run the tool in the Collect mode. The tool doesn't create the location, and will return an error saying that it doesn't exist.  <br/> Also, you have to write permissions to the collection location specified by this parameter.  <br/> | `-CopyLocation "\\FILESERVER03\PSTs"` <br/> |
    | `LogLocation` <br/> |Specifies the folder that the log file for the Collect mode will be copied to. This is an optional parameter. If you don't include it, the log file is copied to the folder where you downloaded the PST Collection tool to. Consider using the same log location that you used when you ran the tool in the Find mode in Step 1 so that all the log files are saved in the same folder.  <br/> | `-LogLocation "c:\users\admin\desktop\PSTCollection"` <br/> |
    | `ForceRestart` <br/> |This optional switch lets you re-run the tool in the Collection mode for an existing PST Collection job. If you previously ran the tool in the Collect mode, but then ran the tool again in the Find mode with the  `ForceRestart` switch to re-scan locations for PST files, you can use this switch to re-run the tool in Collection mode and re-copy the PST files there were found when your re-scanned the locations. When using the  `ForceRestart` switch in Collection mode, the tool ignores any previous Collection operations and attempts to copy the PST files from scratch.  <br/> | `-ForceRestart` <br/> |
   
    Here's an example of the syntax for the DataCollectorMaster.exe tool using actual values for each parameter:
    
    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Collect -JobName PstSearch1 -Locations "CN=FILESERVER01,CN=Computers,DC=contoso,DC=com";"CN=FILESERVER02,CN=Computers,DC=contoso,DC=com" -ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration" -CopyLocation "\\FILESERVER03\PSTs" -LogLocation "c:\users\admin\desktop\PSTCollection"
    ```

    After you run the command, detailed status messages are displayed that show the progress of collecting the PST files that were found in Step 1. After a while, a final status message shows if there were any errors and the location that the log is copied to. The same status messages are copied to the .log file.
    
### Results of running DataCollectorMaster.exe in the Collect mode

After you successfully run DataCollectorMaster.exe in the Collect mode, the following files are created and stored in the folders specified by the  `LogLocation` and  `ConfigurationLocation` parameters. 
  
- **\<JobName\>_Collect_\<DateTimeStamp\>.log** - The log file contains the status messages that were displayed. This file is created in the folder specified by the  `LogLocation` parameter. 
    
- **\<JobName\>_Collect_\<DateTimeStamp\>.xml** - The XML file only contains information about the parameter values that where used by the tool was run in the Collect mode. The data in this file is used when you run re-run the DataCollectorMaster.exe tool to delete PST files; see [Step 5](#step-5-delete-the-pst-files-found-on-your-network).
    

## Step 4: Import the PST files to Office 365

After you've collected the PST files found in Step 1, the next step is to import them to mailboxes in Office 365. As part or the import process, you'll have to create a CSV mapping file that contains a row of each PST file that you want import. Information in each row specifies the name of the PST file, the user's email address, and whether you want to import the PST file to the user's primary or archive mailbox. Use the information in the **JobName\>_Find_\<DateTimeStamp.csv** file (created in Step) 1 to help you create the CSV mapping file. 
  
For step-by-step instructions to import PST files to Office 365, see one of the following topics:
  
- [Use network upload to import PST files to Office 365](use-network-upload-to-import-pst-files.md)
    
- [Use drive shipping to import PST files to Office 365](use-drive-shipping-to-import-pst-files-to-office-365.md)
    

## Step 5: Delete the PST files found on your network

After the PST files that you found and collected have been imported to Exchange Online mailboxes in Office 365, you can use the PST Collection tool to delete the PST files from the original source locations where they were found in Step 1. 
  
1. Open a Command Prompt (run as administrator) on your local computer.
    
2. Go to the directory where you downloaded the PST Collection tool to.
    
3. Run the following command to delete the PST files.

    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Delete -JobName <Name of job from Step 1> -ConfigurationLocation <Location of configuration files from Step 1> -CopyLocation <Location to copy PST files to>
    ```

    The following table describes the parameters and their required values when you run the DataCollectorMaster.exe command to delete PST files. 
    
    |****Parameter****|****Description****|****Examples****|
    |:-----|:-----|:-----|
    | `DataSource` <br/> |Specifies the type of data to search for. Currently, you can use the PST Collection tool to search for PST files. ![spacer](../media/b078d05c-3aee-4b9f-8805-6a8a9d8970ee.png)           <br/> | `-DataSource Pst` <br/> |
    | `Mode` <br/> |Specifies the type of operation that the tool will perform. Use the value  `Delete` to delete that PST files that were found when you ran to the tool in the Find mode.  <br/> | `-Mode Delete` <br/> |
    | `JobName` <br/> |Specifies the name of an existing PST Collection job. You have to use this same job name that you used when you ran the tool in the Find mode and the Collect mode in Step 1 and Step 3. This job name is also added to the name of the log file that is created when you run the tool in the Delete mode.  <br/> | `-JobName PstSearch1` <br/> |
    | `ConfigurationLocation` <br/> |Specifies the folder that contains the .xml configuration file that was created when you ran the tool in the Collect mode. Use the same value that you used for this parameter in Step 3.  <br/> | `-ConfigurationLocation "c:\users\admin\ desktop\PSTCollection\Configuration"` <br/> |
    | `LogLocation` <br/> |Specifies the folder that the log file for the Delete mode will be copied to. This is an optional parameter. If you don't include it, the log file is copied to the folder where you downloaded the PST Collection tool to. Consider using the same log location that you used when you ran the tool in the Find and Collect modes in Step 1 and Step 3 so that all the log files are saved in the same folder.  <br/> | `-LogLocation "c:\users\admin\desktop\PSTCollection"` <br/> |
    | `ForceRestart` <br/> |This optional switch lets you re-run the tool in the Delete mode for an existing PST Collection job. If you previously ran the tool in the Delete mode, but then ran the tool again in the Find mode with the  `ForceRestart` switch to re-scan locations for PST files, you can use this switch to re-run the tool in Delete mode and delete the PST files there were found when your re-scanned the locations. When using the  `ForceRestart` switch in Delete mode, the tool ignores any previous Delete operations and attempts to delete the PST files again.  <br/> | `-ForceRestart` <br/> 

    Here's an example of the syntax for the DataCollectorMaster.exe tool using actual values for each parameter:
    
    ```powershell
    DataCollectorMaster.exe -DataSource Pst -Mode Delete -JobName PstSearch1 -ConfigurationLocation "c:\users\admin\desktop\PSTCollection\Configuration" -LogLocation "c:\users\admin\desktop\PSTCollection"
    ```

    After you run the command, detailed status messages are displayed that show the progress of deleting the PST files that were found in Step 1 and collected in Step 3. After a while, a final status message shows if there were any errors and the location that the log is copied to. The same status messages are copied to the .log file.
    
### Results of running DataCollectorMaster.exe in the Delete mode

After you successfully run DataCollectorMaster.exe in the Delete mode, the following files are created and stored in the folder specified by the  `LogLocation` and  `ConfigurationLocation` parameters. 
  
- **\<JobName\>_Delete_\<DateTimeStamp\>.log** - The log file contains the status messages that were displayed. This file is created in the folder specified by the  `LogLocation` parameter. 
    
- **\<JobName\>_Delete_\<DateTimeStamp\>.xml** - The XML file only contains information about the parameter values that where used by the tool was run in the Delete mode. It also lists the name and file path of each PST file that was deleted. This file is created in the folder specified by the  `ConfigurationLocation` parameter. 
