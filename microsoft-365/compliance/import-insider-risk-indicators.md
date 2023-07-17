---
title: "Set up a connector to import third-party insider risk detections (preview)"
description: "Administrators can set up a data connector to import pre-processed aggregated detections and use them in Microsoft Purview Insider Risk Management. This lets you extend your detections to third-party workloads such as Salesforce or Dropbox and use them alongside the built-in detections of insider risk management."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 07/14/2023
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MET150
ms.collection:
- tier3
- purview-compliance
- data-connectors
ms.custom: admindeeplinkCOMPLIANCE
---

# Set up a connector to import third-party insider risk detections (preview)

You can set up a connector in the Microsoft Purview compliance portal to extend the Microsoft Purview Insider Risk Management solution to include third-party (non-Microsoft) detections. For example, you might want to extend your detections to include Salesforce and Dropbox activities and use them alongside the built-in detections provided by insider risk management, which is focused on Microsoft services like SharePoint Online and Exchange Online.

To bring your own detections to the insider risk management solution, you import pre-processed, aggregated detections from security information and event management (SIEM) solutions such as Microsoft Sentinel or Splunk. You'll import a sample file into the Insider Risk Indicators connector wizard. The connector wizard analyzes the sample file and configures the required schema for insider risk management.

> [!NOTE]
> Currently, you cannot import "raw" detection signals into insider risk management. You can only import pre-processed aggregations as a file.

## Overall process

Bringing your own detections to insider risk management is a three-step process:

1. In Microsoft Purview, create the Insider Risk Indicators (preview) connector as described in this article.
2. In the insider risk management solution, [create custom indicators](insider-risk-management-settings-policy-indicators.md#custom-indicators). 
3. In the insider risk management solution, [use the custom indicators in policies as triggers or indicators and define thresholds](insider-risk-management-configure.md#step-6-required-create-an-insider-risk-management-policy).

When user activity crosses the threshold value that you specify for the policy, the user is brought into scope of the insider risk management policy and is scored for risk. An alert is generated and analysts can investigate the alert using custom indicator details.

> [!NOTE]
> You can only use custom indicators with the *Data theft* and *Data leaks* templates.

## Before you begin

1. **Determine the scenarios and data you want to import to Microsoft 365**. This helps you determine how many CSV files and Insider Risk Indicator connectors you need to create and how to structure the CSV files. The imported data is determined by the types of triggers and indicators you want to create. See [Determining how many CSV files to prepare for indicator data](#determining-how-many-csv-files-to-prepare-for-indicator-data).
2. **Determine how to retrieve or export the data from your internal system and add it to the CSV files that you prepare in Step 2**. The script that you run in Step 4 uploads the data in the CSV files to the insider risk management solution.
3. **Assign the *Data Connector Admin* role**. This role is required to add connectors on the **Data connectors** page in the compliance portal, so the user who creates the connector in Step 3 must be assigned this role. This role is added by default to multiple role groups. For a list of these role groups, see [Roles in Microsoft Defender for Office 365 and Microsoft Purview compliance](../security/office-365-security/scc-permissions.md#roles-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance). Alternatively, an admin in your organization can create a custom role group, assign the *Data Connector Admin* role to the custom role group, and then add the appropriate users as members. For guidance, see [Create a custom Microsoft Purview role group](microsoft-365-compliance-center-permissions.md#create-a-custom-microsoft-purview-role-group).
4. **Add the *webhook.ingestion.office.com* domain to your firewall allowlist for your organization**. The script that you run in Step 4 won't work if you don't add this domain to the allowlist.

> [!IMPORTANT]
> The sample script that you run in Step 4 uploads your data to the Microsoft cloud so that it can be used by the insider risk management solution. This sample script isn't supported under any Microsoft standard support program or service. The sample script is provided AS IS without warranty of any kind. Microsoft further disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a particular purpose. The entire risk arising out of the use or performance of the sample script and documentation remains with you. In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample scripts or documentation, even if Microsoft has been advised of the possibility of such damages.

### Determining how many CSV files to prepare for indicator data

In Step 3, you have the choice of preparing separate CSV files that contain data for each indicator or you can prepare a single CSV file that contains data for two or more indicators.

Here are some guidelines to help you determine how many CSV files to prepare:

- If the insider risk management policy you want to implement requires multiple indicators, consider using a single CSV file that contains the data for all the indicators. As a general rule, the number of connectors that you need to create is determined by the services in a CSV file. For example, if a CSV file contains all the services required to support your insider risk management implementation, you only need one connector. Having fewer CSV files allows you to have fewer connectors to create and manage. If you have two separate CSV files that each contain a single service, you'll have to create two connectors.

- The method for generating or collecting the data may determine the number of CSV files. For example, if the different types of data used to configure a connector are located in a single system in your organization, you may be able to export the data to a single CSV file. But if data is distributed across different systems, it might be easier to export data to different CSV files. How you retrieve or export data from your systems may determine the number of CSV files you'll need.

## Step 1: Create an app in Azure Active Directory

The first step is to create and register a new app in Azure Active Directory (Azure AD) for the connector that you create in Step 3. Creating this app allows Azure AD to authenticate the connector when it runs and attempts to access your organization. This app is also used to authenticate the script that you run in Step 4 to upload your data to the Microsoft cloud. When you create the Azure AD app, be sure to save the following information:

- Azure AD application ID (app ID or client ID)
- Azure AD application secret (client secret)
- Tenant ID (directory ID)

The above values are used in Steps 3 and 4. For step-by-step instructions on creating an app in Azure AD, see [Register an application with the Microsoft identity platform](/azure/active-directory/develop/quickstart-register-app).

## Step 2: Prepare CSV file(s) with your insider risk indicators data

The next step is to prepare a CSV file that contains the indicator data that the connector imports to Microsoft 365. This data is used by the insider risk management solution. You can import data for the following scenarios:

- Create a trigger that, when activated, brings a user into scope for a policy. [Example 1 below](import-insider-risk-indicators.md#example-1-prepare-a-csv-file-for-a-simple-trigger-that-brings-a-user-into-scope-for-a-policy) shows how to prepare a CSV file for a 'home-grown' trigger that predicts the probability of an employee leaving an organization.
- Create a policy indicator that monitors user activities. [Example 2 below](import-insider-risk-indicators.md#example-2-prepare-a-single-csv-file-to-create-multiple-policy-indicators) shows how to prepare a single CSV file for multiple indicators (one for Dropbox and one for Salesforce).

For each scenario, you need to provide the corresponding indicator data in one or more CSV files. See [Determining how many CSV files to use for indicator data](#determining-how-many-csv-files-to-prepare-for-indicator-data).

After you create the CSV file with the required indicator data, store it on the local computer that you run the script on in Step 4. You should also implement an update strategy to make sure that the CSV file always contains the most current information so that whenever you run the script, the most current indicator data is uploaded to the Microsoft cloud and accessible to the insider risk management solution.

> [!IMPORTANT]
> The column names described in the following sections are examples, not required parameters. You can use any column names in your CSV files. However, the column names that you use in a CSV file must be mapped to a data type when you create the  connector in Step 3. Also note that the sample CSV files in the following sections are shown in NotePad. It's much easier to view and edit CSV files in Microsoft Excel.

### Example 1: Prepare a CSV file for a simple trigger that brings a user into scope for a policy

This example shows how to structure a CSV file to create a 'home-grown' trigger that could be used to predict the probability of an employee leaving an organization. This example uses the following sample data:

```text
UPN,PredictionTime,PredictionScore,ModelInfo
sarad@contoso.com,2023-04-20T05:52:56.962686Z,6,Model accuracy: 67%, Model name: LeaverPrediction_M1
sarad@contoso.com,2023-04-24T05:52:56.962686Z,9,Model accuracy: 67%, Model name: LeaverPrediction_M1
sarad@contoso.com,2023-04-24T05:52:56.962686Z,3,Model accuracy: 67%, Model name: LeaverPrediction_M1
```

The following table describes each column in the CSV file.

| Column | Description |
|--|--|
| UPN | Mandatory email address field used to identify the user. |
| Prediction Time | Mandatory field that displays the date/time that the activity occurred. |
| Prediction Score | Risky activity score. This field is used for the trigger threshold setting. Only *Number* fields can be used for threshold settings. |
| Model Info | Extra field used to track information about the prediction model. |

> [!NOTE]
> Only the email address and date/time fields are mandatory. All other fields are optional but can be helpful for the analyst or investigator in decision making when they triage alerts (these fields appear in the Activity explorer and in alerts and cases).

When you create the connector in Step 3, you'll use the data in the `PredictionScore` field as a threshold value for the trigger. If a user crosses the threshold value that you set later in the policy, the user is brought into the scope of the policy.

### Example 2: Prepare a single CSV file to create multiple policy indicators

This example shows how to create multiple policy indicators (one for Dropbox and one for Salesforce) from a single CSV file. This example uses the following sample data:

```text
UPN,Display_Name,Alert_Severity,Alert_Count,Aggregation_Date,Source_Workload,AdditionalInfo_Salesforce,AdditionalInfo_Dropbox
sarad@contoso.com,Salesforce - Sensitive report downloaded and emailed externally,High,10,2023-04-24T05:52:56.962686Z,Salesforce,text,text
sarad@contoso.com,Salesforce - Anomalous download of sales lead reports,Medium,6,2023-04-24T05:52:56.962686Z,Salesforce,text,text
bradh@contoso.com,Salesforce - Printing sales reports,Low,50,2023-04-24T05:52:56.962686Z,Salesforce,text,text
bradh@contoso.com,Salesforce - Excessive modifications to sensitive reports,Medium,3,2023-04-24T05:52:56.962686Z,Salesforce,text,text
sarad@contoso.com,Dropbox - Sensitive files saved to personal Dropbox,High,14,2023-04-24T05:52:56.962686Z,Dropbox,text,text
bradh@contoso.com,Dropbox - Anomalous file copy activity,Medium,5,2023-04-24T05:52:56.962686Z,Dropbox,text,text
```

The following table describes each column in the CSV file.

| Column | Description |
|--|--|
| UPN | Mandatory email address field used to identify the user. |
| Display Name | Name of the risky activity. |
| Alert Severity | Severity categories: *Low*, *Medium*, and *High*. |
| Alert Count | Number of incidences of each activity. Data in this field is used for the indicator threshold setting. |
| Aggregation Date | Mandatory field that displays the date/time that the activity occurred. |
| Source Workload | This is the key field for the multiple indicators scenario. You'll select this field for the **Source column** field when you create the connector, and the values in this field (**Dropbox** and **Salesforce**) will be used in the **Related values in source column** field in the connector. |
| Additional Info Salesforce | Any additional info that you want to note about the Salesforce indicator |
| Additional Info Dropbox | Any additional info that you want to note about the Dropbox indicator |

See the example below to see how this CSV file is used when creating the data connector.

## Step 3: Create the Insider Risk Indicators connector

The next step is to create a connector in the compliance portal. After you run the script in Step 4, the connector that you create imports the data from the CSV file and uploads it to your Microsoft 365 organization.

> [!NOTE]
> Before you create a connector, make sure that you have a list of the scenarios and the corresponding CSV column names for each scenario.

### Example 1: Create a connector file for a simple trigger

1. Go to the compliance portal, and then select **Data connectors**.
2. On the **Data connectors** page, select **Insider Risk Indicators (preview)**.
3. On the **Insider Risk Indicators (preview)** page, select **Add connector**.
4. Review the terms of service, and then select **Accept** if you want to continue creating the connector.
5. On the **Authentication** page, complete the following:
   1. Enter a name for the connector.
   2. Paste the Azure AD application ID for the Azure app that you created in Step 1.
   3. Select **Next**.
6. On the **Sample file** page:
   1. Select **Upload sample file**, and then select the CSV file that you want to upload.  
   2. In the **Source column** list, select **None (Single source)**.
   3. In the **Verify sample data and data type** section, review each field to make sure that the right data types have been assigned to each field. If a field will be used later as a threshold value, make sure that it has a *Number* data type. For example, in this scenario, the `PredictionScore` field is used as a threshold value and the data type is set appropriately to *Number*.

7. Select **Next**.
8. On the **Data mapping** page:

   1. Enter the values for **Event time (UTC time)** and **Microsoft 365 user email address** based on the appropriate values from the CSV file. These are mandatory fields for the connector. 
   2. In the **Default** field, use the list to select each field you want to include from the CSV file. For example, select a Number field to use later as a threshold value for the indicator or select other fields to use as supporting information.

8. Select **Next**.
9. On the **Finish** page, review all the information, and if everything looks OK, select **Finish**.
10. Copy the job ID for the connector. You'll need it for the next step.
11. [Go to Step 4 to run the script that uploads the data to Microsoft 365](#step-4-run-the-sample-script-to-upload-your-data). 

### Example 2: Create a connector that includes multiple policy indicators

This example shows how to set up a single connector to create multiple policy indicators (Salesforce and Dropbox). You could create two separate connectors (one for Salesforce and one for Dropbox), but creating a single connector that works for both can reduce overall file maintenance.  

1. Go to the compliance portal, and then select **Data connectors**.
2. On the **Data connectors** page, select **Insider Risk Indicators (preview)**.
3. On the **Insider Risk Indicators (preview)** page, select **Add connector**.
4. Review the terms of service, and then select **Accept** if you want to continue creating the connector.
5. On the **Authentication** page, do the following:
   1. Enter a name for the connector.
   2. Paste the Azure AD application ID for the Azure app that you created in Step 2.
   3. Select **Next**.
6. On the **Sample file** page:
   1. Select **Upload sample file**, and then select the CSV file that you want to upload.  
   2. In the **Source column** list, select the column to use as the source. In the example CSV file, the source column is `SourceWorkload`, since it stores the values for the two separate workloads (Salesforce and Dropbox).
   3. In the **Related values in source column** field, enter the related values. For this example, enter 'Salesforce,Dropbox'. Don't include spaces between values.

   > [!IMPORTANT]
   > Make sure that the values you enter in the **Related values in source column** field match the values in the **Source column** list. The connector fails if the column values don't match.

   4. In the **Verify sample data and data type** section, review each field to make sure that the right data types have been assigned for each field. If a field will be used later as a threshold value, make sure that it has a Number data type. For example, in this example scenario, the `AlertCount` field is used as a threshold value and the data type is set appropriately to *Number*.
   5. Select **Next**.
7. On the **Data mapping** page:

    1. Enter the values for **Event time (UTC time)** and **Microsoft 365 user email address** based on the appropriate values from the CSV file.  These fields are mandatory and common to both indicators you're creating for this example.
    2. Select the columns from your sample file that you want to map to the two workloads, Salesforce and Dropbox.

   > [!TIP]
   > You could use the same process described above to create multiple policy indicators based on severity levels. For example, you could use a single connector to create separate Low, Medium, and High indicators. In the **Source column** list in that case, you would select the field that holds the values for the separate workloads (Low, Medium, High), enter those workload values in the **Related values in source column** field, and then map the appropriate fields in the **Data mapping** page.

8. Select **Next**.
9. On the **Finish** page, review all the information, and if everything looks correct, select **Finish**.
10. Copy the job ID for the connector. You'll need it for the next step.
11. Go to the next step (Step 4) to run the script that uploads the data to Microsoft 365.

## Step 4: Run the sample script to upload your data

> [!IMPORTANT]
> You must add the *webhook.ingestion.office.com* domain to your firewall allowlist for your organization. If this domain is blocked, the script won't run.

The last step in setting up a connector is to run a sample script that uploads the data in the CSV file. When you run the script, the connector that you created in Step 3 imports the data to your Microsoft 365 organization where it can be accessed by the insider risk management solution. After you run the script, consider scheduling a task to run it automatically on a daily basis so the most current data is uploaded to the Microsoft cloud. See [Schedule the script to run automatically](#optional-step-6-schedule-the-script-to-run-automatically).

To run the sample script:

1. Go to the window that you left open from the previous step to access the GitHub site with the sample script. Alternatively, open the bookmarked site or use the URL that you copied. You can also access the script at [https://github.com/microsoft/m365-compliance-connector-sample-scripts/blob/main/sample_script.ps1](https://github.com/microsoft/m365-compliance-connector-sample-scripts/blob/main/sample_script.ps1).

2. Select the **Raw** button to display the script in text view.

3. Copy all the lines in the sample script, and save them to a text file.

4. Modify the sample script for your organization, if necessary.

5. Save the text file as a Windows PowerShell script file by using a filename suffix of `.ps1`; for example, `HRConnector.ps1`. Alternatively, you can use the GitHub filename for the script, which is `upload_termination_records.ps1`.

6. Open a command prompt on your local computer, and then go to the directory where you saved the script.

7. Run the following command to upload the data in the CSV file to the Microsoft cloud; for example:

    ```powershell
    .\HRConnector.ps1 -tenantId <tenantId> -appId <appId>  -appSecret <appSecret>  -jobId <jobId>  -filePath '<filePath>'
    ```

   The following table describes the parameters to use with this script and their required values. The information you obtained in the previous steps is used in the values for these parameters.

   | Parameter | Description |
   | :-|:-|
   | `tenantId` | This is the ID for your Microsoft 365 organization that you obtained in Step 1. You can also obtain the tenant ID for your organization on the **Overview** blade in the Azure AD admin center. This is used to identify your organization. |
   | `appId` | This is the Azure AD application ID for the app that you created in Azure AD in Step 1. This is used by Azure AD for authentication when the script attempts to access your Microsoft 365 organization. |  |
   | `appSecret` | This is the Azure AD application secret for the app that you created in Azure AD in Step 1. This is also used for authentication. |
   | `jobId` | This is the job ID for the connector that you created in Step 3. This is used to associate the data that is uploaded to the Microsoft cloud with the connector. |
   | `filePath` | This is the file path for the file (stored on the same system as the script) that you created in Step 1. Try to avoid spaces in the file path; otherwise use single quotation marks. |

   Here's an example of the syntax for the connector script using actual values for each parameter:

   ```powershell
    .\HRConnector.ps1 -tenantId d5723623-11cf-4e2e-b5a5-01d1506273g9 -appId 29ee526e-f9a7-4e98-a682-67f41bfd643e -appSecret MNubVGbcQDkGCnn -jobId b8be4a7d-e338-43eb-a69e-c513cd458eba -filePath 'C:\Users\contosoadmin\Desktop\Data\insider_risk_indicator_data.csv'
    ```

   If the upload is successful, the script displays the **Upload Successful** message.

   > [!NOTE]
   > If you have problems running the previous command because of execution policies, see [About Execution Policies](/powershell/module/microsoft.powershell.core/about/about_execution_policies) and [Set-ExecutionPolicy](/powershell/module/microsoft.powershell.security/set-executionpolicy) for guidance about setting execution policies.

## Step 5: Monitor the connector

After you create the connector and run the script to upload your data, view the connector and upload status in the compliance portal. If you schedule the script to run automatically regularly, you can view the current status after the last time the script ran.

1. Go to the compliance portal and select **Data connectors**.

2. Select the **Connectors** tab, and select the connector to display the flyout page. This page contains the properties and information about the connector.

3. Under **Progress**, select the **Download log** link to open (or save) the status log for the connector. This log contains information about each time the script runs and uploads the data from the CSV file to the Microsoft cloud.

   The `RecordsSaved` field indicates the number of rows in the CSV file that uploaded. For example, if the CSV file contains four rows, the value of the `RecordsSaved` field is 4 if the script successfully uploaded all the rows in the CSV file.

If you've haven't run the script in Step 4, a link to download the script is displayed under **Last import**. You can download the script and then follow the steps to run the script.

## (Optional) Step 6: Schedule the script to run automatically

To make sure the latest data from your organization is available to the insider risk management solution, schedule the script to run automatically on a recurring basis, such as once a day. This requires that you update the data in the CSV file on a similar (if not the same) schedule so that it contains the latest information. The goal is to upload the most current data so that the connector can make it available to the insider risk management solution.

You can use the Task Scheduler app in Windows to automatically run the script every day.

1. On your local computer, select the Windows **Start** button and type **Task Scheduler**.
2. Select the **Task Scheduler** app.
3. In the **Actions** section, select **Create Task**.
4. On the **General** tab, enter a descriptive name for the scheduled task. For example, **HR Connector Script**. You can also add an optional description.
5. Under **Security options**, complete the following:

   1. Determine whether to run the script only when you're logged on to the computer or when you're logged on or not.
   1. Make sure that the **Run with the highest privileges** check box is selected.

6. Select the **Triggers** tab, select **New** and complete the following:

   1. Under **Settings**, select the **Daily** option, and choose a date and time to run the script for the first time. The script runs every day at the same specified time.
   1. Under **Advanced settings**, make sure that the **Enabled** check box is selected.
   1. Select **OK**.

7. Select the **Actions** tab, select **New** and complete the following:

   1. In the **Action** dropdown list, make sure that **Start a program** is selected.
   1. In the **Program/script** box, select **Browse**, and then go to the following location and select it so the path is displayed in the box: `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`.
   1. In the **Add arguments (optional)** box, paste the same script command that you ran in Step 4. For example, `.\HRConnector.ps1 -tenantId "d5723623-11cf-4e2e-b5a5-01d1506273g9" -appId "c12823b7-b55a-4989-faba-02de41bb97c3" -appSecret "MNubVGbcQDkGCnn"  -jobId "e081f4f4-3831-48d6-7bb3-fcfab1581458" -filePath "C:\Users\contosoadmin\Desktop\Data\insider_risk_indicator_data.csv"`

   1. In the **Start in (optional)** box, paste the folder location of the script that you ran in Step 4. For example, `C:\Users\contosoadmin\Desktop\Scripts`.
   1. Select **OK** to save the settings for the new action.

8. In the **Create Task** window, select **OK** to save the scheduled task. You might be prompted to enter your user account credentials.

   The new task is displayed in the Task Scheduler Library. The last time the script ran and the next time it's scheduled to run are displayed. Double click the task to edit it.

   You can also verify the last time the script ran on the flyout page of the corresponding connector in the compliance portal.

## (Optional) Step 7: Upload data using Power Automate templates

You can upload the CSV data using Power Automate templates and define triggers. For example, you can configure a Power Automate template to trigger when new connector files are available in SharePoint or OneDrive locations. You can also streamline this process by storing confidential information like the Azure AD application secret (created in Step 1) in Azure Key Vault and using it with Power Automate for authentication.

Complete the following steps to automatically upload data when new files become available on OneDrive for Business:

1.	Download the *ImportHRDataforIRM.zip* package from the [GitHub site](https://github.com/microsoft/m365-compliance-connector-sample-scripts/blob/main/ImportHRDataforIRM.zip).
2. In [Power Automate](https://make.preview.powerautomate.com), go to **My flows**.
3.	Select **Import** and upload the *ImportHRDataforIRM.zip* package.
4.	After the package is uploaded, update the content (name and OneDrive for Business connection) and select **Import**.
5.	Select **Open flow** and update the parameters. The following table describes the parameters to use in this Power Automate flow and their required values. The information you obtained in the previous steps is used in the values for these parameters.

   | **Parameter** | **Description** |
   |:-|:-|
   | `appId` | This is the Azure AD application ID for the app that you created in Azure AD in Step 1. This is used by Azure AD for authentication when the script attempts to access your Microsoft 365 organization. |
   | `appSecret` | This is the Azure AD application secret for the app that you created in Azure AD in Step 1. This is used for authentication. |
   | `fileLocation` | This is the OneDrive for Business location where Power Automate monitors for 'new file created' activities to trigger this flow. |
   | `jobId` | Identifier for the connector created in Step 3. This is used to associate the data uploaded to the Microsoft cloud with the connector. |
   | `tenantId` | Identifier for your Microsoft 365 organization obtained in Step 1. You can also obtain the tenant ID for your organization on the **Overview** blade in the Azure AD admin center. This is used to identify your organization. |
   | `URI` | Verify that the value for this parameter is *https://webhook.ingestion.office.com/api/signals* |

6.	Select **Save**.
7.	Go to **Flow overview** and select **Turn on**.
8.	Test the flow manually by uploading a new file to your OneDrive for Business folder and verify that it runs successfully. This may take a few minutes after the upload before the flow is triggered.
9.	You can now monitor the connector as described in Step 5.

If needed, you can update the flow to create triggers based on file availability and modification events on SharePoint and other data sources supported by Power Automate flows.

## Next steps

- [Create custom indicators in insider risk management](insider-risk-management-settings-policy-indicators.md#custom-indicators)
- [Use the custom indicators in policies as triggers or indicators and define thresholds](insider-risk-management-configure.md#step-6-required-create-an-insider-risk-management-policy)