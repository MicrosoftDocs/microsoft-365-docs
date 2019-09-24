---
title: "Overview of file plan manager"
ms.author: stephow
author: stephow-MSFT
manager: laurawi
ms.date:
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: M365-security-compliance
search.appverid:
- MOE150
- MET150
ms.assetid: af398293-c69d-465e-a249-d74561552d30
description: "File plan manager provides advanced management capabilities for retention labels, retention label policies, and provides an integrated way to traverse label and label-to-content activity for your entire content lifecycle – from creation, through collaboration, record declaration, retention, and finally disposition."
---

# Overview of file plan manager

File plan manager provides advanced management capabilities for retention labels, retention label policies, and provides an integrated way to traverse label and label-to-content activity for your entire content lifecycle – from creation, through collaboration, record declaration, retention, and finally disposition.

![File plan page](media/file-plan-page.png)

## Accessing file plan manager

There are two requirements to access file plan manager, they are:
- An Office 365 Enterprise E5 subscription.
- The user has been in assigned one of the following roles of the Security &amp; Compliance Center:
    - Retention Manager
    - View-only Retention Manager

## Default retention labels and label policy

If there are no retention labels in the Security & Compliance Center, the first time you choose **File plan** in the left nav, this creates a label policy called **Default Data Governance Publishing Policy**. 

This label policy contains three retention labels:

- **Operational procedure**
- **Business general**
- **Contract agreement**

These retention labels are configured only to retain content, not delete content. This label policy will be published to the entire organization and can be disabled or removed. 

You can determine who opened file plan manager and kicked off the first-run experience by reviewing the audit log for the activities **Created retention policy** and **Created retention configuration for a retention policy**.

> [!NOTE]
> Due to customer feedback, we have removed this feature that creates the default retention labels and retention label policy mentioned above. You will only see these retention labels and retention label policy if you opened file plan manager before April 11, 2019.

## Navigating your file plan

File plan manager makes it easier see into and across the settings of all your retention labels and policies from one view.

Note that retention labels created outside of the file plan will be available in the file plan and vice versa.

On the **file plan labels** tab, the following additional information and capabilities are available:

### Label settings columns

- **Based on** identifies the type of trigger that will start the retention period. Valid values are:
    - Event
    - When created
    - When last modified
    - When labeled
- **Record** identifies if the item will become a declared record when the label is applied. Valid values are:
    - No
    - Yes
    - Yes(Regulatory)
- **Retention** identifies the retention type. Valid values are:
    - Keep
    - Keep and delete
    - Delete
- **Disposition** identifies what will happen to the content at the end of the retention period. Valid values are:
    - null
    - No action
    - Auto-delete
    - Review required (aka Disposition review)

![Label settings in file plan](media/file-plan-label-columns.png)

### Retention label file plan descriptors columns

You can now include more information in the configuration of your retention labels. Inserting file plan descriptors into retention  labels will improve the manageability and organization of your file plan.

To get you started, file plan manager provides some out-of-box values for: Function/department, Category, Authority type and Provision/citation. You can add new file plan descriptor values when creating or editing a retention label.

Here's a view of the file plan descriptors step when creating or editing a retention label.

![File plan descriptors](media/file-plan-descriptors.png)

Here's a view of the file plan descriptors columns on the labels tab of file plan manager.

![file-plan-descriptors-on-labels-tab.png](media/file-plan-descriptors-on-labels-tab.png)

## Export all existing retention labels to analyze and/or perform offline reviews

From file plan manager, you can export the details of all retention labels into a .csv file to assist you in facilitating periodic compliance reviews with data governance stakeholders in your organization.

To export all retention labels, go to **file plan manager** \> **file plan actions** \> **export labels**.

![Option to export file plan](media/file-plan-export-labels-option.png)

A *.csv file containing all existing retention labels will open.

![CSV file showing all retention labels](media/file-plan-csv-file.png)

## Import retention labels into your file plan

From file plan manager, you can bulk import new retention labels as well as modify existing retention labels.

To import new retention labels and update existing retention labels, go to **file plan manager** \> **file plan actions** \> **import labels**.

![Option to import file plan](media/file-plan-import-labels-option.png)

![Option to download a blank file plan template](media/file-plan-blank-template-option.png)

Download a blank template (or start from an export of your current file plan).

![Blank file plan template open in Excel](media/file-plan-blank-template.png)

Fill-out the template. This table provides valid values.

|**Property**|**Type**|**Valid values**|
|:-----|:-----|:-----|
|LabelName|String|If the value contains spaces, enclose the value in quotation marks (").|
|Comment|String|If the value contains spaces, enclose the value in quotation marks ("). |
|Notes|String|Custom|
|IsRecordLabel|String|$true: The label is a record label.</br>$false: The label isn't a record label. This is the default value.|
|RetentionAction|String|Delete</br>Keep</br>KeepAndDelete |
|RetentionDuration|String|This property specifies the number of days to retain the content. Valid values are:</br>A positive integer.</br>The value is unlimited.|
|RetentionType|String|This property specifies whether the retention duration is calculated from the content creation date, labeled (tagged) date, or last modified date. Valid values are:</br>CreationAgeInDays</br>EventAgeInDays</br>ModificationAgeInDays</br>TaggedAgeInDays |
|ReviewerEmail|SmtpAddress[]|This property specifies the email address of a reviewer for Delete and KeepAndDelete retention actions. You can specify multiple email addresses separated by commas.|
|ReferenceId|String|Custom|
|DepartmentName|String|Custom|
|Category|String|Custom|
|SubCategory|String|Custom|
|AuthorityType|String|Custom|
|CitationName|String|Custom|
|CitationUrl|String|Custom|
|CitationJurisdiction|String|Custom|
|Regulatory|String|Custom|
|EventType|String|This property specifies the retention rule that's associated with the label. You can use any value that uniquely identifies the rule. For example:</br>Name</br>Distinguished name (DN)</br>GUID </br>You can use the [Get-RetentionComplianceRule](https://docs.microsoft.com/en-us/powershell/module/exchange/policy-and-compliance-retention/get-retentioncompliancerule?view=exchange-ps) cmdlet to view the available retention rules.|

![File plan template with information filled in](media/file-plan-filled-out-template.png)

Upload the filled-out template, and file plan manager will validate the entries and display import statistics.

![File plan import statistics](media/file-plan-import-statistics.png)

In the event there is a validation error, file plan import will continue to validate every entry in the import file and display all errors referencing line/row numbers in the import file, copy the displayed error results so that you can easilly return to the import file and correct the errors. 

When the import is complete, return to file plan manager to associate the new retention labels to new or existing retention label policies.

![Option to publish labels](media/file-plan-publish-labels-option.png)

