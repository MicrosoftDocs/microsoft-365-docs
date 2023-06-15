---
title: "Use the Microsoft Purview Data Loss Prevention migration assistant for Symantec"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
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

# Use the Microsoft Purview Data Loss Prevention migration assistant for Symantec

This article takes you through using the [Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md).

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
- [Step 7: View the migration report](#step-7-view-the-migration-report)
- [Next Steps: After policy import](#next-steps-after-policy-import)

## Interactive guide

Check out this [interactive guide](https://mslearn.cloudguides.com/guides/Use%20the%20Microsoft%20Purview%20DLP%20migration%20assistant) for a visual walk through of the migration process.

### Step 1: Log in to your account

After you've installed and launched the migration assistant, you need to log in.

> [!IMPORTANT]
> The first time you launch the migration assistant, please choose **Run as administrator** option. This is required as the migration assistant may need to install additional components if they're not already available on your machine.
>
> For all subsequent launches, you may launch the migration assistant normally and don't need to run as administrator.

:::image type="content" source="../media/migration-assistant-run-as-admin.png" alt-text="Screenshot of the migration assistant run as administrator dialog box.":::

1. You'll be greeted with a welcome screen.
      1. Select **Get Started** and the migration assistant will check if your environment is set up correctly.
      2. Select **Next**.
2. Enter your username and select **Login**.
      - Enter your password in the browser window that opens and select **Sign in**.
      
         > [!NOTE]
         > This application uses the Exchange Online PowerShell module. Basic authentication must be enabled in WinRM on the local computer. For more information, see [Prerequisites for the Exchange Online PowerShell module](/powershell/exchange/exchange-online-powershell-v2#prerequisites-for-the-exchange-online-powershell-module).
3. Wait until your login is validated. Simultaneously, the migration assistant fetches information that will be required in later stages of the migration process.
   :::image type="content" source="../media/login-fetching-details.png" alt-text="Screenshot of the screen fetching details.":::
4. Once you're logged in, choose **Next**.

### Step 2: Upload your Symantec policy

You need to upload your Symantec DLP policy exports, which act as input for the migration assistant. The policies you upload will be migrated to the Microsoft Purview DLP platform.

1. To upload the files, select **Browse**.
2. Select the required policy files in the File Explorer pop-up window and choose **Open**.
     1. You can select more than one XML file to migrate multiple policies at a time. It's best to migrate anywhere from one to three policies at a time to avoid confusion during later stages of the migration process.

         > [!NOTE]
         > Ensure that the XML files you upload are Symantec DLP policy exports only and no other kind of XML.

3. The tool will show you a list of your selected input policy files.
     1. If you wish to deselect a previously selected policy file, you can select the delete icon corresponding to that policy.
      :::image type="content" source="../media/upload-dlp-policies.png" alt-text="Screenshot of uploading DLP Policies to migrate.":::
4. Once you've completed with the selection of policy files you wish to migrate, select **Next** and move to the next step.

### Step 3: Edit policy settings

Once you input the policies you want to migrate, the migration assistant will process those files and map Symantec DLP policy elements to Microsoft DLP elements.

> [!IMPORTANT]
> There may be some items that may need your review and will be marked with 'Needs review' warning symbol.

 :::image type="content" source="../media/edit-policy-settings.png" alt-text="Screenshot of editing DLP policy settings.":::

#### Keywords, Data Identifiers and Regular expressions

Symantec DLP and Microsoft Purview Information Protection differ in how they allow users to define sensitive information that needs to be protected.

Microsoft Purview Information Protection allows users to define sensitive items that need protection as sensitive information types (SITs), or through trainable classifiers. Microsoft provides many commonly used SITs like Credit Card Number that are preconfigured. If these don't meet your needs, you can create your own custom SITs.

The most common ways in which Symantec users specify the types of sensitive information that need to be protected are:

- Using out-of-box (OOB) Data Identifiers
- Customizing OOB Data Identifiers
- Defining regular expressions and/or keywords in DLP rules

The migration assistant takes care of each of the above scenarios in one of these two ways:

- **Map to an existing OOB SIT:** For each sensitive data type for which there is an equivalent SIT in Microsoft DLP, the migration assistant will attempt to create a 1:1 mapping. It automatically maps OOB Symantec Data Identifiers to pre-configured Microsoft SITs, if an equivalent exists. If you want to bring the Symantec Data Identifier over as-is, then you can create a new SIT as described in the next step.

- **Migrate as a new custom SIT:** For each sensitive data type for which there isn't an equivalent SIT available in Microsoft DLP, the migration assistant will automatically create a new SIT. Similarly, any regular expression(s) or keyword(s) defined directly in rules will be brought over as a new custom SIT.

> [!NOTE]
> Regular expressions and/or keywords defined directly at the rule-level of Symantec policies will take on the name of the rule itself and show up in the **Source** column. In case of multiple regular expressions and/or keywords, it will take the name of the rule name followed by roman numerals.
>
>Each of these will be migrated separately as a custom SIT. This may lead to confusion. We recommend you review and rename these SITs as soon as possible.
>
>You can't edit the name of these SITs within the migration assistant. You can edit the names of these custom SITs from Microsoft Purview compliance portal or via PowerShell after the policy migration has been completed.

#### Inclusions, Exclusions and Response Rules

The current version of the migration assistant brings over policies with ‘*Generate Incident Report*’ as a default action. Also, DLP policies in Microsoft DLP automatically log events in Unified Audit Log and won't need a separate action equivalent to ‘Syslog’ in Symantec DLP.

All other response rules in Symantec are currently not supported by the migration assistant and thus not migrated along with other policy elements. However, you can manually add (or remove) actions to the policies using the Compliance portal after the migration assistant has successfully migrated the policies.

You'll be able to see a list of all your policies and rules within them along with their status. You can select different policies from the left column to see Details for each policy. By default, the tool will display all items that need review. You can toggle to see all items in a given policy by choosing the **Show All Items** button at the top of the Details section.
      :::image type="content" source="../media/edit-policy-settings-mampd.png" alt-text="Screenshot of Show All Items.":::

##### Policy Details

Policy Name - You can edit the name of the policy before migration.

Each policy will be divided into two sections:

- Keywords, Data Identifiers and Regular expressions- These will be migrated as sensitive information types (SITs) in Microsoft DLP.

- Rules - These will be automatically mapped to different Microsoft DLP conditions. Each row in the table will show
    - The name that the SIT will have when migrated
    - Potential issues that may affect migration
    - Type of rule as detected from the input policy
    - Status:
      - Blank/empty status -  This row element will be migrated without issues.
      - Needs Review - This row element may have one or more issues and may require some input from you.
      - Informational - This row element may have one or more changes needed for migration but will be auto-resolved.
      - Unsupported -  This row element isn't supported for migration by the tool and may need to be migrated manually after the tool exits.
    - Edit button

Extend policy coverage to other Microsoft locations.
    - You can extend your current Symantec policies to other Microsoft locations in addition to the original scope of the policy.

For example, a Purview DLP policy that's scoped to email can be extended to SharePoint, OneDrive, Teams, and Endpoint Devices.

The migration assistant will auto-create a new policy based on the original policy with all supported rules for that given workload. One or more rules may be dropped if not supported for a given workload.

For example, the **Email subject is** condition may be dropped while extending an email (Exchange) DLP policy to OneDrive.

Some checkboxes may be disabled by default if there are no supported conditions available in extended locations.

Editing a row element - When editing one or more row elements, you'll be navigated to an **Edit** screen with more details about that row element. If there are any issues, they will be reported via a yellow banner at the top of the screen. You may need to make changes to the content in the editable sections. Those changes will then be incorporated at the time of migration. Once you resolve the issues in the content, the yellow banner will disappear.

Use existing SITs from tenant to automatically replace the current SIT. You may choose to replace the current SIT (which is being edited) with another SIT from your tenant.
         :::image type="content" source="../media/sit-content.png" alt-text="Screenshot of editing SIT content.":::

You can manually change any of the mappings by selecting the corresponding row in the ‘Target’ column. This opens a drop-down list with all the out-of-box SITs (OOB SITs) and all the custom SITs (if any) that you may have previously created. You can choose the option to which you wish to map to the ‘Source’ row item. Alternatively, you can also choose the option **New SIT** from the drop-down. The migration assistant will then bring over the Source SIT as a new custom SIT.

We strongly recommend using existing SITs to replace current SITs wherever possible to help reduce creation of duplicate SITs and also reduce effort of optimizing multiple custom SITs of the same kind. Learn more about [sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).
  
   >[!WARNING]
   > Microsoft DLP platform has a threshold for up to 10 rule packages per tenant. This limit is enough for most customers, but the creation of many duplicate custom SITs may quickly lead you to hitting this threshold without the ability to create any new custom SITs.

After you've reviewed all the policies and the rules within them, select **Next**. If one or more of the policies contain at least one element with *Needs Review* status, then you’ll see a **Continue with errors** button instead of **Next**.

### Step 4: Review pre-migration feasibility report

The pre-migration feasibility report shows you how you can expect the policies to be migrated. Review this report and make any necessary adjustments prior to starting a migration run.

 :::image type="content" source="../media/review-dlp-policies.png" alt-text="Screenshot of Review your Policies.":::

Review these details and choose **Next**.

### Step 5: Test or turn on your policies

Once imported, DLP policies can be in one of three states:

- On (**Yes, turn it on right away**)
- Test (**I'd like to test it out first** and **Show policy tips while in test mode**)
- Off (**No,keep it off. I'll turn it on later**)

You can set the state in the migration assistant prior to migrating a policy using these two steps:

1. Choose whether to turn-on or off from the following three options:
    - Turn on policy immediately.
    - Turn on policy in test mode first. Remove from test mode later manually.
    - Keep it off. Turn it on later manually.

     We recommend you to bring over the policies first in test mode. You can monitor the alerts that the policy generates, and fine-tune it as required by your organization. Once your policy is fine-tuned, you can turn it on or put it into production.

2. Select **Start Migration** to import your policy. A new PowerShell window will open asking you to log in again.

    After you log in, PowerShell scripts will run that creates new policies in Microsoft DLP with all the data in the input policy files, and any other settings you made during the previous migration assistant steps.

    Wait until the script completes finishes with a Success/Failure message. Then, new SITs and policies will start showing up in the Compliance portal as well.

:::image type="content" source="../media/start-migration.png" alt-text="Screenshot of DLP Policy migration.":::

### Step 6: Migration in progress

In this step, the migration tool will create DLP policies in Microsoft Purview compliance portal.

> [!NOTE]
> Refrain from closing the tool window while policies are being created as it may cause incomplete SITs and policies, which may require you to manually clean up later.

:::image type="content" source="../media/migration-dlp-progress.png" alt-text="Screenshot of the Migration in process.":::

If an error occurs during migration, you can choose one of these actions to try and fix as a next step.

- **Try Again** - Policy creation will be attempted again.
- **Rollback all changes** - All SITs and policies for that session will be deleted.
- **Rollback failed policies** - Only the failed SITs and policies for that session will be deleted.

>[!IMPORTANT]
> When you choose to rollback any changes, it may take two to four hours for the entire rollback to take place. The migration assistant tool window needs to be kept open for the entire duration for a successful rollback.

:::image type="content" source="../media/errors-migration-options.png" alt-text="Screenshot of errors that can occur during Migration process.":::

Once the policies are migrated, select **Next** to view the migration report.

:::image type="content" source="../media/all-set-migration.png" alt-text="Screenshot of Migration process complete.":::

### Step 7: View the migration report

You can view the migration report once your policies are imported and the migration process is complete.

 :::image type="content" source="../media/migration-report.png" alt-text="Screenshot of migration report.":::

Each session gets its own report. A session begins at the time you launch the app and ends when you exit the app or when migration process is completed.

#### Technical report

You can select the **Save Technical Report** button to save a more detailed excel-based report that is divided into three sheets:

- Overview
- Policy Details
- SIT Details

**Overview Sheet** - This sheet provides an overview of the migration session with the following details:

- Tenant’s name.
- Timestamp of session.
- Overall summary stats for that session.
- Input policy level details, migration status and comments/recommendations.

:::image type="content" source="../media/overview-sheet-dlp-migration.png" alt-text="Screenshot of the Overview-excel.":::

**Policy Details** - This sheet provides a detailed view of each migrated policy created or not created with the following information:

- Mapping of source policy and target policy(s) created.
- List of workloads each policy is applied to.
- Analysis status stating if the policy is migrated completely, partially or can't migrate.
     - For workloads other than Exchange, this would typically show as *Complete* since we create a policy with the *Content contains* condition, which is supported across all workloads.
- Migration status describing if the policy migration was a success or failure.
- Comments/recommendations with more details of that policy.

:::image type="content" source="../media/creation-of-policy-status.png" alt-text="Screenshot of Policy creation status-excel.":::

**SIT Details** - This sheet provides information about all the sensitive information types (SITs) that were migrated with following information:

- Policy-wise mapping of Input and Output SITs created.
- Validation fixes with information about validation errors that occurred during the migration process.
- Comments about SIT auto-mapping, and remediation steps.

:::image type="content" source="../media/sit-migration.png" alt-text="Screenshot of SITs migrated-excel.":::

### Next steps: After policy import

You should visit the compliance portal and validate the policies you just migrated.

#### Check Sensitive Information Types

1. To validate that the SITs were created, navigate to **Data Classification** > **Classifiers** > **Sensitive Info Types**  and look for the SITs. You can also sort the list on **Publisher** and check for SITs with a publisher name of “DLP Migration Tool”.

2. Rename SITs as needed. For many SITs, you may notice there are similar names, often followed by roman numerals. To avoid confusion and duplication post-migration, you should rename these SITs. This is true for cases where your regular expressions and keywords are defined directly in rules within your input Symantec DLP policies.

3. Test and fine-tune SITs as needed. You should test and fine-tune the migrated SITs. The migration assistant creates new SITs with a few standard settings, which might not be right for your tenant so look out for the following:
    1. Regular expressions: Unsupported or deleted regexes (during migration)
    2. Keywords
        1. Case sensitive versus insensitive keywords
        2. String versus word match
        3. Proximity
        4. Optional validators

#### Check DLP policies

1. **Validate the DLP policies created**

    Choose **Data Loss Prevention** from left panel and check if new policies are created.
2. **Add any missing policy elements**

    While most of the input Symantec DLP policy elements (like conditions, exclusions, or actions) will get migrated, often a few elements from your input Symantec DLP policy may get dropped during the migration process. This is a known limitation of the migration assistant. In this scenario, you'll have to manually add these elements to the policy as they're supported by the Microsoft Purview DLP platform.  

3. **Test and fine-tune the policy**

    You can test the policy and fine-tune it as per the needs of your organization.

4. **Turn the policy on**

    Once tested or fine-tuned, you can turn on this policy or put the policy in production mode.

5. **Bring over any remaining policies**

    You can go back to bring over the next policy or next batch of policies using the migration assistant.

## Troubleshooting

If you see an error on welcome screen after selecting **Get Started**, follow these steps:

 1. Confirm that you've installed all the prerequisites using the links/versions mentioned in [Before you start](dlp-migration-assistant-for-symantec-get-started.md#before-you-begin).
 2. Ensure that you've restarted the machine after installing the prerequisites.
 3. Ensure that you're running the tool in *admin mode* using the **Run as administrator** option when starting the application.
 4. Ensure that your PowerShell module path is set correctly using these steps:
    1. Go to **Edit system environment variables**.
    2. Add this path in the **PsModulePath** user variable: `C:\Program Files\PowerShell\7\Modules`.
    3. Move this up and keep at the top.
    4. Restart the tool in administrator mode.

If you're unable to install/uninstall due to another app/process installation, follow these steps:

1. Right click on the task bar to open Task Manager. If necessary, choose **More Details**.
2. On the **Details** tab, look for *msiexec.exe* and select **End Task**.
3. Try to install or uninstall again, or, wait until the installation is finished.

To report issues to Microsoft:

1. **Collect logs** - Find the logs generated by the migration assistant on your local machine at the following path: `C:\Users\<username>\AppData\Local\Temp\MigrationAssistantforMicrosoftPurviewDLP\Logs`.
2. **Send email** - Send us the details about your issue along with the latest logs at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / FastTrack / Microsoft partner to share your feedback and suggestions.

### Reporting errors & providing feedback

To report errors, raise feature requests, or share more feedback, reach out to us at [dlpmigrations@microsoft.com](mailto:dlpmigrations@microsoft.com) or contact your CXE / FastTrack / Microsoft partner.

### Telemetry Notice

**Data Collection**: This software may collect information about you and your use of the software, and send it to Microsoft. Microsoft may use this information to improve our products and services. If you wish to turn off telemetry, you can reach out to us, and we'll provide you with a separate version of tool with telemetry turned off.

There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law that is to provide appropriate notices to users of your applications with a copy of Microsoft's privacy statement. Our privacy statement is located at [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?LinkID=824704). You can learn more about data collection, use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.

## See also

- [Learn about Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)
- [Get started with Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-get-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
