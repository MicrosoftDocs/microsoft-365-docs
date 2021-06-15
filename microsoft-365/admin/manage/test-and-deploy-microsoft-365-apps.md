---
title: "Test and deploy Microsoft 365 Apps by partners in the Integrated apps portal"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "Find, test, and deploy Microsoft and Microsoft partner apps for users and groups in your organization from the Integrated apps portal in the Microsoft 365 admin center."
---

# Test and deploy Microsoft 365 Apps by partners in the Integrated apps portal

The Microsoft 365 admin center gives you the flexibility to deploy single store apps, custom business line of apps and  Microsoft 365 partner apps from a single location. The location can be accessed in the Microsoft Admin center settings, in Integrated apps. The ability to find, test, and fully deploy purchased and licensed apps by Microsoft partners from the Integrated apps portal provides the convenience and benefits your organization requires to keep business services updated regularly and running efficiently.

For additional information about purchasing and licensing Microsoft 365 apps from partners for your organization, see [Manage and deploy Microsoft 365 Apps from the Microsoft 365 admin center](https://techcommunity.microsoft.com/t5/microsoft-365-blog/manage-and-deploy-microsoft-365-apps-from-the-microsoft-365/ba-p/1194324).

For more info on how partners create these apps, see [How to plan a SaaS offer for the commercial marketplace](https://go.microsoft.com/fwlink/?linkid=2158277)

The Integrated apps portal is only accessible to global admins and available to world wide customers only. This feature is not available in sovereign and government clouds.

The Integrated apps portal displays a list of apps, which includes single apps and Microsoft 365 apps from partners which are deployed your organization. Only web apps, SPFx apps, Office add-ins and Teams apps are listed. For web apps, we you can see two kinds of apps.

- SaaS apps that are available in appsource.microsoft.com, and can be deployed by admins giving consent on behalf of organization.
- SAML gallery apps that are linked with office add-ins.

## Manage apps in the Integrated apps portal

You can manage testing and deployment of purchased and licensed Microsoft 365 Apps from partners.

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**.

2. Choose an app with **Status** of **More apps available** to open the **Manage** pane. The status of **more apps available** lets you know that there are more integrations from the ISVs that aren't yet deployed.

3. On the **Overview** tab select **Deploy**. Some apps require you to add users before you can select Deploy.

4. Select  **Users**, choose **Is this a test deployment**, and then choose **Entire organization**, **Specific users/groups** or **Just me**. You can also choose **Test deployment** if you prefer to wait to deploy the app to the entire organization. Specific users or groups can be a Microsoft 365 group, a security group, or a distribution group.

5. Select **Update** and then **Done**. You can now select Deploy on the Overview tab.

6. Review the app information, and then select **Deploy**.

7. Select **Done** on the Deployment completed page and review the details of the test or full deployment on the **Overview** tab.

8. If the app has a status of **Update pending**, you can click on the app to open the Manage pane and update the app.

## Find published apps for testing and full deployment

You can find, test, and fully deploy published apps that don't already appear in the list on the Integrated apps page. By purchasing and licensing the apps from the admin center, you can add Microsoft and Microsoft partner apps to your list from a single location.

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**.

2. Select **Get apps** to get a view of the apps.

3. On the **Microsoft 365 Apps** published apps page, select the app you want to deploy by choosing **Get it now**. The apps displayed primarily are Word, PowerPoint, Excel, Outlook add-ins, Teams app and SharePoint apps (built on SharePoint Framework technology). Accept the permissions and select **Continue**.

5. Select **Deploy** at the top of the page next to the message that refers to waiting to be deployed.

    If the app selected is linked to a SaaS offer by an ISV, all the other apps that are part of this linked offer will appear on the Configuration page. If you choose to deploy of all of the apps, select **Next**. Otherwise, select **Edit**, and choose which apps you want deployed. Some apps require you to add users before you can select **Deploy**.

6. Select **Add users**, choose **Is this a test deployment**, and then choose **Entire organization** or **Specific users/groups** or **Just me**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group. You can also choose **Test deployment** if you prefer to wait to deploy the app to the entire organization.

7. Select **Next** to get to the **Accept permission request** page. The app capabilities and permissions of each of the apps are listed. If the app needs consent, select **Accept permissions**. Only a global administrator can give consent.

8. Select **Next** to review the deployment and choose **Finish deployment**. You can view the deployment from the **Overview** tab by choosing **View this deployment**. In the Microsoft 365 admin center, you can see the status of each deployed app and the date you deployed the app.

> [!NOTE]
> If an app was previously deployed from somewhere other than the Integrated Apps portal, the **Deployment Type** is **Custom.**

## Unsupported scenarios

You won't be able to deploy a single store app or Microsoft 365 Apps by partner from Integrated apps portal for the following scenarios.

- The same add-in is linked to more than one SaaS offer.
- The SaaS offer is linked to add-ins, but it does not integrate with Microsoft Graph and no AAD App ID is provided.
- The SaaS offer is linked to add-ins, but AAD App ID provided for Microsoft Graph integration is shared across multiple SaaS offers.

## Upload custom line of business apps for testing and full deployment

1. In the admin center, in the left nav, choose **Settings** and then **Integrated apps**.

2. Select **Upload custom apps**. Only a custom line of apps for Word, PowerPoint, Excel and Outlook  is supported.

3. Upload the manifest file from your device or add a URL link. Some apps require you to add users before you can select Deploy.

4. Select **Add users**, choose **Is this a test Deployment**, and choose **Entire organization** or **Specific users/groups** or **Just me**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group. You can also choose **Test deployment** if you want to wait to deploy the app to the entire organization.

5. Select **Next** to get to the **Accept permission request** page. The app capabilities and permissions of the apps are listed. If the app needs consent, select **Accept permissions**. Only a global administrator can give consent.

6. Select **Next** to review the deployment and choose **Finish deployment**. You can view the deployment from the **Overview** tab by choosing **View this deployment**.

## Prepare to deploy add-ins in Integrated apps

Office add-ins help you personalize your documents and streamline the way you access information on the web (see Start using your Office Add-in). 

Add-ins provides the following benefits: 

- When the relevant Office application starts, the add-in automatically downloads. If the add-in supports add-in commands, the add-in automatically appears in the ribbon within the Office application. 

- Add-ins no longer appear for users if the admin turns off or deletes the add-in, or if the user is removed from Azure Active Directory or from a group that the add-in is assigned to. 

Add-ins are supported in three desktop platforms Windows, Mac and Online Office apps. It is also supported in iOS and Android (Outlook Mobile Add-ins Only). 

It can take up to 24 hours for an add-in to show up for client for all users. 

Today both Exchange Admins and Global Admins can deploy add-ins from Integrated apps.   

### Before you begin

Deployment of add-ins requires that the users are using Microsoft 365 Enterprise licenses (E3/E5/F3) or Microsoft 365 Business licenses (Business Basic, Business Standard, Business Premium). The users also need to be signed into Office using their organizational ID) and have Exchange Online and active Exchange Online mailboxes. Your subscription directory must either be in, or federated to Azure Active Directory. 

Deployment doesn't support the following: 

- Add-ins that target Word, Excel, or PowerPoint in Office 2013 
- An on-premises directory service 
- Add-in Deployment to an Exchange On-Prem Mailbox 
- Deployment of Component Object Model (COM) or Visual Studio Tools for Office (VSTO) add-ins. 
- Deployments of Microsoft 365 that do not include Exchange Online such as Microsoft 365 Apps for Business and Microsoft 365 Apps for Enterprise.  

### Office Requirements 

For Word, Excel, and PowerPoint add-ins, your users must be using one of the following: 
- On a Windows device, Version 1704 or later of Microsoft 365 Enterprise licenses (E3/E5/F3) or Microsoft 365 Business licenses (Business Basic, Business Standard, Business Premium). 
- On a Mac, Version 15.34 or later. 

For Outlook, your users must be using one of the following: 
- Version 1701 or later of Microsoft 365 Enterprise licenses (E3/E5/F3) or Microsoft 365 Business licenses (Business Basic, Business Standard, Business Premium). 
- Version 1808 or later of Office Professional Plus 2019 or Office Standard 2019. 
- Version 16.0.4494.1000 or later of Office Professional Plus 2016 (MSI) or Office Standard 2016 (MSI).
    > [!NOTE]
    > MSI versions of Outlook show admin-installed add-ins in the appropriate Outlook ribbon, not the "My add-ins" section.  
- Version 15.0.4937.1000 or later of Office Professional Plus 2013 (MSI) or Office Standard 2013 (MSI)* 
- Version 16.0.9318.1000 or later of Office 2016 for Mac 
- Version 2.75.0 or later of Outlook mobile for iOS 
- Version 2.2.145 or later of Outlook mobile for Android 



### Exchange Online requirements 
Microsoft Exchange stores the add-in manifests within your organization's tenant. The admin deploying add-ins and the users receiving those add-ins must be on a version of Exchange Online that supports OAuth authentication. 

Check with your organization's Exchange admin to find out which configuration is in use. OAuth connectivity per user can be verified by using the [Test-OAuthConnectivity](/powershell/module/exchange/test-oauthconnectivity) PowerShell cmdlet. 

### User and group assignments
The deployment of add-in is currently supported to the majority of groups supported by Azure Active Directory, including Microsoft 365 groups, distribution lists, and security groups. Deployment supports users in top-level groups or groups without parent groups, but not users in nested groups or groups that have parent groups. 

> [!NOTE]
> Non-mail enabled security groups are not currently supported. 

In the following example, Sandra, Sheila, and the Sales Department group are assigned to an add-in. Because the West Coast Sales Department is a nested group, Bert and Fred aren't assigned to an add-in. 

![Diagram of sales department](../../media/683094bb-1160-4cce-810d-26ef7264c592.png)

### Find out if a group contains nested groups

The easiest way to detect if a group contains nested groups is to view the group contact card within Outlook. If you enter the group name within the **To** field of an email and then select the group name when it resolves, it will show you if it contains users or nested groups. In the example below, the **Members** tab of the Outlook contact card for the Test Group shows no users and only two sub groups. 

![Members tab of Outlook contact card](../../media/d9db88c4-d752-426c-a480-b11a5b3adcd6.png)

You can do the opposite query by resolving the group to see if it's a member of any group. In the example below, you can see under the <b>Membership</b> tab of the Outlook contact card that Sub Group 1 is a member of the Test Group. 

![Membership tab of the Outlook contact card](../../media/a9f9b6ab-9c19-4822-9e3d-414ca068c42f.png)

Note that you can use the Azure Active Directory Graph API to run queries to find the list of groups within a group. For more information, see [Operations on groups | Graph API reference](/previous-versions/azure/ad/graph/api/groups-operations). 

## Recommended approach for deploying Office add-ins 
To roll out add-ins by using a phased approach, we recommend the following: 
1. Roll out the add-in to a small set of business stakeholders and members of the IT department. You can turn on the flag Is this a test deployment. If the deployment is successful, move to step 2. 

2. Roll out the add-in to more individuals within the business. Again, evaluate the results and, if successful, continue with full deployment. 

3. Perform a full rollout to all users. Turn off the flag from Is this a Test deployment. 

Depending on the size of the target audience, you can add or remove roll-out steps.  

## Deploy an Office add-in using the admin center 

1. In the admin center, select **Settings**, then select **Integrated apps**. 

2. Select **Get apps** at the top of the page. Appsource will load in an embedded format. Either search for an add-in or find it through clicking on Product on the left nav.  If the add-in has been linked by the ISV to a SaaS app or other apps and add-ins and if the SaaS app is a paid app then you will be shown a dialog box to either buy the license or Deploy. Irrespective of whether you have bought the license or not you can go ahead with the deployment. Select **Deploy**.  

3. You will see the **Configuration** page where all the apps are listed. If you don’t have permissions or the right access to deploy the app, the respective information will be highlighted. You can select the apps you want to deploy. By selecting **Next**, you will view the **Users** page. If the add-in hasn’t been linked by the ISV, you will be routed to the Users page. 

4. Select **Everyone**, **Specific users/groups**, or **Just me** to specify who the add-in is deployed to. Use the Search box to find specific users or groups. If you are testing the add-in, select **Is this a test deployment**. 

5. Select **Next**. All the app capabilities and permissions are displayed in a single pane along with certification info if the app has Microsoft 365 certification. Selecting the certification logo lets the user see more details about the certification.  

6. Review, and then select **Finish deployment**.  

7. A green "tick" icon appears when the add-in is deployed. Follow the on-page instructions to test the add-in. 

> [!NOTE]
> Users might need to relaunch Office to view the add-in icon on the app ribbon. Outlook add-ins can take up to 24 hours to appear on app ribbons. 

It's good practice to inform users and groups that the deployed add-in is available. Consider sending an email that describes when and how to use the add-in. Include or link to help content or FAQs that might help users if they have problems with the add-in. 

## Considerations when assigning an add-in to users and groups 

Global admins and Exchange admins can assign an add-in to everyone or to specific users and groups. Each option has implications: 

- **Everyone** This option assigns the add-in to every user in the organization. Use this option sparingly and only for add-ins that are truly universal to your organization. 

- **Users** If you assign an add-in to an individual user, and then deploy the add-in to a new user, you must first add the new user. 

- **Groups** If you assign an add-in to a group, users who are added to the group are automatically assigned the add-in. When a user is removed from a group, the user loses access to the add-in. In either case, no additional action is required from the admin. 

- **Just me** If you assign an add-in to just yourself, the add-in is assigned to only your account, which is ideal for testing the add-in. 

The right option for your organization depends on your configuration. However, we recommend making assignments by using groups. As an admin, you might find it easier to manage add-ins by using groups and controlling the membership of those groups rather than assigning individual users each time. In some situations, you might want to restrict access to a small set of users by making assignments to specific users by assigning users manually. 

### More about Office add-ins security 
Office add-inds combine an XML manifest file that contains some metadata about the add-in, but most importantly points to a web application which contains all the code and logic. Add-ins can range in their capabilities. For example, add-ins can:
- Display data. 
- Read a user's document to provide contextual services. 
- Read and write data to and from a user's document to provide value to that user.  

For more information about the types and capabilities of Office add-ins, see [Office Add-ins platform overview](/office/dev/add-ins/overview/office-add-ins), especially the section "Anatomy of an Office Add-in." 

To interact with the user's document, the add-in needs to declare what permission it needs in the manifest. A five-level JavaScript API access-permissions model provides the basis for privacy and security for users of task pane add-ins. The majority of the add-ins in the Office Store are level ReadWriteDocument with almost all add-ins supporting at least the ReadDocument level. For more information about the permission levels, see [Requesting permissions for API use in content and task pane add-ins](/office/dev/add-ins/develop/requesting-permissions-for-api-use-in-content-and-task-pane-add-ins). 

When updating a manifest, the typical changes are to an add-in's icon and text. Occasionally, add-in commands change. However, the permissions of the add-in do not change. The web application where all the code and logic for the add-in runs can change at any time, which is the nature of web applications. 

Updates for add-ins happen as follows: 
- **Line-of-business add-in**: In this case, where an admin explicitly uploaded a manifest, the add-in requires that the admin upload a new manifest file to support metadata changes. The next time the relevant Office applications start, the add-in will update. The web application can change at any time. 

- **Office Store add-in**: When an admin selected an add-in from the Office Store, if an add-in updates in the Office Store, the next time the relevant Office applications start, the add-in will update. The web application can change at any time. 

> [!NOTE]
> For Word, Excel and PowerPoint use a [SharePoint App Catalog](https://dev.office.com/docs/add-ins/publish/publish-task-pane-and-content-add-ins-to-an-add-in-catalog) to deploy add-ins to users in an on-premises environment with no connection to Microsoft 365 and/or support for SharePoint add-ins required. For Outlook use Exchange control panel to deploy in an on-premises environment without a connection to Microsoft 365.  

## Add-in states
An add-in can be in either the **On** or **Off** state. 

| State | How the state occurs | Impact |
|:-----|:-----|:-----|
|**Active**  <br/> |Admin uploaded the add-in and assigned it to users or groups.  <br/> |Users and groups assigned to the add-in see it in the relevant clients.  <br/> |
|**Turned off**  <br/> |Admin turned off the add-in.  <br/> |Users and groups assigned to the add-in no longer have access to it.  <br/> If the add-in state is changed to Active, the users and groups will have access to it again.  <br/> |
|**Deleted**  <br/> |Admin deleted the add-in.  <br/> |Users and groups assigned the add-in no longer have access to it.  <br/> |
 
Consider deleting an add-in if no one is using it anymore. For example, turning off an add-in might make sense if an add-in is used only during specific times of the year. 

## Manage an Office add-in using the admin center

Post deployment, admins can also manage user access to add-ins. 

1. In the admin center, select **Settings**, then select **Integrated apps**. 
2. On the Integrated apps page, it will display a list of apps will be either single add-ins or add-ins that have been linked with other apps. 
3. Select an app with **Status** of **More apps available** to open the **Manage** pane. The status of **more apps available** lets you know that there are more integrations from the ISVs that aren't yet deployed. 
4. On the **Overview** tab, select **Deploy**. Some apps require you to add users before you can select Deploy. 
5. Select **Users**, select **Is this a test deployment**, and then select either **Entire organization**, **Specific users/groups** or **Just me**. You can also select **Test deployment** if you prefer to wait to deploy the app to the entire organization. Specific users or groups can be a Microsoft 365 group, a security group, or a distribution group. 
6. Select **Update** and then select **Done**. You can now select **Deploy** on the **Overview** tab. 
7. Review the app information, and then select **Deploy**.
8. Select **Done** on the **Deployment completed** page, and review the details of the test or full deployment on the **Overview** tab. 
9. If the app has a status of **Update pending**, you can click on the app to open the **Manage** pane and update the app. 
10. To just update users, select the **Users** tab and make the appropriate change. Select **Update** after making your changes.  

## Delete an add-in

You can also delete an add-in that was deployed.

1. In the admin center, select **Settings**, then select **Integrated apps** .
2. Select any row to display the management pane. 
3. Select the **Configuration** tab. 
4. Select the add-in that you want to delete and then select **Remove**.  

> [!NOTE]
>  If the add-in has been deployed by another admin, then the Remove button will be disabled. Only the admin who has deployed the app or a global admin can delete the add-in.

## Scenarios where Exchange admin cannot deploy an add-in 

There are two cases in which an Exchange Admin wont be able to deploy an add-in:
- If an add-in needs permission to MS Graph APIs and needs consent from aglobal admin.
- If an add-in is linked to two or more add-ins and webapps, and at least one of these add-ins are deployed by another admins (exchange/global) and the user assignment is not uniform. We only allow deployment of add-ins when the user assignment is same for all the already deployed apps.  


## Frequently asked questions

### Which administrator role do I need to access Integrated apps?

Only global administrators can access Integrated Apps. Integrated apps won't show up in the left nav for other administrators.

### Why do I see Add-in in the left nav under Setting but not Integrated apps?

There could be a few reasons:

- The logged in administrator is an Exchange admininstrator.
- The customer is in sovereign cloud and Integrated apps experience is available to sovereign cloud customers yet.

### What apps can I deploy from Integrated apps?

Integrated apps allows deployment of Web Apps, Teams app, Excel, PowerPoint, Word, Outlook add-ins, and SPFx apps. For add-ins, Integrated apps supports deployment to Exchange online mailboxes and not on-premises Exchange mailboxes.

### Can administrators delete or remove apps?

Yes. Global administrators can delete or remove apps.

- Select an app from the list view. On the **Configuration** tab, select which apps to remove.  

### Is Integrated apps available in sovereign cloud?

No. Integrated apps aren't available to sovereign cloud customers.

### Is Integrated apps available in government clouds?

No. Integrated apps aren't available to government cloud customers.
