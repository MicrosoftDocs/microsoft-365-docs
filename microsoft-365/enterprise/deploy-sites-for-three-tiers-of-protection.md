---
title: Deploy sites for three tiers of protection | Microsoft Docs
description: Create and configure SharePoint Online team sites in Office 365 for various levels of information protection.
services: active-directory
keywords: Office 365, Windows 10, Enterprise Mobility and Security, Microsoft 365 Enterprise
documentationcenter: ''
author: JoeDavies-MSFT
manager: laurawi
ms.assetid: 
ms.prod: microsoft-365-enterprise
ms.service: 
ms.workload:
ms.tgt_pltfrm: na
ms.devlang: na
ms.topic: article
ms.date: 09/11/2017
ms.author: josephd
---

# Deploy sites for three tiers of protection

## Introduction

Use the steps in this article to design and deploy baseline, sensitive, and highly confidential SharePoint Online team sites. For more information about these three tiers of protection, see [Secure SharePoint Online sites and files](secure-sharepoint-online-sites-and-files.md).

## Baseline SharePoint Online team sites
Baseline protection includes both public and private team sites. Public team sites can be discovered and accessed by anybody in the organization. Private sites can only be discovered and accessed by members of the Office 365 group associated with the team site. Both of these types of team sites allow members to share the site with others.

### Public
To create a baseline SharePoint Online team site with public access and permissions, do the following:

1. Sign in to the **Office 365 portal** with an account that will also be used to administer the SharePoint Online team site (a SharePoint Online administrator). For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
2. In the list of tiles, click **SharePoint**.
3. On the new **SharePoint** tab in your browser, click + **Create site**.
4. On the **Create a site** page, click **Team site**.
5. In **Site name**, type a name for the public team site. 
6. In **Team site description**, type a description of the purpose of the site.
7. In **Privacy settings**, select **Public – anyone in the organization can access this site**, and then click **Next**.
8. On the **Who do you want to add?** pane, click **Finish**.

Below is your resulting configuration.

 ![Public Baseline SharePoint](./media/deploy-sites-for-three-tiers-of-protection/pub_site.png)

### Private
To create a baseline SharePoint Online team site with private access and permissions, do the following:

1. If needed, sign in to the **Office 365 portal** with an account that will also be used to administer the SharePoint Online team site (a SharePoint Online administrator). For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
2. In the list of tiles, click **SharePoint**.
3. On the new **SharePoint** tab in your browser, click + **Create site**.
4. On the **Create a site** page, click **Team site**.
5. In **Site name**, type a name for the private team site. 
6. In **Team site description**, type a description of the purpose of the site.
7. In **Privacy settings**, select **Private – only members can access this site**, and then click **Next**.
8. On the **Who do you want to add?** pane, in **Add members**, type the names of user accounts that have access to this private team site.
9. When you are done adding the initial set of members to the site, click **Finish**.

Below is your resulting configuration.

 ![Private Baseline SharePoint](./media/deploy-sites-for-three-tiers-of-protection/priv_site.png)

## Sensitive SharePoint Online team sites
A sensitive SharePoint Online team site is an isolated team site, which means that permissions are controlled through membership in SharePoint groups instead of membership in the Office 365 group associated with the team site.

To create an isolated team site, follow these two main steps.

### Step 1: Design your isolated site
To design your isolated team site, you need to determine:

* Your SharePoint groups and permission levels.
* The set of access groups that will be members of your SharePoint groups.
 The recommended set of access groups is one for site members, one for site viewers, and one for site administrators.
* Whether you will use nested groups within your access groups.

For example, the recommended SharePoint group structure and permission levels look like this:

|**SharePoint group**|**Permission level**|**Access group (examples)**|
|:-----|:-----|:-----|
|[site name] Members|Edit|[site name] Members|
|[site name] Visitors|Read|[site name] Viewers|
|[site name] Owners|Full control|[site name] Admins|

The SharePoint groups and permission levels are created by default for a team site. You need to determine the names of your access groups.

For the details of the design process, see [Design an isolated SharePoint Online team site](https://technet.microsoft.com/library/mt784687.aspx).

### Step 2: Deploy your isolated site
To deploy your isolated site, you first need to:

* Determine the user accounts and groups to add to each of your access groups.
* Create the access groups and add the user and group members.

For the detailed steps, see **Phase 1** of [Deploy an isolated SharePoint Online team site](https://technet.microsoft.com/library/mt784693.aspx).

Next, create the SharePoint Online team site with these steps.

1. If needed, sign in to the **Office 365 portal** with an account that will also be used to administer the SharePoint Online team site (a SharePoint Online administrator). For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
2. In the list of tiles, click **SharePoint**.
3. In the new **SharePoint tab** of your browser, click + **Create site**.
4. On the **Create a site** page, click **Team site**.
5. In **Site name**, type a name for the private team site.
6. In **Team site** description, type an optional description.
7. In **Privacy settings**, select **Private – only members can access this site**, and then click **Next**.
8. On the **Who do you want to add?** pane, click **Finish**.

Next, from the new SharePoint Online team site, configure permissions with these steps.

1. Determine the User Principal Name (UPN) of the IT administrator or other person who will be responsible for responding to and addressing requests for access to the site (belindan@contoso.com is an example of a UPN). Write that UPN down.
2. In the toolbar, click the settings icon, and then click **Site permissions**.
3. In the **Site permissions** pane, click **Advanced permissions settings**.
4. On the new **Permissions** tab of your browser, click **Access Request Settings**.
5. In the **Access Requests Settings** dialog box:
  1. Clear the **Allow members to share the site and individual files and folders** and **Allow members to invite others to the site members group** check boxes.
  2. Type the UPN of your IT administrator from step 1 in **Send all requests for access**.
  3. Click **OK**.
6. On the **Permissions** tab of your browser, click **[site name] Members** in the list.
7. In **People and Groups**, click **New**. In the **Share** dialog box, type the name of your site members access group for this site, select it, and then click **Share**.
8. Click the back button on your browser and click **[site name] Owners** in the list.
9. In **People and Groups**, click **New**. In the **Share** dialog box, type the name of the site administrators access group for this site, select it, and then click **Share**.
10.	Click the back button on your browser, and click **[site name] Visitors** in the list.
11.	In **People and Groups**, click **New**. In the **Share** dialog box, type the name of the site viewers access group for this site, select it, and then click **Share**.
12.	Close the **Permissions** tab of your browser.

Below are the results of these permission settings:

* The **[site name] Owners** SharePoint group contains the site administrators access group, in which all the members have the **Full control** permission level.
* The **[site name] Members** SharePoint group contains the site members access group, in which all the members have the **Edit** permission level.
* The **[site name] Visitors** SharePoint group contains the site viewers access group, in which all the members have the **Read** permission level.
* The ability for members to invite other members is disabled. 
* The ability for non-members to request access is enabled. 

Below is your resulting configuration.

 ![Sensitive Protection](./media/deploy-sites-for-three-tiers-of-protection/sens_site.png)

The members of the site, through group membership in one of the access groups, can now securely collaborate on the resources of the site.

## Highly confidential SharePoint Online team sites
A highly confidential SharePoint Online team site is an isolated team site, which means that permissions are controlled through membership in SharePoint groups instead of membership in the Office 365 group associated with the team site.

To create an isolated team site for highly confidential information and collaboration, there are two main steps.

### Step 1: Design your isolated site
To design your isolated team site, you need to determine:

* Your SharePoint groups and permission levels.
* The set of access groups that will be members of your SharePoint groups.
 The recommended set of access groups is one for site members, one for site viewers, and one for site administrators.
* Whether you will use nested groups within your access groups.

For example, the recommended group structure and permission levels look like this:
 
|**SharePoint group**|**Permission level**|**Access group (examples)**|
|:-----|:-----|:-----|
|[site name] Members|Edit|[site name] Members|
|[site name] Visitors|Read|[site name] Viewers|
|[site name] Owners|Full control|[site name] Admins|

The SharePoint groups and permission levels are created by default for a team site. You need to determine the names of your access groups.

For the details of the design process, see [Design an isolated SharePoint Online team site](https://technet.microsoft.com/library/mt784687.aspx).

### Step 2: Deploy your isolated site
To deploy your isolated site, you first need to:

* Determine the user and group members of each of your access groups.
* Create the access groups and add the user and group members.
* Create an isolated team site that uses your access groups.

For the detailed steps, see [Deploy an isolated SharePoint Online team site](https://technet.microsoft.com/library/mt784693.aspx).

Below are the results of the permission settings:

* The **[site name] Owners** SharePoint group contains the site administrators access group, in which all the members have the **Full control** permission level.
* The **[site name] Members** SharePoint group contains the site members access group, in which all the members have the **Edit** permission level.
* The **[site name] Visitors** SharePoint group contains the site viewers access group, in which all the members have the **Read** permission level.
* The ability for members to invite other members is disabled. 
* The ability for non-members to request access is disabled. 

Here is your resulting configuration.

 ![Highly Confidential Protection](./media/deploy-sites-for-three-tiers-of-protection/hc_site.png)

The members of the site, through group membership in one of the access groups, can now securely collaborate on the resources of the site. 

## Next steps

[Protect files with Office 365 labels and DLP](protect-files-with-o365-labels-dlp.md)







