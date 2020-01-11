---
title: "Set up a connector to import HR data"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
description: "Administrators can set up a data connector to import employee data from their organization's human resources (HR) system to Microsoft 365. This lets you use HR data in insider risk management policies to help you detect activity by specific users that may pose an internal threat to your organization."
---

# Set up a connector to import HR data

You can set up a data connector in the Microsoft 365 compliance center to import human resources (HR) data, such as the date an employee submitted their resignation and date of the employee's last day. This HR data can then be used by Microsoft information protection solutions, such as the new [insider risk management solution)](insider-risk-management.md), to help protect your organization from malicious activity or data theft inside your organization. Setting up an HR connector consists of creating an app in Azure Active Directory that's used for authentication by connector, creating a CSV mapping files that contains your HR data, creating a data connector in the compliance center, and then running a script (on a scheduled basis) that ingests the HR data in the CSV file to the Microsoft cloud. Then the data connector is used Microsoft compliance solutions (like insider risk management) to access the HR data that was imported to your Microsoft 36 organization.

## Before you begin

- Your organization must consent to allow the Office 365 Import service to access data in your organization. To consent to this request, go to [this page](https://login.microsoftonline.com/common/oauth2/authorize?client_id=570d0bec-d001-4c4e-985e-3ab17fdc3073&response_type=code&redirect_uri=https://portal.azure.com/&nonce=1234&prompt=admin_consent), sign in with the credentials of an Microsoft 365 global admin, and then accept the request. You have to complete this step before you can successfully create the HR connector in Step 3.

- The user who creates the HR connector in Step 3 must be assigned the Mailbox Import Export role in Exchange Online. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a new role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the [Create role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

- You'll need to plan how to retrieve or export the data from your organization's HR system that has to be added the CSV file that's described in Step 2. 

## Step 1: Create an app in Azure Active Directory

The first step is to create and register a new app in Azure Active Directory (AAD). The app will correspond to the HR connector that you create in Step 3.  Creating this app will allow AAD to authenticate the HR connector when it runs and attempts to access your organization. During the creation of this AAD app, be sure to save the following information. These values will be used in later steps is this process.

- AAD application ID (also called the *app Id* or *client Id*)
 
- AAD application secret (also called the *client secret*)

- Tenant Id (also called the *directory Id*)

For step-by-step instructions for creating an app in AAD, see [Creating an AAD Application](https://docs.microsoft.com/azure/kusto/management/access-control/how-to-provision-aad-app)

## Step 2: Prepare a CSV file with your HR data

## Step 3: Create the HR connector

## Step 4: Run the script to upload your HR data



1. Go to [this GitHub site](https://github.com/microsoft/m365-hrconnector-sample-scripts/blob/master/upload_termination_records.ps1).

2. Click the **Raw** button to display the script in text.

3. Copy all the lines in the script and then save them to a Windows PowerShell script file by using a filename suffix of `.ps1`; for example, `HRConnectorScript.ps1`.

4. Open a Command Prompt on your local computer.
    
5. Go to the directory where you saved the script.
    
6. Run the following command to upload the HR data in the CSV file to the Microsoft cloud; for example

    ```powershell
    .\HRConnector.ps1 -tenantId <tenantId> -appId <appId>  -appSecret <appSecret>  -jobId <jobId>  -csvFilePath <csvFilePath>
    ```

   The following table describes the AzCopy.exe parameters and their required values. The information you obtained in the previous step is used in the values for these parameters.

   |**Parameter**|**Description**|**Example**|
   |:-----|:-----|:-----|
   |`tenantId`||  |
   |`appId` ||  |
   |`appSecret`|||
   |`jobId`|||
   |`csvFilePath`|||
   ||||
   
   Here's an example of the syntax for the HR connector script using actual values for each parameter:

   ```powershell
    .\HRConnector.ps1 -tenantId <tenantId> -appId <appId>  -appSecret <appSecret>  -jobId <jobId>  -csvFilePath <csvFilePath>
    ```

   If the upload is successful, the script displays the **Upload Successful** message. 
    
## Step 5: Monitor the HR connector
