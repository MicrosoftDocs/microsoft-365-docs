---
title: "Enable domain-joined Windows 10 devices to be managed by Microsoft 365 for business"
f1.keywords:
- CSH
ms.author: efrene
author: efrene
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

## 4. Create the required resources 

Performing the required tasks to [configure hybrid Azure AD join](/azure/active-directory/devices/hybrid-azuread-join-managed-domains#configure-hybrid-azure-ad-join) has been simplified through the use of the [Initialize-SecMgmtHybirdDeviceEnrollment](https://github.com/microsoft/secmgmt-open-powershell/blob/master/docs/help/Initialize-SecMgmtHybirdDeviceEnrollment.md) cmdlet found in the [SecMgmt](https://www.powershellgallery.com/packages/SecMgmt) PowerShell module. When you invoke this cmdlet it will create and configure the required service connection point and group policy.

You can install this module by invoking the following from an instance of PowerShell:

```powershell
Install-Module SecMgmt
```

> [!IMPORTANT]
> It is recommended that you install this module on the Windows Server running Azure AD Connect.

To create the required service connection point and group policy, you will invoke the  [Initialize-SecMgmtHybirdDeviceEnrollment](https://github.com/microsoft/secmgmt-open-powershell/blob/master/docs/help/Initialize-SecMgmtHybirdDeviceEnrollment.md) cmdlet. You will need your Microsoft 365 Business Premium global admin credentials when performing this task. When you are ready to create the resources, invoke the following:

```powershell
PS C:\> Connect-SecMgmtAccount
PS C:\> Initialize-SecMgmtHybirdDeviceEnrollment -GroupPolicyDisplayName 'Device Management'
```

The first command will establish a connection with the Microsoft cloud, and when you are prompted, specify your Microsoft 365 Business Premium global admin credentials.

## 5. Link the Group Policy

1. In the Group Policy Management Console (GPMC), right-click on the location where you want to link the policy and select *Link an existing GPO...* from the context menu.
2. Select the policy created in the above step, then click **OK**.

## Get the latest Administrative Templates

If you do not see the policy **Enable automatic MDM enrollment using default Azure AD credentials**, it may be because you don’t have the ADMX installed for Windows 10, version 1803, or later. To fix the issue, follow these steps (Note: the latest MDM.admx is backwards compatible):

1.	Download: [Administrative Templates (.admx) for Windows 10 October 2020 Update (20H2)](https://www.microsoft.com/download/102157).
2.	Install the package on a Domain Controller.
3.	Navigate, depending on the Administrative Templates version to the folder: **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 October 2020 Update (20H2)**.
4.	Rename the **Policy Definitions** folder in the above path to **PolicyDefinitions**.
5.	Copy the **PolicyDefinitions** folder to your SYSVOL share, by default located at **C:\Windows\SYSVOL\domain\Policies**. 
    -	If you plan to use a central policy store for your entire domain, add the contents of PolicyDefinitions there.
6.	In case you have several Domain Controllers, wait for SYSVOL to replicate for the policies to be available. This procedure will work for any future version of the Administrative Templates as well.

At this point you should be able to see the policy **Enable automatic MDM enrollment using default Azure AD credentials** available.

## Related content

[Synchronize domain users to Microsoft 365](manage-domain-users.md) (article)
[Create a group in the admin center](../admin/create-groups/create-groups.md) (article)
[Tutorial: Configure hybrid Azure Active Directory join for managed domains](/azure/active-directory/devices/hybrid-azuread-join-managed-domains.md) (article)