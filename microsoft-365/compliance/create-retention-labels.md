---
title: "Learn about retention labels"
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
description: "Use retention labels to classify data across your organization for governance, and enforce retention rules based on that classification. You can also use retention labels to implement a records management solution for Microsoft 365."
---

# Create and publish retention labels

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Use the following information to help you create [retention labels](labels.md), and then automatically apply them to documents and emails, or publish them so that users can manually apply them.

Retention labels help you retain what you need and delete what you don't, and they are also used to declare an item as a record.

Where you create and configure your retention labels depend on whether you're using [records management](records-management.md) or not. Instructions are provided for both scenarios.

## Before you begin

Members of your compliance team who will create retention labels need permissions to the Security &amp; Compliance Center. By default, your tenant admin has access to this location and can give compliance officers and other people access to the Security &amp; Compliance Center, without giving them all of the permissions of a tenant admin. To do this, we recommend that you go to the **Permissions** page of the Security &amp; Compliance Center, edit the **Compliance Administrator** role group, and add members to that role group. 
  
For more information, see [Give users access to the Office 365 Security &amp; Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).
  
These permissions are required only to create and apply retention labels and a label policy. Policy enforcement does not require access to the content.

## Create and configure retention labels

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to one of the following locations:
    
    If you are using records management: **Information governance**:
        - **Solutions** > **Records management** > **File plan** tab > **+ Create a label** > **Retention label**
    
    If you are not using records management:
        - **Solutions** > **Information governance** > **Labels** tab > + **Create a label**
    
    Don't immediately see your option? First select **Show all**. 

2. Follow the prompts in the wizard. If you are using records management:
    
    - For information about the file plan descriptors, see [Overview of file plan manager](file-plan-manager.md)
    
    - To use the retention label to declare content as a record, enable the checkbox **Use label to classify content as a "Record"**.

3. Repeat these steps to create more labels.

To edit an existing label, select it, and then select **Edit label**. This starts the same wizard, which lets you change the label descriptions and settings in step 2.

## Publish retention labels by creating a retention label policy

Publish retention labels so that they can be manually applied by users.

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to one of the following locations:
    
    If you are using records management: **Information governance**:
        - **Solutions** > **Records management** > **Label policies** tab > **Publish labels**
    
    If you are not using records management::
        - **Solutions** > **Information governance** > **Label policies** tab > **Publish labels**
    
    Don't immediately see your option? First select **Show all**. 

2. Follow the prompts in the wizard.
    
    For inforamtion about configuring the locations, see the [Retention label policies and locations](#retention-label-policies-and-locations) section on this page. 

## Auto-apply a retention label

> [!NOTE]
> If you are using records management: You can auto-apply a retention label only when it's not configured to declare content as a record. 

Auto-apply a retention label, based on the conditions that you specify. 

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to one of the following locations:
    
    If you are using records management: **Information governance**:
        - **Solutions** > **Records management** > **Label policies** tab > **Auto-apply label**
    
    If you are not using records management::
        - **Solutions** > **Information governance** > **Label policies** tab > **Auto-apply label**
    
    Don't immediately see your option? First select **Show all**. 

2. Follow the prompts in the wizard.
    
    For information about configuring the conditions that automatically apply the retention label, see the [Applying a retention label automatically based on conditions](#applying-a-retention-label-automatically-based-on-conditions) section on this page.
    
    For inforamtion about configuring the locations, see the [Retention label policies and locations](#retention-label-policies-and-locations) section on this page.

## Retention labels and locations

Different types of retention labels can be published to different locations, depending on what the retention label does.
  
|**If the retention label is…**|**Then the label policy can be applied to…**|
|:-----|:-----|
|Published to end users  <br/> |Exchange, SharePoint, OneDrive, Office 365 groups  <br/> |
|Auto-applied based on sensitive information types  <br/> |Exchange (all mailboxes only), SharePoint, OneDrive  <br/> |
|Auto-applied based on a query  <br/> |Exchange, SharePoint, OneDrive, Office 365 groups  <br/> |
   
In Exchange, auto-apply retention labels (for both queries and sensitive information types) are applied only to messages newly sent (data in transit), not to all items currently in the mailbox (data at rest). Also, auto-apply retention labels for sensitive information types can apply only to all mailboxes; you can't select the specific mailboxes.
  
Exchange public folders and Skype do not support retention labels.


## Auto-apply retention labels

You can apply retention labels to content automatically when that content contains:
  
- [Specific types of sensitive information](#auto-apply-retention-labels-to-content-with-specific-types-of-sensitive-information)
    
- [Specific keywords that match a query you create](#auto-apply-labels-to-content-with-keywords-or-searchable-properties)

- [A match for trainable classifiers](#auto-apply-labels-to-content-by-using-trainable-classifiers)
    
![Choose condition page for auto-apply label](../media/classifier-pre-trained-apply-label-match-trainable-classifier.png)

It can take up to seven days for auto-apply retention labels to be applied to all content that matches the conditions you've configured.

### Auto-apply labels to content with specific types of sensitive information

When you create auto-apply retention labels for sensitive information, you see the same list of policy templates as when you create a data loss prevention (DLP) policy. Each policy template is preconfigured to look for specific types of sensitive information. For example, the template shown here looks for U.S. ITIN, SSN, and passport numbers. To learn more about DLP, see [Overview of data loss prevention policies](data-loss-prevention-policies.md).
  
![Policy templates with sensitive information types](../media/dafd87d4-c7bb-439a-ac7b-193c018f98a5.png)
  
After you select a policy template, you can add or remove any types of sensitive information, and you can change the instance count and match accuracy. In the example shown here, a retention label will be auto-applied only when:
  
- The content contains between 1 and 9 instances of any of these three sensitive information types. You can delete the **max** value so that it changes to **any**.
    
- The type of sensitive information that's detected has a match accuracy (or confidence level) of at least 75. Many sensitive information types are defined with multiple patterns, where a pattern with a higher match accuracy requires more evidence to be found (such as keywords, dates, or addresses), while a pattern with a lower match accuracy requires less evidence. Simply put, the lower the **min** match accuracy, the easier it is for content to match the condition. 
    
For more information on these options, see [Tuning rules to make them easier or harder to match](data-loss-prevention-policies.md#tuning-rules-to-make-them-easier-or-harder-to-match).
    
![Options for identifying sensitive information types](../media/de255881-f596-4c8d-8359-e974e3a0819a.png)
  
### Auto-apply labels to content with keywords or searchable properties

You can auto-apply labels to content that satisfies certain conditions. The conditions now available support applying a label to content that contains specific words, phrases, or values of searchable properties. You can refine your query by using search operators like AND, OR, and NOT.

For more information on query syntax, see:

- [Keyword Query Language (KQL) syntax reference](https://docs.microsoft.com/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)

Query-based labels use the search index to identify content. For more information on valid searchable properties, see:

- [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md)
- [Overview of crawled and managed properties in SharePoint Server](https://docs.microsoft.com/SharePoint/technical-reference/crawled-and-managed-properties-overview)

Examples queries:

- Exchange
    - subject:"Quarterly Financials"
    - recipients:garthf<!--nolink-->@contoso.com
- SharePoint and OneDrive for Business
    - contenttype:contract
    - site:https<!--nolink-->://contoso.sharepoint.com/sites/teams/procurement AND contenttype:contract

![Query editor](../media/ac5b8e5e-7453-4ec7-905c-160df57298d3.png)


### Auto-apply labels to content by using trainable classifiers

When you choose the option for a trainable classifier, you can select one of the built-in classifiers, or a custom classifier. The built-in classifiers include **Offensive Language**, **Resumes**, **SourceCode**, **Targeted Harassment**, **Profanity**, and **Threat**:

![Choose trainable classifier](../media/retention-label-classifers.png)

To automatically apply a label by using this option, SharePoint Online sites and mailboxes must have at least 10 MB of data.

For more information about trainable classifiers, see [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md).

For an example configuration, see [How to prepare for and use a built-in classifier](classifier-using-a-ready-to-use-classifier.md#how-to-prepare-for-and-use-a-built-in-classifier).



## How long it takes for retention labels to take effect

When you publish or auto-apply retention labels, they don't take effect immediately:
  
1. First the label policy needs to be synced from the admin center to the locations in the policy.
    
2. Then the location might require time to make published retention labels available to end users or time to auto-apply labels to content. How long this takes depends on the location and type of retention label.
    
### Published retention labels

If you publish retention labels to SharePoint or OneDrive, it can take one day for those retention labels to appear for end users. In addition, if you publish retention labels to Exchange, it can take 7 days for those retention labels to appear for end users, and the mailbox needs to contain at least 10 MB of data.
  
![Diagram of when manual labels take effect](../media/b19f3a10-f625-45bf-9a53-dd14df02ae7c.png)
  
### Auto-apply retention labels

If you auto-apply retention labels to content matching specific conditions, it can take seven days for the retention labels to be applied to all existing content that matches the conditions.
  
![Diagram of when auto-apply labels take effect](../media/b8c00657-477a-4ade-b914-e643ef97a10d.png)
  
### How to check on the status of retention labels published to Exchange

In Exchange Online, retention labels are made available to end users by a process that runs every seven days. By using Powershell, you can see when this process last ran and thus determine when it will run again.
  
1. [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/?linkid=799773).
    
2. Run these commands.
    
   ```powershell
   $logProps = Export-MailboxDiagnosticLogs <user> -ExtendedProperties
   ```

   ```powershell
   $xmlprops = [xml]($logProps.MailboxLog)
   ```

   ```powershell
   $xmlprops.Properties.MailboxTable.Property | ? {$_.Name -like "ELC*"}
   ```

In the results, the `ELCLastSuccessTimeStamp` (UTC) property shows when the system last processed your mailbox. If it has not happened since the time you created the policy, the labels are not going to appear. To force processing, run  `Start-ManagedFolderAssistant -Identity <user>`.
    
If labels aren't appearing in Outlook on the web and you think they should be, make sure to clear the cache in your browser (CTRL+F5).
    
 
## Find the PowerShell cmdlets for retention labels

To use the retention label cmdlets:
  
1. [Connect to the Office 365 Security & Compliance Center Powershell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell)
    
2. Use these Office 365 Security & Compliance Center cmdlets:
    
    - [Get-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-compliancetag)
    
    - [New-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/new-compliancetag)
    
    - [Remove-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/remove-compliancetag)
    
    - [Set-ComplianceTag](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-compliancetag)
    
    - [Enable-ComplianceTagStorage](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/enable-compliancetagstorage)
    
    - [Get-ComplianceTagStorage](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-compliancetagstorage)
    
    - [Get-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-retentioncompliancepolicy)
    
    - [New-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/new-retentioncompliancepolicy)
    
    - [Remove-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/remove-retentioncompliancepolicy)
    
    - [Set-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-retentioncompliancepolicy)
    
    - [Get-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/get-retentioncompliancerule)
    
    - [New-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/new-retentioncompliancerule)
    
    - [Remove-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/remove-retentioncompliancerule)
    
    - [Set-RetentionComplianceRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-retentioncompliancerule)
