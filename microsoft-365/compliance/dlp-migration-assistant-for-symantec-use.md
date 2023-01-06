---
title: "Use the Microsoft Purview Data Loss Prevention migration assistant for Symantec"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid:
- MET150
description: "Learn how to use the Microsoft Purview Data Loss Prevention migration assistant for Symantec to migrate your DLP policies from other DLP platforms to Microsoft's DLP platform."
---

# Use the Microsoft Purview Data Loss Prevention migration assistant for Symantec (preview)

This article takes you through an instance of migration using the [Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md).

Before you start with migration, ensure you've met the following prerequisites:

- Complete the steps in the [Before you begin](dlp-migration-assistant-for-symantec-get-started.md#before-you-begin) section.
- Ensure that you've exported the required XML files from your Symantec DLP instance.

Once a policy is migrated, you can test and fine-tune it in Microsoft Purview DLP.

## Steps for migration

Use these steps to perform a DLP policy migration:

- [Step 1: Log in to your account](#step-1-log-in-to-your-account)
- [Step 2: Upload your Symantec policy](#step-2-upload-your-symantec-policy)
- [Step 3: Edit policy settings](#step-3-edit-policy-settings)
- [Step 4: Review pre-migration feasibility report](#step-4-review-pre-migration-feasibility-report)
- [Step 5: Test or turn on your policies](#step-5-test-or-turn-on-your-policies)
- [Step 6: Migration in progress](#step-6-migration-in-progress)
- [Step 7: View your migration report](#step-7-view-your-migration-report)
- [Next Steps: After policy import](#next-steps-after-policy-import)

### Step 1: Log in to your account

After you've installed and launched the Microsoft Purview Data Loss Prevention migration assistant for Symantec, the first thing that you need to do is to log in.

> [!IMPORTANT]
> The first time you launch the migration assistant, please choose **Run as administrator** option. This is required as the migration assistant may need to install additional dependencies if they are not already available on your machine.
>
> For all subsequent launches, you may launch the migration assistant normally and don't need to run as administrator.

:::image type="content" source="../media/migration-assistant-run-as-admin.png" alt-text="Screenshot of the migration assistant run as administrator dialog box.":::

1. You'll be greeted with a welcome screen.
    1. Click the **Get Started** button and the migration assistant will check if your environment is set up correctly.
     :::image type="content" source="../media/migration-assistant-get-started-screen.png" alt-text="Screenshot of MAMPD Get Started screen.":::
     2. Click **Next**.
     :::image type="content" source="../media/migration-assistant-environment-setup.png" alt-text="Screenshot of MAMPD setup.":::
2. You'll be taken to the Login screen.
    1. Enter your username and click **Login**.
     :::image type="content" source="../media/migration-assistant-username-entry.png" alt-text="Screenshot of the MAMPD username input.":::
    2. Enter your password in the browser window that opens and click **Sign in**.
     :::image type="content" source="../media/migration-assistant-login-complete.png" alt-text="Screenshot of entering MAMPD password.":::
3. You need to wait until your login is validated. Simultaneously, the migration assistant fetches information that will be required in later stages of the migration process.
   :::image type="content" source="../media/login-fetching-details.png" alt-text="Screenshot of the screen fetching details.":::
4. Once you're logged in, click anywhere on the tool window. The **Next** button should now be enabled.

   You can click on **Next** and move to the next step in the migration process.
   :::image type="content" source="../media/login-next-page-mampd.png" alt-text="Screenshot of completion of fetching MAMPD login details.":::

### Step 2: Upload your Symantec policy

You need to upload your Symantec DLP policy exports, which act as input for the migration assistant. The policies you upload will be the ones that will be migrated to the Microsoft DLP platform.

1. To upload the files, you need to click on **Browse** button.
 :::image type="content" source="../media/upload-dlp-files.png" alt-text="Screenshot of uploading DLP files by clicking Browse.":::
2. Select the required policy files in the File Explorer pop-up window and click **Open**.
     1. You can select more than one XML file to migrate multiple policies at a time. Based on our initial engagement with some customers, we've learned that it's best to migrate anywhere from one to three policies at a time to avoid confusion during later stages of the migration process.

         > [!NOTE]
         > Ensure that the XML files you upload are Symantec DLP policy exports only and no other kind of XML.

        :::image type="content" source="../media/save-as-xml.png" alt-text="Screenshot of saving DLP as XML.":::
3. The tool will show you a list of your selected input policy files.
     1. If you wish to deselect a previously selected policy file, you can click the delete icon corresponding to that policy.
      :::image type="content" source="../media/upload-dlp-policies.png" alt-text="Screenshot of uploading DLP Policies to migrate.":::
4. Once you've completed with the selection of policy files you wish to migrate, click **Next** and move to the next step.

### Step 3: Edit policy settings

Once you input the policies you want to migrate, the migration assistant will process those files and auto-map Symantec DLP policy elements to Microsoft DLP elements.

> [!IMPORTANT]
> There may be some items that may need your review and will be marked with 'warning symbol'.

 :::image type="content" source="../media/edit-policy-settings.png" alt-text="Screenshot of editing DLP policy settings.":::

#### Keywords, Data Identifiers and Regular expressions

Symantec DLP and Microsoft DLP differ in how they allow users to define sensitive information that needs to be protected.

Microsoft DLP allows users to define sensitive information that needs to be protected as sensitive information types (SITs). Microsoft provides many commonly used SITs like Credit Card Number that is preconfigured. If these don't meet your needs, you can create your own custom SITs.

The most common ways in which Symantec users specify the types of sensitive information that need to be protected are:

- Use out-of-box (OOB) Data Identifiers
- Customize OOB Data Identifiers
- Define regular expressions and/or keywords in DLP rules

The migration assistant takes care of each of the above scenarios in one of these two ways:

- **Map to an existing OOB SIT:** For all sensitive data types for which there exists an equivalent SIT in Microsoft DLP, the migration assistant will attempt to create a 1:1 mapping. It automatically maps OOB Symantec Data Identifiers to pre-configured Microsoft SITs, if an equivalent exists. If you want to bring the Symantec Data Identifier over as-is, then you can create a new SIT as described in the next step.

- **Migrate as a new custom SIT:** For all sensitive data types for which there isn't an equivalent SIT available in Microsoft DLP, the migration assistant will automatically opt to create a new SIT. It will automatically create a new SIT for all OOB Symantec Data Identifiers for which no equivalent SIT in Microsoft DLP is available. Similarly, any regular expression(s) or keyword(s) defined directly in rules will be brought over as a new custom SIT.

> [!NOTE]
> Regular expressions and/or keywords defined directly at the rule-level of Symantec policies will take on the name of the rule itself and show in the Source column. In case of multiple regular expressions and/or keywords, it will take the name of the rule name followed by roman numerals.
>
>Each of these will be migrated separately as a custom SIT. This may lead to confusion and we recommend you review and rename these SITs as soon as possible.
>
>You cannot edit the name of these SITs within the migration assistant. You can edit the names of these custom SITs from Compliance Center or via PowerShell after the policy migration has been completed.

#### Inclusions, Exclusions and Response Rules

The current version of the migration assistant brings over policies with ‘*Generate Incident Report*’ as a default action. Also, DLP policies in Microsoft DLP automatically log events in Unified Audit Log and won't need a separate action equivalent to ‘Syslog’ in Symantec DLP.

All other response rules in Symantec are currently not supported by the migration assistant and thus not migrated along with other policy elements. However, you can manually add (or remove) actions to the policies using Compliance Center after the migration assistant has successfully migrated the policies.

1. You'll be able to see a list of all your policies and rules within them along with their status. You can select different policies from the left column to see Details for each policy.
    1. By default, the tool will display all items that need review. You can toggle to see all items in a given policy by choosing the **Show All Items** button at the top of the Details section.
      :::image type="content" source="../media/edit-policy-settings-mampd.png" alt-text="Screenshot of Show All Items.":::
2. Policy Details
    1. Policy Name - You can edit the name of the policy before migration.
    2. Each policy will be divided into two sections:
    - Keywords, Data Identifiers and Regular expressions: These will be migrated as sensitive information types (SITs) in Microsoft DLP.
    - Rules: These will be automatically mapped to different Microsoft DLP conditions and exceptions.
    3. Each row in the table will show:
    - The name that the SIT will have when migrated
    - Potential issues that may affect migration
    - Type of rule as detected from the input policy
    - Status:
        - Blank/empty status: This row element will be migrated without issues.
        - Needs Review: This row element may have one or more issues and may require some input from you.
        - Informational: This row element may have one or more changes needed for migration but will be auto-resolved.
        - Unsupported: This row element isn't supported for migration by the tool and may need to be migrated manually after the tool exits.
    - Edit button
    4. Extend policy coverage to other Microsoft locations.
    - You can extend your current Symantec policies to other Microsoft locations in addition to the original scope of the policy.

        For example: An email (Exchange) DLP policy can be extended to SharePoint, OneDrive, Teams, and Endpoint Devices.

    - The migration assistant will auto-create a new policy based on the original policy with all supported rules for that given workload. One or more rules may be dropped if not supported for a given workload.

        For example: Email subject is condition may be dropped while extending an email (Exchange) DLP policy to OneDrive.

    - Some checkboxes may be disabled by default, if there are no supported conditions available in extended locations.

3. Editing a row element:

   :::image type="content" source="../media/edit-row-edit-policy-settings-dlp.png" alt-text="Screenshot of editing a row in Edit Policy Settings.":::

    1. When you click **Edit** button for one or more row elements, you'll be navigated to an Edit screen with more details about that row element.
      :::image type="content" source="../media/save-sensitive-information.png" alt-text="Screenshot of editing Sensitive Information Type.":::
    2. If there’s any issue, it will be reported by a yellow banner at the top of the screen.
    3. You may need to make changes to the content in the editable sections, and those changes will be incorporated at the time of migration. 
    - Once you resolve the issues in the content, the yellow banner will disappear.
    4. Use existing SITs from tenant to auto replace current SIT.
    - You may choose to replace the current SIT (which is being edited) with another SIT from your tenant.
         :::image type="content" source="../media/sit-content.png" alt-text="Screenshot of editing SIT content.":::
    - You can manually change any of the mappings if you wish to, by clicking on the corresponding row in the ‘Target’ column.
    This will open a drop-down list with all the out-of-box SITs (OOB SITs) and all the custom SITs (if any) that you may have previously created. You can choose the option to which you wish to map to the ‘Source’ row item. Alternatively, you can also choose the option ‘New SIT’ from the drop-down and the migration assistant will bring over the Source SIT as a new custom SIT.

   > **Recommendation**
   >
   > We highly recommend using existing SITs to replace current SITs wherever possible as it will help reduce duplicate SIT creation and also allow you reduce effort on optimizing multiple custom SITs of the same kind. Learn more about [sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).
  
   >[!WARNING]
   > Microsoft DLP platform has a threshold for up to 10 rule packages per tenant. This limit is enough for most customers, but the creation of many duplicate custom SITs may quickly lead you to hitting this threshold without the ability to create any new custom SITs.

4. After you've reviewed all the policies and the rules within them, click **Next**.
    1. If one or more of the policies contain at least one element with *Needs Review* status, then you’ll see a **Continue with errors** button instead of **Next**.

### Step 4: Review pre-migration feasibility report

The migration assistant will provide you with a pre-migration feasibility report showing overall coverage & migration feasibility at the policy level.

 :::image type="content" source="../media/review-dlp-policies.png" alt-text="Screenshot of Review your Policies.":::

1. The pre-migration feasibility report shows:
    - Migration Summary
       - Policy stats: It shows how many policies can be migrated completely, partially or can't be migrated.
       - SIT stats: It shows how many SITs (keywords, data identifiers will be migrated).
    - Policy table
       - Policy name: Name of the policy that will be migrated.
       - Migration Feasibility: This field indicates if a policy can be migrated completely, partially or isn't supported for migration.
       - Target Policy Count: This field indicates the number of policies that will be created in Microsoft DLP for the corresponding Symantec DLP policy.
       - Workloads Covered: This field indicates a list of all workloads that will be covered by all the target policies that will be created in Microsoft DLP.
       - Unsupported Items: This field indicates a list of all conditions, exceptions, and actions (response rules) that may not be supported for migration.
       - Delete button: This button will remove the selected policy from the scope of migration.

2. After reviewing, click **Next** to move to the next step.

### Step 5: Test or turn on your policies

After you've completed all the previous steps, your Symantec DLP policy is ready to be imported to Microsoft DLP platform.

 :::image type="content" source="../media/start-migration.png" alt-text="Screenshot of DLP Policy migration.":::

1. You need to choose whether to turn on or off the imported policies before the policies are imported. There are three options you can choose from:
    - Turn on policy immediately.
    - Turn on policy in test mode first. Remove from test mode later manually.
    - Turn off policy. Turn it on later manually.

     > **Recommendation:** We recommend that you choose to bring over policies first in test mode. You can monitor the alerts that the policy generates and fine-tune it as required by your organization.
     >
     >Once your policy is fine-tuned, you can turn it on or in other words put it into production.

2. Click **Start Migration** to import your policy. A new PowerShell window will open asking you to log in again.

    After you log in, PowerShell scripts will get executed to create new policies in Microsoft DLP platform with all the data in the input policy files, and any other settings you made during the previous migration assistant steps.

    Wait until the script completes execution with a Success/Failure message. Thereafter, new SITs and policies will start showing up in Compliance Center as well.

### Step 6: Migration in progress

In this step, the migration tool will create DLP policies in Microsoft Compliance Center.

1. You must wait while policy creation is in progress.

    > [!NOTE]
    > Refrain from closing the tool window while policies are being created as it may cause incomplete SITs and policies which may require you to manually clean up later.

    :::image type="content" source="../media/migration-dlp-progress.png" alt-text="Screenshot of the Migration in process.":::
2. In case an error occurs during migration, you can choose an action to perform.
    :::image type="content" source="../media/errors-migration-options.png" alt-text="Screenshot of errors that can occur during Migration process.":::
    You'll have to click on one of these options:
    - **Try Again**: Policy creation will be attempted again.
    - **Rollback all changes**: All SITs and policies for that session will be deleted.
    - **Rollback failed policies**: Only the failed SITs and policies for that session will be deleted.

    >[!NOTE]
    > When you choose to rollback any changes, it may take 2 – 4 hours for the entire rollback to take place. The migration assistant tool window needs to be kept open for the entire duration for successful rollback.

3. Once the policies are migrated, click **Next** to view the migration report.
    :::image type="content" source="../media/all-set-migration.png" alt-text="Screenshot of Migration process complete.":::

### Step 7: View your migration report

Once your policies are imported and the migration process is complete, then you can view the migration report.

 :::image type="content" source="../media/migration-report.png" alt-text="Screenshot of migration report.":::

For each session, a separate report is generated. We define a session from when the user launches the app, and the session ends when migration process is completed, or user exits the app.

#### Technical report

You can use the **Save Technical Report** button to save a more detailed excel-based report that is divided into three different sheets:

- Overview
- Policy Details
- SIT Details

**Overview Sheet:** As the name suggests, it provides an overview of the migration session.

:::image type="content" source="../media/overview-sheet-dlp-migration.png" alt-text="Screenshot of the Overview-excel.":::

It provides the following information:

- Your tenant’s name.
- Timestamp of session.
- Overall summary stats for that session.
- Input policy level details, migration status and comments/recommendations.

**Policy Details:** This sheet provides a more detailed view of each migrated (or output) policy created or not created.

:::image type="content" source="../media/creation-of-policy-status.png" alt-text="Screenshot of Policy creation status-excel.":::

It provides the following information:

- Mapping of source policy and target policy(s) created.
- List of workloads each policy is applied to.
- Analysis status for each policy highlights if the migration assistant can migrate the policy completely, partially or can't migrate.
     - For workloads other than Exchange, this would typically show as ‘Complete’ since we create a simple policy with the ‘Content contains’ condition, which is supported across all workloads.
- Migration status for each policy describing if the policy migration was a success or failure.
- The Comments/recommendations column will provide you with more details related to that policy.

**SIT Details:** This sheet provides information about all the sensitive information types (SITs) that were migrated.

:::image type="content" source="../media/sit-migration.png" alt-text="Screenshot of SITs migrated-excel.":::

It provides the following information:

- Policy-wise mapping of Input & Output SITs created.
- Validation fixes column will provide information about validation errors that occurred during the migration process (if any).
- Comments column tells you about SIT auto-mapping, remediation steps, etc.

### Next steps: After policy import

You should go to the Compliance Center and validate that the policies were migrated successfully for all the policies in a session.

#### Check Sensitive Information Types

1. **Validate that the SITs were created**

    Choose **Data Classification** from left panel and navigate to **Sensitive Information Type** tab to check if new SITs are created. To make this easier, you can sort the list on **Publisher** and check for SITs with publisher name as “DLP Migration Tool”.
2. **Rename SITs as needed**

    For many SITs, you may notice there are similar names often followed by roman numerals. To avoid confusion and duplication post-migration, we recommend you rename these SITs now. This is especially true in cases where your regular expressions and keywords are defined directly in rules within your input Symantec DLP policies.
3. **Test and fine-tune SITs as needed**

    You should test and fine-tune the migrated SITs. The migration assistant creates new SITs with a few standard settings, which may or may not be optimal for your tenant. Here are few things to look at:
     - Regular expressions: Unsupported or deleted regexes (during migration)
     - Keywords:
       -  Case sensitive versus insensitive keywords
       -  String versus word match
       -  Proximity
     - Optional validators

#### Check DLP Policies

1. **Validate that the DLP policies were created**

    Choose **Data Loss Prevention** from left panel and check if new policies are created.
2. **Add any missing policy elements**

    While most of your input Symantec DLP policy elements (like conditions, exclusions, or actions) will get migrated, often a few elements from your input Symantec DLP policy may get dropped during the migration process. This is a known limitation of the migration assistant. In any of these scenarios, these elements are supported by the Microsoft 365 DLP platform and you'll have to manually add these elements to the policy.  
3. **Test and fine-tune the policy**

    Once your policy is properly configured with all requisite elements, you should test the policy and fine-tune it as per the needs of your organization.
4. **Turn the policy on**

    Once your policy is tested and fine-tuned as per the needs of your organization, you can go ahead and **Turn on** this policy. In other words, put the policy in production mode.
5. **Bring over any remaining policies**

    Once you've completed the above checks, you can go back to bring over the next policy or next batch of policies using the migration assistant.

## Troubleshooting

1. Welcome screen/Get started error

    If you see an error on Welcome screen after clicking Get Started button:
     1. Confirm that you've installed all the pre-requisites using the same links/versions as mentioned in [Before you start](dlp-migration-assistant-for-symantec-get-started.md#before-you-begin).
     2. Ensure that you've restarted the machine after installing the pre-requisites from the above step.
     3. Check if you're running the tool in admin mode using **Run as administrator** option while starting the application.
     4. Check if your PowerShell module path is set correctly. To check:
         1. Go to edit system environment variables
         2. Add this path in PsModulePath system variable: `C:\Program Files\PowerShell\7\Modules`
         3. Move this up and keep at top.
         4. Restart the tool in admin mode.

2. If you're not able to install/uninstall due to another process install issue
    1. This is likely caused by another app installation.
    2. The following sequence of steps should resolve the problem:
          1. Right click task bar to open Task Manager. If necessary, show **More Details**.
          2. On **Details** tab, look for msiexec.exe, highlight to **End Task**.
          3. Now try to install or uninstall again.
    3. Alternatively, you may wait until the installation is finished and then you can install the tool.
3. Report issues to Microsoft
    1. **Collect logs**: Find the logs generated by the migration assistant on your local machine at the following path: `C:\Users\<username>\AppData\Local\Temp\MigrationAssistantforMicrosoftPurviewDLP\Logs`.
    1. **Send email**: Send us the details about your issue along with the latest logs at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / FastTrack / Microsoft partner to share your feedback and suggestions.

### Reporting errors & providing feedback

To report errors, raise feature requests, or share more feedback, you can reach out to us at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / FastTrack / Microsoft partner.

### Telemetry Notice

**Data Collection**: This software may collect information about you and your use of the software, and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. If you wish to turn off telemetry, reach out to us, and we'll provide you with a separate version of tool with telemetry turned off.

There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft's privacy statement. Our privacy statement is located at [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkID=824704). You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.

## See also

- [Learn about Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)
- [Get started with Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-get-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
