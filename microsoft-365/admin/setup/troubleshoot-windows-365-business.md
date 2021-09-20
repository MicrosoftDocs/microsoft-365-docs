---
title: "Troubleshoot Windows 365 Business Cloud PC setup issues"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
monikerRange: 'o365-worldwide'
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
description: Learn how to troubleshoot setup issues for Windows 365 Business Cloud PCs.
ms.date: 08/13/2021
---

# Troubleshoot Windows 365 Business Cloud PC setup issues

If your users get the “Setup failed” error, or if setup takes longer than 90 minutes after you assign them a license, use the steps in this article to resolve the issue.

> [!IMPORTANT]
> You must be a Global admin to do most of the tasks described in this article. If other admin roles can be used for a specific procedure, they are noted before the procedure. If you don’t have permission to log in to or access parts of the Azure portal, contact your IT admin. For more information about Azure rules, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference). To learn more about the Azure portal, see [Azure portal overview](/azure/azure-portal/azure-portal-overview).

## Step 1. Verify Azure AD device settings

Make sure **Users may join devices to Azure AD** is set to **All**.

1. Sign in to the Microsoft Azure portal at [https://portal.azure.com/](https://go.microsoft.com/fwlink/p/?linkid=516942).
2. Under **Manage Azure Active Directory**, select **View**.
3. In the left nav, under **Manage**, select **Devices**, then select **Device settings**.
4. If **Users may join devices to Azure AD** isn't set to **All**, select **All**, then select **Save**.
5. Go to [Step 2. Verify that the Windows 365 BPRT Permanent User system account is active](#step-2-verify-that-the-windows-365-bprt-permanent-user-system-account-is-active).

Make sure that **Maximum number of devices per user** is high enough so that the Cloud PCs you are trying to setup can be assigned to the designated users.

1. Sign in to the Microsoft Azure portal at https://portal.azure.com/.
2. Under **Manage Azure Active Directory**, select **View**.
3. In the left nav, under **Manage**, select **Devices**, then select **Device settings**.
4. For **Maximum number of devices per user**, enter the value.
5. If you made any changes, select **Save**.

## Step 2. Verify that the Windows 365 BPRT Permanent User system account is active

The first time a Windows 365 license is assigned in your organization, a system account called **Windows 365 BPRT Permanent User** is automatically created in Azure AD. 
Do not delete this account or make any changes to it (such as changing the name or UPN). If the system account is modified or deleted, the setup will fail. This system account ensures a smooth setup process and doesn't have any write capabilities or access to your organization beyond the scoped service capabilities of Windows 365 Business. If you delete or modify this system account you must login to windows365.microsoft.com with any account that has a Windows 365 Business license and wait 12 hours for the token to refresh.

To make sure the Windows 365 BPRT Permanent User system account is active in Azure AD, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Users**.
3. In the search box, type **Windows 365 BPRT Permanent User**, then press **Enter**.
4. If the Windows 365 BPRT Permanent User system account is present, go to [Step 3. Verify that device-based MFA is turned off](#step-3-verify-that-device-based-mfa-is-turned-off).
5. If the Windows 365 BPRT Permanent User system account is missing or if any changes were made to it (for example, password reset, property change, assign or un-assign a license, and so on), please login to windows365.microsoft.com with any account that has a Windows 365 Business license assigned after 12 hours. A new Windows 365 BPRT Permanent User will be generated. After the token has regenerated, go directly to [Step 6. Reset your Cloud PCs](#step-6-reset-your-cloud-pcs).

## Step 3. Verify that device-based MFA is turned off

It’s possible that your organization is configured so that Multi-Factor Authentication (MFA) is required to join devices with Azure AD. If so, you must turn off this setting. To make sure that **Require Multi-Factor Authentication to register or join devices with Azure AD** is set to **No**, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Devices**, then select **Device settings**.
3. If **Require Multi-factor Authentication to register or join devices with Azure AD** is set to **Yes**, select **No**, then select **Save**.
4. Go to [Step 4. Make sure that MFA doesn't block setup](#step-4-make-sure-that-mfa-doesnt-block-setup).

## Step 4. Make sure that MFA doesn't block setup

If you don’t have an Azure AD Premium P1 license that includes conditional access, go to [Step 5. Make sure MDM authority configuration is set up correctly](#step-5-make-sure-mdm-authority-configuration-is-set-up-correctly). If you don’t know whether your subscription includes Azure AD Premium P1, see [What subscription do I have?](../admin-overview/what-subscription-do-i-have.md)

If you have an Azure AD Premium P1 license that includes conditional access, select one user to be the first user to sign in to the Windows 365 home page at [https://windows365.microsoft.com](https://windows365.microsoft.com) after you complete the remaining steps in this article. Make sure there are no MFA conditional access policies for that first user. MFA must remain turned off during any setup attempts. After all Cloud PCs are successfully set up across your organization, you may turn on MFA for this user. To learn more about conditional access policies, see [What is Conditional Access in Azure Active Directory?](/azure/active-directory/conditional-access/overview).

To check for conditional access policies, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2169290" target="_blank">Conditional Access Policies</a> page.
2. If there aren’t any policies listed, continue to [Step 5. Make sure MDM authority configuration is set up correctly](#step-5-make-sure-mdm-authority-configuration-is-set-up-correctly).
3. If any policies are listed on the page, select a policy name.
4. In the **Access controls** section, under **Grant**, if it says "0 controls selected", return to the policies list and select the next policy. Otherwise, continue to step 5.
5. In the **Access controls** section, under **Grant**, if it says more than one control is selected, select the ***n* controls selected** link.
6. In the right pane, if **Require multi-factor authentication** is selected, clear the check box, then select the **Select** button.
   > [!TIP]
   > Alternatively, you can exclude the first user from the policy. To learn how to do this, see [Manage users excluded from Conditional Access policies](/azure/active-directory/governance/conditional-access-exclusion).
7. Repeat steps 3 through 6 until you have removed MFA for all conditional access policies.
8. Go to [Step 5. Make sure MDM authority configuration is set up correctly](#step-5-make-sure-mdm-authority-configuration-is-set-up-correctly).

## Step 5. Make sure MDM authority configuration is set up correctly

If you made changes based on Steps 1-4 earlier in this article, it’s possible that the root cause is now resolved. To verify that the issue is fixed, go to [Step 6. Reset your Cloud PCs](#step-6-reset-your-cloud-pcs).

If you didn’t make any changes for Steps 1-4, it’s possible that the setup failure is caused by the MDM authority configuration in your environment. If so, you have two paths to follow, depending on whether you plan to use Microsoft Intune to manage the Cloud PCs.

- If you use or plan to use Microsoft Intune for your Cloud PCs, follow the steps in [Path A: Make sure the Mobility (MDM and MAM) settings are correctly configured](#path-a-use-microsoft-intune-to-manage-your-cloud-pcs).
- If you don’t plan to use Microsoft Intune to manage your Cloud PCs, follow steps in [Path B: Turn off automatic MDM enrollment](#path-b-turn-off-automatic-mdm-enrollment).

### Path A. Use Microsoft Intune to manage your Cloud PCs

If you already use Microsoft Intune, or plan to use it to manage your Windows 365 Cloud PCs, make sure that your **Mobility (MDM and MAM)** settings in Azure AD are correctly configured.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, then select **Microsoft Intune**.
3. On the **Configure** page, next to **MDM user scope**, select **Some** or **All**, then select **Save**.
4. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, select **Microsoft Intune Enrollment**, then repeat step 3.

Users who are assigned a Cloud PC must have an Intune license assigned to them. The CloudPCBPRT system account does not need to be assigned an Intune license.

> [!IMPORTANT]
> To assign licenses, you must be a Global or Licensing admin, or have a role with licensing permissions.

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/p/?linkid=2169290), select **Users** > **All Users**.
2. In the **All users** list, select a user.
3. On the user **Profile** page, select **Licenses**.
4. On the **Licenses** page, select **Assignments**.
5. Find **Intune**, select the checkbox, then select **Save**. The user account now has the permissions needed to use the service and enroll devices.
6. Go to [Step 6. Reset your Cloud PCs](#step-6-reset-your-cloud-pcs).

### Path B. Turn off automatic MDM enrollment

If you don’t plan to use Microsoft Intune for your Cloud PC management, you must turn off automatic MDM enrollment.

> [!IMPORTANT]
> If you’re not the MDM administrator, don’t use either of the following procedures without first consulting with your IT admin. Only follow these procedures if Cloud PCs aren’t being set up. Any configuration changes could impact your management environment. If you need help, [contact Intune support](/mem/get-support).

#### Use the Azure AD portal to turn off automatic Intune enrollment

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, then select **Microsoft Intune**.
3. On the **Configure** page, you will see one of two things. If you have an Azure AD Premium subscription, select **None** next to MDM user scope, then select **Save**. If you do not have an Azure AD Premium subscription, select **Disable**.
4. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, select **Microsoft Intune Enrollment**, then repeat step 3.
5. Go to [Step 6. Reset your Cloud PCs](#step-6-reset-your-cloud-pcs).


## Step 6. Reset your Cloud PCs

After you complete the troubleshooting steps in this article, your users must restart their Cloud PC setup. 

If you just completed [Step 3. Verify that device-based MFA is turned off](#step-3-verify-that-device-based-mfa-is-turned-off), wait at least ten minutes for the changes to take effect before you continue. Make sure that the user you excluded from MFA is the first users to sign in to the [Windows 365 home page](https://windows365.microsoft.com).

Tell all Cloud PC users who saw the “Setup failed” error to use the following steps to reset their Cloud PCs.

1. On the [Windows 365 home page](https://windows365.microsoft.com), select the gear icon for any Cloud PC that has the “Setup failed” status, then select **Reset**. This action restarts the setup process.
2. After the reset, if the “Setup failed” error still displays, and you skipped [Step 5. Make sure MDM authority configuration is set up correctly](#step-5-make-sure-mdm-authority-configuration-is-set-up-correctly), complete that step, then reset the CloudPC again. Otherwise, in the left nav, select **New support request** to open a support ticket.
