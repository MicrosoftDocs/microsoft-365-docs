---
title: "Manage SharePoint users and groups with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/06/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom:
- PowerShell
- Ent_Office_Other
- SPO_Content
- seo-marvel-apr2020
ms.assetid: d0d3877a-831f-4744-96b0-d8167f06cca2
description: In this article, learn how to use PowerShell for Microsoft 365 to manage SharePoint users, groups, and sites.
---

# Manage SharePoint users and groups with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

If you're a SharePoint administrator who works with large lists of user accounts or groups and wants an easier way to manage them, you can use PowerShell for Microsoft 365.

Before you begin, the procedures in this article require you to connect to SharePoint. For instructions, see [Connect to SharePoint PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

## Get a list of sites, groups, and users

Before we start to manage users and groups, you need to get lists of your sites, groups, and users. You can then use this information to work through the example in this article.

Get a list of the sites in your tenant with this command:

```powershell
Get-SPOSite
```

Get a list of the groups in your tenant with this command:

```powershell
Get-SPOSite | ForEach {Get-SPOSiteGroup -Site $_.Url} | Format-Table
```

Get a list of the users in your tenant with this command:

```powershell
Get-SPOSite | ForEach {Get-SPOUser -Site $_.Url}
```

## Add a user to the site admins group

You use the `Set-SPOUser` cmdlet to add a user to the list of site admins on a site collection.

```powershell
$tenant = "<tenant name, such as litwareinc for litwareinc.com>"
$site = "<site name>"
$user = "<user account name, such as opalc>"
Set-SPOUser -Site https://$tenant.sharepoint.com/sites/$site -LoginName $user@$tenant.com -IsSiteCollectionAdmin $true
 ```

To use these commands, replace everything within the quotes, including the < and > characters, with the correct names.

For example, this set of commands adds Opal Castillo (user name opalc) to the list of site admins on the ContosoTest site collection in the Contoso tenancy:

```powershell
$tenant = "contoso"
$site = "contosotest"
$user = "opalc"
Set-SPOUser -Site https://$tenant.sharepoint.com/sites/$site -LoginName $user@$tenant.com -IsSiteCollectionAdmin $true
```

You can copy and paste these commands into Notepad, change the variable values for $tenant, $site, and $user to actual values from your environment, and then paste this into your SharePoint Management Shell window to run them.

## Add a user to other site collection groups

In this task, we use the `Add-SPOUser` cmdlet to add a user to a SharePoint group on a site collection.

```powershell
$tenant = "<tenant name, such as litwareinc for litwareinc.com>"
$site = "<site name>"
$user = "<user account name, such as opalc>"
$group = "<group name name, such as Auditors>"
Add-SPOUser -Group $group -LoginName $user@$tenant.com -Site https://$tenant.sharepoint.com/sites/$site

```

For example, let's add Glen Rife (user name glenr) to the Auditors group on the ContosoTest site collection in the contoso tenancy:

```powershell
$tenant = "contoso"
$site = "contosotest"
$user = "glenr"
$group = "Auditors"
Add-SPOUser -Group $group -LoginName $user@$tenant.com -Site https://$tenant.sharepoint.com/sites/$site
```

## Create a site collection group

You use the `New-SPOSiteGroup` cmdlet to create a new SharePoint group and add it to a site collection.

```powershell
$tenant = "<tenant name, such as litwareinc for litwareinc.com>"
$site = "<site name>"
$group = "<group name name, such as Auditors>"
$level = "<permission level, such as View Only>"
New-SPOSiteGroup -Group $group -PermissionLevels $level -Site https://$tenant.sharepoint.com/sites/$site
```

Group properties, such as permission levels, can be updated later by using the `Set-SPOSiteGroup` cmdlet.

For example, let's add the Auditors group with View Only permissions to the contosotest site collection in the contoso tenancy:

```powershell
$tenant = "contoso"
$site = "contosotest"
$group = "Auditors"
$level = "View Only"
New-SPOSiteGroup -Group $group -PermissionLevels $level -Site https://$tenant.sharepoint.com/sites/$site
```

## Remove users from a group

Sometimes you have to remove a user from a site or even all sites. Perhaps the employee moves from one division to another or leaves the company. You can do this for one employee easily in the UI, but this isn't easily done when you have to move a complete division from one site to another.

However by using the SharePoint Management Shell and CSV files, this is fast and easy. In this task, you use Windows PowerShell to remove a user from a site collection security group. Then you use a CSV file and remove lots of users from different sites.

We'll be using the 'Remove-SPOUser' cmdlet to remove a single Microsoft 365 user from a site collection group so we can see the command syntax. Here's how the syntax looks:

```powershell
$tenant = "<tenant name, such as litwareinc for litwareinc.com>"
$site = "<site name>"
$user = "<user account name, such as opalc>"
$group = "<group name name, such as Auditors>"
Remove-SPOUser -LoginName $user@$tenant.com -Site https://$tenant.sharepoint.com/sites/$site -Group $group
```

For example, let's remove Bobby Overby from the site collection Auditors group in the contosotest site collection in the contoso tenancy:

```powershell
$tenant = "contoso"
$site = "contosotest"
$user = "bobbyo"
$group = "Auditors"
Remove-SPOUser -LoginName $user@$tenant.com -Site https://$tenant.sharepoint.com/sites/$site -Group $group
```

Suppose we wanted to remove Bobby from all the groups he's currently in. Here's how we would do that:

```powershell
$tenant = "contoso"
$user = "bobbyo"
Get-SPOSite | ForEach {Get-SPOSiteGroup –Site $_.Url} | ForEach {Remove-SPOUser -LoginName $user@$tenant.com -Site $_.Url}
```

> [!WARNING]
> This is just an example. You should not run this command unless you really have to remove a user from every group, for example if the user leaves the company.

## Automate management of large lists of users and groups

To add a large number of accounts to SharePoint sites and give them permissions, you can use the Microsoft 365 admin center, individual PowerShell commands, or PowerShell and a CSV file. Of these choices, the CSV file is the fastest way to automate this task.

The basic process is to create a CSV file that has headers (columns) that correspond to the parameters that the Windows PowerShell script needs. You can easily create such a list in Excel and then export it as a CSV file. Then, you use a Windows PowerShell script to iterate through records (rows) in the CSV file, adding the users to groups and the groups to sites.

For example, let's create a CSV file to define a group of site collections, groups, and permissions. Next, we'll create a CSV file to populate the groups with users. Finally, we'll create and run a Windows PowerShell script that creates and populates the groups.

The first CSV file adds one or more groups to one or more site collections and will have this structure:

Header:

```powershell
Site,Group,PermissionLevels
```

Item:

```powershell
https://tenant.sharepoint.com/sites/site,group,level
```

Here's an example file:

```powershell
Site,Group,PermissionLevels
https://contoso.sharepoint.com/sites/contosotest,Contoso Project Leads,Full Control
https://contoso.sharepoint.com/sites/contosotest,Contoso Auditors,View Only
https://contoso.sharepoint.com/sites/contosotest,Contoso Designers,Design
https://contoso.sharepoint.com/sites/TeamSite01,XT1000 Team Leads,Full Control
https://contoso.sharepoint.com/sites/TeamSite01,XT1000 Advisors,Edit
https://contoso.sharepoint.com/sites/Blog01,Contoso Blog Designers,Design
https://contoso.sharepoint.com/sites/Blog01,Contoso Blog Editors,Edit
https://contoso.sharepoint.com/sites/Project01,Project Alpha Approvers,Full Control
```

The second CSV file adds one or more users to one or more groups and will have this structure:

Header:

```powershell
Group,LoginName,Site
```

Item:

```powershell
group,login,https://tenant.sharepoint.com/sites/site
```

Here's an example file:

```powershell
Group,LoginName,Site
Contoso Project Leads,bobbyo@contoso.com,https://contoso.sharepoint.com/sites/contosotest
Contoso Auditors,allieb@contoso.com,https://contoso.sharepoint.com/sites/contosotest
Contoso Designers,bonniek@contoso.com,https://contoso.sharepoint.com/sites/contosotest
XT1000 Team Leads,dorenap@contoso.com,https://contoso.sharepoint.com/sites/TeamSite01
XT1000 Advisors,garthf@contoso.com,https://contoso.sharepoint.com/sites/TeamSite01
Contoso Blog Designers,janets@contoso.com,https://contoso.sharepoint.com/sites/Blog01
Contoso Blog Editors,opalc@contoso.com,https://contoso.sharepoint.com/sites/Blog01
Project Alpha Approvers,robinc@contoso.com,https://contoso.sharepoint.com/sites/Project01
```

For the next step, you must have the two CSV files saved to your drive. Here are example commands that use both CSV files and to add permissions and group membership:

```powershell
Import-Csv C:\O365Admin\GroupsAndPermissions.csv | ForEach {New-SPOSiteGroup -Group $_.Group -PermissionLevels $_.PermissionLevels -Site $_.Site}
Import-Csv C:\O365Admin\Users.csv | ForEach {Add-SPOUser -Group $_.Group –LoginName $_.LoginName -Site $_.Site}
```

The script imports the CSV file contents and uses the values in the columns to populate the parameters of the **New-SPOSiteGroup** and **Add-SPOUser** commands. In our example, we're saving this file to the O365Admin folder on drive C, but you can save it wherever you want.

Now, let's remove a bunch of people for several groups in different sites using the same CSV file. Here's an example command:

```powershell
Import-Csv C:\O365Admin\Users.csv | ForEach {Remove-SPOUser -LoginName $_.LoginName -Site $_.Site -Group $_.Group}
```

## Generate user reports

You might want to get a report for a few sites and display the users for those sites, their permission level, and other properties. This is how the syntax looks:

```powershell
$tenant = "<tenant name, such as litwareinc for litwareinc.com>"
$site = "<site name>"
Get-SPOUser -Site https://$tenant.sharepoint.com/sites/$site | select * | Format-table -Wrap -AutoSize | Out-File c\UsersReport.txt -Force -Width 360 -Append
```

This grabs the data for these three sites and writes them to a text file on your local drive. The parameter –Append adds new content to an existing file.

For example, let's run a report on the ContosoTest, TeamSite01, and Project01 sites for the Contoso1 tenant:

```powershell
$tenant = "contoso"
$site = "contosotest"
Get-SPOUser -Site https://$tenant.sharepoint.com/sites/$site | Format-Table -Wrap -AutoSize | Out-File c:\UsersReport.txt -Force -Width 360 -Append
$site = "TeamSite01"
Get-SPOUser -Site https://$tenant.sharepoint.com/sites/$site |Format-Table -Wrap -AutoSize | Out-File c:\UsersReport.txt -Force -Width 360 -Append
$site = "Project01"
Get-SPOUser -Site https://$tenant.sharepoint.com/sites/$site | Format-Table -Wrap -AutoSize | Out-File c:\UsersReport.txt -Force -Width 360 -Append
```

We had to change only the **$site** variable. The **$tenant** variable keeps its value through all three runs of the command.

However, what if you wanted to do this for every site? You can do this without having to type all those websites by using this command:

```powershell
Get-SPOSite | ForEach {Get-SPOUser –Site $_.Url} | Format-Table -Wrap -AutoSize | Out-File c:\UsersReport.txt -Force -Width 360 -Append
```

This report is fairly simple, and you can add more code to create more specific reports or reports that include more detailed information. But this should give you an idea of how to use the SharePoint Management Shell to manage users in the SharePoint environment.

## See also

[Connect to SharePoint PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

[Manage SharePoint with PowerShell](create-sharepoint-sites-and-add-users-with-powershell.md)

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)

[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
