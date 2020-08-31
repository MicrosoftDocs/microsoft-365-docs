---
title: "Automatically apply a retention label to retain or delete content"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: Create and auto-publish retention labels so you can automatically apply labels to retain what you need and delete what you don't
---

# Automatically apply a retention label to retain or delete content

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

One of the most powerful features of [retention labels](retention.md) is the ability to apply them automatically to content that matches specified conditions. In this case, people in your organization don't need to apply the retention labels. Microsoft 365 does the work for them.
  
Auto-applying retention labels are powerful because:
  
- You don't need to train your users on all of your classifications.
    
- You don't need to rely on users to classify all content correctly.
    
- Users no longer need to know about data governance policies - they can focus on their work.
    
You can apply retention labels to content automatically when that content contains sensitive information, keywords or searchable properties, or a match for [trainable classifiers](classifier-getting-started-with.md).

> [!TIP]
> Now in preview, use searchable properties to identify [Teams meeting recordings](#microsoft-teams-meeting-recordings).

The processes to automatically apply a retention label based on these conditions:

![Diagram of roles and tasks for auto-apply labels](../media/32f2f2fd-18a8-43fd-839d-72ad7a43e069.png)

Use the following instructions for the two admin steps.

> [!NOTE]
> Auto-policies use service-side labeling with conditions to automatically apply retention labels. You can also automatically apply a retention label with a label policy when you do the following: 
>
> - Apply a default retention label to a SharePoint library, folder, or document set so that unlabeled content in that container is automatically labeled
>- Automatically applying a retention label to email by using rules
>
> For these scenarios, see [Create and apply retention labels in apps](create-apply-retention-labels.md).

## Before you begin

The global admin for your organization has full permissions to create and edit retention labels and their policies. If you aren't signing in as a global admin, see [Permissions required to create and manage retention policies and retention labels](get-started-with-retention.md#permissions-required-to-create-and-manage-retention-policies-and-retention-labels).

## How to auto-apply a retention label

First, create your retention label. Then create an auto-policy to apply that label. If you have already created your retention label, skip to [creating an auto-policy](#step-2-create-an-auto-apply-policy).

Navigation instructions depend on whether you're using [records management](records-management.md) or not. Instructions are provided for both scenarios.

### Step 1: Create a retention label

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to one of the following locations:
    
    - If you are using records management:
        - **Solutions** > **Records management** > **File plan** tab > **+ Create a label** > **Retention label**
        
    - If you are not using records management:
       - **Solutions** > **Information governance** > **Labels** tab > + **Create a label**
    
    Don't immediately see your option? First select **Show all**. 

2. Follow the prompts in the wizard. If you are using records management:
    
    - For information about the file plan descriptors, see [Use file plan to manage retention labels](file-plan-manager.md)
    
    - To use the retention label to declare content as a record, enable the checkbox **Use label to classify content as a "Record"**.

To edit an existing label, select it, and then select **Edit label** to start the same wizard that lets you change the label descriptions and any [eligible settings](#updating-retention-labels-and-their-policies) from step 2. Alternatively, select any of the available **Edit** options to go directly to the relevant page to make your update.


### Step 2: Create an auto-apply policy

When you create an auto-apply policy, you select a retention label to automatically apply to content, based on the conditions that you specify.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to one of the following locations:
    
    - If you are using records management: **Information governance**:
        - **Solutions** > **Records management** > **Label policies** tab > **Auto-apply label**
    
    - If you are not using records management:
        - **Solutions** > **Information governance** > **Label policies** tab > **Auto-apply label**
    
    Don't immediately see your option? First select **Show all**. 

2. Follow the prompts in the wizard.
    
    For information about configuring the conditions that automatically apply the retention label, see the [Configuring conditions for auto-apply retention labels](#configuring-conditions-for-auto-apply-retention-labels) section on this page.
    
    For information about the locations supported by retention labels, see the [Retention labels and locations](retention.md#retention-label-policies-and-locations) section.

To edit an existing auto-apply label policy, select it, and then select **Edit policy** to start the same wizard that lets you change the policy description and any [eligible settings](#updating-retention-labels-and-their-policies) from step 2. Alternatively, select any of the available **Edit** options to go directly to the relevant page to make your update.

### Configuring conditions for auto-apply retention labels

You can apply retention labels to content automatically when that content contains:

- [Specific types of sensitive information](#auto-apply-labels-to-content-with-specific-types-of-sensitive-information)

- [Specific keywords or searchable properties that match a query you create](#auto-apply-labels-to-content-with-keywords-or-searchable-properties)

- [A match for trainable classifiers](#auto-apply-labels-to-content-by-using-trainable-classifiers)

#### Auto-apply labels to content with specific types of sensitive information

When you create auto-apply retention labels for sensitive information, you see the same list of policy templates as when you create a data loss prevention (DLP) policy. Each policy template is preconfigured to look for specific types of sensitive information. For example, the template shown here looks for U.S. ITIN, SSN, and passport numbers. To learn more about DLP, see [Overview of data loss prevention policies](data-loss-prevention-policies.md).
  
![Policy templates with sensitive information types](../media/dafd87d4-c7bb-439a-ac7b-193c018f98a5.png)
  
After you select a policy template, you can add or remove any types of sensitive information, and you can change the instance count and match accuracy. In the example shown here, a retention label will be auto-applied only when:
  
- The content contains between 1 and 9 instances of any of these three sensitive information types. You can delete the **max** value so that it changes to **any**.
    
- The type of sensitive information that's detected has a match accuracy (or confidence level) of at least 75. Many sensitive information types are defined with multiple patterns, where a pattern with a higher match accuracy requires more evidence to be found (such as keywords, dates, or addresses), while a pattern with a lower match accuracy requires less evidence. The lower the **min** match accuracy, the easier it is for content to match the condition. 
    
For more information on these options, see [Tuning rules to make them easier or harder to match](data-loss-prevention-policies.md#tuning-rules-to-make-them-easier-or-harder-to-match).
    
![Options for identifying sensitive information types](../media/de255881-f596-4c8d-8359-e974e3a0819a.png)
  
#### Auto-apply labels to content with keywords or searchable properties

You can auto-apply labels to content by using a query that contains specific words, phrases, or values of searchable properties. You can refine your query by using search operators such as AND, OR, and NOT.

![Query editor](../media/ac5b8e5e-7453-4ec7-905c-160df57298d3.png)

For more information about the query syntax that uses Keyword Query Language (KQL), see [Keyword Query Language (KQL) syntax reference](https://docs.microsoft.com/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference).

Query-based labels use the search index to identify content. For more information about the searchable properties that you can use, see:

- [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md)
- [Overview of crawled and managed properties in SharePoint Server](https://docs.microsoft.com/SharePoint/technical-reference/crawled-and-managed-properties-overview)

> [!NOTE]
> Although SharePoint managed properties support aliases, don't use these when you configure your retention labels. Always specify the actual name of the managed property, for example, "RefinableString01".

Examples queries:

| Workload | Example |
|:-----|:-----|
|Exchange   | `subject:"Quarterly Financials"` |
|Exchange   | `recipients:garthf<!--nolink-->@contoso.com` |
|SharePoint | `contenttype:contract` |
|SharePoint | `site:https<!--nolink-->://contoso.sharepoint.com/sites/teams/procurement AND contenttype:contract`|

##### Microsoft Teams meeting recordings

> [!NOTE]
> The ability to identify Teams meeting recordings is currently in preview

To identify Microsoft Teams meeting recordings that are stored in users' OneDrive accounts, specify the following for the **Keyword query editor**:

	ProgID:Media AND ProgID:Meeting

For this retention label, you must also publish it to the relevant users' OneDrive accounts by creating a label policy. When you have saved the auto-apply policy:

1. Select **Label policies** tab > **Publish labels**

2. When prompted to select a label, choose the label you created with the KQL query to identify Teams meeting recordings.

3. When prompted for the location, choose **OneDrive accounts** and keep the default of **All**, or specify individual accounts or exclude accounts.

4. Complete the wizard and save this label policy.

#### Auto-apply labels to content by using trainable classifiers

When you choose the option for a trainable classifier, you can select one of the built-in classifiers, or a custom classifier. The built-in classifiers include **Resumes**, **SourceCode**, **Targeted Harassment**, **Profanity**, and **Threat**:

![Choose trainable classifier](../media/retention-label-classifers.png)

> [!CAUTION]
> We are deprecating the **Offensive Language** built-in classifier because it has been producing a high number of false positives. Don't use this built-in classifier and if you are currently using it, you should move your business processes off it. We recommend using the **Targeted Harassment**, **Profanity**, and **Threat** built-in classifiers instead.

To automatically apply a label by using this option, SharePoint Online sites and mailboxes must have at least 10 MB of data.

For more information about trainable classifiers, see [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md).

For an example configuration, see [How to prepare for and use a built-in classifier](classifier-using-a-ready-to-use-classifier.md#how-to-verify-that-a-built-in-classifier-will-meet-your-needs).

## How long it takes for retention labels to take effect

When you auto-apply retention labels, it can take up to seven days for the retention labels to be applied to all existing content that matches the conditions.
  
![Diagram of when auto-apply labels take effect](../media/b8c00657-477a-4ade-b914-e643ef97a10d.png)
  
## Updating retention labels and their policies

When you edit a retention label or auto-apply policy, and the retention label is already applied to content, your updated settings will automatically be applied to this content in addition to content that's newly identified.

Some settings can't be changed after the label or policy is created and saved, which include:
- The retention settings except the retention period, unless you've configured the label to retain or delete the content based on when it was created.
- The option to classify as a record.

## Next steps

See [Use retention labels to manage the lifecycle of documents stored in SharePoint](auto-apply-retention-labels-scenario.md) for an example scenario that uses an auto-apply policy with managed properties in SharePoint, and event-based retention to start the retention period.
