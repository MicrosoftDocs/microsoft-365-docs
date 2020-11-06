---
title: "Configure a team with security isolation in a dev/test environment"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 08/14/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- remotework
ms.custom:
description: Configure the security and infrastructure that allows your employees to work remotely from anywhere and at any time.
---

# Configure a team with security isolation in a dev/test environment

This article provides step-by-step instructions to create a [team with security isolation](secure-teams-security-isolation.md) in a dev/test environment.

![Configuration for the Company Strategy isolated team](../media/team-security-isolation-dev-test/team-security-isolation-dev-test-config.png)

Use this dev/test environment to experiment and fine-tune settings for your specific needs before deploying this type of team in production.
  
## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to test sensitive and highly sensitive teams in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](../enterprise/lightweight-base-configuration-microsoft-365-enterprise.md).

If you want to test sensitive and highly sensitive teams in a simulated enterprise, follow the instructions in [Password hash synchronization](../enterprise/password-hash-sync-m365-ent-test-environment.md).

>[!Note]
>Testing a team with security isolation does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test a team with security isolation and experiment with it in an environment that represents a typical organization.
>
    
## Phase 2: Create and configure your Azure Active Directory (Azure AD) group and users

In this phase, you create and configure an Azure AD group and users for your fictional organization.
  
First, create a security group with the Azure portal.
  
1. Create a separate tab in your browser, and then go to the Azure portal at [https://portal.azure.com](https://portal.azure.com). If needed, sign in with the credentials of the global administrator account for your Microsoft 365 E5 trial or paid subscription.
    
2. In the Azure portal, click **Azure Active Directory > Groups**.
    
3. On the **Groups - All groups** blade, click **+ New group**.
    
4. On the **Group** blade:
    
  - Select **Security** in **Group type**.
    
  - Type **C-Suite** in **Name**.
    
  - Select **Assigned** in **Membership type**.
      
5. Click **Create**, and then close the **Group** blade.
    
Next, configure automatic licensing so that members of the new **C-Suite** group are automatically assigned a Microsoft 365 E5 license.
  
1. In the Azure portal, click **Azure Active Directory > Licenses > All products**.
    
2. In the list, select **Microsoft 365 Enterprise E5**, and then click **Assign**.
    
3. In the **Assign license** blade, click **Users and groups**.
    
4. In the list of groups, select the **C-Suite** group.
    
5. Click **Select**, and then click **Assign**.
    
6. Close the Azure portal tab in your browser.
    
Next, [connect with the Azure Active Directory PowerShell for Graph module](../enterprise/connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
  
Fill in your organization name, your location, and a common password, and then run these commands from the PowerShell command prompt or Integrated Script Environment (ISE) to create new user accounts and add them to the C-Suite group:
  
```powershell
$orgName="<organization name, such as contoso-test for the contoso-test.onmicrosoft.com trial subscription domain name>"
$location="<the ISO ALPHA2 country code, such as US for the United States>"
$commonPassword="<common password for all the new accounts>"

$PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password=$commonPassword

$groupName="C-Suite"
$userNames=@("CEO","CFO","CIO") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
```

> [!NOTE]
> The use of a common password here is for automation and ease of configuration for a dev/test environment. Obviously, this is highly discouraged for production subscriptions. 
  
Use these steps to verify that group-based licensing is working correctly.
  
1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com).
    
2. From the new **Microsoft 365 admin center** tab of your browser, click **Users**.
    
3. In the list of users, click **CEO**.
    
4. In the pane that lists the properties of the **CEO** user account, verify that it has been assigned the **Microsoft 365 Enterprise E5** license in **Product licenses**.
    
## Phase 3: Create your team

In this phase, you create and configure a team with security isolation for members of the senior leadership team to collaborate on company strategy.

First, enable sensitivity labels to protect content in Microsoft Teams, Office 365 groups, and SharePoint sites before you proceed with the steps in [this article](../compliance/sensitivity-labels-teams-groups-sites.md).

Next, create the team:

1. In Teams, click **Teams** on the left side of the app, then click **Join or create a team** at the bottom of the teams list.
2. Click **Create team** (first card, top left corner).
3. Choose **Build a team from scratch**.
4. In the **Sensitivity** list, keep the default.
5. Under **Privacy**, click **Private**.
6. Type **Company Strategy**, and then click **Create** > **Close**.

Next, restrict the creation of private channels to owners of the Company Strategy group.

1. In the team, click **More options**, and then click **Manage team**.
2. On the **Settings** tab, expand **Member permissions**.
3. Clear the **Allow members to create private channels** check box.

Next, you need to configure a sensitivity label with the following settings:

- The name is Company Strategy
- Encryption is enabled
- The Company Strategy group has Co-Author permissions

Follow these steps:

1. Open the [Microsoft 365 compliance center](https://compliance.microsoft.com).
2. Under **Solutions**, click **Information protection**.
3. Click **Create a label**.
4. Type **Company Strategy** for the label name.
5. Type **Senior leadership company strategy documents** as the tool tip, and then click **Next**.
6. On the **Encryption** page, in the **Encryption** dropdown, choose **Apply**.
7. To add the team permissions:<br>
  a. Click **Assign permissions**.<br>
  b. Click **Add users or groups**, select **Company Strategy**, and then click **Add**.<br>
  c. Click **Choose permissions**.<br>
  d. Choose **Co-Author** from the dropdown list, and then click **Save**.<br>
8. Click **Next**.
9. On the **Content marking** page, click **Next**.
10. On the **Site and group settings** page, set **Site and group settings** to **On**.
11. In the **Privacy of Office 365 group-connected team sites** dropdown, choose **Private - only members can access the site**.
12. Under **Unmanaged devices**, choose **Block access**.
13. Click **Next**.
14. On the **Auto-labeling for Office apps** page, click **Next**.
15. Click **Submit**, and then click **Done**.

Next, publish the new label with these steps: 

1. In the Microsoft 365 compliance center, on the **Information protection** page, choose the **Label policies** tab.
2. Click **Publish labels**.
3. On the **Choose sensitivity labels to publish** page, click **Choose sensitivity labels to publish**.
4. Select **Company Strategy**, and then click **Add**.
5. Click **Next**.
6. On the **Publish to users and groups** page, click **Choose users and groups**.
7. Click **Add**, and then select **Company Strategy**.
8. Click **Add**, and then click **Done**.
9. Click **Next**.
10. On the Policy settings page, select the **Users must provide justification to remove a label or lower classification label** check box, and then click **Next**.
11. Type **Company Strategy** for the policy name, and then click **Next**.
12. Click **Submit** and then click **Done**.

It may take some time for the **Company Strategy** label to become available after it's been published.

Next, apply your new label to the **Company Strategy** team and update the default sharing link type to reduce the risk of accidentally sharing files and folders to a wider audience than intended. 

1. Open the [SharePoint admin center](https://admin.microsoft.com/sharepoint).
2. Under **Sites**, click **Active sites**.
3. Click the **Company Strategy** site.
4. On the **Policies** tab, under **Sensitivity**, click **Edit**.
5. Select the **Company Strategy** label, and then click **Save**.
6. On the **Policies** tab, under **External sharing**, click **Edit**.
5. Choose **Only people in your organization**.
6. Under **Default sharing** link type, clear the **Same as organization-level setting** check box, and select **People with existing access**.
7. Click **Save**.

Next, configure owners-only site sharing for the **Company Strategy** team.

1. In Teams, navigate to the **General** tab of the **Company Strategy** team.
2. In the tool bar for the team, click **Files**.
3. Click the ellipsis, and then click **Open in SharePoint**.
4. In the tool bar of the underlying SharePoint site, click the settings icon, and then click **Site permissions**.
5. In the Site permissions pane, under **Site Sharing**, click **Change how members can share**.
6. Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**, and then click **Save**.
7. Close the **Permissions** and **Settings** panes.

If you sign in as a member of the Company Strategy group, you will see **Company Strategy** in the **Sensitivity** option in the Home toolbar of Word, Excel, and PowerPoint. Select the **Company Strategy** label from the **Sensitivity** option to assign the label to a file.

Here is the resulting configuration for the Company Strategy team.

![Configuration for the Company Strategy isolated team](../media/team-security-isolation-dev-test/team-security-isolation-dev-test-config.png)

## Next step

When you're ready for production deployment, see these [configuration instructions](secure-teams-security-isolation.md).
