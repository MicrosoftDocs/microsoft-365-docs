---
title: Set up Microsoft 365 Business Premium
description: "How to set up Microsoft 365 Business Premium or work with a solution provider to do so."
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 11/10/2022
ms.localizationpriority: high
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- m365-security
- tier1
ms.custom: intro-get-started
---

# Set up Microsoft 365 Business Premium

After you have [started a trial or purchased Microsoft 365 Business Premium](get-microsoft-365-business-premium.md), your next step is to get everything set up. You have several options available. You can:

- Start with the [guided setup experience](m365bp-setup.md#guided-setup-process) for basic setup and configuration, and then proceed to [Bump up security](m365bp-security-overview.md); or
- [Work with a Microsoft partner](m365bp-setup.md#work-with-a-microsoft-partner) who can help you get everything set up and configured.

## Before you begin

Make sure that you meet the following requirements before you begin your setup process:

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft 365 Business Premium or Microsoft 365 for Campaigns <br/><br/> To start a trial or purchase your subscription, see the following articles: <br/>- [Get Microsoft 365 Business Premium](get-microsoft-365-business-premium.md)<br/>- [Get Microsoft 365 for Campaigns](get-microsoft-365-campaigns.md) |
| Permissions  | To complete the initial setup process, you must be a Global Admin. [Learn more about admin roles](../admin/add-users/about-admin-roles.md). |
| Browser requirements | Microsoft Edge, Safari, Chrome or Firefox. [Learn more about browser requirements](https://www.microsoft.com/microsoft-365/microsoft-365-and-office-resources#coreui-heading-uyetipy).  |
| Operating systems (client) | **Windows**:  Windows 11, Windows 10, Windows 8.1<br/>**macOS**: One of the three most recent versions of macOS 
| Operating systems (servers) | Windows Server or Linux Server <br/>(Requires [Microsoft Defender for Business servers](../security/defender-business/get-defender-business-servers.md).)  |

> [!NOTE]
> For more detailed information about Microsoft 365, Office, and system requirements, see [Microsoft 365 and Office Resources](https://www.microsoft.com/microsoft-365/microsoft-365-and-office-resources).

## Guided setup process

Microsoft 365 Business Premium includes a guided process. The following video shows the guided setup process for Microsoft 365 Business Standard, which also applies to Microsoft 365 Business Premium. (Microsoft 365 Business Premium includes [advanced security settings that you'll configure](m365bp-security-overview.md) after your basic setup process is complete.)<br/><br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE471FJ]

**As soon as you've completed the guided setup process, proceed to [bump up security](m365bp-security-overview.md)**.

> [!TIP]
> After you have added users, give them a link to the [Employee quick setup guide](../admin/setup/employee-quick-setup.md). The guide walks them through signing in, getting Microsoft 365 apps, and saving, copying, and sharing files.

### The guided setup process, step by step

1. As a global administrator, go to the [Microsoft 365 admin center](https://admin.microsoft.com/) and sign in. By default, you'll see the simplified view, as shown in the following image:

   :::image type="content" source="media/m365bp-simplifiedview.png" alt-text="Screenshot showing the simplified view of the Microsoft 365 admin center."lightbox="media/m365bp-simplifiedview.png":::

2. In the upper right corner, select **Dashboard view** so that your admin center resembles the following image. Then select **Go to guided setup**. 

   :::image type="content" source="media/m365bp-dashboardview.png" alt-text="Screenshot of the dashboard view of the Microsoft 365 admin center."lightbox="media/m365bp-dashboardview.png":::

3. To install your Microsoft 365 apps (Office), select the download button, and then follow the prompts. Alternately, you can skip this step for now and install your apps later. Then select **Continue**.

   :::image type="content" source="media/m365bp-installoffice.png" alt-text="Screenshot of the Install Office download button."lightbox="media/m365bp-installoffice.png":::

4. To add your organization's domain (*recommended*) or to use your default `.onmicrosoft.com` domain, select an option and then follow the prompts. Then select **Use this domain**.

   :::image type="content" source="media/m365bp-adddomain.png" alt-text="Screenshot showing the option to add a domain."lightbox="media/m365bp-adddomain.png":::

   > [!TIP]
   > To get help with this task, see [Add a domain to Microsoft 365](../admin/setup/add-domain.md).

5. To add a user, fill in the user's first name, last name, and user name, and then select **Add users and assign licenses**. Alternately, you can select **View all users** to go to your active users page, where you can view, add, and manage users. 

   :::image type="content" source="media/m365bp-addusers.png" alt-text="Screenshot showing the Add Users and Assign Licenses page."lightbox="media/m365bp-addusers.png":::

   > [!TIP]
   > We recommend adding your administrators and members of your security team now. To get help with this task, see [Add users and assign licenses at the same time](../admin/add-users/add-users.md).

6. If you added your domain in step 4, you can now connect your domain to Microsoft 365. To get help with this task, see [Change nameservers to set up Microsoft 365 with any domain registrar](../admin/get-help-with-domains/change-nameservers-at-any-domain-registrar.md).

When you're finished with the basic setup process, you'll see **Setup is complete**, where you can tell us how setup went and then go to your Microsoft 365 admin center. At this point, basic setup is complete, but you still need to [set up and configure your security settings](m365bp-security-overview.md).

:::image type="content" source="media/m365bp-setupcomplete.png" alt-text="Screenshot of the Setup is Complete confirmation screen."lightbox="media/m365bp-setupcomplete.png"::: 

## Work with a Microsoft partner

If you'd prefer to have a Microsoft partner help you get and set up Microsoft 365 Business Premium, follow these steps:

1. Go to the [Browse Partners](https://appsource.microsoft.com/marketplace/partner-dir) page.

2. In the **Filters** pane, specify search criteria, such as:

   - Your location
   - Your organization's size (**Microsoft Customer Size**)
   - **Focus areas**, such as **Security** and/or **Threat Protection** 
   - **Services**, such as **Licensing** or **Managed Services (MSP)**

   As soon as you select one or more criteria, the list of partners updates.

3. Review the list of results. Select a provider to learn more about their expertise and the services they provide.

## See also

- [Overview of the Microsoft 365 admin center](../admin/admin-overview/admin-center-overview.md)
- [Business subscriptions and billing documentation](../commerce/index.yml)
- [Find a Microsoft partner or reseller](../admin/manage/find-your-partner-or-reseller.md)

## Next objective

Proceed to [Bump up security](m365bp-security-overview.md).
