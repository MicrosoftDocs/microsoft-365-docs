---
title: Enable and manage access to Microsoft Whiteboard for your organization
ms.author: chucked
author: chuckedmonson
manager: alexfaulkner
ms.reviewer: 
audience: admin
ms.topic: article
ms.custom: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to set up Microsoft Whiteboard for your organization in the Microsoft 365 admin center.
ROBOTS: NOINDEX, NOFOLLOW

---

# Enable and manage access to Microsoft Whiteboard for your organization

>[!NOTE]
> This article applies to Enterprise or Education organizations who use Whiteboard. For US Government GCC High environments, see [Enable and manage access to Microsoft Whiteboard for GCC High environments](enable-whiteboard-access-gcc-high.md).

Microsoft Whiteboard is a visual collaboration canvas where people, content, and ideas come together. Today, Whiteboard runs on Azure for Enterprise and Education customers. Whiteboard is transitioning to be run on top of OneDrive for Business. This transition will bring many new capabilities and allow you to create, share, discover, and manage whiteboards as easily as any Office document.

Whiteboard is automatically enabled for applicable Microsoft 365 tenants. 

Whiteboard conforms to global standards including SOC 1, SOC 2, ISO 27001, HIPAA, and EU Model Clauses. 

The following admin settings are required for Whiteboard:

- Whiteboard must be enabled globally in the Microsoft 365 admin center.

- The <code>Set-SPOTenant -IsWBFluidEnabled</code> cmdlet must be enabled using [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

>[!NOTE]
> The roll out of OneDrive for Business storage is in progress. When you go to the Microsoft 365 admin center, the option to opt in or out of OneDrive for Business storage is disabled if your tenant already has been transitioned to OneDrive for Business.

You can control access to Whiteboard in the following ways:

- Enable or disable Whiteboard for your entire tenant using the Microsoft 365 admin center.

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using the Azure Active Directory admin center.

>[!NOTE]
> Teams meeting policies only hide Whiteboard entry points; it doesn't prevent the users from using Whiteboard. Conditional access policies prevent any access to Whiteboard, but doesn't hide the entry points.

## Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following steps:

1. Go to the Microsoft 365 admin center.

2. On the home page of the admin center, in the Search box on the top right, type *Whiteboard*.

3. In the search results, select **Whiteboard settings**.

4. On the Whiteboard panel, toggle **Turn Whiteboard on or off for your entire organization** to **On**.

5. Select **Save**.

6. Connect to [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

7. Enable Fluid using the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -IsWBFluidEnabled $true</code></pre>
 
## Show or hide Whiteboard

To show or hide Whiteboard in meetings, see [Meeting policy settings](/microsoftteams/meeting-policies-content-sharing). 

## Prevent access to Whiteboard

To prevent access to Whiteboard for specific users, see [Building a Conditional Access policy](/azure/active-directory/conditional-access/concept-conditional-access-policies).

## See also

[Manage data for Whiteboard](manage-data-organizations.md)

[Manage sharing for Whiteboard](manage-sharing-organizations)

[Deploy Whiteboard on Windows](deploy-on-windows-organizations.md)
