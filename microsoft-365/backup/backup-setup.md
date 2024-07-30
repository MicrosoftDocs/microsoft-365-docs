---
title: Set up Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 04/11/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-get-started
ms.localizationpriority:  medium
description: Learn how to set up and configure Microsoft 365 Backup and backup policies.
---

# Set up Microsoft 365 Backup (Preview)

> [!NOTE]
> Microsoft 365 Backup (Preview) is now available worldwide in all commercial cloud environments. General availability is expected to be mid-2024. This preview feature is subject to change and [limitations as defined](backup-limitations.md). Before you begin, read the [Microsoft 365 Backup preview terms and conditions](backup-preview-terms.md).

Get started with Microsoft 365 Backup by following these simple three steps in the Microsoft 365 admin center.

![Diagram showing the three-step setup process for Microsoft 365 Backup.](../media/m365-backup/backup-setup-diagram.png)

<!---<insert how-to Affirma video   – https://aka.ms/M365Backup-how-to-video> --->

## Step 1: Set up pay-as-you-go billing


Microsoft 365 Backup is a pay-as-you-go offering that charges based on consumption, unlike traditional seat-based licenses. To set up pay-as-you-go for Microsoft 365 Backup, you will need to have this information:

> [!div class="checklist"]
> * **Valid Azure subscription**. An Azure subscription provides a logical container for your resources. Each Azure resource is associated with only one subscription. Creating a subscription is the first step in adopting Azure. To learn more about Azure, see [Azure fundamental concepts](/azure/cloud-adoption-framework/ready/considerations/fundamental-concepts).
> * **Resource group**. A resource group provides a logical grouping of resources within an Azure subscription.
> * **Region**. The region in which you want to register the service.
> * **Owner or contributor**. Name of an owner or contributor role on the Azure subscription.

Once you have the information on this list, you are ready to [set up pay-as-you-go billing for Microsoft 365 Backup](backup-billing.md).

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RW1k4TO]

</br>

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up Microsoft 365 Backup.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Step 2: Turn on Microsoft 365 Backup

To turn on Microsoft 365 Backup, you'll need to go to the Microsoft 365 admin center.

1. In the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home), select **Setup**.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, in the left navigation, select **Storage**. From the list of products, select **Backup Preview**.

5. By default, the feature is turned off. On the **Backup** panel, select **Turn on** to enable Microsoft 365 Backup for your organization.

6. Review the applicable [terms of service for Microsoft 365 Backup](backup-preview-terms.md) and select **Confirm**.

    ![Screenshot of the Turn on Backup panel and the Confirm button.](../media/m365-backup/backup-setup-turn-on.png)
<!---
8. Select **Go to Microsoft 365 Backup** to start setting up Microsoft 365 Backup on OneDrive, SharePoint, or Exchange.

    ![Screenshot of the Microsoft 365 Backup page showing SharePoint, Exchange, and OneDrive.](../../media/content-understanding/backup-setup-backup-page.png)
--->

## Step 3: Create backup policies to protect your data

Now that you have enabled Microsoft 365 Backup for your organization, follow through to create policies and start protecting your content.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

    ![Screenshot of the Microsoft 365 admin center panel showing Settings and Microsoft 365 Backup.](../media/m365-backup/backup-setup-admin-center-panel.png)

### Set up backup policies for OneDrive, SharePoint, and Exchange

To use Microsoft 365 Backup for OneDrive, SharePoint, or Exchange, you need to create a backup policy for each product. A *policy* represents the backup plan defined by admins for protecting the Microsoft 365 data of an organization.

A policy contains details of what data (OneDrive accounts, SharePoint sites, and Exchange mailboxes) to protect. Although you see the retention period and backup frequency (which defines the restore point objective), those settings aren't currently variable or modifiable.

Select the **OneDrive**, **SharePoint**, or **Exchange** tab for steps to create a backup policy for that product.

# [OneDrive](#tab/onedrive)

Follow these steps to set up a backup policy for OneDrive accounts using Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **OneDrive** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with OneDrive highlighted.](../media/m365-backup/backup-setup-backup-page-onedrive.png)

5. On the **Overview** page, review the backup features for OneDrive, and then select **Next**.

    ![Screenshot of the Overview page for OneDrive.](../media/m365-backup/backup-overview-page-onedrive.png)

6. On the **Protection scope** page, you can set up OneDrive user accounts using any or all three ways. A protection scope is the scope of user accounts within OneDrive that you want to protect with Microsoft 365 Backup.

    ![Screenshot of the Protection scope page for OneDrive with the options highlighted.](../media/m365-backup/backup-protection-scope-onedrive.png)

    a. Under **Add via search**, select **Choose accounts** to see user accounts that can be added via search. On the **Search and select accounts** panel, select the accounts you want to add to the policy.

    ![Screenshot of the Search and select accounts panel on the Protection scope page for OneDrive.](../media/m365-backup/backup-protection-add-search-onedrive.png)

    b. Under **Add via**, select **Distribution lists** or **Security groups**, or both. The distribution list and security group are flattened when added, meaning the policy won't update dynamically if the groups or distribution list are updated later.

    ![Screenshot of the Add via Distribution lists and Security groups on the Protection scope page for OneDrive.](../media/m365-backup/backup-protection-add-dl-sg-onedrive.png)

    c. Under **Import from file**, select **Upload CSV** to import user account details via CSV upload.

    ![Screenshot of the Import from file section on the Protection scope page for OneDrive.](../media/m365-backup/backup-protection-import-file-onedrive.png)

8. On the **Review OneDrive backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

9. The backup policy for OneDrive is created.

    ![Screenshot of the OneDrive backup policy created page.](../media/m365-backup/backup-policy-created-onedrive.png)

# [SharePoint](#tab/sharepoint)

Follow these steps to set up a backup policy for SharePoint sites using Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **SharePoint** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with SharePoint highlighted.](../media/m365-backup/backup-setup-backup-page-sharepoint.png)

5. On the **Overview** page, review the backup features for SharePoint, and then select **Next**.

    ![Screenshot of the Overview page for SharePoint.](../media/m365-backup/backup-overview-page-sharepoint.png)

6. On the **Protection scope** page, you can set up SharePoint sites by choosing to back up individual sites or collection of sites. A protection scope is the scope of sites within SharePoint that you want to protect with Microsoft 365 Backup.

    ![Screenshot of the Protection scope page for SharePoint with the options highlighted.](../media/m365-backup/backup-protection-scope-sharepoint.png)

    a. Under **Add via search**, select **Choose sites** to see the individual sites or site collections that can be added via search. On the **Search and select sites** panel, select the sites you want to add to the policy.

    ![Screenshot of the Search and select sites panel on the Protection scope page for SharePoint.](../media/m365-backup/backup-protection-add-search-sharepoint.png)

    b. Under **Add via**, select **Distribution lists** or **Security groups**, or both. The distribution list and security group are flattened when added, meaning the policy won't update dynamically if the groups or distribution list are updated later.

    c. Under **Import from file**, select **Upload CSV** to import user account details via CSV upload.

    ![Screenshot of the Import from file section on the Protection scope page for SharePoint.](../media/m365-backup/backup-protection-import-file-sharepoint.png)

7. Once you've made the right selections, select **Next** to create the backup policy for SharePoint.

8. On the **Review SharePoint backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

    ![Screenshot of the Review SharePoint backup policy page.](../media/m365-backup/backup-policy-review-policy-sharepoint.png)

9. The backup policy for SharePoint is created.

    ![Screenshot of the SharePoint backup policy created page.](../media/m365-backup/backup-policy-created-sharepoint.png)

# [Exchange](#tab/exchange)

Follow these steps to set up a backup policy for Exchange mailboxes sites using Microsoft 365 Backup. Ensure that Microsoft 365 Backup is [enabled for your tenant](#step-2-turn-on-microsoft-365-backup).

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **Exchange** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with Exchange highlighted.](../media/m365-backup/backup-setup-backup-page-exchange.png)

5. On the **Overview** page, review and verify the backup policy attributes for Exchange, such as backup frequency, backup retention, cost details, and then select **Next**.

    ![Screenshot of the Overview page for Exchange.](../media/m365-backup/backup-overview-page-exchange.png)

6. On the **Protection scope** page, choose the scope of protection for the mailbox policy. Microsoft 365 Backup for Exchange allows the addition of mailboxes in three ways.

    ![Screenshot of the Protection scope page for Exchange.](../media/m365-backup/backup-protection-scope-exchange.png)

    a. Under **Add via search**, select **Choose user mailboxes** to see the mailboxes that can be added via search. On the **Search and select mailboxes** panel, select the mailboxes you want to add to the policy.

    ![Screenshot of the Search and select mailboxes panel on the Protection scope page for Exchange.](../media/m365-backup/backup-protection-add-search-exchange.png)

    b. Under **Add via**, select **Distribution lists** or **Security groups**, or both. The distribution list and security group are flattened when added, meaning the policy won't update dynamically if the groups or distribution list are updated later.

    ![Screenshot of the Add via Distribution lists and Security groups on the Protection scope page for Exchange.](../media/m365-backup/backup-protection-add-dl-sg-exchange.png)

    c. Under **Import from file**, select **Upload CSV** to import user account details via CSV upload.

    ![Screenshot of the Import from file section on the Protection scope page for Exchange.](../media/m365-backup/backup-protection-import-file-exchange.png)

7. Once you've made the right selections, select **Next** to create the backup policy for Exchange.

8. On the **Review Exchange backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

    ![Screenshot of the Review Exchange backup policy page.](../media/m365-backup/backup-policy-review-policy-exchange.png)

9. Wait for status of your policy to show as **Active** in the home screen. This might take between 15 and 60 minutes. The backup policy for Exchange is created. Select **View scope** at any time to verify the details.

    ![Screenshot of the Exchange backup policy created page.](../media/m365-backup/backup-policy-created-exchange.png)

---

## Admin roles and backup management privileges

Only tenant-level admins can create and manage backups using Microsoft 365 Backup for their users. End users don't have the ability to enable backup or restores for their user account, distribution lists, mailboxes, or sites. It’s important to note that your admin role determines which products you can manage with Microsoft 365 Backup. In the future, we might introduce a Backup admin role that can control the entire tool.

|Admin role  |OneDrive  |SharePoint  |Exchange  |
|---------|---------|---------|---------|
|Global Administrator     | ✓        | ✓        | ✓       |
|SharePoint Administrator     | ✓        | ✓        |         |
|Exchange Administrator    |         |         | ✓        |

## Glossary

- **Protection units** – SharePoint sites, OneDrive accounts, or Exchange Online mailboxes backed up by the Microsoft 365 Backup tool.

- **Restore point** – A prior point in time from which you can restore a version of your content and metadata. If the protection unit from a prior point in time is identical to the present state of your data, then a restore from that point will have no impact on your current data.

- **RPO** – Recovery point objective, or how close in time the most recent restore point is to an impacting event.

- **RTO** – Recovery time objective, or how fast a restore to a prior point in time can complete.
