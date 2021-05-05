---
title: "Create SharePoint Online sites and add users with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
- PowerShell
- Ent_Office_Other
- SPO_Content
- seo-marvel-apr2020
ms.assetid: d0d3877a-831f-4744-96b0-d8167f06cca2
description: "Summary: Use PowerShell to create new SharePoint Online sites and then add users and groups to those sites."
---

# Create SharePoint Online sites and add users with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

When you use PowerShell for Microsoft 365 to create SharePoint Online sites and add users, you can quickly and repeatedly perform tasks much faster than you can in the Microsoft 365 admin center. You can also perform tasks that are not possible to perform in the Microsoft 365 admin center. 

## Connect to SharePoint Online

The procedures in this topic require you to connect to SharePoint Online. For instructions, see [Connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps)

## Step 1: Create new site collections using PowerShell

Create multiple sites using PowerShell and a .csv file that you create using the example code provided and Notepad. For this procedure, you’ll be replacing the placeholder information shown in brackets with your own site- and tenant-specific information. This process lets you create a single file and run a single PowerShell command that uses that file. This makes the actions taken both repeatable and portable and eliminates many, if not all, errors that can come from typing long commands into the SharePoint Online Management Shell. There are two parts to this procedure. First you’ll create a .csv file, and then you’ll reference that .csv file using PowerShell, which will use its contents to create the sites.

The PowerShell cmdlet imports the .csv file and pipes it to a loop inside the curly brackets that reads the first line of the file as column headers. The PowerShell cmdlet then iterates through the remaining records, creates a new site collection for each record, and assigns properties of the site collection according to the column headers.

### Create a .csv file

> [!NOTE]
> The resource quota parameter works only on classic sites. If you use this parameter on a modern site, you may receive a warning message that it has been deprecated. 

1. Open Notepad, and paste the following text block into it:<br/>

```powershell
Owner,StorageQuota,Url,ResourceQuota,Template,TimeZoneID,Name
owner@tenant.onmicrosoft.com,100,https://tenant.sharepoint.com/sites/TeamSite01,25,EHS#1,10,Contoso Team Site
owner@tenant.onmicrosoft.com,100,https://tenant.sharepoint.com/sites/Blog01,25,BLOG#0,10,Contoso Blog
owner@tenant.onmicrosoft.com,150,https://tenant.sharepoint.com/sites/Project01,25,PROJECTSITE#0,10,Project Alpha
owner@tenant.onmicrosoft.com,150,https://tenant.sharepoint.com/sites/Community01,25,COMMUNITY#0,10,Community Site
```
<br/>Where *tenant* is the name of your tenant, and *owner* is the user name of the user on your tenant to whom you want to grant the role of primary site collection administrator.<br/>(You can press Ctrl+H when you use Notepad to bulk replace faster.)<br/>

2. Save the file on your desktop as **SiteCollections.csv**.<br/>

> [!TIP]
> Before you use this or any other .csv or Windows PowerShell script file, it's a good practice to make sure that there are no extraneous or nonprinting characters. Open the file in Word, and in the ribbon, click the paragraph icon to show nonprinting characters. There should be no extraneous nonprinting characters. For example, there should be no paragraph marks beyond the final one at the end of the file.

### Run the Windows PowerShell command

1. At the Windows PowerShell prompt, type or copy and paste the following command, and press Enter:<br/>
```powershell
Import-Csv C:\users\MyAlias\desktop\SiteCollections.csv | ForEach-Object {New-SPOSite -Owner $_.Owner -StorageQuota $_.StorageQuota -Url $_.Url -NoWait -ResourceQuota $_.ResourceQuota -Template $_.Template -TimeZoneID $_.TimeZoneID -Title $_.Name}
```
<br/>Where *MyAlias* equals your user alias.<br/>

2. Wait for the Windows PowerShell prompt to reappear. It might take a minute or two.<br/>

3. At the Windows PowerShell prompt, type or copy and paste the following cmdlet, and press Enter:<br/>

```powershell
Get-SPOSite -Detailed | Format-Table -AutoSize
```
<br/>

4. Note the new site collections in the list. Using our example CSV file, you would see the following site collections: **TeamSite01**, **Blog01**, **Project01**, and **Community01**

That’s it. You’ve created multiple site collections using the .csv file you created and a single Windows PowerShell command. You’re now ready to create and assign users to these sites.

## Step 2: Add users and groups

Now you’re going to create users and add them to a site collection group. You will then use a .csv file to bulk upload new groups and users.

The following procedures continue using the example sites TeamSite01, Blog01, Project01, and Community01.

### Create .csv and .ps1 files

1. Open Notepad, and paste the following text block into it:<br/>

```powershell
Site,Group,PermissionLevels
https://tenant.sharepoint.com/sites/Community01,Contoso Project Leads,Full Control
https://tenant.sharepoint.com/sites/Community01,Contoso Auditors,View Only
https://tenant.sharepoint.com/sites/Community01,Contoso Designers,Design
https://tenant.sharepoint.com/sites/TeamSite01,XT1000 Team Leads,Full Control
https://tenant.sharepoint.com/sites/TeamSite01,XT1000 Advisors,Edit
https://tenant.sharepoint.com/sites/Blog01,Contoso Blog Designers,Design
https://tenant.sharepoint.com/sites/Blog01,Contoso Blog Editors,Edit
https://tenant.sharepoint.com/sites/Project01,Project Alpha Approvers,Full Control
```
<br/>Where *tenant* equals your tenant name.<br/>

2. Save the file to your desktop as **GroupsAndPermissions.csv**.<br/>

3. Open a new instance of Notepad, and paste the following text block into it:<br/>

```powershell
Group,LoginName,Site
Contoso Project Leads,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Community01
Contoso Auditors,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Community01
Contoso Designers,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Community01
XT1000 Team Leads,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/TeamSite01
XT1000 Advisors,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/TeamSite01
Contoso Blog Designers,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Blog01
Contoso Blog Editors,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Blog01
Project Alpha Approvers,username@tenant.onmicrosoft.com,https://tenant.sharepoint.com/sites/Project01
```
<br/>Where *tenant* equals your tenant name, and *username* equals the user name of an existing user.<br/>

4. Save the file to your desktop as **Users.csv**.<br/>

5. Open a new instance of Notepad, and paste the following text block into it:<br/>

```powershell
Import-Csv C:\users\MyAlias\desktop\GroupsAndPermissions.csv | ForEach-Object {New-SPOSiteGroup -Group $_.Group -PermissionLevels $_.PermissionLevels -Site $_.Site}
Import-Csv C:\users\MyAlias\desktop\Users.csv | where {Add-SPOUser -Group $_.Group –LoginName $_.LoginName -Site $_.Site}
```
<br/>Where MyAlias equals the user name of the user that is currently logged on.<br/>

6. Save the file to your desktop as **UsersAndGroups.ps1**. This is a simple Windows PowerShell script.

You’re now ready to run the UsersAndGroup.ps1 script to add users and groups to multiple site collections.

### Run UsersAndGroups.ps1 script

1. Return to the SharePoint Online Management Shell.<br/>
2. At the Windows PowerShell prompt, type or copy and paste the following line, and press Enter:<br/>
```powershell
Set-ExecutionPolicy Bypass
```
<br/>

3. At the confirmation prompt, press **Y**.<br/>

4. At the Windows PowerShell prompt, type or copy and paste the following, and press Enter:<br/>

```powershell
c:\users\MyAlias\desktop\UsersAndGroups.ps1
```
<br/>Where *MyAlias* equals your user name.<br/>

5. Wait for the prompt to return before moving on. You will first see the groups appear as they are created. Then you will see the group list repeated as users are added.

## See also

[Connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps)

[Manage SharePoint Online site groups with PowerShell](manage-sharepoint-site-groups-with-powershell.md)

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)