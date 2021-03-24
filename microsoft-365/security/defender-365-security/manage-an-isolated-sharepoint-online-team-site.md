---
title: Manage an isolated SharePoint Online team site
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
audience: ITPro
ms.topic: article

localization_priority: Normal
ms.collection: Ent_O365
ms.custom: 
  - Ent_Solutions
  - seo-marvel-apr2020
ms.assetid: 79a61003-4905-4ba8-9e8a-16def7add37c
description: Manage an isolated SharePoint Online team site, add new users and groups, remove users and groups, and create a documents subfolder with custom permissions.
ms.technology: mdo
ms.prod: m365-security
---

# Manage an isolated SharePoint Online team site

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1](defender-for-office-365.md)
- SharePoint Online 

 **Summary:** Manage your isolated SharePoint Online team site with these procedures.

This article describes common management operations for an isolated SharePoint Online team site.

## Add a new user

When someone new joins the site, you must decide their level of participation in the site:

- Administration: Add the new user account to the site admins access group

- Active collaboration: Add the user account to the site members access group

- Viewing: Add the user account to the site viewers access group

If you are managing user accounts and groups through Active Directory Domain Services (AD DS), add the appropriate users to the appropriate access groups using your normal AD DS user and group management procedures and wait for synchronization with your subscription.

If you are managing user accounts and groups through Microsoft 365, you can use the Microsoft 365 admin center or Microsoft PowerShell:

- For the Microsoft 365 admin center, sign in with a user account that has been assigned the User Account Administrator or Company Administrator role and use Groups to add the appropriate users to the appropriate access groups.

- For PowerShell, first [Connect with the Azure Active Directory PowerShell for Graph module](../../enterprise/connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module). To add a user account to an access group with its user principal name (UPN), use the following PowerShell command block:

```powershell
$userUPN="<UPN of the user account>"
$grpName="<display name of the group>"
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.UserPrincipalName -eq $userUPN }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $grpName }).ObjectID
```

To add a user account to an access group with its display name, use the following PowerShell command block:

```powershell
$userDisplayName="<display name of the user account>"
$grpName="<display name of the group>"
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $userDisplayName }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $grpName }).ObjectID
```

## Add a new group

To add access to an entire group, you must decide the level of participation of all the members of the group in the site:

- Administration: Add the group to the site admins access group

- Active collaboration: Add the group to the site members access group

- Viewing: Add the group to the site viewers access group

If you are managing user accounts and groups through AD DS, add the appropriate groups to the appropriate groups using your normal AD DS user and group management procedures and wait for synchronization with your subscription.

If you are managing user accounts and groups through Office 365, you can use the Microsoft 365 admin center or PowerShell:

- For the Microsoft 365 admin center, sign in with a user account that has been assigned the User Account Administrator or Company Administrator role and use Groups to add the appropriate groups to the appropriate access groups.

- For PowerShell, first [Connect with the Azure Active Directory PowerShell for Graph module](../../enterprise/connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
 Then, use the following PowerShell commands:

```powershell
$newGroupName="<display name of the new group to add>"
$siteGrpName="<display name of the access group>"
Add-AzureADGroupMember -RefObjectId (Get-AzureADGroup | Where { $_.DisplayName -eq $newGroupName }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $siteGrpName }).ObjectID
```

## Remove a user

When someone's access must be removed from the site, you remove them from the access group for which they are currently a member based on their participation in the site:

- Administration: Remove the user account from the site admins access group

- Active collaboration: Remove the user account from the site members access group

- Viewing: Remove the user account from the site viewers access group

If you are managing user accounts and groups through AD DS, remove the appropriate users from the appropriate access groups using your normal AD DS user and group management procedures and wait for synchronization with your subscription.

If you are managing user accounts and groups through Office 365, you can use the Microsoft 365 admin center or PowerShell:

- For the Microsoft 365 admin center, sign in with a user account that has been assigned the User Account Administrator or Company Administrator role and use Groups to remove the appropriate users from the appropriate access groups.

- For PowerShell, first [Connect with the Azure Active Directory PowerShell for Graph module](../../enterprise/connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
To remove a user account from an access group with its UPN, use the following PowerShell command block:

```powershell
$userUPN="<UPN of the user account>"
$grpName="<display name of the access group>"
Remove-AzureADGroupMember -MemberId (Get-AzureADUser | Where { $_.UserPrincipalName -eq $userUPN }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $grpName }).ObjectID
```

To remove a user account from an access group with its display name, use the following PowerShell command block:

```powershell
$userDisplayName="<display name of the user account>"
$grpName="<display name of the access group>"
Remove-AzureADGroupMember -MemberId (Get-AzureADUser | Where { $_.DisplayName -eq $userDisplayName }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $grpName }).ObjectID
```

## Remove a group

To remove access for an entire group, you remove the group from the access group for which they are currently a member based on their participation in the site:

- Administration: Remove the group from the site admins access group

- Active collaboration: Remove the group from the site members access group

- Viewing: Remove the group from the site viewers access group

If you are managing user accounts and groups through Windows Server Active Directory, remove the appropriate groups from the appropriate access groups using your normal AD DS user and group management procedures and wait for synchronization with your subscription.

If you are managing user accounts and groups through Office 365, you can use the Microsoft 365 admin center or PowerShell:

- For the Microsoft 365 admin center, sign in with a user account that has been assigned the User Account Administrator or Company Administrator role and use Groups to remove the appropriate groups from the appropriate access groups.

- For PowerShell, first [Connect with the Azure Active Directory PowerShell for Graph module](../../enterprise/connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
To remove a group from an access group using their display names, use the following PowerShell command block:

```powershell
$groupMemberName="<display name of the group to remove>"
$grpName="<display name of the access group>"
Remove-AzureADGroupMember -MemberId (Get-AzureADGroup | Where { $_.DisplayName -eq $groupMemberName }).ObjectID -ObjectID (Get-AzureADGroup | Where { $_.DisplayName -eq $grpName }).ObjectID
```

## Create a documents subfolder with custom permissions

In some cases, a subset of the people working within the isolated site need a more private place to collaborate. For SharePoint Online sites, you can create a subfolder in the Documents folder of the site and assign custom permissions. Those without permissions will not see the subfolder.

To create a documents subfolder with custom permissions, do the following:

1. Sign in to an account that is a member of the admins access group for the site. For help, see [Where to sign in to Microsoft 365](https://support.microsoft.com/office/e9eb7d51-5430-4929-91ab-6157c5a050b4).

2. Go to the isolated team site and click **Documents**.

3. Browse to the folder in the documents folder that will contain the subfolder with custom permissions, create the folder, and then open it.

4. Click **Share**.

5. Click **Shared with > Advanced**.

6. Click **Stop inheriting permissions**, and then click **OK**.

7. Click **Share**.

8. Click **Shared with > Advanced**.

9. Click **Grant Permissions > Shared with > Advanced**.

10. On the permissions page, click **\<site name> Members in the list**.

11. On the **\<site name> Members** page, select the checkmark next to the site members access group, click **Actions**, click **Remove users from group**, and then click **OK**.

12. To add specific members to this subfolder, click **New > Add users**.

13. In the **Share** dialog box, type the names of the user accounts that can collaborate on files in the subfolder, and then click **Share**.

14. Refresh the web page to see the new results.

15. Under **Groups** in the left navigation, click the **\<site name> Visitors** group and use steps 11-14 to specify the set of user accounts that can view the files in the subfolder (as needed).

16. Under **Groups** in the left navigation, click the **\<site name> Owners** group and use steps 11-14 to specify the set of user accounts that can administer the permissions in the subfolder (as needed).

17. Close the **People and Groups** tab in your browser.

## See Also

[Isolated SharePoint Online team sites](isolated-sharepoint-online-team-sites.md)

[Configure a team with security isolation](/microsoft-365/solutions/secure-teams-security-isolation)
