---
title: "Test and deploy Microsoft 365 Apps"
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

# Test and deploy Microsoft 365 Apps in the Microsoft 365 admin center

The Microsoft 365 admin center gives you the flexibility to deploy Microsoft and Microsoft partner apps from a single location. The ability to find, test, and fully deploy purchased and licensed apps by Microsoft partners from the Integrated apps portal provides the convenience and benefits your organization requires to keep business services updated regularly and running efficiently. These partner apps can either be store apps available from AppSource or custom line of business apps. Today we support Word, PowerPoint, Excel custom line of business apps only.

For additional information about purchasing and licensing Microsoft 365 apps for your organization, see the blog post called [Manage and deploy Microsoft 365 Apps from the Microsoft 365 admin center](https://techcommunity.microsoft.com/t5/microsoft-365-blog/manage-and-deploy-microsoft-365-apps-from-the-microsoft-365/ba-p/1194324).

Integrated apps portal is only accessible by the Global Admins and available to WorldWide customers only. Currently this feature is not available in sovereign and government clouds.
  
## Manage apps in the Integrated apps portal

By choosing Integrated apps in the Microsoft 365 admin center, you can manage testing and deployment of purchased and licensed Microsoft 365 Apps from partners.

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**.

2. Choose an app with **Status** of **More apps available** to open the Manage pane. The status of **more apps available** is to indicate to an administrator that there are more integrations from the ISVs that aren't yet deployed.

3. On the **Overview** tab select **Deploy**. Some apps require you to add users before you can select Deploy.

4. Select  **Users**, choose **Is this a test deployment**, and then choose **Entire organization**, **Specific users/groups** or **Just me**. You can also choose Test deployment if you prefer to wait to deploy the app to the entire organization. Specific users or groups can be a Microsoft 365 group, a security group, or a distribution group.

1. Select **Update** and then **Done**. You can now select Deploy on the Overview tab.

4. Review the app information, and then select **Deploy**.

5. Select **Done** on the Deployment completed page and review the details of the test or full deployment on the **Overview** tab.

6. If the app has a status of **Update pending**, you can click on the app to open the Manage pane and update the app.

## Find published apps for testing and full deployment

You can find, test, and fully deploy published apps that don't already appear in the list on the Integrated apps page. By purchasing and licensing the apps from the admin center, you can add Microsoft and Microsoft partner apps to your list from a single location.

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**.

2. Select **Get apps** above the list of apps.

3. On the **Microsoft 365 Apps** published apps page, select the app you want to deploy by choosing **Get it now**. Integrated apps support Word, PowerPoint, Excel, Outlook add-ins, Teams app and SharePoint apps (built on SharePoint Framework technology). Accept the permissions and select **Continue**.

5. Select **Deploy** at the top of the page next to the message that refers to waiting to be deployed.

    If the app selected is linked to a SaaS offer by an ISV, all the other apps that are part of this linked offer will appear on the Configuration page. If you choose to deploy of all of the apps, select **Next**. Otherwise, select **Edit**, and choose which apps you want deployed. Some apps require you to add users before you can select **Deploy**.

6. Select **Add users**, choose **Is this a test deployment**, and then choose **Entire organization** or **Specific users/groups** or **Just me**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group. You can also choose **Test deployment** if you prefer to wait to deploy the app to the entire organization.

7. Select **Next** to get to the **Accept permission request** page. The app capabilities and permissions of each of the apps are listed. If the app needs consent, select **Accept permissions**. Only a global administrator can give consent.

8. Select **Next** to review the deployment and choose **Finish deployment**. You can view the deployment from the **Overview** tab by choosing **View this deployment**. In the Microsoft 365 admin center, you can see the status of each deployed app and the date you deployed the app.

> [!NOTE]
> If an app was previously deployed from somewhere other than the Integrated Apps portal, the **Deployment Type** is **Custom.**

## Upload custom line of business apps for testing and full deployment

1. In the admin center, in the left nav, choose **Settings** and then **Integrated apps**.

2. Select **Upload custom apps**. Only a custom line of apps for Word, PowerPoint, Excel and Outlook  is supported.

3. Upload the manifest file from your device or add a link location. Some apps require you to add users before you can select Deploy.

4. Select **Add users**, choose **Is this a test Deployment**, and choose **Entire organization** or **Specific users/groups** or **Just me**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group. You can also choose **Test deployment** if you want to wait to deploy the app to the entire organization.

5. Select **Next** to get to the **Accept permission request** page. The app capabilities and permissions of the apps are listed. If the app needs consent, select **Accept permissions**. Only a global administrator can give consent.

6. Select **Next** to review the deployment and choose **Finish deployment**. You can view the deployment from the **Overview** tab by choosing **View this deployment**.

## Unsupported scenarios

Administrators won't be able to deploy a store app from Integrated apps portal for the following scenarios:

- The app or add-in is linked to more than one software as a service (SaaS) offer or Web Apps
- The SaaS app or Web Apps is linked to apps and add-ins but it doesn't have an associated AADid.
- Two SaaS apps or Web apps share the same AADid and they are both linked to apps or add-ins.
  
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
