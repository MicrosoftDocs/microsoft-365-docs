---
title: "Use sensitivity labels with Office 365 groups and SharePoint sites (preview)"
ms.author: laurawi
author: kccross
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "You can apply labels to Office 365 groups and SharePoint sites. Sensitivity labels can use encryption to protect groups and sites."
---

# Use sensitivity labels with Office 365 groups and SharePoint sites (preview)

As a global or SharePoint admin, you can  can apply sensitivity labels to Office 365 groups and SharePoint sites and add policies related to these labels. End-users can then select a label when they create an Office 365 group or SharePoint site. Sensitivity labels for groups and sites work with SharePoint Online, Microsoft Teams, and Outlook.

## Opt-in to to the public preview

As part of Microsoft's public preview, you'll need to opt-in to use sensitivity labels to restrict access to Office 365 groups and SharePoint sites. You use Azure PowerShell to opt-in.
To opt-in to the public preview follow these steps:

1. Using a work or school account with global admin permissions in your tenant, log in to your Azure subscription with Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the following PowerShell at the command-line.

```powershell
  Connect-AzureAD
  $setting=(Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ)
  if ($setting -eq $null)
  {
    $template = Get-AzureADDirectorySettingTemplate -Id 62375ab9-6b52-47ed-826b-58e47e0e304b
    $setting = $template.CreateDirectorySetting()
    $setting["EnableMIPLabels"] = "True"
    New-AzureADDirectorySetting -DirectorySetting $setting
  }
  else
  {
    $setting["EnableMIPLabels"] = "True"
    Set-AzureADDirectorySetting -Id $setting.Id -DirectorySetting $setting
  }
```

If you are using the classic Azure AD classification list ($setting["ClassificationList"]), after you opt-in, Office 365 won't use the old classifications for new groups and SharePoint sites. Old groups and sites will still display the old classification tags unless you convert them. Learn how.  

## Create sensitivity labels for SharePoint Online groups and sites

How to create a label on the Site and group settings tab 
On the site and group settings tab, you can select: 
Privacy {Private/Public}:  Private means only approved members in your organization can see what's inside the group. Anyone else in your organization cannot see what's in the group. Learn more 
External users access: You can control if guests can be added to a group . Learn about managing guest access in Office 365 Groups 
Unmanaged devices: This setting applies to any SharePoint site and controls access to sites from devices that are not managed by your organization. Learn about setting up SharePoint and Azure to control access from unmanaged devices.

Publishing the sensitivity label
The steps to publish labels can be found here  
Select a sensitivity label when creating a site  

1. As an end user: Sign in and go to the SharePoint start page, and then select Create site. 
As an admin: Go to the Active sites page in the new SharePoint admin center, and then select Create.  
2. Click Create site.  
3. Choose Team site or Communication site.  

4. In the Sensitivity box, choose a label. The admin has selected the default. If users want more info, they can also click the help icon to read details about the available labels and associated policies. 

Example of a SharePoint site with label applied:

Manage sensitivity labels in the SharePoint admin center  
Global and SharePoint admins can go to the Active sites page to see the labels applied to all sites.

They can select sites and change their labels.  
To learn how to manage sensitivity labels in PowerShell, see <link>.

Using sensitivity labels while creating groups 
When users create Office 365 groups from Outlook on the web, they’ll notice the new “Sensitivity” box that contains published labels. If users want more info, they can also click the help icon to read details about the available labels and associated policies.  

The same labels appear when users create groups from Yammer, Planner, and other Office 365 services. They’re also available when users create teams in Microsoft Teams.  

Change label settings related to Office 365 Groups
Once the label is created, published, and used across several groups then it’s advisable to not change the label’s setting pertaining to Office 365 Groups. In case this change is must for a given label and if it is desired that all existing groups using the label must follow this new settings then it is recommended to follow the sample Azure AD PowerShell script to manually apply updates to applicable groups. Download the script here. General documentation to run Azure AD PowerShell is here.

Support for the new sensitivity labels for groups 
For this preview, the following services support the new sensitivity labels for groups: 
SharePoint
Outlook Web App
Teams
SharePoint admin center
Azure AD admin center
Security & Compliance admin center
The following apps and services can’t be used to create Office 365 groups with the new sensitivity labels: 

Outlook for the Mac
Outlook mobile  
Outlook desktop for Windows
Forms  
Dynamics 365  
Yammer  
Stream  
Planner  
Project  
PowerBI  
Teams admin center  
Microsoft 365 admin center  
Exchange admin center

We’re working to make all these apps compatible with new sensitivity labels.  
When is GA expected?
We expect to make this open for general availability around March 2020.  
Do I need make any changes when I move from the preview to GA?
You should not need to make any changes to your labels or groups that you have created during preview period 

What happens to AAD labels and Groups that used them before preview?
You have few different routes to take.  
During Public Preview
<Sanjoyan to add> 

After GA 
<Sanjoyan to add> 

Refer to following documentation to learn more
Teams
AAD
Groups
