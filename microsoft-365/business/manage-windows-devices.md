---
title: "Enable domain-joined Windows 10 devices to be managed by Microsoft 365 for business"
f1.keywords:
- CSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
description: "Learn how to enable Microsoft 365 to protect local Active-Directory-joined Windows 10 devices in just a few steps."
---

# Enable domain-joined Windows 10 devices to be managed by Microsoft 365 Business Premium

If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business Premium to protect your Windows 10 devices, while still maintaining access to on-premises resources that require local authentication.
To set up this protection, you can implement **Hybrid Azure AD joined devices**. These devices are joined to both your on-premises Active Directory and your Azure Active Directory.

This video describes the steps for how to set this up for the most common scenario, which is also detailed in the steps that follow.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3C9hO]
  

## Before you get started, make sure you complete these steps:
- Synchronize users to Azure AD with Azure AD Connect.
- Complete Azure AD Connect Organizational Unit (OU) sync.
- Make sure all the domain users you sync have licenses to Microsoft 365 Business Premium.

See [Synchronize domain users to Microsoft](manage-domain-users.md) for the steps.

## 1. Verify MDM Authority in Intune

Go to [Endpoint Manager](https://endpoint.microsoft.com/#blade/Microsoft_Intune_Enrollment/EnrollmentMenu/overview) and on the Microsoft Intune page, select **Device enrollment**, then on the **Overview** page, make sure **MDM authority** is **Intune**.

- If **MDM authority** is **None**, click the **MDM authority** to set it to **Intune**.
- If **MDM authority** is **Microsoft Office 365**,go to **Devices** > **Enroll devices** and use the **Add MDM authority** dialog on the right to add **Intune MDM** authority (the **Add MDM Authority** dialog is only available if the **MDM Authority** is set to Microsoft Office 365).

## 2. Verify Azure AD is enabled for joining computers

- Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>  and select **Azure Active Directory** (select Show all if Azure Active Directory is not visible) in the **Admin centers** list. 
- In the **Azure Active Directory admin center**, go to **Azure Active Directory** , choose **Devices** and then **Device settings**.
- Verify**Users may join devices to Azure AD** is enabled 
    1. To enable all users, set to **All**.
    2. To enable specific users, set to **Selected** to enable a specific group of users.
        - Add the desired domain users synced in Azure AD to a [security group](../admin/create-groups/create-groups.md).
        - Choose **Select groups** to enable MDM user scope for that security group.

## 3. Verify Azure AD is enabled for MDM

- Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>  and select select **Endpoint Managemen**t (select **Show all** if **Endpoint Manager** is not visible)
- In the **Microsoft Endpoint Manager admin center**, go to **Devices** > **Windows** > **Windows Enrollment** > **Automatic Enrollment**.
- Verify MDM user scope is enabled.

    1. To enroll all computers, set to **All** to automatically enroll all user computers that are joined to Azure AD and new computers  when the users add a work account to Windows.
    2. Set to **Some** to enroll the computers of a specific group of users.
        -  Add the desired domain users synced in Azure AD to a [security group](../admin/create-groups/create-groups.md).
        -  Choose **Select groups** to enable MDM user scope for that security group.

## 4. Set up Service connection point (SCP)

These steps are simplified from [configure hybrid azure AD join](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-managed-domains#configure-hybrid-azure-ad-join). To complete the steps you need to use Azure AD Connect and your Microsoft 365 Business Premium global admin and Active Directory admin passwords.

1.	Start Azure AD Connect, and then select **Configure**.
2.	On the **Additional tasks**  page, select **Configure device options**, and then select **Next**.
3.	On the **Overview** page, select **Next**.
4.	On the **Connect to Azure AD** page, enter the credentials of a global administrator for Microsoft 365 Business Premium.
5.	On the **Device options** page, select **Configure Hybrid Azure AD join**, and then select **Next**.
6.	On the **SCP** page, for each forest where you want Azure AD Connect to configure the SCP, complete the following steps, and then select **Next**:
    - Check the box beside the forest name. The forest should be your AD domain name.
    - Under the **Authentication Service** column, open the dropdown and select matching domain name (there should only be one only option).
    - Select **Add** to enter the domain administrator credentials.  
7.	On the **Device operating systems** page, select Windows 10 or later domain-joined devices only.
8.	On the **Ready to configure** page, select **Configure**.
9.	On the **Configuration complete** page, select **Exit**.


## 5. Create a GPO for Intune Enrollment – ADMX method

Use .ADMX template file.

1.	Log on to AD server, search and open **Server Manager** > **Tools** > **Group Policy Management**.
2.	Select your domain name under **Domains** and right-click **Group Policy Objects** to select **New**.
3.	Give the new GPO an name, for example “*Cloud_Enrollment*” and then select **OK**.
4.	Right-click the new GPO under **Group Policy Objects** and select **Edit**.
5.	In the **Group Policy Management Editor**, go to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **MDM**.
6. Right-click **Enable automatic MDM enrollment using default Azure AD credentials** and then select **Enabled** > **OK**. Close the editor window.

> [!IMPORTANT]
> If you do not see the policy **Enable automatic MDM enrollment using default Azure AD credentials**, see [Get the latest Administrative Templates](#get-the-latest-administrative-templates).

## 6. Deploy the Group Policy

1.	In the Server Manager, under **Domains** > Group Policy objects, select the GPO from Step 3 above, for example “Cloud_Enrollment”.
2.	Select the **Scope** tab for your GPO.
3.	In the GPO’s Scope tab, right-click the link to the domain under **Links**.
4.	Select **Enforced** to deploy the GPO and then **OK** in the confirmation screen.

## Get the latest Administrative Templates

If you do not see the policy **Enable automatic MDM enrollment using default Azure AD credentials**, it may be because you don’t have the ADMX installed for Windows 10, version 1803, version 1809, or version 1903. To fix the issue, follow these steps (Note: the latest MDM.admx is backwards compatible):

1.	Download: [Administrative Templates (.admx) for Windows 10 May 2019 Update (1903)](https://www.microsoft.com/download/details.aspx?id=58495&WT.mc_id=rss_alldownloads_all).
2.	Install the package on the Primary Domain Controller (PDC).
3.	Navigate, depending on the version to the folder: **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 May 2019 Update (1903) v3**.
4.	Rename the **Policy Definitions** folder in the above path to **PolicyDefinitions**.
5.	Copy **PolicyDefinitions** folder to **C:\Windows\SYSVOL\domain\Policies**. 
    -	If you plan to use a central policy store for your entire domain, add the contents of PolicyDefinitions there.
6.	Restart the Primary Domain Controller for the policy to be available. This procedure will work for any future version as well.

At this point you should be able to see the policy **Enable automatic MDM enrollment using default Azure AD credentials** available.
