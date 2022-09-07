---
title: "Enable domain-joined Windows 10 devices to be managed by Microsoft 365 for business"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: business-premium
ms.localizationpriority: high
ms.date: 07/19/2022
ms.collection:
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Learn how to enable Microsoft 365 to protect local Active-Directory-joined Windows 10 devices in just a few steps."
---

# Manage Windows devices with Microsoft 365 Business Premium

If your organization uses Windows Server Active Directory on-premises, you can set up Microsoft 365 Business Premium to protect your Windows devices, while still maintaining access to on-premises resources that require local authentication.

To set this up, implement **Hybrid Azure AD joined devices**. These devices are joined to both your on-premises Active Directory and your Azure Active Directory.

> [!NOTE]
> Microsoft Defender for Business is rolling out to Microsoft 365 Business Premium customers, beginning March 1, 2022. This offering provides additional security features for devices. [Learn more about Defender for Business](../security/defender-business/mdb-overview.md).

## Watch: Configure Hybrid Azure Active Directory join

This video describes the steps for how to set this up for the most common scenario, which is also detailed in the steps that follow.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3C9hO]
  
## Before you begin

- Synchronize users to Azure AD with Azure AD Connect.
- Complete Azure AD Connect Organizational Unit (OU) sync.
- Make sure all the domain users you sync have licenses for Microsoft 365 Business Premium.

See [Synchronize domain users to Microsoft 365](../admin/setup/manage-domain-users.md) for the steps.

## Possible device actions and statuses
  
![In the Device actions list, you can see the Devices states.](./../media/a621c47e-45d9-4e1a-beb9-c03254d40c1d.png)

Devices and their associated actions can have the following states:
  
|**Status**|**Description**|
|:-----|:-----|
|Managed by Intune  |Managed by Microsoft 365 Business Premium.  |
|Retire pending  |Microsoft 365 Business Premium is getting ready to remove company data from the device.  |
|Retire in progress  |Microsoft 365 Business Premium is currently removing company data from the device.  |
|Retire failed  | Remove company data action failed.  |
|Retire canceled  |Retire action was canceled.  |
|Wipe pending  |Waiting for factory reset to start.  |
|Wipe in progress  |Factory reset has been issued.  |
|Wipe failed  |Couldn't do factory reset.  |
|Wipe canceled  |Factory wipe was canceled.  |
|Unhealthy  |An action is pending (or in progress), but the device hasn't checked in for 30+ days.  |
|Delete pending  |Delete action is pending.  |
|Discovered  |Microsoft 365 Business Premium has detected the device.  |

## 1. Verify MDM Authority in Intune

Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com/#blade/Microsoft_Intune_Enrollment/EnrollmentMenu/overview)) and select **Device enrollment**, then on the **Overview** page, make sure **MDM authority** is **Intune**.

- If **MDM authority** is **None**, click the **MDM authority** to set it to **Intune**.
- If **MDM authority** is **Microsoft Office 365**,go to **Devices** > **Enroll devices** and use the **Add MDM authority** dialog on the right to add **Intune MDM** authority (the **Add MDM Authority** dialog is only available if the **MDM Authority** is set to Microsoft Office 365).

## 2. Verify Azure AD is enabled for joining computers

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>  and select **Azure Active Directory** (select Show all if Azure Active Directory is not visible) in the **Admin centers** list. 

2. In the **Azure Active Directory admin center**, go to **Azure Active Directory** , choose **Devices** and then **Device settings**.

3. Verify **Users may join devices to Azure AD** is enabled 

    1. To enable all users, set to **All**.

    2. To enable specific users, set to **Selected** to enable a specific group of users.

        - Add the desired domain users synced in Azure AD to a [security group](../admin/create-groups/create-groups.md).

        - Choose **Select groups** to enable MDM user scope for that security group.

## 3. Verify Azure AD is enabled for MDM

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>  and select **Endpoint Management** (select **Show all** if **Endpoint Manager** is not visible)

2. In the **Microsoft Endpoint Manager admin center**, go to **Devices** > **Windows** > **Windows Enrollment** > **Automatic Enrollment**.

3. Verify MDM user scope is enabled.

    1. To enroll all computers, set to **All** to automatically enroll all user computers that are joined to Azure AD and new computers  when the users add a work account to Windows.
  
    2. Set to **Some** to enroll the computers of a specific group of users.
  
        -  Add the desired domain users synced in Azure AD to a [security group](/admin/create-groups/create-groups.md).
  
       -  Choose **Select groups** to enable MDM user scope for that security group.

## 4. Create the required resources 

Performing the required tasks to [configure hybrid Azure AD join](/azure/active-directory/devices/hybrid-azuread-join-managed-domains#configure-hybrid-azure-ad-join) has been simplified through the use of the [Initialize-SecMgmtHybirdDeviceEnrollment](https://github.com/microsoft/secmgmt-open-powershell/blob/master/docs/help/Initialize-SecMgmtHybirdDeviceEnrollment.md) cmdlet found in the [SecMgmt](https://www.powershellgallery.com/packages/SecMgmt) PowerShell module. When you invoke this cmdlet it will create and configure the required service connection point and group policy.

You can install this module by invoking the following from an instance of PowerShell:

```powershell
Install-Module SecMgmt
```

> [!IMPORTANT]
> Install this module on the Windows Server running Azure AD Connect.

To create the required service connection point and group policy, you will invoke the  [Initialize-SecMgmtHybirdDeviceEnrollment](https://github.com/microsoft/secmgmt-open-powershell/blob/master/docs/help/Initialize-SecMgmtHybirdDeviceEnrollment.md) cmdlet. You will need your Microsoft 365 Business Premium global admin credentials when performing this task. When you are ready to create the resources, invoke the following:

```powershell
PS C:\> Connect-SecMgmtAccount
PS C:\> Initialize-SecMgmtHybirdDeviceEnrollment -GroupPolicyDisplayName 'Device Management'
```

The first command will establish a connection with the Microsoft cloud, and when you are prompted, specify your Microsoft 365 Business Premium global admin credentials.

## 5. Link the group policy

1. In the Group Policy Management Console (GPMC), right-click on the location where you want to link the policy and select *Link an existing GPO...* from the context menu.

2. Select the policy created in the above step, then click **OK**.

## Get the latest administrative templates

If you do not see the policy **Enable automatic MDM enrollment using default Azure AD credentials**, it may be because you don’t have the ADMX installed for Windows 10, version 1803, or later. To fix the issue, follow these steps (Note: the latest MDM.admx is backwards compatible):

1. Download: [Administrative Templates (.admx) for Windows 10 October 2020 Update (20H2)](https://www.microsoft.com/download/102157).

2. Install the package on a Domain Controller.

3. Navigate, depending on the Administrative Templates version to the folder: **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 October 2020 Update (20H2)**.

4. Rename the **Policy Definitions** folder in the above path to **PolicyDefinitions**.

5. Copy the **PolicyDefinitions** folder to your SYSVOL share, by default located at `C:\Windows\SYSVOL\domain\Policies`.

   If you plan to use a central policy store for your entire domain, add the contents of PolicyDefinitions there.

6. In case you have several Domain Controllers, wait for SYSVOL to replicate for the policies to be available. This procedure will work for any future version of the Administrative Templates as well.

At this point you should be able to see the policy **Enable automatic MDM enrollment using default Azure AD credentials** available.

## Related content

- [Synchronize domain users to Microsoft 365](../admin/setup/manage-domain-users.md)

- [Create a group in the admin center](../admin/create-groups/create-groups.md)

- [Tutorial: Configure hybrid Azure Active Directory join for managed domains](/azure/active-directory/devices/hybrid-azuread-join-managed-domains)

- [Set up self-service passwords](../admin/add-users/let-users-reset-passwords.md)

- [Set up self-service group management](/azure/active-directory/enterprise-users/groups-self-service-management)

- [Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)

## Next objective

[Prepare for Office client deployment](m365bp-prepare-for-office-client-deployment.md)