---
title: Configure Conditional Access in Microsoft Defender for Endpoint
description: Learn about steps that you need to do in Intune, Microsoft 365 Defender, and Azure to implement Conditional access
keywords: conditional access, conditional, access, device risk, risk level, integration, intune integration
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Configure Conditional Access in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

This section guides you through all the steps you need to take to properly implement Conditional Access.

## Before you begin

> [!WARNING]
> It's important to note that Azure AD registered devices is not supported in this scenario.</br>
> Only Intune enrolled devices are supported.

You need to make sure that all your devices are enrolled in Intune. You can use any of the following options to enroll devices in Intune:

- IT Admin: For more information on how to enable auto-enrollment, see [Windows Enrollment](/intune/windows-enroll#enable-windows-10-automatic-enrollment)
- End-user: For more information on how to enroll your Windows 10 and Windows 11 device in Intune, see [Enroll your Windows 10 device in Intune](/intune/quickstart-enroll-windows-device)
- End-user alternative: For more information on joining an Azure AD domain, see [How to: Plan your Azure AD join implementation](/azure/active-directory/devices/azureadjoin-plan).

There are steps you'll need to take in Microsoft 365 Defender, the Intune portal, and Azure AD portal.

It's important to note the required roles to access these portals and implement Conditional access:

- **Microsoft 365 Defender** - You'll need to sign into the portal with a global administrator role to turn on the integration.
- **Intune** - You'll need to sign in to the portal with security administrator rights with management permissions.
- **Azure AD portal** - You'll need to sign in as a global administrator, security administrator, or Conditional Access administrator.

> [!NOTE]
> You'll need a Microsoft Intune environment, with Intune managed and Azure AD joined Windows 10 and Windows 11 devices.

Take the following steps to enable Conditional Access:

- Step 1: Turn on the Microsoft Intune connection from Microsoft 365 Defender
- Step 2: Turn on the Defender for Endpoint integration in Intune
- Step 3: Create the compliance policy in Intune
- Step 4: Assign the policy 
- Step 5: Create an Azure AD Conditional Access policy

### Step 1: Turn on the Microsoft Intune connection

1. In the navigation pane, select **Settings** \> **Endpoints** \> **General** \> **Advanced features** \> **Microsoft Intune connection**.
2. Toggle the Microsoft Intune setting to **On**.
3. Click **Save preferences**.

### Step 2: Turn on the Defender for Endpoint integration in Intune

1. Sign in to the [Azure portal](https://portal.azure.com).
2. Select **Device compliance** \> **Microsoft Defender ATP**.
3. Set **Connect Windows 10.0.15063+ devices to Microsoft Defender Advanced Threat Protection** to **On**.
4. Click **Save**.

### Step 3: Create the compliance policy in Intune

1. In the [Azure portal](https://portal.azure.com), select **All services**, filter on **Intune**, and select **Microsoft Intune**.
2. Select **Device compliance** \> **Policies** \> **Create policy**.
3. Enter a **Name** and **Description**.
4. In **Platform**, select **Windows 10 and later**.
5. In the **Device Health** settings, set **Require the device to be at or under the Device Threat Level** to your preferred level:

   - **Secured**: This level is the most secure. The device cannot have any existing threats and still access company resources. If any threats are found, the device is evaluated as noncompliant.
   - **Low**: The device is compliant if only low-level threats exist. Devices with medium or high threat levels are not compliant.
   - **Medium**: The device is compliant if the threats found on the device are low or medium. If high-level threats are detected, the device is determined as noncompliant.
   - **High**: This level is the least secure, and allows all threat levels. So devices that with high, medium or low threat levels are considered compliant.

6. Select **OK**, and **Create** to save your changes (and create the policy).

### Step 4: Assign the policy

1. In the [Azure portal](https://portal.azure.com), select **All services**, filter on **Intune**, and select **Microsoft Intune**.
2. Select **Device compliance** \> **Policies**> select your Microsoft Defender for Endpoint compliance policy.
3. Select **Assignments**.
4. Include or exclude your Azure AD groups to assign them the policy.
5. To deploy the policy to the groups, select **Save**. The user devices targeted by the policy are evaluated for compliance.

### Step 5: Create an Azure AD Conditional Access policy

1. In the [Azure portal](https://portal.azure.com), open **Azure Active Directory** \> **Conditional Access** \> **New policy**.
2. Enter a policy **Name**, and select **Users and groups**. Use the Include or Exclude options to add your groups for the policy, and select **Done**.
3. Select **Cloud apps**, and choose which apps to protect. For example, choose **Select apps**, and select **Office 365 SharePoint Online** and **Office 365 Exchange Online**. Select **Done** to save your changes.

4. Select **Conditions** \> **Client apps** to apply the policy to apps and browsers. For example, select **Yes**, and then enable **Browser** and **Mobile apps and desktop clients**. Select **Done** to save your changes.

5. Select **Grant** to apply Conditional Access based on device compliance. For example, select **Grant access** \> **Require device to be marked as compliant**. Choose **Select** to save your changes.

6. Select **Enable policy**, and then **Create** to save your changes.

> [!NOTE]
> You can use the Microsoft Defender for Endpoint app along with the Approved Client app and Compliant Device (Require device to be marked as compliant) controls in Azure AD Conditional Access policies. There's no exclusion required for the Microsoft Defender for Endpoint app while setting up Conditional Access. Although Microsoft Defender for Endpoint on Android & iOS (App ID - dd47d17a-3194-4d86-bfd5-c6ae6f5651e3) isn't an approved app, it is able to report device security posture in both these grant permissions. However, internally Defender requests **MSGraph/User.read** scope and **Intune Tunnel** scope (in case of Defender+Tunnel scenarios). So these scopes must be excluded*. To exclude MSGraph/User.read scope, any one cloud app can be excluded. To exclude Tunnel scope, you need to exclude 'Microsoft Tunnel Gateway'.These permission and exclusions enables the flow for compliance information to Conditional Access.

*Please note that applying a Conditional Access policy to All Cloud Apps could inadvertently block user access in some cases, so it's not recommended. Read more about [Conditional Access policies on Cloud Apps](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#all-cloud-apps)

For more information, see [Enforce compliance for Microsoft Defender for Endpoint with Conditional Access in Intune](/intune/advanced-threat-protection).

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-conditionalaccess-belowfoldlink)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
