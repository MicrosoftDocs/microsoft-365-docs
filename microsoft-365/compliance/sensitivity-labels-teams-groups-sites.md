---
title: "Use sensitivity labels with teams, groups, and sites (preview)"
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
description: "You can apply labels to teams, Office 365 groups, and SharePoint sites. "
---

# Use sensitivity labels with teams, groups, and sites (preview)

When you create sensitivity labels in [Security and Compliance Center](https://protection.office.com/), you can now apply them to Microsoft Teams teams, Office 365 groups, and SharePoint sites. You can associate policies with the labels to enforce public/private settings and guest access. You can also associate sensitivity labels with specific users to ensure that the label is applied to the teams, groups, and sites they create. 

> [!NOTE]
> When a label is applied to a team or group, the label is automatically applied to the connected SharePoint team site and vice versa. 

You can also now enable sensitivity label support for Office files in SharePoint and OneDrive. [Learn more](sensitivity-labels-sharepoint-onedrive-files.md)

## Overview

With this preview, sensitivity labels (also called unified Microsoft Information Protection labels) appear on files, emails, teams, Office 365 groups, and SharePoint sites. When labels are published to users, they follow the users across Office 365. The following images show how the same labels appear to users in Word and when creating a new team site from SharePoint. 

![A sensitivity label displayed in the Word desktop app](media/sensitivity-label-word.png)

![A sensitivity label when creating a team site from SharePoint](media/sensitivity-label-new-team-site.png)

## Enable this preview by using Azure PowerShell

1. Sign in to Azure as a global admin by using Azure PowerShell. For instructions, see [Sign in with Azure PowerShell](/powershell/azure/authenticate-azureps).

2. Run the following command.

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

If you're using the classic Azure AD classification list ($setting["ClassificationList"]), after you enable this preview, Office 365 won't use the old classifications for new groups and SharePoint sites. Old groups and sites will still display the old classification tags unless you convert them. [Learn how]().  

## Use the new Site and group settings when creating sensitivity labels

After you enable this preview, you can specify the following settings when you create a new sensitivity label:

- Privacy (Public/Private): Private means only approved members in your organization can see what's inside the group. Anyone else in your organization can't see what's in the group. [Learn more](https://support.office.com/article/36236e39-26d3-420b-b0ac-8072d2d2bedc)
- Guest access: You can control if guests can be added to a group. [Learn about managing guest access in Office 365 Groups](/office365/admin/create-groups/manage-guest-access-in-groups)
- Unmanaged devices: This setting lets you block or limit access to SharePoint content from devices that aren't hybrid AD joined or compliant in Intune. [Learn about controlling access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices)


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
- Outlook for the Mac
- Outlook mobile  
- Outlook desktop for Windows
- Forms  
- Dynamics 365  
- Yammer  
- Stream  
- Planner  
- Project  
- PowerBI  
- Teams admin center  
- Microsoft 365 admin center  
- Exchange admin center

We’re working to make all these apps compatible with new sensitivity labels.  

What happens to classic AAD classifications?

Scenario 1: Tenant never used classic AAD labels and never used unified MIP labels for WXPO

a.	Tenant Admin to set this flag of “Enable MIP labels in O365 groups” explicitly to True via AAD PowerShell cmdlet
b.	TENANT ADMIN to create the labels in the “SCC portal”
a.	Tenant admin can choose file and email related actions like encryption and water marking
b.	Tenant admin can choose O365 Groups and SPO sites related actions to the labels
c.	TENANT ADMIN to publish the policies
d.	Compatible workloads to show these new labels and groups will get created with these new labels
e.	Non-Compatible workloads will work in terms of Groups creation, but NO label will be attached to these groups
f.	Admins can run PowerShell cmdlets to apply new sensitivity labels to these Groups with no labels

Scenario 2: Tenant is already using classic AAD Labels 

Case A: Tenant never used unified MIP labels for document and email

a.	We recommend in security and compliance center create new labels with same name as the existing classic AAD labels

b.	Then use PowerShell cmdlet to apply these new labels to existing O365 groups and SharePoint sites using name mapping.

c.	Then admin can choose to delete the classic AAD Labels:
i.	Compatible workloads to show these new labels and groups will get created with these new labels
ii.	Non-Compatible workloads will work in terms of Groups creation, but NO label will be attached to these groups
iii.	Admins can run PowerShell cmdlets to apply new sensitivity labels to these Groups with no labels

d.	Alternatively, admin can choose to keep the classic AAD Labels:
a.	Compatible workloads to show these new labels and groups will get created with these new labels
b.	Non-Compatible workloads will work in terms of Groups creation and show classic AAD labels. These classic AAD labels will be attached to these groups created visa non-compatible work loads
c.	We highly recommend admins can run PowerShell cmdlets to apply new sensitivity labels to these Groups with classic AAD labels

Case B: Tenant used unified MIP labels for document and email

a.	As soon as you turn on the PowerShell opt-in switch the users will start seeing the same labels attributed for documents and emails
b.	We recommend go to each label in security and compliance center and apply appropriate policies related to Sites and Groups 


 
Sample to migrate groups classified as “General” with classic AAD label to new sensitivity label with same name “General” 

Step 1: Fetch the list of available labels along with their ids
a.	Install the latest SharePoint Online PowerShell client
b.	Launch SharePoint Online Management
c.	Run the following cmdlets
 
1) Set-ExecutionPolicy RemoteSigned
2) $O365Cred = Get-Credential
3) $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid -Authentication Basic -AllowRedirection -Credential $O365Cred
4) Import-PSSession $Session
5) Get-Label |ft Name, Guid

Step 2: Note the guid for the General label
 
 
Step 3: Get list of existing groups that are tagged with classic AAD classification called “General”
$groups = Get-UnifiedGroup | where {$_.Classification -eq "General"}
Step 4: For each such group add the new sensitivity label GUID
foreach ($g in $groups) 
{ Set-UnifiedGroup -Identity $g.DisplayName -SensitivityLabelId "457fa763-7c59-461c-b402-ad1ac6b703cc"}

