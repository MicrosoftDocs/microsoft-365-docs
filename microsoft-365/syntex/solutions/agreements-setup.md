---
title: Set up the SharePoint Agreements AI solution
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/18/2024
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
description: Learn how to set up licensing tools for the SharePoint Agreements AI solution.
---

# Summary
There are a few steps tp setting up the solution.
1. A Global admin needs to get and assign the required licenses. [SharePoint Content Solution - Agreements (Preview) license](agreements-license-requirements.md#assign-license-to-a-user).
2. A SharePoint Admin needs to create a workspace.
3. Workspace owners can then configure their workspace.
4. Deploy the Agreements app in teams.

<!---
## Get and assign licenses

You must be a SharePoint Administrator or Global Administrator to activate the SharePoint Agreements AI solution, purchase licenses, and assign the licenses to users.

> [!NOTE]
> While in preview, these licenses are 100% discounted for up to 25 users for six months.

### Get the licenses

1. Your Microsoft representative will provide you with a promo code link. Select the link and sign in as a Global Administrator.

   ![A screenshot of sign-in page.](../../media/content-understanding/agreements-sign-in.png)

2. On the **Checkout** page, provide your contact and billing information. This step requires a credit card, and the card won't be charged during preview.

   ![A screenshot of Checkout page showing the contact and billing information.](../../media/content-understanding/agreements-checkout.png)

3. In the **Items in this order** section, choose the number of licenses you would like. The promotional link will give you 100% discount on up to 25 licenses for six months.

    > [!IMPORTANT]
    > By default, the number of licenses is set to 1. Change this to 25 licenses to get the most out of the promo code.

   ![A screenshot of Checkout page showing the Items in this order section.](../../media/content-understanding/agreements-items-in-order.png)

4. In the **Summary** section, select **Place order**.

   ![A screenshot of Checkout page showing the Place order button.](../../media/content-understanding/agreements-place-order.png)

### Assign the licenses

Assigning licenses to users is performed the same way as assigning other licenses, such as Microsoft 365 E3 or Microsoft 365 E5.

1. Sign in to the [Microsoft 365 admin portal](https://admin.microsoft.com/) as a Global Administrator.

2. Go to **Users** > **Active users**.

3. Select the users who you would like to assign the license to. In the user information panel, go to **Licenses and apps** and assign the new **SharePoint Content Solution - Agreements (Preview)** license.

   ![A screenshot of the user information panel showing license options.](../../media/content-understanding/agreements-assign-licenses.png)
--->

## Create workspaces

Workspaces are grouped areas where templates, snippets, and agreements are stored. Each workspace maps to a SharePoint site. Permissions are also defined at a workspace level. You can create one workspace for every business line. For example, you could have one workspace each for your Legal, Procurement, and Human Resources departments.

### Prerequisites

Before setting up a workspace for SharePoint Agreements AI, you need to ensure:  

- The user implementing the steps in the article needs to be either a Global Administrator or SharePoint Administrator.

    [!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

- User accounts are available with the [SharePoint Content Solution - Agreements (Preview) license](agreements-license-requirements.md#assign-license-to-a-user).

- You have downloaded and installed the latest [SharePoint Online Management Shell](https://www.microsoft.com/download/details.aspx?id=35588).

    > [!NOTE]
    > You must be a SharePoint Administrator or Global Administrator to create sites through the SharePoint Online Management Shell.

### Create a workspace

1. Launch the SharePoint Online Management Shell, and sign in as a Global Administrator or SharePoint Administrator.

2. Connect to your tenant by running the following command:

    ```Connect-SPOService -Url "https://\<tenantName>-admin.sharepoint.com"```

    Replace \<tenantName> with the name of your SharePoint tenant.
   ex: ```Connect-SPOService -Url "https://contosoelectronics-admin.sharepoint.com"```

   > [NOTE]
   > The Connect-SPOService might require the use of modern authentication to connect. For information about how to add modern authentication flow to your SPO-Connect cmdlet, see the [Connect-SPOService documentation](/powershell/module/sharepoint-online/connect-sposervice).

4. Run the following command to create a new SharePoint site and set it as an Agreements workspace.

    ```New-SPOSite -Url "\<URL>" -Owner "\<user>" -StorageQuota 1000 -Title "<Workspace Name>" -EnableAgreementsSolution -Template "STS#3"```

    Where:

    - \<URL> is the target URL of the new site.  
    - \<User> is the email address of the owner of the new workspace.
    - \<Workspace Name> is the name you would like for the new workspace.
  
    ex: ```New-SPOSite -Url "https://contosoelectronics.sharepoint.com/teams/LegalAgreements" -Owner "megan@contosoelectronics.onmicrosoft.com" -StorageQuota 1000 -Title "Legal agreements" -EnableAgreementsSolution -Template "STS#3"```

5. The final PowerShell steps enable approvals workflow. Run the following set of commands on the newly created SharePoint site.
   
```
     $AgreementsSiteUrl = "\<URL>"
```
Remember to replace \<URL> with the URL of the newly created SharePoint site
```
$script = '{"$schema":"https://developer.microsoft.com/json-schemas/sp/site-design-script-actions.schema.json","actions":[{"verb":"createSPList","listName":"Modern Template Library","templateType":101,"subactions":[{"verb":"enableApprovals"}]},{"verb":"createSPList","listName":"Section Library","templateType":101,"subactions":[{"verb":"enableApprovals"}]}]}

     $SiteScriptResult = Add-SPOSiteScript -Title 'Enable Approvals for Template and Sections Library' -Content $script

     $SiteDesignResult = Add-SPOSiteDesign -Title 'Enable Approvals for Template and Sections Library' -WebTemplate STS -SiteScripts $SiteScriptResult.Id

     Invoke-SPOSiteDesign -Identity $SiteDesignResult.Id -WebUrl $AgreementsSiteUrl
```

## Deploy the Agreements app to users in Microsoft Teams
As a global administrator or a Teams administrator, you can follow the steps outlined in the [Manage your apps in the Microsoft Teams Admin Center](/microsoftteams/manage-apps) to deploy the Agreements app to all users or specific users in your organization.

## Add the Agreements app in Microsoft Teams
Follow the steps below (no administrator privileges needed) to the Agreements App in Teams:

1. Launch Microsoft Teams.

2. On the left navigation menu, select **Apps**.

   ![A screenshot of Microsoft Teams showing the add Apps button.](../../media/content-understanding/agreements-teams-add-apps.png)

3. Search for **Agreements**, and then select **Add**.

   ![A screenshot of adding the Agreements app in Teams.](../../media/content-understanding/agreements-add-agreements-app.png)

4. You'll see the Agreements app on the left navigation menu.

5. For ease of access, you can right-click **Agreements** and pin the app to the left navigation menu.

## Configure the workspace

Workspace owners can configure their workspace from the Agreements App. They can assign users to different roles in the workspace and manage the categories available in the workspace. 

### Manage roles

To manage roles in a workspace:

1. As a workspace owner, launch the Agreements app in Teams.

2. Go to the **Setup & access** tab.

3. From the left navigation menu, select the **Roles** option.

4. Select the role you would like to manage.

    Here, you can add or remove users.

   ![A screenshot of the Edit workspace owners page to add users to a role.](../../media/content-understanding/agreements-add-users-to-roles.png)

### Manage categories

To manage categories in the Agreements app:

1. As a workspace owner, launch the Agreements App in Teams.

2. Go to the **Setup & access** tab.

3. From the left navigation menu, select the **Categories** option.

   All the existing categories available in your workspace are displayed. You can rename an existing category or create new categories as needed.

   ![A screenshot showing the Categories page on the Setup & access tab.](../../media/content-understanding/agreements-manage-categories.png)

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
