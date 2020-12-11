---
title: "Use Advanced eDiscovery utilities"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
ms.date: 9/14/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 66ca9993-75f4-4724-aea2-5a0719b660c1
description: "Learn about the utilities in Advanced eDiscovery, including case log, clear data, process errors, modify Relevance, and transparency analysis."
---

# Use Advanced eDiscovery (classic) utilities

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
The utilities that are displayed and available in Advanced eDiscovery depend on context and user roles.
  
## Case log

The Case log provides a detailed list of application processing activities, which can be used for tracking, troubleshooting, and for addressing errors and warnings. The log can be generated and stored locally on the host or server, or sent directly to an email address.
  
The log file can also be downloaded to the client's computer. The client download option may be enabled or disabled according to configuration and user role.
  
1. In the menu bar, click the **Cogwheel** icon. 
    
2. In the **Settings and utilities \> Utilities** tab, select **Case log \> Setup**.
    
3. Select the **Log level** as follows: 
    
  - **Standard**: Includes the basic log data. This option is usually necessary for monitoring, and should be used unless recommended otherwise.
    
  - **Minimal**: Used for very large cases, and returns only the latest data.
    
4. Click **Run Case log**. The log is generated and path is displayed. The task progress information for the current and last task is displayed in the Task status pane.
    
## Clear data

If it is necessary to delete or reinitialize case data, the database instance must be initialized. The Clear data utility deletes all specified entries from the case database, text files, case folder, and accumulated results. The function can only be performed by an administrator.
  
> [!IMPORTANT]
> This action is not reversible and will clear all Relevance tagging and analysis performed by the expert. Save a backup of data, if necessary. Use this option with extreme care. Deleting tagged and ranked files can impact the Relevance results. 
  
1. In the menu bar, click the **Cogwheel** icon. 
    
2. In the **Settings and utilities \> Utilities** tab, select **Clear data \> Setup**.
    
3. Select an option for the information to initialize:
    
  - **Relevance**: Deletes all work done in Relevance, including definition of loads and association of files to loads. It deletes all samples and tagging.
    
  - **Near-duplicates and email threads**: Deletes all analysis information of near-duplicates and email threads.
    
  - **Themes**: Deletes themes-related data.
    
  - **Export history**: Deletes history information of Export batches.
    
4. Click **Clear data**. The case data is cleared. The task progress information for the current and last task is displayed in the **Task status** pane. 
    
## Modify Relevance

This section describes how to skip or roll back a Relevance sample.
  
1. In the menu bar, click the **Cogwheel** icon. 
    
2. In the **Settings and utilities \> Utilities** tab, select **Modify relevance**.
    
3. Select from the options: 
    
  - **Skip current sample - for current user**: This will tag, as **Skip**, all untagged files in the open case sample of the user running the utility. Relevance processing will not be performed on files tagged as **Skip**.
    
  - **Skip current sample - all open samples**: This will tag, as **Skip**, all untagged files in all open samples for all users. This option is not recommended if users are currently tagging samples.
    
  - **Roll back last sample**: The last completed Relevance training sample will be rolled back, regardless of whether it is before or after the "Calculate" process. Rollback of a catch-up sample is not allowed.
    
4. Click **Execute** to run. 
    
## Transparency analysis

The Transparency analysis utility enables a detailed view of files and their assigned Relevance score. The report can be used as a sanity check or to compare the relevance of a file defined by a human reviewer as compared to the relevance assigned by Advanced eDiscovery. 
  
In addition to Relevance scores, Advanced eDiscovery calculates and assigns keyword weights that consider the keyword context. The same word in a file can be assigned different weights, depending on context and location. Each keyword is marked using an increasing scale of color intensity ranging from yellow to dark orange and varying shades of gray. Color coding is used to visually indicate the word's relative positive or negative contribution to the Relevance score. 
  
In a multiple-issue case scenario, a Transparency analysis report can be generated for each issue.
  
1. In the menu bar, click the **Cogwheel** icon. 
    
2. In the **Settings and utilities \> Utilities** tab, select **Transparency analysis \> Setup**.
    
3. In ** File ID **, enter the file ID of the file to process.
    
4. In the **Issue** list, select the pertinent issue. 
    
5. Click **Transparency analysis**. Upon completion, the Transparency analysis report for the file is displayed, which shows how the marked keyword colors correlate to the overall Relevance score.
    
## See also

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Defining case and tenant settings](define-case-and-tenant-settings-in-advanced-ediscovery.md)

