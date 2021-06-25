---
title: "Set up Microsoft 365 Cloud PC for Business"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom: 
- AdminSurgePortfolio
- okr_smb
search.appverid:
- MET150
- MOE150
ms.assetid: eb926624-018b-4486-bf11-5fba6ee4d645
description: Learn about the requirements and considerations for setting Microsoft 365 Cloud PC for business.
---

# Set up Microsoft 365 Cloud PC for Business

This article is for people who plan to purchase and set up Microsoft 365 Cloud PC for Business plan.
  
Microsoft Cloud PC for Business is a version of [Microsoft Cloud PC](https://review.docs.microsoft.com/mem/cloudpc/overview?branch=release-cloudpc) that is made specifically for use in smaller companies. 

Microsoft Cloud PC for business gives admins an easy, streamlined way of providing “cloud PCs” - a new type of Windows virtual machine - to their users.

It is designed so that users in these businesses can experience:

•	A simple, quick purchasing experience.</br>
•	Instant provisioning.</br>
•	Access on demand for users.</br>


Note to reviewers:
Maybe we can simply link to the service description in case customers have questions about SKUs and features. 

## Prerequisites
There are no perquisites to set up Cloud PC for Business.

Note to reviewers: Do we need to note that you need to be an admin in your Microsoft 365 tenant in order to access the Microsoft 365 admin center (if the user already has a Microsoft 365 tenant).

## Purchase and assign licenses

You can purchase Cloud PC for Business subscriptions for your users through two ways:
- Self-service sign-up
- Microsoft 365 admin center

After purchasing your subscriptions, you can assign them to users in your business through the Microsoft 365 admin center.


### Purchase licenses through self-service sign up

If you do not yet have a Microsoft 365 tenant, you can purchase your Cloud PC for Business licenses and create your tenant during the purchase process. For example, if you purchase Cloud PC for Business through the [Microsoft 365 products](https://www.microsoft.com/microsoft-365) page, you will see the **Thank you for choosing Cloud PC** page and will need to do the following to complete your purchase.  


1. On the Cloud PC for Business page, select **See plans and pricing**. 
2. On the next page, select the subscription you want to purchase, and then select **Buy now**.
3. On the **Thank you for choosing Cloud PC** page, enter your information to get started.
4. In **step 1**, enter an email address that you already use. This can be your current work email address or any address you want Microsoft to use to communicate with you during setup. It is also the address where we'll send you information about your bill and renewals. Then select, **Set up account**.
5. In **step 2**, enter your name, business phone number, company name, and location. Select **Next**.
6. In **step 3**:

    - Prove you're not a robot! Select either **Text me** or **Call me**, and enter a number where we can reach you. Select **Send Verification Code** and you'll receive a text or call right away. Enter your code and select **Verify**.
    - Next, you will need to set up your domain name. If your email address doesn't include your business name and if you don't have a web site that uses your business name, you can easily buy a domain now. Enter the name of your business, then select **Check availability** to see whether your chosen domain is available. You can try multiple options before you make a decision. If your domain name is available, we'll let you know the cost and bill you directly with your new plan. 
    - Select **Next** to create your user ID and business email address. Enter the name (also called an alias) that you want to use. For example, Robert Young might use RobY or RobYoung as a work alias. Add a password and select **Sign up**. Make a note of your password. We'll send an email to the address you entered in step 1 to remind you of your user ID.
    - Select **Sign up** to create your account.
7. In **step 4**: 

    - Decide how many people in your business need a Cloud PC for business license, or leave the **Quantity** set to 1 for now and add more people later. Then select **Add payment method**.
    - Add your credit card details. Then select **Save**.
    - Confirm your information, then select **Place order**. 
It takes a short time for Microsoft to finish setting up a new plan.

8. In **step 5**, if you are ready to assign licenses to users, select **Manage subscriptions**. This will take you to the Microsoft 365 admin center where you will be able to [assign your licenses to users](/microsoft-365/business-video/set-up-cloud-pc-for-business#Assign-licenses-to-users).



### Purchase licenses through the Microsoft admin center

If you already have a Microsoft 365 tenant and are an admin, you can easily purchase Cloud PC for Business licenses to your users in the Microsoft admin center.

1. In the Microsoft admin center, expand **Billing**, then select **Purchase services**.
2. On the **Purchase services** page, search for **Cloud PC for Business**. When you locate it, select **Details**.
3. On the **Cloud PC for Business** page, in the **Processor/Ram/Storage Options** section, select the **Select a subscription** menu to select a subscription for your users based on their RAM and storage needs.
4. On the Checkout page, enter the number of subscriptions you want to buy, as well and your payment information. Then select **Place Order**.
5. The **You're all set!** page will appear confirming your purchase.


### Assign licenses to users 

Whether you purchased your subscriptions through self-service sign up, or through the Microsoft 365 admin center, you can assign your subscriptions to users through the **Billing** page in the Microsoft 365 admin center.

1. In the Microsoft 365 admin center, under **Billing**, select **Your products**.
2. On the **Your products** page, select **Cloud PC for Business**. 
3. On the **Cloud PC for Business** page, select **Assign licenses**.
4. In the **Users** list, select the user to which you want to assign a license. An the right pane, select the subscription type you want to assign to the user. For example, if you have purchased several different subscription types, you may want to assign a subscription that has more RAM and storage for a specific user.
5. Select **Save**.


## Accessing a Cloud PC

End users can access their cloud PCs in two different ways:

- Deschutes.microsoft.com
- Microsoft Remote Desktop

### Deschutes.microsoft.com

End users can navigate to deschutes.microsoft.com to access their cloud PCs.  

(Screenshot of end user portal.)

#### Requirements

To access their cloud PC from this website, the end user's device must meet the following requirements:

- Supported OS versions: Windows, macOS, ChromeOS, Linux
- A modern browser like Microsoft Edge, Internet Explorer 11, Google Chrome, Safari, or Mozilla Firefox (v55.0 and later).
- Mobile devices aren't currently supported.

#### End-user actions

While on deschutes.microsoft.com, end users can perform actions on their cloud PCs by selecting the gear icon on a cloud PC card.

(Screenshot of card with gear icon selected.)

- **Rename**: Changes the name of the cloud PC shown to the user on Deschutes.com. This action won’t affect any name in MEM, AAD, on the device, or in the Remote Desktop Apps.  
- **Restart**: Restarts the cloud PC.
- **Troubleshoot**: Troubleshoot and attempt to resolve any issues that may be preventing a user from connecting to their cloud PC. The checks run include checking whether any files or agents required for connectivity are correctly installed and ensuring that the Azure resources are available.   
  | Return state | Description |
  | ------------- | ------------- |
  | No issues detected | None of the checks ran discovered an issue with the cloud PC. |</br>
  | Issues resolved  | An issue was detected and fixed. |</br>
  | Can’t connect to cloud PC. We’re working to fix it, try again later. | A Microsoft service required for connectivity is unavailable. Try connecting again later. |</br>
  | We couldn’t fix issues with your cloud PC. Contact your administrator. | An issue was detected but it was unable to be fixed. This could be due to a ongoing Windows update or another issue. If this error persists for an extended period of time the cloud PC may need to be reprovisioned. |</br>


### Remote Desktop

The Microsoft Remote Desktop app lets users access and control a remote PC, including a cloud PC.

For a list of clients by operating system, see [Remote Desktop clients](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/remote-desktop-clients).

#### Install the Microsoft Remote Desktop app

To set up their Remote Desktop client, users follow these steps:

1. Download the Remote Desktop app from the Download App page on deschutes.microsoft.com.
2. Subscribe to a workspace as described in [Remote Desktop Workspaces](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/windowsdesktop#workspaces).

#### End user hardware requirements for accessing cloud PCs

Hardware requirements vary depending on which Microsoft Remote Desktop client the end user installs.

#### Microsoft Remote Desktop client for Windows

Downloads available for:

- [Windows 64-bit](https://go.microsoft.com/fwlink/?linkid=2068602)
- [Windows 32-bit](https://go.microsoft.com/fwlink/?linkid=2098960)

Requirements:

- **Operating systems**: Windows 10, Windows 8.1, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2
- **CPU**: 1vCPU with 1 GHz or faster processor
- **RAM**: 1024 MB
- **Hard drive**: 100 MB or more
- **.NET Framework version**: 4.6.1 or later
- **Video**: DirectX 9 or later with WDDM 1.0 driver

If you'll be using Microsoft Teams on the cloud PCs, the following Window device requirements increase to:

- **CPU**: At least 2vCPU with Minimum 1.6 GHz or faster processor. For higher video/screen share resolution and frame rate, a 4-core processor or better is recommended.
- **RAM**: 1024 MB
- **Hard drive**: 3 GB or more
- **.NET Framework version**: 4.6.1 or later
- **Video**: DirectX 9 or later with WDDM 1.0 driver. Background video effects require Windows 10 or a processor with AVX2 instruction set. Also, Teams audio and video offloading on a cloud PC benefits from a dedicated Graphics Processing Unit (GPU) within the device.

#### Microsoft Remote Desktop client for Windows from the Microsoft Store

Download from the [Microsoft Store](https://www.microsoft.com/store/p/microsoft-remote-desktop/9wzdncrfj3ps).

Requirements:

- **Operating systems**: Windows 10 1703 or later
- **CPU**: 1 GHz or faster processor
- **RAM**: 1024 MB
- **Hard drive**: 100 MB or more
- **Video**: DirectX 9 or later with WDDM 1.0 driver. o	Teams audio and video offloading on Cloud PC benefits from a dedicated Graphics Processing Unit (GPU) within your physical endpoint device.

#### macOS, iOS/iPadOS, and Android

You can install the client and find requirements for other platforms here:

- [macOS](https://itunes.apple.com/app/microsoft-remote-desktop/id1295203466?mt=12)
- [iOS/iPadOS](https://aka.ms/rdios)
- [Android](https://play.google.com/store/apps/details?id=com.microsoft.rdc.androidx)


## Installing apps

Users can install apps on their Cloud PC as they would normally in Windows by either downloading them from the application’s website or by downloading them from the Microsoft Store.

All Cloud PC for business users have local administrator privileges on their Cloud PC, so they should have the permissions required to install apps to their workspaces.


 ## Management through Intune

Cloud PC for business does not enroll Cloud PCs to [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) as part of the provisioning process. If the tenant and users are properly licensed, Cloud PCs can be enrolled to Intune using the same procedure for [enrolling Windows 10 machines to Intune](https://docs.microsoft.com/mem/intune/user-help/enroll-windows-10-device).

## How to get help

If you need to get help while setting up Cloud PC for Business in the Microsoft 365 admin center, see [Get help or support](https://docs.microsoft.com/microsoft-365/business-video/get-help-support?view=o365-worldwide).

