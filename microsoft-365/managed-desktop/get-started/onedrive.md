---
title: Microsoft OneDrive
description: How Microsoft Managed Desktop sets up OneDrive for enrolled devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation, apps, line-of-business apps, LOB apps
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Microsoft OneDrive

Microsoft Managed Desktop uses [OneDrive for Business](/onedrive/plan-onedrive-enterprise) as a cloud storage service for all Microsoft Managed Desktop devices to ensure that the devices are as stateless as possible. User will be able to find their files no matter which device they sign into. For example, if you replace a Microsoft Managed Desktop device with a new one, files will automatically sync to the new device.

We automatically configure these settings by default on Microsoft Managed Devices:

- OneDrive is silently configured with the user account and automatically signed in (without user interaction) to the user account that was used to sign into Windows. For more information, see [Silently configure user accounts - OneDrive](/onedrive/use-silent-account-configuration)

- The Files-On-Demand feature is enabled so that users can access files from their cloud storage in OneDrive without having to use disk space unnecessarily. For more information, see [Save disk space with OneDrive Files On-Demand for Windows 10](https://support.microsoft.com/office/save-disk-space-with-onedrive-files-on-demand-for-windows-10-0e6860d3-d9f3-4971-b321-7092438fb38e).

- The Known Folder Move feature is enabled silently to back up users’ data in the cloud, which gives them access to their files from any device. For more information, see [Back up your Documents, Pictures, and Desktop folders with OneDrive](https://support.microsoft.com/office/back-up-your-documents-pictures-and-desktop-folders-with-onedrive-d61a7930-a6fb-4b95-b28a-6552e77c3057).

- Users cannot disable the Known Folder Move feature or change the location of known folders to ensure a consistent experience across Microsoft Managed Desktop devices.

## User experience

When Microsoft Managed Desktop users receive a new device, they go through a first-run experience by entering their Azure credentials while setting up the device. After this process is completed, they can access their desktop and have the OneDrive experience.

1. The system tells users that OneDrive has been configured and that they have been automatically signed into OneDrive.

:::image type="content" source="media/onedrive-sync.png" alt-text="Notification reading you are now syncing OneDrive and you can edit files in OneDrive. click here to view your files":::

2. The system tells users that OneDrive Known Folder Move has been configured for them.

:::image type="content" source="media/onedrive-folders.png" alt-text="Notification reading Your IT department backed up your important folders. The folders are now backed up to OneDrive and available from other devices":::

3. To prevent duplicate icons on the desktop when devices are being reset or reimaged, the system automatically removes Microsoft Edge and Microsoft Teams icons from the OneDrive sync, as shown in this view in File Explorer.

:::image type="content" source="media/onedrive-teams.png" alt-text="File Explorer showing Teams and Edge listings with cleared check boxes and hover text reading Excluded from sync.":::


## OneDrive sync restrictions

If you need to restrict OneDrive sync, we recommend that you control access with an Azure Active Directory conditional access policy. For more information, see
[Enable conditional access support in the OneDrive sync app](/onedrive/enable-conditional-access).

If you can't use an Azure AD conditional access policy in your organization, your IT Admin should follow these steps:

1. If you don't already know it, look up your tenant ID, as described in [Find your Microsoft 365 tenant ID](/onedrive/find-your-office-365-tenant-id).
2. Sign in to the OneDrive admin center, and then select **Sync** in the left pane. Select the **Allow syncing only on PCs joined to specific domains** check box, and then add the tenant ID to the list of domains. For more information, see [Allow syncing only on computers joined to specific domains](/onedrive/allow-syncing-only-on-specific-domains).

> [!NOTE]
> This guidance applies only to tenants in Microsoft Managed Desktop. There are other settings in use that aren't discussed in this article.