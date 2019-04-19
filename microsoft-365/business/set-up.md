---
title: "Set up Microsoft 365 Business"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: article
f1_keywords:
- 'O365E_M365SetupBanner'
- 'BCS365_M365SetupBanner'
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: 6e7a2dfd-8ec4-4eb7-8390-3ee103e5fece
description: "Learn how to set up Microsoft 365 Business."
---

# Set up Microsoft 365 Business

Before you get started, see [Get Microsoft 365 Business](get-microsoft-365-business.md) for sign-up details.

Watch a [short video on how to set up Microsoft 365 Business](https://support.office.com/article/38003e30-9d10-44cf-b596-f1b5f662bfa1) by using the set up wizard, and when you don't have an on-premises Active Directory
  

## Overview

Most of the set up steps can be done in the setup wizard, but the other options are also listed.

1. [Add your domain](#add-your-domain-to-personalize-sign-in) (if you bought your domain during [sign up](sign-up.md), this step is already done.)
2. Add users. You can do this in any of the three ways:
    - In the [setup wizard](#add-users-in-the-wizard).
    - Use directory synchronization to [add users by using Azure AD Connect](#add-users-by-using-azure-ad-connect) if you have an on-premises Active directory.
    - You can also [add users later](add-users-m365b.md) in the admin center.
3. Set up security policies and configure devices. You can do this in any of the three ways:
    - In the [setup wizard](#set-up-policies-in-the-wizard).  
    - In the [admin center](#modify-or-add-policies-in-the-admin-center).
    - In the [Intune admin center](https://docs.microsoft.com/intune/what-is-device-management).
4. Set up and manage Windows 10 devices.

    When you join a WIndows 10 device to Azure AD, all the policies get applied to it.
    - Set up Windows 10 device configurations in the [setup wizard](#set-up-policies-in-the-wizard).
    - Join a [new Windows 10 device](set-up-windows-devices.md#for-a-brand-new-or-newly-upgraded-windows-10-pro-device) to Azure AD.
    - Join an [existing Windows 10 device](set-up-windows-devices.md#for-a-device-already-set-up-and-running-windows-10-pro) to Azure AD.
1. Install Office 365 Business.
    - You can automatically install Office in the Windows devices by using the [setup wizard](#set-up-policies-in-the-wizard).
    - Automatically [install Office](auto-install-or-uninstall-office.md) from the admin center.
    - Let users [install Office apps](https://docs.microsoft.com/office365/admin/setup/install-applications) for Windows and devices.
     
1. Set up additional security.

## Add your domain, users and set up policies

![Banner that point to https://aka.ms/aboutM365preview.](media/m365admincenterchanging.png)

When you purchase Microsoft 365 Business, you have the option of using a domain you own, or buying one during the [sign-up](sign-up.md).

- If you purchased a new domain when you signed up, your domain is all set up and you can move to [Add users and assign licenses](#add-users-and-assign-licenses).

### Add your domain to personalize sign-in

1. Sign in to [Microsoft 365 admin center](https://admin.microsoft.com) by using your global admin credentials. 

2. Choose **Add a domain** to start the wizard.

    ![Select Add a domain.](media/addadomainadmincenter.png)
    
3. In the wizard, enter the domain name you want to use (like contoso.com).


    ![Screenshot of the Personalize your sign-in page.](media/personalizesignin.png)

    
4. Follow the steps in the wizard to [Create DNS records at any DNS hosting provider for Office 365](https://docs.microsoft.com/office365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider) that verifies you own the domain. If you know your domain host, see also the [host specific instructions](https://docs.microsoft.com/office365/admin/get-help-with-domains/set-up-your-domain-host-specific-instructions).

    If your hosting provider is GoDaddy, the process is easy and you will be automatically asked to sign in and let Microsoft authenticate on your behalf:

    ![On GoDaddy Confirm Access page, select Authorize.](media/godaddyauth.png)

### Add users and assign licenses

You can add users in the wizard, but you can also [add users later](add-users-m365b.md) in the admin center. Additionally, if you have a local domain controller, you can add users with [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-express).

#### Add users in the wizard

Any users you add in the wizard get automatically assigned a Microsoft 365 Business license.
If you have a local domain controller, and are using Active Directory, see [how to ddd users by using Azure AD Connect](#add-users-by-using-azure-ad-connect).

![Screenshot of the Add new users page in the wizard](media/addnewuserspage.png)

1. If your Microsoft 365 Business subscription has existing users (for example, if you used Azure AD Connect) , you will get an option to assign licenses to them now. Go ahead and add licenses to them as well.

3. After you have added the users, you will also get an option to share credentials with the new users you added. You can choose to print them out, email them, or download them.

4. Skip migrating email messages and choose **Next** on **Migrate email messages** page. 

    If you are moving from another email provider and want to copy your data later, you can [Migrate email and contacts to Office 365](https://support.office.com/article/a3e3bddb-582e-4133-8670-e61b9f58627e).

#### Add users by using Azure AD Connect

 If you have a local domain controller with Active Directory, you synchronize your users with Microsoft 365 Business by using [Azure AD Connect](https://docs.microsoft.com/azure/active-directory/hybrid/how-to-connect-install-express). Complete this before you start the setup wizard. You can download it in the admin center:

- Go to **Users** \> **Active users**, select the ellipses on the top of the page and then select **Directory synchronization** to download Azure AD Connect.

    ![On the Active users page select ellipses > Directory snchronization.](media/setupdirsync.png)

    > [!IMPORTANT]
    > If you create users this way, you will still have to assign licenses to them in the admin center.

##### Continue to access domain-joined apps and devices

If you want to continue to access domain-joined apps and devices, read the following articles for two different way of enabling that:
  
- [Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business](manage-windows-devices.md)
    - This is the recommended way.

- [Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business](access-resources.md)

### Connect your domain

> [!NOTE]
> If you chose to use the .onmicrosoft domain, or used Azure AD Connect to set up users, you will not see this step.
  
To set up services, you have to update some records at your DNS host or domain registrar.
  
1. The setup wizard typically detects your registrar and gives you a link to step-by-step instructions for updating your NS records at the registrar website. If it doesn't, [Change nameservers to set up Office 365 with any domain registrar](https://support.office.com/article/a8b487a9-2a45-4581-9dc4-5d28a47010a2). 

    - If you have existing DNS records, for example an existing web site, you will want to manage your own DNS records to make sure the existing services stay connected. See [domain basics](https://docs.microsoft.com/office365/admin/get-help-with-domains/dns-basics) for more info.

        ![Connect your domain page with I'll manage my own DNS records.](media/connectyourdomainpage.png)

2. Follow the steps in the wizard and email and other services will be set up for you.

### Set up security policies and device configurations 

These policies apply to every user you give a license to, or to a group of users if you decide to assign different policies to a set of users.

#### Set up policies in the wizard

The policies you set up in the wizard are applied automatically to a [Security group](https://docs.microsoft.com/office365/admin/create-groups/compare-groups#security-groups) called *All Users*.

1. On the **Protect your work files on mobile devices** the option **Protect work files when devices are lost or stolen** is selected by default. You have an option to turn on **Manage how users access Office files on mobile devices**, and this is recommended.

    ![Screenshot of Protect work files on mobile devices page.](media/protectworkfilesondevices.png)

     - If you expand **Protect work files when devices are lost or stolen**, the [default values](protect-work-files-on-lost-or-stolen-device.md) are pre-selected:

        ![Screenshot of default values for protecting files on lost devices.](media/protectworkfilesondevicesdefault.png)

    - If you select **Manage how users access Office files on mobile devices** and expand it, the [default values](manage-user-access-on-mobile-devices.md) are shown. We recommend you accept the default values during setup to create application policies for Android, iOS, and Windows 10 that apply to all users. You can create more policies after setup completes.

        ![Screenshot of protection settings for Office files on mobile.](media/useraccessonmobile.png)

2. The last step on protect data and devices allows you to set up policies to secure Windows 10 devices. These settings are applied automatically when a user's Windows 10 connects to your organization. You can expand **Secure Windows 10 devices** to see and modify the [default values](secure-windows-10-devices.md).
3. You can also choose to [automatically install Office](install-office-on-windows-10-during-setup.md) on Windows 10 devices.

    ![Screenshot of set Windows 10 device configuration page.](media/setwin10config.png)

#### Modify or add policies in the admin center

See [manage Microsoft 365 Business](manage.md) for links to topics on how to view and modify device and app protection polices, and how to remove data from, or reset user devices.

## Deploy and manage Windows 10
See [Set up Windows devices for Microsoft 365 Business users](set-up-windows-devices.md) to manually connect to Azure AD, either during setup for new computers, or by changing sign-in profile for existing computers. 

### Use Autopilot to set up new devices

You can use [Windows Autopilot](add-autopilot-devices-and-profile.md) to automatically pre-configure **new** Windows 10 devices for a user, but it might be easier to get a [partner](https://www.microsoft.com/solution-providers/search) who can do this for you. You can also go to [Microsoft Store](https://go.microsoft.com/fwlink/?linkid=874598) and ask a cloud technology expert set up new devices you purchase for you.

### Access on-premises resources

If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business to protect your Windows 10 devices, while still maintaining access to on-premises resources that require local authentication. Follow the steps in [Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business](manage-windows-devices.md) to set this up. This is the preferred method and devices in this state are called Hybrid Azure AD joined devices.

If your business has a local Active Directory that contains some on-premises resources (such as file shares and printers) , you can give your Azure AD-joined devices access to these resources by following the steps here: [Access on-premises resources from an Azure AD-joined device in Microsoft 365 Business](access-resources.md).

## Deploy Office 365 client apps

If you chose to automatically install Office apps in during the set up, the apps will install on the Windows 10 devices once the users have signed in to Azure AD from their Windows devices with their work credentials.
To install Office on mobile iOS or Android devices, see [Set up mobile devices for Microsoft 365 Business users](set-up-mobile-devices.md).

You can also install Office individually. See [install Office on a PC or Mac](https://support.office.com/article/4414eaaf-0478-48be-9c42-23adc471665) for instructions.

## Additional security settings

In addition to the security and compliance setting in the setup wizard, you can also set up the following additional settings:
  
- **Email malware protection**
- **Advanced Threat Protection (ATP) Safe Attachments**
- **ATP Safe Links**
- **APT anti-phishing**
- **Exchange Online Archiving**
- **Data loss prevention (DLP)**
- **Azure Information Protection** (Plan 1)
- **Intune portal availability**

To get started see, [set up advanced security policies](set-up-advanced-security.md).

See also [top 10 ways to secure your Microsoft 365 Business](https://docs.microsoft.com/office365/admin/security-and-compliance/secure-your-business-data) for a roadmap of best security practices.