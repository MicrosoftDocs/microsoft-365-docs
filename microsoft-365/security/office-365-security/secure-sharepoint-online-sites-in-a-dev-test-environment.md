---
title: "Secure SharePoint Online sites in a dev/test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/18/2019
audience: ITPro
ms.topic: article
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- SPO_Content
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 06af70f3-e7dc-4ee2-a385-fb4d61a5e93b
description: "Summary: Create public, private, sensitive, and highly confidential SharePoint Online team sites in a dev/test environment."
---

# Secure SharePoint Online sites in a dev/test environment

 **Summary:** Create public, private, sensitive, and highly confidential SharePoint Online team sites in a dev/test environment.
  
This article provides step-by-step instructions to create a dev/test environment that includes the four different types of SharePoint Online team sites for the [Secure SharePoint Online sites and files](secure-sharepoint-online-sites-and-files.md) solution.
  
![All four team sites in the secure SharePoint Online dev/test environment.](../media/b0fea489-359c-4c85-a0ad-e4efb4a1e47f.png)
  
Use this dev/test environment to experiment with the information protection behaviors and fine-tune settings for your specific needs before deploying SharePoint Online team sites in production.
  
## Phase 1: Create your dev/test environment

In this phase, you obtain trial subscriptions for Office 365 and Enterprise Mobility + Security (EMS) for a fictional organization.
  
First, follow the instructions in **Phase 2** of the [Office 365 dev/test environment](https://docs.microsoft.com/office365/enterprise/office-365-dev-test-environment).
  
Next, sign up for the EMS trial subscription and add it to the same organization as your Office 365 trial subscription.
  
1. If needed, sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with the credentials of the global administrator account of your trial subscription.
    
2. In the left navigation, click **Billing > Purchase services**.
    
3. On the **Purchase services** page, find the **Enterprise Mobility + Security E5** item. Hover your mouse pointer over it and click **Start free trial**.
    
4. On the **Confirm your order** page, click **Try now**.
    
5. On the **Order receipt** page, click **Continue**.
    
Next, enable the Enterprise Mobility + Security E5 license for your global administrator account.
  
1. On the **Microsoft 365 admin center** tab in your browser, in the left navigation, click **Users > Active users**.
    
2. Click your global administrator account, and then click **Edit** for **Product licenses**.
    
3. On the **Product licenses** pane, turn the product license for **Enterprise Mobility + Security E5** to **On**, click **Save,** and then click **Close** twice.
    
## Phase 2: Create and configure your Azure Active Directory (AD) groups and users

In this phase, you create and configure the Azure AD groups and users for your fictional organization.
  
First, create a set of groups for a typical organization with the Azure portal.
  
1. Create a separate tab in your browser, and then go to the Azure portal at [https://portal.azure.com](https://portal.azure.com). If needed, sign in with the credentials of the global administrator account for your Office 365 E5 trial subscription.
    
2. In the Azure portal, click **Azure Active Directory > Groups**.
    
3. On the **Groups - All groups** blade, click **+ New group**.
    
4. On the **Group** blade:
    
  - Select **Office 365** in **Group type**.
    
  - Type **C-Suite** in **Name**.
    
  - Select **Assigned** in **Membership type**.
      
5. Click **Create**, and then close the **Group** blade.
    
6. Repeat steps 3-5 for the following group names:
    
  - IT staff
    
  - Research staff
    
  - Regular staff
    
  - Marketing staff
    
  - Sales staff
    
7. Keep the Azure portal tab in your browser open.
    
Next, you configure automatic licensing so that members of your groups are automatically assigned licenses for your Office 365 and EMS subscriptions.
  
1. In the Azure portal, click **Azure Active Directory > Licenses > All products**.
    
2. In the list, select **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5**, and then click **Assign**.
    
3. In the **Assign license** blade, click **Users and groups**.
    
4. In the list of groups, select the following:
    
  - C-Suite
    
  - IT staff
    
  - Research staff
    
  - Regular staff
    
  - Marketing staff
    
  - Sales staff
    
5. Click **Select**, and then click **Assign**.
    
6. Close the Azure portal tab in your browser.
    
Next, you [Connect with the Azure Active Directory PowerShell for Graph module
](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-azure-active-directory-powershell-for-graph-module).
  
Fill in your organization name, your location, and a common password, and then run these commands from the PowerShell command prompt or Integrated Script Environment (ISE) to create user accounts and add them to their groups:
  
```
$orgName="<organization name, such as contoso for the contoso.onmicrosoft.com trial subscription domain name>"
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
$groupName="IT staff"
$userNames=@("ITAdmin1","ITAdmin2") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
$groupName="Research staff"
$userNames=@("Researcher1") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
$groupName="Regular staff"
$userNames=@("Regular1", "Regular2") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
$groupName="Marketing staff"
$userNames=@("Marketing1", "Marketing2") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
$groupName="Sales staff"
$userNames=@("SalesPerson1") 
$groupID=(Get-AzureADGroup | Where { $_.DisplayName -eq $groupName }).ObjectID
ForEach ($element in $userNames){ 
New-AzureADUser -DisplayName $element -PasswordProfile $PasswordProfile -UserPrincipalName ($element + "@" + $orgName + ".onmicrosoft.com") -AccountEnabled $true -MailNickName $element -UsageLocation $location 
Add-AzureADGroupMember -RefObjectId (Get-AzureADUser | Where { $_.DisplayName -eq $element }).ObjectID -ObjectId $groupID
}
```

> [!NOTE]
> The use of a common password here is for automation and ease of configuration for a dev/test environment. Obviously, this is highly discouraged for production subscriptions. 
  
Use these steps to verify that group-based licensing is working correctly.
  
1. From the **Microsoft Office Home** tab of your browser, click the **Admin** tile.
    
2. From the new **Microsoft 365 admin center** tab of your browser, click **Users**.
    
3. In the list of users, click **CEO**.
    
4. In the pane that lists the properties of the **CEO** user account, verify that it has been assigned the **Enterprise Mobility + Security E5** and **Office 365 Enterprise E5** licenses (in **Product licenses**).
    
## Phase 3: Create Office 365 retention labels

In this phase, you create the retention labels for the different levels of security for SharePoint Online team site documents folders.


1. Sign in to the [Microsoft 365 compliance portal](https://compliance.microsoft.com) with your global admin account.
    
2. From the **Home - Microsoft 365 compliance** tab of your browser, click **Classifications > Labels**.
    
3. Click **Retention labels > Create a label**.
    
4. On the **Name your label** pane, type **Internal Public** in **Name your label**, and then click **Next**.

5. On the **File plan descriptors** pane, click **Next**.
    
6. On the **Label settings** pane, if needed, set **Retention** to **On**, and then click **Next**.
    
7. On the **Review your settings** pane, click **Create the label**.
    
8. Repeat steps 3-7 for additional labels with these names:
    
  - Private
    
  - Sensitive
    
  - Highly Confidential
  
9. From the **Home > Labels** pane, click **Publish labels**.
    
10. On the **Choose labels to publish** pane, click **Choose labels to publish**.
    
11. On the **Choose labels** pane, click **Add** and select all four labels.
    
12. Click **Done**.
    
13. On the **Choose labels to publish** pane, click **Next**.
    
14. On the **Choose locations** pane, click **Next**.
    
15. On the **Name your policy** pane, type **Example organization** in **Name**, and then click **Next**.
    
16. On the **Review your settings** pane, click **Publish labels**, and then click **Close**.
    
## Phase 4: Create your SharePoint Online team sites

In this phase, you create and configure the four types of SharePoint Online team sites for your example organization.
  
### Organization wide team site

To create a baseline public SharePoint Online team site, do the following:
  
1. If needed, sign in to the [Office 365 portal](https://portal.office.com) with the credentials of the global administrator account of your trial subscription.
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **+ Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Site name**, type **Organization wide**.
    
6. In **Team site description**, type **SharePoint site for the entire organization**.
    
7. In **Privacy settings**, select **Public - anyone in the organization can access this site**, and then click **Next**.
    
8. On the **Who do you want to add?** pane, click **Finish**.
    
Next, configure the documents folder of the Organization wide team site for the Internal Public label.
  
1. In the **Organization wide-Home** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this library**.
    
4. In **Settings-Apply Label**, select **Internal Public**, and then click **Save**.
    
### Project 1 team site

To create a baseline private SharePoint Online team site for a project within the organization, do the following:
  
1. If needed, sign in to the [Office 365 portal](https://portal.office.com) with the credentials of the global administrator account of your trial subscription.
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **+ Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Site name**, type **Project 1**. 
    
6. In **Team site description,** type **SharePoint site for Project 1**.
    
7. In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.
    
8. On the **Who do you want to add?** pane, click **Finish**.
    
Next, configure the documents folder of the Project 1 team site for the Private label.
  
1. In the **Project 1-Home** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this library**.
    
4. In **Settings-Apply Label**, select **Private**, and then click **Save**.
    
### Marketing campaigns team site

To create a sensitive-level isolated SharePoint Online team site for marketing campaign resources, do the following:

 
1. If needed, sign in to the [Office 365 portal](https://portal.office.com) with the credentials of the global administrator account of your trial subscription.
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **+ Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Team site name**, type **Marketing campaigns**.
    
6. In **Team site description**, type **SharePoint site for marketing campaign resources (sensitive)**.
    
7.  In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.
    
8. On the **Who do you want to add?** pane, click **Finish**.
    
9. On the new **Marketing campaigns** tab in your browser, in the tool bar, click the settings icon, and then click **Site permissions**.
    
10. In the **Site permissions** pane, click **Advanced permissions settings**.
    
11. In the new **Permissions** tab in your browser, click **Access Request Settings**.
    
12. In the **Access Request Settings** dialog box, clear the **Allow members to share the site and individual files and folders** and **Allow members to invite others to the site members group** check boxes, type **ITAdmin1@**\<your organization name>**.onmicrosoft.com** in **Send all requests for access**, and then click **OK**.
    
13. Click **Marketing campaigns Members** in the list.
    
14. On the **People and Groups** page, click **New**.
    
15. In the **Share** dialog box, type **Marketing staff**, select it, and then click **Share**.
    
16. Repeat steps 14 and 15 for the **Researcher1** user account.
    
17. Click the back button on your browser.
    
18. Click **Marketing campaigns Owners** in the list.
    
19. On the **People and Groups** page, click **New**.
    
20. In the **Share** dialog box, type **IT staff**, select it, and then click **Share**.
    
21. Click the back button on your browser.
    
22. Close the **People and Groups** tab in your browser, click the **Marketing campaigns-Home** tab in your browser, and then close the **Site permissions** pane.
    
Here are the results of configuring permissions:
  
- The **Marketing campaigns-Members** SharePoint group contains only the **Marketing campaigns** group (which contains the global administrator user account), the **Marketing staff** group (which contains the Marketing1 and Marketing2 user accounts), and the **Researcher1** user account.
    
- The **Marketing campaigns-Owners** SharePoint group contains only the **IT staff** group (which contains only the ITAdmin1 and ITAdmin2 user accounts).
    
- The **Marketing campaigns-Visitors** SharePoint group contains no groups or user accounts.
    
- Members cannot modify site-level permissions (this can only be done by members of the **Marketing campaigns-Owners** group).
    
- Other user accounts cannot access the site or its resources, but can request access to the site, which will send an email to the ITAdmin1 user account mailbox.
    
Next, configure the documents folder of the Marketing campaigns team site for the Sensitive label.
  
1. In the **Marketing campaigns-Home** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this library**.
    
4. In **Settings-Apply Label**, select **Sensitive**, and then click **Save**.
    
Next, configure a data loss prevention (DLP) policy that notifies users when they share a document on a SharePoint Online team site with the Sensitive label, which includes the Marketing campaigns site, outside the organization.

1. Sign in to the [Microsoft 365 compliance portal](https://compliance.microsoft.com/) with your global admin account.
    
2. On the new **Microsoft 365 compliance** tab in your browser, click **Policies > Data loss prevention**.
    
3. In the **Home > Data loss prevention** pane, click **Create a policy**.
    
4. In the **Start with a template or create a custom policy** pane, click **Custom**, and then click **Next**.
    
5. In the **Name your policy** pane, type **Sensitive label SharePoint Online team sites** in **Name**, and then click **Next**.
    
6. In the **Choose locations** pane, click **Let me choose specific locations**, and then click **Next**.
    
7. In the list of locations, disable the **Exchange email**, **OneDrive accounts**, and **Teams chat and channel messages** locations, and then click **Next**.
    
8. In the **Customize the type of content you want to protect** pane, click **Edit**.
    
9. In the **Choose the types of content to protect** pane, click **Add** in the drop-down box, and then click **Retention labels**.
    
10. In the **Retention labels** pane, click **Add**, select the **Sensitive** label, click **Add**, and then click **Done**.
    
11. In the **Choose the types of content to protect** pane, click **Save**.
    
12. In the **Customize the type of content you want to protect** pane, click **Next**.

13. In the **What do you want to do if we detect sensitive info?** pane, click **Customize the tip and email**.
    
14. In the **Customize policy tips and email notifications** pane, click **Customize the policy tip text**.
    
15. In the text box, type or paste in one of the following tips, depending on if you implemented Azure Information Protection to protect highly confidential files:
    
  - To share with a user outside the organization, download the file and then open it. Click File, then Protect Document, and then Encrypt with Password, and then specify a strong password. Send the password in a separate email or other means of communication.
    
16. Click **OK**.
    
17. In the **What do you want to do if we detect sensitive info?** pane, click **Next**.
    
18. In the **Do you want to turn on the policy or test things out first?** pane, click **Yes, turn it on right away**, and then click **Next**.
    
19. In the **Review your settings** pane, click **Create**, and then click **Close**.
  
### Company strategy team site

To create an isolated SharePoint Online team site at the highly confidential level for strategic company resources of the chief executives of the organization, do the following:
  
1. If needed, sign in to the [Office 365 portal](https://portal.office.com) with the credentials of the global administrator account of your trial subscription.
    
2. In the list of tiles, click **SharePoint**.
    
3. On the new **SharePoint** tab in your browser, click **+ Create site**.
    
4. On the **Create a site** page, click **Team site**.
    
5. In **Team site name**, type **Company strategy**.
    
6. In **Team site description**, type **SharePoint site for company strategy (highly confidential)**.
    
7.  In **Privacy settings**, select **Private - only members can access this site**, and then click **Next**.
    
8. On the **Who do you want to add?** pane, click **Finish**.
    
9. On the new **Company strategy** tab in your browser, in the tool bar, click the settings icon, and then click **Site permissions**.
    
10. In the **Site permissions** pane, click **Advanced permissions settings**.
    
11. In the new **Permissions** tab in your browser, click **Access Request Settings**.
    
12. In the **Access Request Settings** dialog box, clear **Allow members to share the site and individual files and folders** and **Allow members to invite others to the site members group** (so that all three check boxes are cleared), and then click **OK**.
    
13. Click **Company strategy Members** in the list.
    
14. On the **People and Groups** page, click **New**.
    
15. In the **Share** dialog box, type **C-Suite**, select it, and then click **Share**.
    
16. Click **Company strategy Owners** in the list.
    
17. On the **People and Groups** page, click **New**.
    
18. In the **Share** dialog box, type **IT staff**, select it, and then click **Share**.
    
19. Click the back button on your browser.
    
20. Close the **People and Groups** tab in your browser, click the **Company strategy-Home** tab in your browser, and then close the **Site permissions** pane.
    
Here are the results of configuring permissions:
  
- The **Company strategy-Members** SharePoint group contains only the **C-Suite** group (which contains only the CEO, CFO, and CIO user accounts) and the **Company strategy** group (which contains only the global administrator user account).
    
- The **Company strategy-Owners** SharePoint group contains only the **IT staff** group (which contains only the ITAdmin1 and ITAdmin2 user accounts).
    
- The **Company strategy-Visitors** SharePoint group contains no groups or user accounts.
    
- Members cannot modify site-level permissions (this can only be done by members of the **Company strategy-Owners** group).
    
- Other user accounts cannot access the site or its resources or request access to the site. Additional permissions to the site must be done by the global administrator or by a member of the **Company strategy-Owners** group.
    
Next, configure the documents folder of the Company strategy team site for the Highly Confidential label.
  
1. In the **Company strategy-Home** tab of your browser, click **Documents**.
    
2. Click the settings icon, and then click **Library settings**.
    
3. Under **Permissions and Management**, click **Apply label to items in this library**.
    
4. In **Settings-Apply Label**, select **Highly Confidential**, and then click **Save**.
    
Next, configure a DLP policy that blocks users when they share a document on a SharePoint Online team site with the Highly Confidential label, which includes the Company strategy site, outside the organization.
  
1. Sign in to the [Microsoft 365 compliance portal](https://compliance.microsoft.com/) with your global admin.
    
2. On the new **Microsoft 365 compliance** tab in your browser, click **Policies > Data loss prevention**.
    
3. In the **Home > Data loss prevention** pane, click **Create a policy**.
    
4. In the **Start with a template or create a custom policy** pane, click **Custom**, and then click **Next**.
    
5. In the **Name your policy** pane, type **Highly Confidential label SharePoint Online team sites** in **Name**, and then click **Next**.
    
6. In the **Choose locations** pane, click **Let me choose specific locations**, and then click **Next**.
    
7. In the list of locations, disable the **Exchange email**, **OneDrive accounts**, and **Teams chat and channel messages** locations, and then click **Next**.
    
8. In the **Customize the type of content you want to protect** pane, click **Edit**.
    
9. In the **Choose the types of content to protect** pane, click **Add** in the drop-down box, and then click **Retention labels**.
    
10. In the **Retention labels** pane, click **Add**, select the **Highly Confidential** label, click **Add**, and then click **Done**.
    
11. In the **Choose the types of content to protect** pane, click **Save**.
    
12. In the **Customize the type of content you want to protect** pane, click **Next**.

13. In the **What do you want to do if we detect sensitive info?** pane, click **Customize the tip and email**.
    
14. In the **Customize policy tips and email notifications** pane, click **Customize the policy tip text**.
    
15. In the text box, type or paste in one of the following tips, depending on if you implemented Azure Information Protection to protect highly confidential files:
    
  - To share with a user outside the organization, download the file and then open it. Click File, then Protect Document, and then Encrypt with Password, and then specify a strong password. Send the password in a separate email or other means of communication.
    
16. Click **OK**.
    
17. In the **Do you want to turn on the policy or test things out first?** pane, click **Yes, turn it on right away**, and then click **Next**.

18. In the **Do you want to turn on the policy or test things out first?** pane, click **Yes, turn it on right away**, and then click **Next**.
    
19. In the **Review your settings** pane, click **Create**, and then click **Close**.
   
    
Next, follow the instructions in [Activate Azure RMS with the Microsoft 365 admin center](https://docs.microsoft.com/information-protection/deploy-use/activate-office365).
  
Next, configure Azure Information Protection with a new policy and sub-label scoped for the C-Suite group for protection and permissions with the following steps:
  
1. If needed, sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with your global admin account.
    
2. In a separate tab of your browser, go to the Azure portal ([https://portal.azure.com](https://portal.azure.com)).
    
3. If this is the first time you are configuring Azure Information Protection, see these [instructions](https://docs.microsoft.com/information-protection/deploy-use/configure-policy#to-access-the-azure-information-protection-blade-for-the-first-time).
    
4. In the list pane, click **All services**, type **information**, and then click **Azure Information Protection**.

5. Click **Labels**.
    
6. Right-click the **Highly Confidential** label, and then click **Add a sub-label**.
    
7. Type **C-Suite members** in **Name** and **Description**.
    
8. In **Set permissions for documents and emails containing this label**, click **Protect**.
    
9. In the **Protection** section, click **Azure (cloud key)**.
    
10. On the **Protection** blade, under **Protection settings**, click **+ Add permissions**.
    
11. On the **Add permissions** blade, under **Specify users and groups**, click **+ Browse directory**.
    
12. On the **AAD Users and Groups** pane, select **C-Suite**, and then click **Select**.
    
13. Under **Choose permissions from the preset or set custom**, click **Custom**, and then click the **View Rights**, **Edit Content**, **Save**, **Reply**, and **Reply all** check boxes.
    
14. Click **OK** twice.
    
15. On the **Sub-label** blade, click **Save**, and then click **OK**.

16. On the **Azure Information protection** blade, click **Policies > + Add a new policy**.
    
17. Type **CompanyStrategy** in **Policy name** and **Documents in the Company strategy team site** in **Description**.
    
18. Click **Select which users or groups get this policy > User/Groups**, and then select **C-Suite**.
    
19. Click **Select > OK**.

20. Click **Add or remove labels**. In the **Policy: Add or remove labels** pane, click **C-Suite**, and then click **OK**.   

21. Click **Save**, and then click **OK**.
    
To protect a document with Azure Information Protection and this new label, you must [install the Azure Information Protection client](https://docs.microsoft.com/information-protection/rms-client/install-client-app) on a test machine, install Office from the admin center, and then sign in from Microsoft Word with an account in the **C-Suite** group of your trial subscription.
  
You are now ready to create documents in these four sites and test access to them with various user accounts in your trial subscription.
  
Here is the overall configuration for all four SharePoint Online team sites.
  
![All four team sites in the secure SharePoint Online dev/test environment.](../media/b0fea489-359c-4c85-a0ad-e4efb4a1e47f.png)
  
## Next step

When you are ready for production deployment of secure SharePoint Online sites, see [Secure SharePoint Online sites and files](secure-sharepoint-online-sites-and-files.md) for detailed information and links to step-by-step deployment articles.
  
## See Also

[Secure SharePoint Online sites and files](secure-sharepoint-online-sites-and-files.md)
  
[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
  
[Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md)




