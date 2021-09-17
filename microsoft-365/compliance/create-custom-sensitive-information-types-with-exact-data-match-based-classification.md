---
title: "Create custom sensitive information types with Exact Data Match"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Learn how to create custom sensitive information types with Exact Data Match based classification.
ms.custom: seo-marvel-apr2020
---

# Create custom sensitive information types with Exact Data Match based classification




#### Refreshing your sensitive information database <!-- This goes into USE-->

You can refresh your sensitive information database daily, and the EDM Upload Tool can reindex the sensitive data and then reupload the indexed data.

1. Determine your process and frequency (daily or weekly) for refreshing the database of sensitive information.

2. Re-export the sensitive data to an app, such as Microsoft Excel, and save the file in .csv or .tsv format. Keep the same file name and location you used when you followed the steps described in [Hash and upload the sensitive data](#part-2-hash-and-upload-the-sensitive-data).

      > [!NOTE]
      > If there are no changes to the structure (field names) of the .csv or .tsv file, you won't need to make any changes to your database schema file when you refresh the data. But if you must make changes, make sure to edit the database schema and your rule package accordingly.

3. Use [Task Scheduler](/windows/desktop/TaskSchd/task-scheduler-start-page) to automate steps 2 and 3 in the [Hash and upload the sensitive data](#part-2-hash-and-upload-the-sensitive-data) procedure. You can schedule tasks using several methods:

   |Method|What to do|
   |---|---|
   |Windows PowerShell|See the [ScheduledTasks](/powershell/module/scheduledtasks/) documentation and the [example PowerShell script](#example-powershell-script-for-task-scheduler) in this article|
   |Task Scheduler API|See the [Task Scheduler](/windows/desktop/TaskSchd/using-the-task-scheduler) documentation|
   |Windows user interface|In Windows, click **Start**, and type Task Scheduler. Then, in the list of results, right-click **Task Scheduler**, and choose **Run as administrator**.|

#### Example PowerShell script for Task Scheduler 
<!-- this goes into USE-->

This section includes an example PowerShell script you can use to schedule your tasks for hashing data and uploading the hashed data:

##### To schedule hashing and upload in a combined step

<!--USE-->

```powershell
param(\[string\]$dataStoreName,\[string\]$fileLocation)
\# Assuming current user is also the user context to run the task
$user = "$env:USERDOMAIN\\$env:USERNAME"
$edminstallpath = 'C:\\Program Files\\Microsoft\\EdmUploadAgent\\'
$edmuploader = $edminstallpath + 'EdmUploadAgent.exe'
$csvext = '.csv'
$schemaext = '.xml'
\# Assuming file name is same as data store name and file is in .csv format
$dataFile = "$fileLocation\\$dataStoreName$csvext"
\# Assuming location to store hash file is same as the location of csv file
$hashLocation = $fileLocation
\# Assuming Schema file name is same as data store name
$schemaFile = "$fileLocation\\$dataStoreName$schemaext"
$uploadDataArgs = '/UploadData /DataStoreName ' + $dataStoreName + ' /DataFile ' + $dataFile + ' /HashLocation' + $hashLocation + ' /Schema ' + $schemaFile
\# Set up actions associated with the task
$actions = @()
$actions += New-ScheduledTaskAction -Execute $edmuploader -Argument $uploadDataArgs -WorkingDirectory $edminstallpath
\# Set up trigger for the task
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2am
\# Set up task settings
$principal = New-ScheduledTaskPrincipal -UserId $user -LogonType S4U -RunLevel Highest
$settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -StartWhenAvailable -WakeToRun
\# Create the scheduled task
$scheduledTask = New-ScheduledTask -Action $actions -Principal $principal -Trigger $trigger -Settings $settings
\# Get credentials to run the task
$creds = Get-Credential -UserName $user -Message "Enter credentials to run the task"
$password=\[Runtime.InteropServices.Marshal\]::PtrToStringAuto(\[Runtime.InteropServices.Marshal\]::SecureStringToBSTR($creds.Password))
\# Register the scheduled task
$taskName = 'EDMUpload\_' + $dataStoreName
Register-ScheduledTask -TaskName $taskName -InputObject $scheduledTask -User $user -Password $password
```

#### To schedule hashing and upload as separate steps
 <!-- USE-->
```powershell
param(\[string\]$dataStoreName,\[string\]$fileLocation)
\# Assuming current user is also the user context to run the task
$user = "$env:USERDOMAIN\\$env:USERNAME"
$edminstallpath = 'C:\\Program Files\\Microsoft\\EdmUploadAgent\\'
$edmuploader = $edminstallpath + 'EdmUploadAgent.exe'
$csvext = '.csv'
$edmext = '.EdmHash'
$schemaext = '.xml'
\# Assuming file name is same as data store name and file is in .csv format
$dataFile = "$fileLocation\\$dataStoreName$csvext"
$hashFile = "$fileLocation\\$dataStoreName$edmext"
\# Assuming Schema file name is same as data store name
$schemaFile = "$fileLocation\\$dataStoreName$schemaext "

\# Assuming location to store hash file is same as the location of csv file
$hashLocation = $fileLocation
$createHashArgs = '/CreateHash' + ' /DataFile ' + $dataFile + ' /HashLocation ' + $hashLocation + ' /Schema ' + $schemaFile
$uploadHashArgs = '/UploadHash /DataStoreName ' + $dataStoreName + ' /HashFile ' + $hashFile
\# Set up actions associated with the task
$actions = @()
$actions += New-ScheduledTaskAction -Execute $edmuploader -Argument $createHashArgs -WorkingDirectory $edminstallpath
$actions += New-ScheduledTaskAction -Execute $edmuploader -Argument $uploadHashArgs -WorkingDirectory $edminstallpath
\# Set up trigger for the task
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2am
\# Set up task settings
$principal = New-ScheduledTaskPrincipal -UserId $user -LogonType S4U -RunLevel Highest
$settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -StartWhenAvailable -WakeToRun
\# Create the scheduled task
$scheduledTask = New-ScheduledTask -Action $actions -Principal $principal -Trigger $trigger -Settings $settings
\# Get credentials to run the task
$creds = Get-Credential -UserName $user -Message "Enter credentials to run the task"
$password=\[Runtime.InteropServices.Marshal\]::PtrToStringAuto(\[Runtime.InteropServices.Marshal\]::SecureStringToBSTR($creds.Password))
\# Register the scheduled task
$taskName = 'EDMUpload\_' + $dataStoreName
Register-ScheduledTask -TaskName $taskName -InputObject $scheduledTask -User $user -Password $password
```

### Part 3: Use EDM-based classification with your Microsoft cloud services

<!-- goes under the get started umbrella-->

These locations are support EDM sensitive information types:

- DLP for Exchange Online (email)
- OneDrive for Business (files)
- Microsoft Teams (conversations)
- DLP for SharePoint (files)
- Microsoft Cloud App Security DLP policies
- Server-side auto-labeling policies - available for commercial cloud customers and government cloud customers
- Client side auto-labeling policies - available for government cloud customers  

#### To create a DLP policy with EDM

1. Go to the Security & Compliance Center using the appropriate [link for your subscription](#portal-links-for-your-subscription).

2. Choose **Data loss prevention** \> **Policy**.

3. Choose **Create a policy** \> **Custom** \> **Next**.

4. On the **Name your policy** tab, specify a name and description, and then choose **Next**.

5. On the **Choose locations** tab, select **Let me choose specific locations**, and then choose **Next**.

6. In the **Status** column, select **Exchange email, OneDrive accounts, Teams chat and channel message**, and then choose **Next**.

7. On the **Policy settings** tab, choose **Use advanced settings**, and then choose **Next**.

8. Choose **+ New rule**.

9. In the **Name** section, specify a name and description for the rule.

10. In the **Conditions** section, in the **+ Add a condition** list, choose **Content contains sensitive type**.

      ![Content contains sensitive info types.](../media/edm-dlp-newrule-conditions.png)

11. Search for the sensitive information type you created when you set up your rule package, and then choose **+ Add**.
    Then choose **Done**.

12. Finish selecting options for your rule, such as **User notifications**, **User overrides**, **Incident reports**, and so on, and then choose **Save**.

13. On the **Policy settings** tab, review your rules, and then choose **Next**.

14. Specify whether to turn on the policy right away, test it out, or keep it turned off. Then choose **Next**.

15. On the **Review your settings** tab, review your policy. Make any needed changes. When you're ready, choose **Create**.

> [!NOTE]
> Allow approximately one hour for your new DLP policy to work its way through your data center.

## Related articles

- [Sensitive information type-entity definitions](sensitive-information-type-entity-definitions.md)
- [Learn about sensitive information types](sensitive-information-type-learn-about.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Microsoft Cloud App Security](/cloud-app-security)
- [New-DlpEdmSchema](/powershell/module/exchange/new-dlpedmschema)
- [Modify Exact Data Match schema to use configurable match](sit-modify-edm-schema-configurable-match.md)
