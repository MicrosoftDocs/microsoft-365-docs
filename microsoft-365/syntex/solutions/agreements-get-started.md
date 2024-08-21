---
title: Get started with the SharePoint Agreements AI solution (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/01/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to get started with the SharePoint Agreements AI solution.
---

# Get started with the SharePoint Agreements AI solution (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

## Get and assign licenses

You must be a SharePoint Administrator or Global Administrator to activate the SharePoint Agreements AI solution, purchase licenses, and assign the licenses to users.

> [!NOTE]
> While in preview, these licenses are 100% discounted for up to 25 users for 6 months.

### Get the license

1. Your Microsoft representative will provide you with a promo code link. Select the link and sign in as a Global Administrator.

![](media/image1.png)

2. Provide your contact and billing information. This step requires a credit card, and the card won't be charged during preview.

![](media/image2.png)

3. Choose the number of licenses you would like. The promotional link will give you 100% discount on up to 25 licenses for six months.

    > [!IMPORTANT]
    > By default, the number of licenses is set to 1. Change this to 25 licenses to get the most out of the promo code.

![](media/image3.png)

4. Place the order.

![](media/image4.png)

### Assign licenses

Assigning licenses to users is performed the same way as assigning other licenses, such as Microsoft 365 E3 or Microsoft 365 E5.

1. Log into the [Microsoft 365 admin portal](https://admin.microsoft.com/) as a Global Administrator.

2. Navigate to **Users** > **Active users**.

3. Select the users who you would like to assign the license to. In the user information panel, go to **Licenses and apps** and assign the new **SharePoint Content Solution - Agreements (Preview)** license.

![](media/image5.png)

## Set up workspaces

Workspaces are grouped areas where templates, snippets, and agreements live. Each workspace maps to a SharePoint site. Permissions are also defined at a workspace level. We recommend creating one workspace for every business line. For example, you could have one workspace each for your Legal, Procurement, and Human Resources departments.

### Prerequisites

Before setting up a workspace for SharePoint Agreements AI, you'll need:  

- User accounts with [Microsoft 365 E3](https://www.microsoft.com/en-us/microsoft-365/enterprise/e3?activetab=pivot:overviewtab) or [Microsoft 365 E5](https://www.microsoft.com/en-us/microsoft-365/enterprise/e5) license and the [SharePoint Content Solution - Agreements (Preview) license](#get-and-assign-licenses.md).

- The user implementing the steps in the document needs to be either a SharePoint Administrator or a Global Administrator.

- Enable Azure pay-as-you-go in your tenant. For more information, see [Configure Microsoft Syntex for pay-as-you-go billing.](/microsoft-365/syntex/syntex-azure-billing).

- Download and install latest [SharePoint Online Management Shell](https://www.microsoft.com/en-in/download/details.aspx?id=35588).

    > [!NOTE]
    > You must be a SharePoint Administrator or Global Administrator to create sites through the SharePoint Online Management Shell.

### Create a workspace

1. Launch the SharePoint Online Management Shell, and sign in as a Global Administrator or SharePoint Administrator.

2. Connect to your tenant by running the following command:

    `Connect-SPOService -Url "https://\<tenantName>-admin.sharepoint.com"`
    
    Replace \<tenantName> with the name of your SharePoint tenant.

3. Run the following command to create a new SharePoint site and set it as an Agreements workspace.

    `New-SPOSite -Url "\<URL>" -Owner "\<user>" -StorageQuota 1000 -Title "<Workspace Name>" -EnableAgreementsSolution -Template "STS#3"`

    Where:
    
    - \<URL> is the target URL of the new site.  
    - \<User> is the email address of the owner of the new workspace.
    - \<Workspace Name> is the name you would like for the new workspace.

## Add the Agreements app in Microsoft Teams

1. Launch Microsoft Teams.

2. On the left navigation menu, select **+Apps**.

   ![](media/image1.png)

3. Search for **Agreements**, and then select **Add**.

   ![](media/image2.png)

4. You'll see the Agreements app on the left navigation menu.

5. For ease of access, you can right-click **Agreements** and pin the app to the left navigation menu.

## Set up the workspace

After the workspace is created, the owner of the workspace can assign users to specific roles within the Agreements workspace.  

### Assign roles

The following roles can be assigned:

- **Workspace owner**. This role can assign additional users to roles, create and manage categories, and manage templates.

- **Workspace member**. This role can manage templates and has access to all agreements.

- **Template manager**. This role can manage templates and will not have access to all agreements by default.

### Manage roles

To manage roles in a workspace:

1. As a workspace owner, launch the Agreements app in Teams.

2. Navigate to the **Setup & access** tab.

3. From the left navigation menu, select the **Roles** option.

4. Select the role you would like to manage.

    Here, you can add or remove users.

![A screenshot of a computer description automatically generated](media/image1.png)

### Manage categories

To manage categories in the Agreements app:

1. As a workspace owner, launch the Agreements App in Teams as the tab.

2. Navigate to the **Setup & access** tab.

3. From the left navigation menu, select the **Categories** option.

   Here, you can see all the existing categories available in your workspace. You can rename an existing category or create new categories as needed.

