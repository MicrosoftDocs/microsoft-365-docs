---
title: "Troubleshoot Windows 365 Business Cloud PCs"
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
description: Learn how to buy Windows 365 Business for your organization, and help users start using their Cloud PCs.
ms.date: 08/13/2021
---

# Troubleshoot Windows 365 Business Cloud PC "Setup failed" errors

If your users get the “Setup failed” error after you assign them a Cloud PC, use the steps in this article to resolve the issue.

> [!IMPORTANT]
> You must be a Global admin to do most of the tasks described in this article. If other admin roles can be used for a specific procedure, they are noted before the procedure. If you don’t have permission to log in to or access parts of the Azure portal, contact your IT admin. For more information about Azure rules, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference). To learn more about the Azure portal, see [Azure portal overview](/azure/azure-portal/azure-portal-overview).

## Step 1. Verify Azure AD device settings

Make sure **Users may join devices to Azure AD** is set to **All**.

1. Sign in to the Microsoft Azure portal at [https://portal.azure.com/](https://go.microsoft.com/fwlink/p/?linkid=516942).
2. Under **Manage Azure Active Directory**, select **View**.
3. In the left nav, under **Manage**, select **Devices**, then select **Device settings**.
4. If **Users may join devices to Azure AD** isn't set to **All**, select **All**, then select **Save**.
5. Go to [Step 2. Verify that the CloudPCBRT system account is active](#step-2-verify-that-the-cloudpcbrt-system-account-is-active).

## Step 2. Verify that the CloudPCBRT system account is active

The first time a Windows 365 license is assigned in your organization, a system account called "CloudPCBPRT" is automatically created in Azure AD. Do not delete this account. If the system account is deleted, the setup will fail. This system account ensures a smooth setup process and doesn't have any write capabilities or access to your organization beyond the scoped service capabilities of Windows 365 Business. If you delete this system account, you must open a new support request to have it restored.

To make sure the CloudPCBRT system account is active in Azure AD, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Users**.
3. In the search box, type **CloudPCBRT**, then press **Enter**.
4. If the CloudPCBRT system account is present, go to [Step 3. Verify that MFA is turned off for the CloudPCBRT system account](#step-3-verify-that-mfa-is-turned-off-for-the-cloudpcbrt-system-account).
5. If the CloudPCBRT system account is missing, in the left nav, select **New support request** to open a support ticket. After the support ticket is closed, go directly to [Step 5. Reset your Cloud PCs](#step-5-reset-your-cloud-pcs).

## Step 3. Verify that MFA is turned off for the CloudPCBRT system account

It’s possible that your organization is configured so that Multi-Factor Authentication (MFA) is required to join devices with Azure AD. If so, you must turn off this setting. To make sure that **Require Multi-Factor Authentication to register or join devices with Azure AD** is set to **No**, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Devices**, then select **Device settings**.
3. If **Require Multi-factor Authentication to register or join devices with Azure AD** is set to **Yes**, select **No**, then select **Save**.

If you have an Azure AD Premium P1 license that includes conditional access, make sure there are no conditional access policies that require the CloudPCBRT system account to use MFA to join devices. If you don’t know whether you have a subscription that includes Azure AD Premium P1, see [What subscription do I have?](../admin-overview/what-subscription-do-i-have.md) To learn more about conditional access policies, see [What is Conditional Access in Azure Active Directory?](/azure/active-directory/conditional-access/overview) or [Manage users excluded from Conditional Access policies](/azure/active-directory/governance/conditional-access-exclusion). To check for conditional access policies, use the following steps.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2169290" target="_blank">Conditional Access Policies</a> page.
2. If there aren’t any policies listed, continue to [Step 4. Make sure the MDM authority configuration is set up correctly](#step-4-make-sure-mdm-authority-configuration-is-set-up-correctly).
3. If any policies are listed on the page, select a policy name.
4. In the **Access controls** section, under **Grant**, if it says "0 controls selected", return to the policies list and select the next policy. Otherwise, continue to step 5.
5. In the **Access controls** section, under **Grant**, if it says more than one control is selected, select the ***n* controls selected** link.
6. In the right pane, if **Require multi-factor authentication** is selected, clear the check box, then select the **Select** button.
7. Repeat steps 3 through 6 until you have removed MFA for all conditional access policies.
8. Go to [Step 4. Make sure MDM authority configuration is set up correctly](#step-4-make-sure-mdm-authority-configuration-is-set-up-correctly).

## Step 4. Make sure MDM authority configuration is set up correctly

If you made changes based on Steps 1-3 earlier in this article, it’s possible that the root cause is now resolved. To verify that the issue is fixed, go to [Step 5. Reset your Cloud PCs](#step-5-reset-your-cloud-pcs).

If you didn’t make any changes for Steps 1-3, it’s possible that the provisioning failure is caused by the MDM authority configuration in your environment. If so, you have two paths to follow, depending on whether you plan to use Microsoft Intune to manage the Cloud PCs.

- If you use or plan to use Microsoft Intune for your Cloud PCs, follow the steps in [Path A: Make sure the Mobility (MDM and MAM) settings are correctly configured](#path-a-use-microsoft-intune-to-manage-your-cloud-pcs).
- If you don’t plan to use Microsoft Intune to manage your Cloud PCs, follow steps in [Path B: Turn off automatic MDM enrollment](#path-b-turn-off-automatic-mdm-enrollment).

### Path A. Use Microsoft Intune to manage your Cloud PCs

If you already use Microsoft Intune, or plan to use it to manage your Windows 365 Cloud PCs, make sure that your **Mobility (MDM and MAM)** settings in Azure AD are correctly configured.

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, then select **Microsoft Intune**.
3. On the **Configure** page, next to **MDM user scope**, select **Some** or **All**, then select **Save**.
4. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, select **Microsoft Intune Enrollment**, then repeat step 3.

You also must assign an Intune license to the CloudPCBPRT system account and to any other users who are assigned a Cloud PC.

> [!IMPORTANT]
> To assign licenses, you must be a Global or Licensing admin, or have a role with licensing permissions.

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/p/?linkid=2169290), select **Users** > **All Users**.
2. In the **All users** list, select a user.
3. On the user **Profile** page, select **Licenses**.
4. On the **Licenses** page, select **Assignments**.
5. Find **Intune**, select the checkbox, then select **Save**. The user account now has the permissions needed to use the service and enroll devices.
6. Go to [Step 5: Reset your Cloud PCs](#step-5-reset-your-cloud-pcs).

### Path B. Turn off automatic MDM enrollment

If you don’t plan to use Microsoft Intune for your Cloud PC management, you must turn off automatic MDM enrollment.

> [!IMPORTANT]
> If you’re not the MDM administrator, don’t use either of the following procedures without first consulting with your IT admin. Only follow these procedures if Cloud PCs aren’t being provisioned. Any configuration changes could impact your management environment. If you need help, [contact Intune support](/mem/get-support).

#### Option 1. Use the Azure AD portal to turn off automatic Intune enrollment

1. In the Azure portal, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=516942" target="_blank">Azure Active Directory Overview</a> page.
2. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, then select **Microsoft Intune**.
3. On the **Configure** page, next to MDM user scope, select **None**, then select **Save**.
4. In the left nav, under **Manage**, select **Mobility (MDM and MAM)**, select **Microsoft Intune Enrollment**, then repeat step 3.
5. Go to [Step 5: Reset your Cloud PCs](#step-5-reset-your-cloud-pcs).

#### Option 2: Use Microsoft Graph to turn off automatic Intune enrollment

If you can’t use the Microsoft Azure admin portal to configure **Mobility (MDM and MAM)** as instructed in [Option 1. Use the Azure AD portal to turn off automatic Intune enrollment](#option-1-use-the-azure-ad-portal-to-turn-off-automatic-intune-enrollment), you see a warning that says, "Automatic MDM enrollment is available only for Azure AD Premium subscribers." In this case, you must use Microsoft Graph to turn off MDM policies in your environment.

1. Go to Graph Explorer at <a href="https://go.microsoft.com/fwlink/p/?linkid=2170005">https://developer.microsoft.com/graph/graph-explorer</a>.
2. Under **Graph Explorer**, select **Sign in to Graph Explorer**, and sign in with your Global admin account.
3. If you see the **Permissions requested** dialog box, select **Accept**.
4. Next to your account name, select the **More actions** button (the three dots), then select **Select permissions**.
5. In the **Permissions** pane, expand **Policy**, select **Policy.Read.All** and **Policy.ReadWrite.MobilityManagement**, then select **Consent**.
6. If you see the **Permissions requested** dialog box, select the **Consent on behalf of your organization** check box, then select **Accept**.
7. Expand **Policy** again, verify that the **Status** column for **Policy.Read.All** and **Policy.ReadWrite.MobilityManagement** says **Consented**, then close the **Permissions** pane.
8. From the first drop-down list, select **GET**.
9. In the text box, enter the following string, then select **Run query**:  
    `https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies`  
    This query retrieves the list of device management policies in your organization.
    The results in the **Response preview** pane should look similar to the following code snippet:

    ```
    {
        "@odata.context": "https://graph.microsoft.com/beta/$metadata#mobilityManagementPolicies",
        "value": [
            {
                "id": "0000000a-0000-0000-c000-000000000000",
                "appliesTo": "all",
                "complianceUrl": null,
                "description": "Device Management Policy for Microsoft Intune",
                "discoveryUrl": null,
                "displayName": "Microsoft Intune",
                "isValid": true,
                "termsOfUseUrl": null
            },
            {
                "id": "d4ebce55-015a-49b5-a083-c84d1797ae8c",
                "appliesTo": "none",
                "complianceUrl": "https://portal.manage.microsoft.com/?portalAction",
                "description": "Device Management Policy for Microsoft Intune Enrollment",
                "discoveryUrl": "https://enrollment.manage.microsoft.com/enrollmentserver/discovery.svc",
                "displayName": "Microsoft Intune Enrollment",
                "isValid": true,
                "termsOfUseUrl": "https://portal.manage.microsoft.com/TermsofUse.aspx"
            }
        ]
    }
    ```
10. If the `"appliesTo"` value is **none** for all listed policies, go to [Step 5: Reset your Cloud PCs](#step-5-reset-your-cloud-pcs). Otherwise, continue to step 11.
11. In the first drop-down list, select **PATCH**.
12. In the text box, enter the following string:  
    `https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/0000000a-0000-0000-c000-000000000000`
13. In the **Request body** section, enter the following code snippet, then select **Run query**:
    ```
    {
        "appliesTo": "none"
    }
    ```
14. In text box, enter the following string:  
    `https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/d4ebce55-015a-49b5-a083-c84d1797ae8c`
15. In the **Request body** section, leave the code snippet you entered in step 11, then select **Run query**.
16. In the first drop-down list, select **GET**.
17. Clear any text in the **Request body** section.
18. In the text box, enter the following string, then select **Run query**:  
    `https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies`

    The results in the **Response view** pane should look similar to the following code snippet.
    ```
    {
        "@odata.context": "https://graph.microsoft.com/beta/$metadata#mobilityManagementPolicies",
        "value": [
            {
                "id": "0000000a-0000-0000-c000-000000000000",
                "appliesTo": "none",
                "complianceUrl": "https://portal.manage.microsoft.com/?portalAction=Compliance",
                "description": "Device Management Policy for Microsoft Intune",
                "discoveryUrl": "https://enrollment.manage.microsoft.com/enrollmentserver/discovery.svc”,
                "displayName": "Microsoft Intune",
                "isValid": true,
                "termsOfUseUrl": "https://portal.manage.microsoft.com/TermsofUse.aspx"
            },
            {
                "id": "d4ebce55-015a-49b5-a083-c84d1797ae8c",
                "appliesTo": "none",
                "complianceUrl": "https://portal.manage.microsoft.com/?portalAction",
                "description": "Device Management Policy for Microsoft Intune Enrollment",
                "discoveryUrl": "https://enrollment.manage.microsoft.com/enrollmentserver/discovery.svc",
                "displayName": "Microsoft Intune Enrollment",
                "isValid": true,
                "termsOfUseUrl": "https://portal.manage.microsoft.com/TermsofUse.aspx"
            }
        ]
    } 
    ```

    The `"appliesTo"` values for all policies are now set to **none**. This query verifies that the scope has successfully changed for device management policies in your organization.
19. Go to [Step 5: Reset your Cloud PCs](#step-5-reset-your-cloud-pcs).

## Step 5. Reset your Cloud PCs

After you complete the troubleshooting steps in this article, your users must restart their Cloud PC setup. Tell all Cloud PC users who saw the “Setup failed” error to use the following steps to reset their Cloud PCs.

1. Browse to [https://windows365.microsoft.com](https://windows365.microsoft.com).
2. On the Windows 365 home page, select the gear icon for any Cloud PC that has the “Setup failed” status, then select **Reset**. This action restarts the provisioning process.
3. After the reset, if the “Setup failed” error still displays, and you skipped [Step 4. Make sure MDM authority configuration is set up correctly](#step-4-make-sure-mdm-authority-configuration-is-set-up-correctly), complete that step, then reset the CloudPC again. Otherwise, in the left nav, select **New support request** to open a support ticket.
