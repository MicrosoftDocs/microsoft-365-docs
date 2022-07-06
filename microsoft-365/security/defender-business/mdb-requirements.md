---
title: Requirements for Microsoft Defender for Business
description: Microsoft Defender for Business license, hardware, and software requirements
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Microsoft Defender for Business requirements

This article describes the requirements for Microsoft Defender for Business.

## What to do

1. [Review the requirements and make sure you meet them](#review-the-requirements).
2. [Proceed to your next steps](#next-steps).


## Review the requirements

The following table lists the basic requirements you need to configure and use Microsoft Defender for Business.

| Requirement | Description |
|:---|:---|
| Subscription | Microsoft 365 Business Premium or Microsoft Defender for Business (standalone). See [How to get Microsoft Defender for Business](get-defender-business.md).<p>Note that if you have multiple subscriptions, the highest subscription takes precedence. For example, if you have Microsoft Defender for Endpoint Plan 2 (purchased or trial subscription), and you get Defender for Business, Defender for Endpoint Plan 2 takes precedence. In this case, you won't see the Defender for Business experience. See [What happens if I have a mix of Microsoft 365 Defender subscriptions](mdb-faq.yml#what-happens-if-i-have-a-mix-of-microsoft-endpoint-security-subscriptions)?  |
| Datacenter | One of the following datacenter locations: <ul><li>European Union</li><li>United Kingdom</li><li>United States</li></ul> |
| User accounts |<ul><li>User accounts are created in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)).</li><li>Licenses for Defender for Business (or Microsoft 365 Business Premium) are assigned in the Microsoft 365 admin center.</li></ul>To get help with this task, see [Add users and assign licenses](mdb-add-users.md). |
| Permissions  | To sign up for Microsoft Defender for Business, you must be a Global Admin.<p>To access the Microsoft 365 Defender portal, users must have one of the following [roles in Azure AD](mdb-roles-permissions.md) assigned:<ul><li>Security Reader</li><li>Security Admin</li><li>Global Admin</li></ul>To learn more, see [Roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md). |
| Browser requirements | Microsoft Edge or Google Chrome |
| Client device operating system | To manage devices in the Microsoft 365 Defender portal, your devices must be running one of the following operating systems: <ul><li>Windows 10 or 11 Business</li><li>Windows 10 or 11 Professional</li><li>Windows 10 or 11 Enterprise</li><li>macOS (the three most-current releases are supported)</li></ul><p>Make sure that [KB5006738](https://support.microsoft.com/topic/october-26-2021-kb5006738-os-builds-19041-1320-19042-1320-and-19043-1320-preview-ccbce6bf-ae00-4e66-9789-ce8e7ea35541) is installed on the Windows devices. <p>If you're already managing devices in Microsoft Intune, you can continue to use the Microsoft Endpoint Manager admin center. In that case, the following other operating systems are supported: <ul><li>iOS and iPadOS</li><li>Android OS</li></ul> |
| Server requirements | If you're planning to onboard an instance of Windows Server or Linux Server, you must meet the following requirements: <ul><li>You have a Microsoft Defender for Business servers license for each server instance.</li><li>Preview features is turned on. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **General** > **Advanced features** > **Preview features**.</li><li>Enforcement scope for Windows Server is turned on. In the Microsoft 365 Defender portal, go to **Settings** > **Endpoints** > **Configuration management** > **Enforcement scope**. Select **Use MDE to enforce security configuration settings from MEM**, select  **Windows Server**, and then select **Save**.</li><li>You meet the [prerequisites for Microsoft Defender for Endpoint on Linux](../defender-endpoint/microsoft-defender-endpoint-linux.md#prerequisites).</li></ul> |

> [!NOTE]
> [Azure Active Directory (Azure AD)](/azure/active-directory/fundamentals/active-directory-whatis) is used to manage user permissions and device groups. Azure AD is included in your Defender for Business subscription. 
> - If you don't have a Microsoft 365 subscription before you start your trial, Azure AD will be provisioned for you during the activation process. 
> - If you do have another Microsoft 365 subscription when you start your Defender for Business trial, you can use your existing Azure AD service. 
> - If you're using [Microsoft 365 Business Premium](../../business/index.yml) when you start your Defender for Business trial, you have the option to manage your devices using Intune.

## Next steps

Go to [Step 2: Assign roles and permissions in Microsoft Defender for Business](mdb-roles-permissions.md).
 
