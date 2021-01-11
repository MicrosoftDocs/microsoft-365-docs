---
title: "Test and deploy Microsoft 365 Apps"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
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

The Microsoft 365 admin center gives you the flexibility to deploy Microsoft and Microsoft partner apps from a single location. The ability to find, test, and fully deploy purchased and licensed apps by Microsoft and Microsoft partners from the Integrated apps portal provides the convenience and benefits your organization requires to keep business services updated regularly and running efficiently.  

For additional information about purchasing and licensing Microsoft 365 apps for your organization, see the blog post called [Manage and deploy Microsoft 365 Apps from the Microsoft 365 admin center](https://techcommunity.microsoft.com/t5/microsoft-365-blog/manage-and-deploy-microsoft-365-apps-from-the-microsoft-365/ba-p/1194324).
  
## Manage apps in the Integrated apps portal

By choosing Integrated apps in the Microsoft 365 admin center, you can manage testing and deployment of purchased and licensed Microsoft and Microsoft partner apps. 

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**. 

2. Choose an app with **Status** of **More apps available**.

3. Select **Deploy** at the top of the page next to the message that refers to waiting to be deployed.

    Some apps require you to add users before you can select **Deploy**.

    a. Select **Add users**, choose **Full deployment**, and then choose **Entire organization** or **Specific users/groups**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group.

    You can also choose **Test deployment** if you prefer to wait to deploy the app to the entire organization.

    b. Select **Update**, **Done**, and now you can select **Deploy** on the **Overview** tab.  

4. Review the app information, and then select **Deploy**. 

5. Select **Done** on the **Deployment completed** page. 

    Review the details of the test or full deployment on the **Overview** tab.

## Find published apps for testing and full deployment 

You can find, test, and fully deploy published apps that do not already appear in the list on the Integrated apps page. By purchasing and licensing the apps from the admin center, you can add Microsoft and Microsoft partner apps to your list from a single location.

1. In the admin center, in the left nav, choose **Settings**, and then choose **Integrated apps**. 

2. Select **Get apps** above the list of apps.

3. On the **Microsoft 365 Apps** published apps page, select the app you want to deploy by choosing **Get it now**.

4. Accept the permissions, and then select **Continue**.

5. Select **Deploy** at the top of the page next to the message that refers to waiting to be deployed.

    Some apps require you to add users before you can select **Deploy**.

    a. Select **Add users**, choose **Full deployment**, and then choose **Entire organization** or **Specific users/groups**.

    Specific users/groups can be a Microsoft 365 group, a security group, or a distributed group.

    You can also choose **Test deployment** if you prefer to wait to deploy the app to the entire organization.

    b. Select **Update**, **Done**, and and now you can select **Deploy** on the **Overview** tab.  

6. Review the app information, and then select **Deploy**. 

7. Select **Done** on the **Deployment completed** page. 

    Review the details of the test or full deployment on the **Overview** tab.

In the Microsoft 365 admin center, each deployed app **Status** is **OK** with a **Deployment Type** of **Test deployment**, **Full deployment**, or **Custom**, and the date you deployed the app.

> [!NOTE]
> If an app was previously deployed from somewhere other than the Integrated Apps portal, the **Deployment Type** is **Custom.**

## Unsupported scenarios

The following scenarios are not currently supported for deployment from the Integrated Apps portal:

- The app or add-in is linked to more than one software as a service (SaaS) offer.
- The SaaS app is linked to apps and add-ins but it doesn't have an associated AADid.
- Two SaaS apps share the same AADid and they are both linked to apps or add-ins.
  