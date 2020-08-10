---
title: "Why you need to use PowerShell for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/17/2020
audience: ITPro
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
ms.assetid: b3209b1a-40c7-4ede-8e78-8a88bb2adc8a
description: "Summary: Understand why you must use PowerShell to manage Microsoft 365, in some cases more efficiently and in other cases by necessity."
---

# Why you need to use PowerShell for Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

With the Microsoft 365 admin center, you can not only manage your Microsoft 365 user accounts and licenses, but you can also manage your Microsoft 365 services such as Exchange Online, Teams, and SharePoint Online. However, you can also manage these elements with PowerShell commands, taking advantage of a command-line and scripting language environment for speed, automation, and additional capability.
  
In this article, we'll show you these ways in which you can use PowerShell to manage Microsoft 365:
  
- Reveal additional information that you cannot see with the Microsoft 365 admin center
    
- Configure features and settings only possible with PowerShell
    
- Perform bulk operations
    
- Filtering data
    
- Print or save data
    
- Manage across services
    
Before you begin, understand that PowerShell for Microsoft 365 is a set of modules for Windows PowerShell, a command-line environment for Windows-based services and platforms. This environment creates a command shell language that can be extended with additional modules and provides a way to execute simple or complex commands or scripts. For example, after you install the PowerShell for Microsoft 365 modules and connect to your Microsoft 365 subscription, you can run this command to list all of the user mailboxes for Microsoft Exchange Online:
  
```powershell
Get-Mailbox
```

Getting the list of mailboxes can also be easily done using the Microsoft 365 admin center, but counting the number of items in all of the lists for all of the sites for all of your web apps cannot be easily done.
  
Please note that PowerShell for Microsoft 365 is designed to augment and enhance your ability to manage Microsoft 365, not to replace the Microsoft 365 admin center. As an administrator, you must become at least comfortable with using PowerShell for Microsoft 365 because there are some configuration procedures that can only be done with PowerShell for Microsoft 365 commands. In these cases, you will be required to understand how to:
  
- Install the PowerShell for Microsoft 365 modules (done only once for each administrator computer).
    
- Connect to your Microsoft 365 subscription (done once for each PowerShell session).
    
- Gather the information needed to run the required PowerShell for Microsoft 365 commands.
    
- Run the PowerShell for Microsoft 365 commands successfully.
    
After learning these basic skills, you are not required to list your mailbox users with **Get-Mailbox** command, nor are you required to understand how to create a new command like the previous one to count all the items in all the lists for all of the sites for all of your web apps. Microsoft and the community of administrators can help you with that as needed.
  
## PowerShell for Microsoft 365 can reveal additional information that you cannot see with the Microsoft 365 admin center

The Microsoft 365 admin center displays a lot of useful information, but that doesn't mean that it displays all the possible information that Microsoft 365 stores on users, licenses, mailboxes, and sites. Here is an example for **users and groups** in the Microsoft 365 admin center:
  
![Example of the display of users and groups in the Microsoft 365 admin center.](media/o365-powershell-users-and-groups.png)
  
For many purposes, this displays the information you need to know. However, there are times when you need more. For example, Microsoft 365 licensing (and the Microsoft 365 features available to a user) depend in part on that user's geographic location. The policies and features you can extend to a user who lives in the United States might not be the same as the policies and features you can extend to a user who lives in India or in Belgium. You can use the Microsoft 365 admin center to determine a user's geographic location with these steps:
  
1. Double-click the user's **Display Name**.
    
2. In the user properties display pane, click **details**.
    
3. In the details display, click **additional details**.
    
4. Scroll down until you see the heading **Country or region**:
    
     ![Example of the region information for a user in the Microsoft 365 admin center.](media/o365-powershell-usage-location.png)
  
5. Write the user's display name and location on a piece of paper, or copy and paste it into Notepad. 
    
You must repeat this procedure for each user. For many users, this can be a tedious task. With PowerShell for Microsoft 365, you can display this information for all of your users with the following command:
  
```powershell
Get-AzureADUser | Select DisplayName, UsageLocation
```


>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

Here is an example of the display:
  
```powershell
DisplayName                               UsageLocation
-----------                               -------------
Bonnie Kearney                            GB
Fabrice Canel                             BR
Brian Johnson (TAILSPIN)                  US
Anne Wallace                              US
Alex Darrow                               US
David Longmuir                            BR
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription ( **Get-AzureADUser** ), but only display the name and location for each user ( **Select DisplayName, UsageLocation** ).
  
Because PowerShell for Microsoft 365 supports a command shell language, you can further manipulate the information obtained from the **Get-AzureADUser** command. For example, maybe you'd like to sort these users by their location, grouping all the Brazilian users together, all the United States users together, etc. Here is the command:
  
```powershell
Get-AzureADUser | Select DisplayName, UsageLocation | Sort UsageLocation, DisplayName
```

Here is an example of the display:
  
```powershell
DisplayName                                 UsageLocation
-----------                                 -------------
David Longmuir                              BR
Fabrice Canel                               BR
Bonnie Kearney                              GB
Alex Darrow                                 US
Anne Wallace                                US
Brian Johnson (TAILSPIN)                    US
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription, but only display the name and location for each user and sort them first by their location, and then their names ( **Sort UsageLocation, DisplayName** ).
  
You can also employ additional filtering. For example, if you only want to see information about users based in Brazil, use this command:
  
```powershell
Get-AzureADUser | Where {$_.UsageLocation -eq "BR"} | Select DisplayName, UsageLocation 
```

Here is an example of the display:
  
```powershell
DisplayName                                           UsageLocation
-----------                                           -------------
David Longmuir                                        BR
Fabrice Canel                                         BR
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription whose location is Brazil ( **Where {$\_.UsageLocation -eq "BR"}** ), then display the name and location for each user.
  
 **A Quick Note Regarding Larger Domains**
  
If you have a very large domain with tens of thousands of users, trying some of the examples we show in this article could lead to "throttling." That means that, based on things like computing power and available network bandwidth, you're trying to do a little too much at one time. Because of that, larger organizations might want to split some of these PowerShell for Microsoft 365 commands into two commands. For example, this one command returns all the user accounts and shows the name and location for each:
  
```powershell
Get-AzureADUser | Select DisplayName, UsageLocation
```

That works great for smaller domains. In a large organization, however, you might need to split that into two commands: one command to store the user account information in a variable and another command to display the needed information. Here is an example:
  
```powershell
$x = Get-AzureADUser
$x | Select DisplayName, UsageLocation
```

The interpretation of this set of PowerShell commands is:
- Get all of the users in the current Microsoft 365 subscription and store the information in a variable named $x ( **$x = Get-AzureADUser** ).
- Display the contents of the variable $x, but only include the name and location for each user ( **$x | Select DisplayName, UsageLocation** ).
  
## Microsoft 365 has features that you can only configure with PowerShell for Microsoft 365

The Microsoft 365 admin center is intended to provide access to the most common or meaningful administrative tasks that apply to most people. In other words, the Microsoft 365 admin center was designed so that the typical administrator could use the tool to carry out the most common management tasks. By this definition, that means that there are some tasks that can't be completed by using the Microsoft 365 admin center.
  
For example, the Skype for Business Online Admin center provides a few options for creating custom meeting invitations:
  
![Example of the display of custom meeting invitations in the Skype for Business Online Admin center.](media/o365-powershell-meeting-invitation.png)
  
With these settings, you can add a touch of personalization and professionalism to meeting invitations. However, there's more to meeting configuration settings than simply creating custom meeting invitations. For example, by default, meetings allow:
  
- Anonymous users to gain automatic entrance to each meeting.
    
- Attendees to record the meeting.
    
- All users from your organization to be designated as presenters when they join the meeting.
    
These settings are not available from the Skype for Business Online Admin center. However, you can control them from PowerShell for Microsoft 365. Here is a command that disables these three settings:
  
```powershell
Set-CsMeetingConfiguration -AdmitAnonymousUsersByDefault $False -AllowConferenceRecording $False -DesignateAsPresenter "None"
```

> [!NOTE]
> This command requires that you install the [Skype for Business Online PowerShell Module ](https://www.microsoft.com/download/details.aspx?id=39366). 
  
> [!TIP]
>  The interpretation of this PowerShell command is: For the settings for new Skype for Business Online meetings ( **Set-CsMeetingConfiguration** ), disable allowing anonymous users to gain automatic entrance to meetings ( **-AdmitAnonymousUsersByDefault $False** ), disable the ability for attendees to record meetings ( **-AllowConferenceRecording $False** ), and do not designate all users from your organization as presenters ( **-DesignateAsPresenter "None"** ).
  
If you change your mind and want to restore these default settings (all of them enabled), run this command:
  
```powershell
Set-CsMeetingConfiguration -AdmitAnonymousUsersByDefault $True -AllowConferenceRecording $True -DesignateAsPresenter "Company"
```

This is just one example. There are others, which is why you, as an administrator, need to be comfortable with running PowerShell for Microsoft 365 commands.
  
## PowerShell for Microsoft 365 is great at carrying out bulk operations

Historically, visual interfaces like the Microsoft 365 admin center are most valuable when you have a single operation to perform. For example, if you need to disable one user account, you can use the Microsoft 365 admin center to quickly locate and clear a checkbox. This can be simpler than performing a similar operation in PowerShell.
  
But if you have to change many things or some selected things within a large set of other things, the Microsoft 365 admin center might not be the best use of your time. For example, if you had to change the prefix on thousands of phone numbers or you needed to remove a specific user, Ken Myer, from all of your SharePoint Online sites, how would you do that in the Microsoft 365 admin center?
  
For the latter example, you have several hundred SharePoint Online sites and you don't know even know which ones of which Ken Meyer is a member. That means you'll have to start at the Microsoft 365 admin center and then perform this procedure for each site:
  
1. Click the **URL** of the site.
    
2. In the **site collection properties** box, click the **Web Site Address** link to open the site.
    
3. On the site, click **Share**.
    
4. In the **Share** dialog box click the link that shows you all the users who have permissions to the site:
    
     ![Example of viewing the members of a SharePoint Online site in the SharePoint Online Admin center.](media/o365-powershell-view-permissions.png)
  
5. In the **Shared With** dialog box, click **Advanced**.
    
6. Scroll down the list of users, find and select Ken Myer (assuming he has permissions to the site), and then click **Remove User Permissions**.
    
This can take a long time for several hundred sites.
  
The alternative is to use PowerShell for Microsoft 365 and the following command to remove Ken Myer from all of your sites:
  
```powershell
Get-SPOSite | ForEach {Remove-SPOUser -Site $_.Url -LoginName "kenmyer@litwareinc.com"}
```

> [!NOTE]
> This command requires that you install the [SharePoint Online PowerShell module](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps). 
  
> [!TIP]
>  The interpretation of this PowerShell command is:  Get all of the SharePoint sites in the current Microsoft 365 subscription ( **Get-SPOSite** ) and for each site, remove Ken Meyer from the list of users who can access it ( **ForEach {Remove-SPOUser -Site $\_.Url -LoginName "kenmyer@litwareinc.com"}** ).
  
Because we are telling Microsoft 365 to remove Ken Meyer from every site, including those in which he does not have access, the display of this command will show errors for those sites in which he does not currently have access. We can use an additional condition on this command to remove Key Meyer only from the sites that have him in their login list, but the listed errors cause no harm to the sites themselves. This command might take a few minutes to run against hundreds of sites, rather than hours of working through the Microsoft 365 admin center.
  
Here is another bulk operation example. Use this command to add Bonnie Kearney, a new SharePoint administrator, to all of the sites in the organization:
  
```powershell
Get-SPOSite | ForEach {Add-SPOUser -Site $_.Url -LoginName "bkearney@litwareinc.com" -Group "Members"}
```

> [!TIP]
>  The interpretation of this PowerShell command is:  Get all of the SharePoint sites in the current Microsoft 365 subscription and for each site, allow Bonnie Kearney access by adding her login name to the Members group of the site ( **ForEach {Add-SPOUser -Site $\_.Url -LoginName "bkearney@litwareinc.com" -Group "Members"}** ).
  
## PowerShell for Microsoft 365 is great at filtering data

The Microsoft 365 admin center provides several different ways to filter your data to quickly and easily locate a targeted subset of information. For example, Exchange makes it easy to filter on practically any property of a user mailbox. For example, here is the list of mailboxes for all the users who live in the city of Bloomington:
  
![Example of doing an advanced search in the Microsoft 365 admin center for the list of mailboxes for all the users who live in the city of Bloomington.](media/o365-powershell-advanced-search.png)
  
The Exchange Admin center also lets you combine filter criteria. For example, you can find the mailboxes for all the people who live in Bloomington and who work in the Finance department. 
  
However, there are limitations to what you can do in the Exchange Admin center. For example, maybe you'd like to find the mailboxes of people who live in Bloomington or San Diego, or the mailboxes for all the people who don't live in Bloomington. 
  
With PowerShell for Microsoft 365, you can get a list of mailboxes for all the people who live in the cities of Bloomington or San Diego with this command:
  
```powershell
Get-User | Where {$_.RecipientTypeDetails -eq "UserMailbox" -and ($_.City -eq "San Diego" -or $_.City -eq "Bloomington")} | Select DisplayName, City
```

Here is an example of the display:
  
```powershell
DisplayName                              City
-----------                              ----
Alex Darrow                              San Diego
Bonnie Kearney                           San Diego
Julian Isla                              Bloomington
Rob Young                                Bloomington
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription who have a mailbox in the cities of either San Diego or Bloomington ( **Where {$\_.RecipientTypeDetails -eq "UserMailbox" -and ($\_.City -eq "San Diego" -or $\_.City -eq "Bloomington")}** ), then display the name and city for each ( **Select DisplayName, City** ).
  
To list all the mailboxes for people who live anywhere except Bloomington, here is the command:
  
```powershell
Get-User | Where {$_.RecipientTypeDetails -eq "UserMailbox" -and $_.City -ne "Bloomington"} | Select DisplayName, City
```

Here is an example of the display:
  
```powershell
DisplayName                               City
-----------                               ----
MOD Administrator                         Redmond
Alex Darrow                               San Diego
Allie Bellew                              Bellevue
Anne Wallace                              Louisville
Aziz Hassouneh                            Cairo
Belinda Newman                            Charlotte
Bonnie Kearney                            San Diego
David Longmuir                            Waukesha
Denis Dehenne                             Birmingham
Garret Vargas                             Seattle
Garth Fort                                Tulsa
Janet Schorr                              Bellevue
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription who have a mailbox not located in the city of Bloomington ( **Where {$\_.RecipientTypeDetails -eq "UserMailbox" -and $\_.City -ne "Bloomington"}** ), then display the name and city for each.
  
You can also use wildcard characters in your PowerShell filters to match part of a name. For example, suppose you're looking for a user account, and all you can remember is that their last name was Anderson, or maybe Henderson, or maybe it was Jorgenson.
  
You could track down that user in the Microsoft 365 admin center by using the search tool and carrying out three different searches:
  
- One for  *Anderson* 
    
- One for  *Henderson* 
    
- One for  *Jorgenson* 
    
Because all three of these names end in "son", you can tell PowerShell to display all the users whose name ends in "son". Here is the command:
  
```powershell
Get-User -Filter '{LastName -like "*son"}'
```

> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the users in the current Microsoft 365 subscription, but use a filter that only lists the users whose last names end in "son" ( **-Filter '{LastName -like "\*son"}'** ). The \* stands for any set of characters, which are letters in the case of the user's last name.
  
## PowerShell for Microsoft 365 makes it easy to print or save data

The Microsoft 365 admin center lets you view lists of data. Here is an example of the Skype for Business Online Admin center displaying a list of users who have been enabled for Skype for Business Online:
  
![Example of the Skype for Business Online Admin center displaying a list of users who have been enabled for Skype for Business Online.](media/o365-powershell-lync-users.png)
  
To save that information to a file, you must copy and paste it into a document or Excel. In either case, the copy might require additional formatting. Additionally, the Microsoft 365 admin center does not provide a way to directly print the displayed list.
  
Fortunately, you can use PowerShell to not only display the list, but save it to a file that can be easily imported into Excel. Here is an example command to save Skype for Business Online user data to a comma-separated values (CSV) file, a file that can be easily imported as a table in an Excel worksheet:
  
```powershell
Get-CsOnlineUser | Select DisplayName, UserPrincipalName, UsageLocation | Export-Csv -Path "C:\Logs\SfBUsers.csv" -NoTypeInformation
```

Here is an example of the display:
  
![Example of a table imported into an Excel worksheet for Skype for Business Online user data that was saved to a comma-separated values (CSV) file.](media/o365-powershell-data-in-excel.png)
  
> [!TIP]
>  The interpretation of this PowerShell command is: Get all of the Skype for Business Online users in the current Microsoft 365 subscription ( **Get-CsOnlineUser** ), obtain only the user name, UPN, and location ( **Select DisplayName, UserPrincipalName, UsageLocation** ), and then save that information in CSV file named C:\\Logs\\SfBUsers.csv ( **Export-Csv -Path "C:\\Logs\\SfBUsers.csv" -NoTypeInformation** ).
  
You can also use options to save this list as an XML file or as an HTML page. In fact, with additional PowerShell commands, you could save it directly as an Excel file, with any custom formatting you desire. 
  
You can also send the output of a PowerShell command that displays a list directly to the default printer in Windows. Here is an example command:
  
```powershell
Get-CsOnlineUser | Select DisplayName, UserPrincipalName, UsageLocation | Out-Printer
```

Here's what your printed document will look like:
  
![Example of a printed document that was the output of a PowerShell command listed directly to the default printer in Windows.](media/o365-powershell-printed-data.png)
  
> [!TIP]
>  The interpretation of this PowerShell command is:  Get all of the Skype for Business Online users in the current Microsoft 365 subscription, obtain only the user name, UPN, and location, and then send that information to the default Windows printer ( **Out-Printer** ).
  
The printed document has the same simple formatting as the display within the PowerShell command window, but once you have created a PowerShell command to list what you need, you just add **| Out-Printer** to the end of the command to get a hard copy to work from.
  
## PowerShell for Microsoft 365 lets you manage across server products

The different components that make up Microsoft 365 are designed to work together. For example, suppose you add a new user to Microsoft 365 and, when you do, you specify such information as the user's department and phone number. That information will then be available if you access the user's information using any of the Microsoft 365 services: Skype for Business Online, Exchange, or SharePoint Online.
  
But that's for common information that spans the suite of products. Product-specific information-for example, information about a user's Exchange mailbox-is typically not available across the suite. For example, if you want to know if a user's mailbox is enabled or not, that information is available only in the Exchange Admin center. 
  
Suppose you'd like to make a report that shows the following information for all your users:
  
- The user's display name
    
- Whether the user is licensed for Microsoft 365
    
- Whether the user's Exchange mailbox has been enabled
    
- Whether the user is enabled for Skype for Business Online
    
You currently cannot use the Microsoft 365 admin center to easily produce such a report. Instead, you'll have to create a separate document to store the information, like an Excel worksheet, and get all the user names and licensing information from the Microsoft 365 admin center, get mailbox information from the Exchange Admin center, get Skype for Business Online information from the Skype for Business Online Admin center, and then collate and combine that information.
  
The alternative is to use a PowerShell script to compile that report for you.
  
The following example script is more complicated than the commands you have seen so far in this article. But, it shows the potential of using PowerShell to create views of information that are very difficult to do otherwise. Here is the script that can compile and display the needed list:
  
```powershell
$x = Get-AzureADUser

foreach ($i in $x)
    {
      $y = Get-Mailbox -Identity $i.UserPrincipalName
      $i | Add-Member -MemberType NoteProperty -Name IsMailboxEnabled -Value $y.IsMailboxEnabled

      $y = Get-CsOnlineUser -Identity $i.UserPrincipalName
      $i | Add-Member -MemberType NoteProperty -Name EnabledForSfB -Value $y.Enabled
    }

$x | Select DisplayName, IsLicensed, IsMailboxEnabled, EnabledforSfB
```

Here is an example of the display:
  
```powershell
DisplayName             IsLicensed   IsMailboxEnabled   EnabledForSfB
-----------             ----------   ----------------   --------------
Bonnie Kearney          True         True               True
Fabrice Canel           True         True               True
Brian Johnson           False        True               False
Anne Wallace            True         True               True
Alex Darrow             True         True               True
David Longmuir          True         True               True
Katy Jordan             False        True               False
Molly Dempsey           False        True               False
```

The interpretation of this PowerShell script is:  

- Get all of the users in the current Microsoft 365 subscription and store the information in a variable named $x ( **$x = Get-AzureADUser** ).
- Start a loop that runs over all the users in the variable named $x ( **foreach ($i in $x)** ).  
- Define a variable named $y and store the user's mailbox information in it ( **$y = Get-Mailbox -Identity $i.UserPrincipalName** ).
- Add a new property to the user information named IsMailBoxEnabled and set it to the value of the IsMailBoxEnabled property of the user's mailbox ( **$i | Add-Member -MemberType NoteProperty -Name IsMailboxEnabled -Value $y.IsMailboxEnabled** ).
- Define a variable named $y and store the user's Skype for Business Online information in it ( **$y = Get-CsOnlineUser -Identity $i.UserPrincipalName** ).
- Add a new property to the user information named EnabledForSfB and set it to the value of the Enabled property of the user's Skype for Business Online information ( **$i | Add-Member -MemberType NoteProperty -Name EnabledForSfB -Value $y.Enabled** ).
- Display the list of users, but include only their name, whether they are licensed, and the two new properties that indicate whether their mailbox is enabled and whether they are enabled for Skype for Business Online ( **$x | Select DisplayName, IsLicensed, IsMailboxEnabled, EnabledforSfB** ).
  
## See also

[Getting started with PowerShell for Microsoft 365](getting-started-with-office-365-powershell.md)
  
[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-office-365-powershell.md)
  
[Use Windows PowerShell to create reports in Microsoft 365](use-windows-powershell-to-create-reports-in-office-365.md)

