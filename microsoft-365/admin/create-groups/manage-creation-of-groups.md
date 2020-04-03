---
title: "Manage who can create Office 365 Groups"
f1.keywords: NOCSH
ms.author: mikeplum
ms.reviewer: arvaradh
author: MikePlumleyMSFT
manager: pamgreen
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MSP160
- MST160
- MET150
- MOE150
ms.assetid: 4c46c8cb-17d0-44b5-9776-005fced8e618
description: "Learn how to control which users can create Office 365 Groups."
---

# Manage who can create Office 365 Groups

  
Because it's so easy for users to create Office 365 Groups, you aren't inundated with requests to create them on behalf of other people. Depending on your business, however, you might want to control who has the ability to create groups.
  
This article explains how to disable the ability to create groups in all Office 365 services that use groups, including:
  
- Outlook
    
- SharePoint
    
- Yammer
    
- Microsoft Teams

- Microsoft Stream
    
- StaffHub
    
- Planner
    
- PowerBI

- Roadmap
    
You can restrict Office 365 Group creation to the members of a particular security group. To configure this, you use Windows PowerShell. This article walks you through the needed steps.
  
The steps in this article won't prevent members of certain roles from creating Groups. Office 365 Global admins can create Groups via any means, such as the Microsoft 365 admin center, Planner, Teams, Exchange, and SharePoint Online. Other roles can create Groups via limited means, listed below.
        
  - Exchange Administrator: Exchange Admin center, Azure AD
    
  - Partner Tier 1 Support: Microsoft 365 Admin center, Exchange Admin center, Azure AD
    
  - Partner Tier 2 Support: Microsoft 365 Admin center, Exchange Admin center, Azure AD
    
  - Directory Writers: Azure AD

  - SharePoint Administrator: SharePoint Admin center, Azure AD
  
  - Teams Service Administrator: Teams Admin center, Azure AD
  
  - User Management Administrator: Microsoft 365 Admin center, Yammer, Azure AD
     
If you're a member of one of these roles, you can create Office 365 Groups for restricted users, and then assign the user as the owner of the group. Users that have this role are able to create connected groups in Yammer, regardless of any PowerShell settings that might prevent creation.

## Licensing requirements

To manage who creates Groups, the following people need Azure AD Premium licenses or Azure AD Basic EDU licenses assigned to them:

- The admin who configures these group creation settings
- The members of the security group who are allowed to create groups

> [!NOTE]
> Check [this article](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/license-users-groups) for more details about how to assign Azure licenses.

The following people don't need Azure AD Premium or Azure AD Basic EDU licenses assigned to them:

- People who are members of Office 365 groups and who don't have the ability to create other groups.

## Step 1: Create a security group for users who need to create Office 365 Groups

Only one security group in your organization can be used to control who is able to create Groups. But, you can nest other security groups as members of this group. For example, the group named Allow Group Creation is the designated security group, and the groups named Microsoft Planner Users and Exchange Online Users are members of that group.

Admins in the roles listed above do not need to be members of this group: they retain their ability to create groups.

> [!IMPORTANT]
> Be sure to use a **security group** to restrict who can create groups. If you try to use an Office 365 group, members won't be able to create a group from SharePoint because it checks for a security group. 
    
1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.

2. Click on **Add a Group**.

3. Choose **Security** as the group type. Remember the name of the group! You'll need it later.
  
4. Finish setting up the security group, adding people or other security groups who you want to be able to create groups in your org.
    
For detailed instructions, see [Create, edit, or delete a security group in the Microsoft 365 admin center](../email/create-edit-or-delete-a-security-group.md).
 
## Step 2: Run PowerShell commands

You must use the preview version of [Azure Active Directory PowerShell for Graph (AzureAD)](https://docs.microsoft.com/powershell/azure/active-directory/install-adv2) (module name **AzureADPreview**) to change the group-level guest access setting:

- If you haven't installed any version of the Azure AD PowerShell module before, see [Installing the Azure AD Module](https://docs.microsoft.com/powershell/azure/active-directory/install-adv2?view=azureadps-2.0-preview#installing-the-azure-ad-module) and follow the instructions to install the public preview release.

- If you have the 2.0 general availability version of the Azure AD PowerShell module (AzureAD) installed, you must uninstall it by running `Uninstall-Module AzureAD` in your PowerShell session, and then install the preview version by running `Install-Module AzureADPreview`.

- If you have already installed the preview version, run `Install-Module AzureADPreview` to make sure it's the latest version of this module.



Copy the script below into a text editor, such as Notepad, or the [Windows PowerShell ISE](https://docs.microsoft.com/powershell/scripting/components/ise/introducing-the-windows-powershell-ise).

Replace *\<SecurityGroupName\>* with the name of the security group that you created. For example:

`$GroupName = "Group Creators"`

Save the file as GroupCreators.ps1. 

In the PowerShell window, navigate to the location where you saved the file (type "CD <FileLocation>").

Run the script by typing:

`.\GroupCreators.ps1`

and [sign in with your administrator account](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell#step-2-connect-to-azure-ad-for-your-office-365-subscription) when prompted.

```PowerShell
$GroupName = "<SecurityGroupName>"
$AllowGroupCreation = "False"

Connect-AzureAD

$settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
if(!$settingsObjectID)
{
	  $template = Get-AzureADDirectorySettingTemplate | Where-object {$_.displayname -eq "group.unified"}
    $settingsCopy = $template.CreateDirectorySetting()
    New-AzureADDirectorySetting -DirectorySetting $settingsCopy
    $settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
}

$settingsCopy = Get-AzureADDirectorySetting -Id $settingsObjectID
$settingsCopy["EnableGroupCreation"] = $AllowGroupCreation

if($GroupName)
{
	$settingsCopy["GroupCreationAllowedGroupId"] = (Get-AzureADGroup -SearchString $GroupName).objectid
}
 else {
$settingsCopy["GroupCreationAllowedGroupId"] = $GroupName
}
Set-AzureADDirectorySetting -Id $settingsObjectID -DirectorySetting $settingsCopy

(Get-AzureADDirectorySetting -Id $settingsObjectID).Values
```

The last line of the script will display the updated settings:

![This is what your settings will look like when you're done.](../../media/952cd982-5139-4080-9add-24bafca0830c.png)

If in the future you want to change which security group is used, you can rerun the script with the name of the new security group.

If you want to turn off the group creation restriction and again allow all users to create groups, set $GroupName to "" and $AllowGroupCreation to "True" and rerun the script.
    
## Step 4: Verify that it works

1. Sign in to Office 365 with a user account of someone who should NOT have the ability to create groups. That is, they are not a member of the security group you created or an administrator.
    
2. Select the **Planner** tile. 
    
3. In Planner, select **New Plan** in the left navigation to create a plan. 
  
4. You should get a message that plan and group creation is disabled.

Try the same procedure again with a member of the security group.

> [!NOTE]
> If members of the security group aren't able to create groups, check that they aren't being blocked through their [OWA mailbox policy](https://go.microsoft.com/fwlink/?linkid=852135).
    
## Related articles

[Getting started with Office 365 PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=808033)

[Set up self-service group management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-self-service-management)

[Set-ExecutionPolicy](https://docs.microsoft.com/powershell/module/microsoft.powershell.security/set-executionpolicy)

[Azure Active Directory cmdlets for configuring group settings](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-settings-cmdlets)
