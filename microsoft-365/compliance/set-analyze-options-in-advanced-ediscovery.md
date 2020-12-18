---
title: "Set Analyze options in Advanced eDiscovery"
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
ms.assetid: f6cd6588-f6b6-424a-a9ab-3782b842faee
description: "Review the steps to set up options for the Analyze process in Advanced eDiscovery, including near-duplicates, email threads, and themes."
ms.custom: seo-marvel-apr2020
---

# Set Analyze options in Advanced eDiscovery (classic)

> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
In Advanced eDiscovery, set the Analyze options prior to running Analyze.
  
## Set Analyze options

Open **Prepare \> Analyze** \> **Setup**. The following window is displayed.
  
![Set Analyze Options](../media/c3ec7a92-8484-4812-b98c-aa3eb740e5b7.png)
  
 **Near-duplicates and email threads** Check this box if you want to run the analysis. It is selected by default. 
  
 **Document similarity** Enter the Near-duplicates threshold value or accept the default of 65%. 
  
 **Themes**Check this box to process all files and assign themes to them. By default, this check box is not selected. Enter the following options if you want to perform Themes processing.
  
- **Max number of themes**Enter or select a value for the number of themes to create. The default is 200. 
    
    > [!NOTE]
    > Increasing the number of themes affects performance, as well as the ability of a theme to generalize. The higher the number of themes, the more granular they are. For example, if a set of 50 themes include a theme such as "Basketball, Spurs, Clippers, Lakers"; 300 themes may include separate themes: "Spurs", "Clippers", "Lakers". If you had no awareness of the theme "Basketball" and use this feature for ECA, seeing the theme "Basketball" could be useful. But, if the processing had too many themes, you may never see the word "Basketball" and may not know that Spurs and Clippers are good Basketball themes to review, rather than items that go on boots and used for hair. 
  
- **Suggested themes** You can suggest theme words to control Themes processing. Advanced eDiscovery will focus on these suggested words and try to create one or more relevant themes, based on the "Max number of themes" settings. 
    
    For example, if the suggested word is "computer", and you specified "2" as the "Max number of Themes", Advanced eDiscovery will try to generate two themes that relate to the word "computer". The two themes might be "computer software" and "computer hardware", for example. 
    
    ![Add suggested theme](../media/06e9ffd3-a76c-423b-b450-9e465eb9a02f.png)
  
1. To view, add, or edit suggested themes, click **Modify**.
    
2. In the **Suggested themes** panel, click the **Add** ![add icon](../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) icon to add a theme. In the **Add suggested theme** panel, add the words, separated by commas. 
    
3. In **Number of themes**, select a value to determine the number of themes Advanced eDiscovery will try to generate for these words (default is 1 theme).
    
4. Click **Save** and then close the dialogue. 
    
    > [!NOTE]
    > The total number of themes includes Suggested Themes. The total Suggested Themes cannot exceed the total themes. If there are many Suggested Themes relative to the total themes, only a few "novel" themes will be detected by the system because most of the themes will be dedicated to Suggested Themes. 
  
- **Mode** From the drop-down list, select a **Themes** option: 
    
  - **Create and apply model**: Calculates themes by models from a segment of the files and then distributes files among them.
    
  - **Create model**: Calculates a themes model from a segment of the files. The Apply process of dividing files is done separately at another time.
    
  - **Apply model**: This option is only shown if a model was created previously and not yet applied. This will divide the files based on the themes.
    
You can also [set ignore text](set-ignore-text-in-advanced-ediscovery.md) and [set Analyze advanced settings](set-analyze-advanced-settings-in-advanced-ediscovery.md) for Analyze. 
  
After you've set these options, click **Analyze** to run. [View Analyze results](view-analyze-results-in-advanced-ediscovery.md) are displayed. 
  
## Related topics

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Understanding document similarity](understand-document-similarity-in-advanced-ediscovery.md)
  
[Set Ignore text ](set-ignore-text-in-advanced-ediscovery.md)
  
[Set Analyze advanced settings](set-analyze-advanced-settings-in-advanced-ediscovery.md)
  
[View Analyze results](view-analyze-results-in-advanced-ediscovery.md)

