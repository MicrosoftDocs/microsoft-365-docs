---
title: "Use migration assistant for Microsoft Purview DLP"
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
description: "Learn how to use the migration assistant for Microsoft Purview DLP to migrate your DLP policies from other DLP platforms to Microsoft's DLP platform."
---

# Use migration assistant for Microsoft Purview DLP

This article takes you through an instance of migration using the [migration assistant tool for Microsoft Purview DLP](migration-assistant-for-dlp-learn.md). 

Before you start with migration, ensure you've met the prerequisites mentioned below:

- Complete the steps in the [Before you begin](migration-assistant-for-dlp-get-started.md#before-you-begin) section.
- You upload XML file exports of your DLP policies exported from Symantec DLP 15.7 or earlier.
- You review and edit your DLP policy.
- You create a new DLP policy in your Microsoft 365 tenant equivalent to your input policy.

Once a policy is migrated, you'll test and tune it in Microsoft Purview DLP.

## Start Migration

Use these steps to perform a DLP policy migration:

- [Step 1: Log in to your account](#step-1-log-in-to-your-account)
- [Step 2: Upload your Symantec policy](#step-2-upload-your-symantec-policy)
- [Step 3: Edit policy settings](#step-3-edit-policy-settings)
- [Step 4: Review pre-migration feasibility report](#step-4-review-pre-migration-feasibility-report)
- [Step 5: Test or turn on your policies](#step-5-test-or-turn-on-your-policies)
- [Step 6: Migration Progress](#step-6-migration-progress)
- [Step 7: View your migration report](#step-7-view-your-migration-report)
- [Next Steps: After policy import](#next-steps-after-policy-import)

### Step 1: Log in to your account

After you've installed and launched the migration assistant for Microsoft Purview DLP, the first thing that you need to do is to log in.

> [!IMPORTANT]
> The first time you launch the migration assistant, please choose **Run as administrator** option. This is required as the migration assistant may need to install additional dependencies if they are not already available on your machine. 
For all subsequent launches you may launch the migration assistant normally and do not need to run as administrator.

:::image type="content" source="../media/migration-assistant-run-as-admin.png" alt-text="Screenshot of migration assistant Run as administrator dialog box":::

1. You'll be greeted with a welcome screen.
    1. Click the **Get Started** button and migration assistant will check if your environment is set up correctly.

     :::image type="content" source="../media/migration-assistant-get-started-screen.png" alt-text="Screenshot of MAMPD Get Started screen":::
     
     1. Click **Next**.
     :::image type="content" source="../media/migration-assistant-environment-setup.png" alt-text="Screenshot of MAMPD setup":::
1. You'll be taken to the Login screen.
    1. Enter your username and click **Login**.
     :::image type="content" source="../media/migration-assistant-username-entry.png" alt-text="Screenshot of the MAMPD username input":::
    1. Enter your password in the browser window that opens.
     :::image type="content" source="../media/migration-assistant-login-complete.png" alt-text="Screenshot of entering MAMPD password":::
1. You need to wait until your login is validated. Simultaneously, migration assistant fetches information that will be required in later stages of the migration process.
     :::image type="content" source="../media/login-fetching-details.png" alt-text="Screenshot of teh screen fetching details":::
1. Once you'er logged in, click anywhere on the tool window. The **Next** button should now be enabled.

     You can click on the Next button and move to the next step in the migration process.
     :::image type="content" source="../media/login-next-page-mampd.png" alt-text="Screenshot of completion of fetching MAMPD login details":::

### Step 2: Upload your Symantec policy

Next, you need to upload your Symantec DLP policy exports. These are the input for migration assistant. The policies you upload will be the ones that will be migrated to the Microsoft DLP platform.

1. To upload the files, you need to click on ‘Browse files’ button.

     :::image type="content" source="../media/upload-dlp-files.png" alt-text="Screenshot of uploading DLP files by clicking Browse":::

1. Select the required policy files in the File Explorer pop-up window and click ‘Open’.
     1. You can select more than one XML file to migrate multiple policies at a time. Based on our initial engagement with some customers, we've learned that it's best to migrate anywhere from one to three policies at a time to avoid confusion during later stages of the migration process.

     > [!NOTE]
     > Ensure that the XML files you upload are Symantec DLP policy exports only and no other kind of XML.

     :::image type="content" source="../media/save-as-xml.png" alt-text="Screenshot of saving DLP as XML":::

1. The tool will show you a list of your selected input policy files.
     1. If you wish to deselect a previously selected policy file, you can click the delete icon corresponding to that policy.
     :::image type="content" source="../media/upload-dlp-policies.png" alt-text="Screenshot of uploading DLP Policies to migrate":::
1. Once you have completed selection of the policy files you wish to migrate, you can click ‘Next’ and move to the next step.

### Step 3: Edit policy settings

Once you input the policies you want to migrate, migration assistant will process those files and auto-map Symantec DLP policy elements to Microsoft DLP elements.

There may be some items that may need your review and will be marked with 'warning symbol' needs review.

 :::image type="content" source="../media/edit-policy-settings.png" alt-text="Screenshot of editing DLP policy settings":::

#### Keywords, Data Identifiers and Regular Expressions

Symantec DLP and Microsoft DLP differ in how they allow users to define sensitive information that needs to be protected.

Microsoft DLP allows users to define sensitive information that needs to be protected as sensitive information types (SIT). Microsoft provides many commonly used SITs like Credit Card Number that are preconfigured. If these don't meet your needs, you can create your own custom SITs.

The most common ways in which Symantec users specify what kind of sensitive information needs to be protected are:

- Use out-of-box (OOB) Data Identifiers
- Customize OOB Data Identifiers
- Define regular expressions and/or keywords in DLP rules

migration assistant takes care of each of the above scenarios in one of two ways:

- **Map to an existing OOB SIT:** For all sensitive data types for which there exists an equivalent SIT in Microsoft DLP, migration assistant will try to map to do a 1:1 mapping. It automatically maps OOB Symantec Data Identifiers to preconfigured Microsoft SITs if an equivalent exists. If you want to bring the Symantec Data Identifier over as-is, then you can create a new SIT as described in the next step.

- **Migrate as a new custom SIT** For all sensitive data types for which there isn't an equivalent SIT available in Microsoft DLP, migration assistant will automatically opt to create a new SIT. It will automatically create a new SIT for all OOB Symantec Data Identifiers for which no equivalent SIT in Microsoft DLP is available. Similarly, any regular expression(s) or keyword(s) defined directly in rules will be brought over as a new Custom SIT.

> [!NOTE]
> Regular expressions and/or keywords defined directly at the rule-level in Symantec policies will take on the name of the rule itself and show in the Source column. In case of multiple regular expressions and/or keywords, it will take the name of the rule name followed by roman numerals.
>
>Each of these will be migrated separately as a Custom SIT. This may lead to confusion and we recommend you review and rename these SITs as soon as possible.
>
>You cannot edit the name of these SITs within migration assistant. You can edit the names of these Custom SITs from Compliance Center or via PowerShell after the policy migration has been completed.

#### Inclusions, Exclusions and Response Rules

The current version of migration assistant brings over policies with ‘*Generate Incident Report*’ as a default action. Also, DLP policies in Microsoft DLP automatically log events in Unified Audit Log and don't need to have a separate action equivalent to ‘Syslog’ in Symantec DLP.

All other response rules in Symantec are currently not supported by migration assistant and thus not migrated along with other policy elements. However, you can manually add (or remove) actions to the policies using Compliance Center after migration assistant has successfully migrated the policies.

1. You'll be able to see a list of all your policies and rules within them along with a status for the same. You can select different policies from the left column to see Details for each policy.
    1. By default, the tool will display all items that Need Review. You can toggle to see all items in a given policy by choosing the **Show All Items** button at the top of the Details section.

     :::image type="content" source="../media/edit-policy-settings-mampd.png" alt-text="Screenshot of Show All Items":::

1. Policy Details
    1. Policy Name - You can edit the name of the policy before migration.

Each policy will be divided into two sections:
    - Keywords, Data Identifiers and Regular Expressions: These will be migrated as Sensitive Information Types (SIT) in Microsoft DLP.
    - Rules: These will be automatically mapped to different Microsoft DLP conditions and exceptions.

Each row in the table will show: 
    - Name of that the SIT will take up post-migration
    - Potential issues that may affect migration
    - Type of rule as detected from the input policy
    - Status:
        - Blank / empty status: This row element will be migrated without issues.
        - Needs Review: This row element may have one or more issues and may need some input from you.
        - Informational: This row element may have one or more changes needed for migration but will be auto-resolved.
        - Unsupported: This row element isn't supported for migration by the tool and may need to be migrated manually after tool exits.
     - Edit button

Extend policy coverage to other Microsoft locations
  - You have the option to extend your current Symantec policies to other Microsoft locations in addition to the original scope of the policy.

         For example: An email (Exchange) DLP policy can be extended to SharePoint, OneDrive, Teams, and Endpoint Devices.

migration assistant will auto-create a new policy based on the original policy with all supported rules for that given workload. One or more rules may be dropped if not supported for a given workload.

         For example: Email subject is condition may be dropped while extending an email (Exchange) DLP policy to OneDrive.

Some checkboxes may be disabled by default if there are no supported conditions available to be extended locations.

1. Editing a row element

     :::image type="content" source="../media/edit-row-edit-policy-settings-dlp.png" alt-text="Screenshot of editing a row in Edit Policy Settings":::

When you click Edit button for one or more row elements, you'll be navigated to an Edit screen with more details about that row element.

     :::image type="content" source="../media/save-sensitive-information.png" alt-text="Screenshot of editing Sensitive Information Type":::

If there’s any issue, it will be reported by a yellow banner at the top of the screen. You may make changes to the content in the editable sections, and these will be incorporated at the time of migration. Once you resolve the issues in the content, the yellow banner will go away.

Use existing SITs from tenant to auto replace current SIT.

You may choose to replace the current SIT (which is being edited) with another SIT from your tenant.

         :::image type="content" source="../media/sit-content.png" alt-text="Screenshot of editing SIT content":::

You can manually change any of the mappings if you wish to by clicking on the corresponding row in the ‘Target’ column. 

This will open a drop-down list with all the out-of-box SITs (OOB SITs) and all the custom SITs (if any) that you may have previously created. You can choose the option to which you wish to map to the ‘Source’ row item.

Alternatively, you can also choose the option ‘New SIT’ from the drop-down and migration assistant will bring over the Source SIT as a new Custom SIT.

> **Recommendation**
>
> We highly recommend using existing SITs to replace current SITs wherever possible as it will help reduce duplicate SIT creation and also allow you reduce effort on optimizing multiple custom SITs of the same kind. Learn more about [sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).

>[!WARNING]
> Microsoft DLP platform has a threshold for up to 10 rule packages per tenant. This limit is enough for most customers, but the creation of many duplicate Custom SITs may quickly lead you to hitting this threshold without the ability to create any new Custom SITs.

1. After you've reviewed all the policies and the rules within them, click **Next**. If one or more of the policies contain at least one element with Needs Review status, then you’ll see a Continue with errors button instead of Next.

### Step 4: Review pre-migration feasibility report

Next, the migration assistant will provide you with a pre-migration feasibility report showing overall coverage & migration feasibility at the policy level.

 :::image type="content" source="../media/review-dlp-policies.png" alt-text="Screenshot of Review your Policies":::

1. Migration Summary
     - Policy stats: It will show how many policies can be migrated completely, partially or can't be migrated.
     - SIT stats: It will show how many SITs (keywords, data identifiers will be migrated.

1. Policy table
     - Policy name: Name of the policy that will be migrated.
     - Migration Feasibility: This field indicates if a policy can be migrated completely, partially or isn't supported for migration.
     - Target policy count: This field indicates the number of policies that will be created in Microsoft DLP for the corresponding Symantec DLP policy. 
     - Workloads covered: This field indicates a list of all workloads that will be covered by all the target policies that will be created in Microsoft DLP.
     - Unsupported items: This field indicates a list of all conditions, exceptions, and actions (response rules) that may not be supported for migration.
     - Delete button: This button will remove the selected policy from the scope of migration.

1. Click Next to move to the next step.

### Step 5: Test or turn on your policies

Finally, after you've completed all the previous steps, your Symantec DLP policy is ready to be imported to Microsoft DLP platform.
 
 :::image type="content" source="../media/start-migration.png" alt-text="Screenshot of DLP Policy migration":::

1. The last thing that you need to do before the policies are imported is to choose whether to turn on or off the imported policies.

     There are three options you can choose from:

     - Turn on policy immediately.
     - Turn on policy in test mode first. Remove from test mode later manually.
     - Turn off policy. Turn it on later manually.

     > **Recommendation:** We recommend that you choose to bring over policies first in test mode. You can monitor the alerts that the policy generates and fine-tune it as required by your organization.
     >
     >Once your policy is fine-tuned, you can turn it on or in other words put it into production.

2. Next, click ‘Connect and Import’ to import your policy. A new PowerShell window will open asking you to login again.

     After you log in, PowerShell scripts will get executed to create new policies in Microsoft DLP platform with all the data in the input policy files, and any other settings you made during previous migration assistant steps.

     Wait until the script completes execution with a Success/Failure message. Thereafter, new SITs and policies will start showing up in Compliance Center as well.

### Step 6: Migration Progress

In this step, migration assistant will work on creating policies in Microsoft DLP.

1. You must wait while policy creation is in progress.

     > [!NOTE]
     > Refrain from closing the tool window while policies are being created as it may cause incomplete SITs and policies to be created which you may need to manually clean up later.

     :::image type="content" source="../media/migration-dlp-progress.png" alt-text="Screenshot of the Migration in process":::
2. In case an error occurs during migration, you'll have the option to:

     a. Try Again: Policy creation will be attempted again.

     b. Roll back all changes: All SITs and policies for that session will be deleted.

     c. Rollback failed policies: Only the failed SITs and policies for that session will be deleted.
     :::image type="content" source="../media/errors-migration-options.png" alt-text="Screenshot of errors that can occur during Migration process":::

    >[!NOTE]
    > When you choose to rollback any changes, it may take 2 – 4 hours for the entire rollback to take place. migration assistant tool window needs to be kept open for the entire duration for successful rollback.
    >
    >This long duration is because first the created policies are deleted which take a while to reflect on the MIP platform. Following that, the underlying Sensitive Information Types (SITs) are deleted. Everything cannot be deleted at once since SITs being used in any policy cannot be deleted until that policy exists.
3. Once the policies are migrated, click Next to view the migration report.
 :::image type="content" source="../media/all-set-migration.png" alt-text="Screenshot of Migration process complete":::

### Step 7: View your migration report

Once your policies are imported and the migration process is complete, then you can view the migration report.

:::image type="content" source="../media/migration-report.png" alt-text="Screenshot of migration report":::

For each session, a separate report is generated. We define a session from when the user launches the app, and the session ends when migration process is completed, or user exits the app.

#### Technical Report

You can use the Save Technical Report button to save a more detailed excel-based report that is divided into three different sheets:

- Overview
- Policy Details
- SIT Details

**Overview Sheet:** As the name suggests, it provides an overview of the migration session.

:::image type="content" source="../media/overview-sheet-dlp-migration.png" alt-text="Screenshot of the Overview-excel":::

It provides the following information:

- Your tenant’s name.
- Date of session.
- Overall summary stats for that session.
- Input policy level details, migration status and comments/recommendations.

**Policy Details:** This sheet provides a more detailed view of each migrated (or output) policy created or not created.

:::image type="content" source="../media/creation-of-policy-status.png" alt-text="Screenshot of Policy creation status-excel":::

It provides the following information:

- Mapping of source policy and target policy(s) created.
- List of workloads each policy is applied to.
- Analysis status for each policy highlights if migration assistant can migrate the policy completely, partially or can't migrate.
     - For workloads other than Exchange, this would typically show as ‘Complete’ since we create a simple policy with the ‘Content contains’ condition, which is supported across all workloads.
- Migration status for each policy will tell you if the policy was migration was a success or failure.
- The Comments/recommendations column will provide you with more details related to that policy.

**SIT Details:** This sheet provides information about all the Sensitive Information Types that were migrated.

:::image type="content" source="../media/sit-migration.png" alt-text="Screenshot of SITs migrated-excel":::

It provides the following information:
- Policy-wise mapping of input & output SIT created.
- Validation fixes column will provide information about validation errors that occurred during the migration process (if any)
- Comments column tells you about SIT auto-mapping, remediation steps, etc.

### Next Steps: After policy import

You should go to the Compliance Center and validate that the policies were migrated successfully for all the policies that were migrated in the session.

#### Check Sensitive Information Types

1. Validate that the SITs were created.
    1. Choose ‘Data Classification’ from left panel and navigate to ‘Sensitive Information Type’ tab and check if new SITs are created. To make this easier, you can sort the list on ‘Publisher’ and check for SITs with publisher name as “DLP Migration Tool”.

1. Rename SITs as needed.
    1. For many SITs, you may notice there are similar names often followed by roman numerals. To avoid confusion and duplication post-migration, we recommend you rename these SITs now. This is especially true in cases where your regular expressions and keywords are defined directly in rules within your input Symantec DLP policies.

1. Test and fine-tune SITs as needed.
    1. We should test and fine tune the migrated SITs. migration assistant creates new SITs with a few standard settings, which may not or may not be optimal for your tenant. Here are few things to look at:
        1. Regular expressions
        1. Unsupported or deleted regexes (during migration)
        1. Keywords
            1. Case sensitive versus insensitive keywords
            1. String versus word match
            1. Proximity
        2. Optional validators

#### Check DLP Policies

1. Validate that the DLP policies were created.
    1. Choose ‘Data Loss Prevention’ from left panel and check if new policies are created. 
1. Add any missing policy elements.
    1. While most of your input Symantec DLP policy elements (like conditions, exclusions, or actions) will get migrated, often a few elements from your input Symantec DLP policy may get dropped during the migration process. This is a known limitation of migration assistant. In any of these scenarios, these elements are supported by the Microsoft 365 DLP platform and you'll have to manually add these elements to the policy.  
1. Test and fine-tune the policy.
    1. Once your policy is properly configured with all requisite elements, you should test the policy and fine-tune it as per the needs of your organization.
1. Turn the policy on.
    1. Once your policy is tested and fine-tuned as per the needs of your organization, you can go ahead and ‘Turn on’ this policy. In other words, put the policy in production mode.
1. Bring over any remaining policies.
    1. Once you've completed the above checks, you can go back to bringing over the next policy or next batch policies using migration assistant.

## Troubleshooting

1. Welcome screen / Get Started error 
    1. If you see an error on Welcome screen after clicking Get Started button:
        1. Confirm that you've installed all the pre-requisites using the same links/versions as mentioned in “Before you start” section of this document.
        1. Ensure that you've restarted the machine after installing the pre-requisites from the above step.
        1. Check if you're running the tool in admin mode using Run as administrator option while starting the application
     1. Check if your PowerShell module path is set correctly.
     1. Go to edit system environment variables
     1. Add this path in PsModulePath system variable: `C:\Program Files\PowerShell\7\Modules`
     1. Move this up and keep at top.
     1. Restart the tool in admin mode.

1. If you're not able to install/uninstall due to another process install issue.
    1. Follow the steps mentioned by Greg Carmack: [Windows 10- "Another program is being installed please wait until - Microsoft Community](https://answers.microsoft.com/en-us/windows/forum/all/windows-10-another-program-is-being-installed/9230c1d1-58af-44c5-b6d0-ba275cad46b5).
    1. This is a Windows issue not a tool issue. Some app is getting installed from system causing this.
    1. Alternatively, you may wait till the installation is finished then you can install tool.
1. Report issues to Microsoft
    1. Collect logs: Find the logs generated by the migration assistant on your local machine at the following path: `C:\Users\<username>\AppData\Local\Temp\MigrationAssistantforMicrosoftPurviewDLP\Logs`
    1. Send Email: Send us the details about your issue along with the latest logs at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / Fasttrack / Microsoft partner to share your feedback and suggestions.

### Reporting Errors & Providing Feedback

To report errors, raise feature requests or share more feedback you can reach out to us at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / Fasttrack / Microsoft partner to share your feedback and suggestions.

### Telemetry Notice

Data Collection: This software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. If you wish to turn off telemetry, please reach out to us, and we'll provide you with a separate version of tool with telemetry turned off. There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft's privacy statement. Our privacy statement is located at [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkID=824704). You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.

## See also

- [Learn about migration assistant for Microsoft Purview DLP](migration-assistant-for-dlp-learn.md)
- [Get started with migration assistant for Microsoft Purview DLP](migration-assistant-for-dlp-get-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
