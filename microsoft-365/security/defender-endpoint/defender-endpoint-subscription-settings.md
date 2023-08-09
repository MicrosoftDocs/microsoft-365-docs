---
title: Manage your Microsoft Defender for Endpoint subscription settings across client devices (preview!)
description: Learn about your options for managing your Defender for Endpoint subscription settings. Choose Plan 1, Plan 2, or mixed mode.
keywords: Defender for Endpoint, choose plan 1, choose plan 2, mixed mode, device tag, endpoint protection, endpoint security, device security, cybersecurity
search.appverid: MET150  
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 03/06/2023
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.reviewer: shlomiakirav, efratka
f1.keywords: NOCSH  
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Manage Microsoft Defender for Endpoint subscription settings across client devices (preview!)

A [mixed-licensing scenario](defender-endpoint-plan-1-2.md#mixed-licensing-scenarios) is a situation in which an organization is using a mix of Defender for Endpoint Plan 1 and Plan 2 licenses. Until recently, mixed-licensing scenarios weren't supported; in cases of multiple subscriptions, the highest functional subscription would take precedence for your tenant. Now, **the ability to manage your subscription settings to accommodate mixed licensing scenarios across client devices is currently in preview**! These capabilities enable you to:

- **Set your tenant to mixed mode and tag devices** to determine which client devices will receive features and capabilities from each plan (we call this option *mixed mode*); **OR**,
- **Use the features and capabilities from one plan across all your client devices**. 

## [**Use mixed mode**](#tab/mixed)

## Set your tenant to mixed mode and tag devices

> [!IMPORTANT]
> - **Mixed-mode settings apply to client endpoints only**. Tagging server devices won't change their subscription state. All server devices running Windows Server or Linux should have appropriate licenses, such as [Defender for Servers](/azure/defender-for-cloud/plan-defender-for-servers-select-plan). See [Options for onboarding servers](defender-endpoint-plan-1-2.md#options-for-onboarding-servers).
> - **Make sure to follow the procedures in this article to try mixed-license scenarios in your environment**. Assigning user licenses in the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com)) doesn't set your tenant to mixed mode. 
> - Make sure that you have opted in to receive [preview features](preview.md).
> - **You should have active trial or paid licenses for both Defender for Endpoint Plan 1 and Plan 2**. 
> - To access license information, you must have one of the following roles assigned in Azure Active Directory (Azure AD):
>    - Global Admin
>    - Security Admin
>    - License Admin + MDE Admin  

1. As an admin, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Licenses**. Your usage report opens and displays information about your organization's Defender for Endpoint licenses.

3. Under **Subscription state**, select **Manage subscription settings**. 

   > [!NOTE]
   > If you don't see **Manage subscription settings**, at least one of the following conditions is true:
   > - You have Defender for Endpoint Plan 1 or Plan 2 (but not both); or 
   > - Mixed-license capabilities haven't rolled out to your tenant yet.

4. A **Subscription settings** flyout opens. Choose the option to use Defender for Endpoint Plan 1 and Plan 2. (No changes will occur until devices are tagged as per the next step.)

5. Tag the devices that should receive either Defender for Endpoint Plan 1 or Plan 2 capabilities. You can choose to tag your devices manually or by using a dynamic rule. [Learn more about device tagging](#more-details-about-device-tagging).

   | Method | Details |
   |:---|:---|
   | Tag devices manually | To tag devices manually, create a tag called `License MDE P1` and apply it to devices. To get help with this step, see [Create and manage device tags](machine-tags.md).<br/><br/>Note that devices that are tagged with the `License MDE P1` tag using the [registry key method](machine-tags.md#add-device-tags-by-setting-a-registry-key-value) will not receive downgraded functionality. If you want to tag devices by using the registry key method, use a dynamic rule instead of manual tagging.  |
   | Tag devices automatically by using a dynamic rule | *Dynamic rule functionality is new for mixed-license scenarios! It allows you to apply a dynamic and granular level of control over how you manage devices*. <br/><br/>To use a dynamic rule, you specify a set of criteria based on device name, domain, operating system platform, and/or device tags. Devices that meet the specified criteria will receive the Defender for Endpoint Plan 1 or Plan 2 capabilities according to your rule. <br/><br/>As you define your criteria, you can use the following condition operators: <br/>- `Equals` / `Not equals`<br/>- `Starts with`<br/>- `Contains` / `Does not contain` <br/><br/>For **Device name**, you can use freeform text.<br/><br/>For **Domain**, select from a list of domains.<br/><br/>For **OS platform**, select from a list of operating systems.<br/><br/>For **Tag**, use the freeform text option. Type the tag value that corresponds to the devices that should receive either Defender for Endpoint Plan 1 or Plan 2 capabilities. See the example in [More details about device tagging](#more-details-about-device-tagging). |
 
   Device tags are visible in the **Device inventory** view and in the [Defender for Endpoint APIs](apis-intro.md).

   > [!NOTE]
   > Dynamically added Defender for Endpoint P1 tags are not currently filterable in the Device inventory view. 

6. Save your rule and wait for up to three (3) hours for tags to be applied. Then, proceed to [Validate that a device is receiving only Defender for Endpoint Plan 1 capabilities](#validate-that-a-device-is-receiving-only-defender-for-endpoint-plan-1-capabilities).

### More details about device tagging

As described in [Tech Community blog: How to use tagging effectively](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/how-to-use-tagging-effectively-part-1/ba-p/1964058), device tagging provides you with granular control over devices. With device tags, you can:

- Display certain devices to individual users in the Microsoft 365 Defender portal so that they see only the devices they're responsible for.
- Include or exclude devices from specific security policies.
- Determine which devices should receive Defender for Endpoint Plan 1 or Plan 2 capabilities. (*This capability is now in preview!*)

For example, suppose that you want to use a tag called `VIP` for all the devices that should receive Defender for Endpoint Plan 2 capabilities. Here's what you would do:

1. Create a device tag called `VIP`, and apply it to all the devices that should receive Defender for Endpoint Plan 2 capabilities. Use one of the following methods to create your device tag:

   - [Add and manage device tags using the Microsoft 365 Defender portal](machine-tags.md#add-and-manage-device-tags-using-the-portal).
   - [Add device tags by setting a registry key value](machine-tags.md#add-device-tags-by-setting-a-registry-key-value).
   - [Add or remove machine tags by using the Defender for Endpoint API](add-or-remove-machine-tags.md).
   - [Add device tags by creating a custom profile in Microsoft Intune](machine-tags.md#add-device-tags-by-creating-a-custom-profile-in-microsoft-intune).

2. Set up a dynamic rule using the condition operator `Tag Does not contain VIP`. In this case, all devices that do not have the `VIP` tag will receive the `License MDE P1` tag and Defender for Endpoint Plan 1 capabilities. 


## [**Use one plan**](#tab/oneplan)

## Use the features and capabilities from one plan across all your devices

> [!IMPORTANT]
> - Make sure that you have opted in to receive [preview features](preview.md).
> - To access license information, you must have one of the following roles assigned in Azure Active Directory (Azure AD):
>    - Global Admin
>    - Security Admin
>    - License Admin + MDE Admin  

1. As a Security Admin or Global Admin, go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Settings** > **Endpoints** > **Licenses**.

3. Under **Subscription state**, select **Manage subscription settings**. 

   > [!NOTE]
   > If you don't see **Manage subscription settings**, at least one of the following conditions is true:
   > - You have Defender for Endpoint Plan 1 or Plan 2 (but not both); or 
   > - Mixed-license capabilities haven't rolled out to your tenant yet.

4. A **Subscription settings** flyout opens. Choose one plan for all users and devices, and then select **Done**. It can take up to three hours for your changes to be applied.

   If you chose to apply Defender for Endpoint Plan 1 to all devices, proceed to [Validate that devices are receiving only Defender for Endpoint Plan 1 capabilities](#validate-that-a-device-is-receiving-only-defender-for-endpoint-plan-1-capabilities).

---

## Validate that a device is receiving only Defender for Endpoint Plan 1 capabilities

After you have assigned Defender for Endpoint Plan 1 capabilities to some or all devices, you can verify that an individual device is receiving those capabilities.

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Assets** > **Devices**.

2. Select a device that is tagged with `License MDE P1`. You should see that Defender for Endpoint Plan 1 is assigned to the device.

> [!NOTE]
> Devices that are assigned Defender for Endpoint Plan 1 capabilities will not have vulnerabilities or security recommendations listed.

## Review license usage

The license usage report is estimated based on sign-in activities on the device. To reduce management overhead, there will not be a requirement for device-to-user mapping and assignment. Instead, the license report will provide a utilization estimation that is calculated based on the utilization seen across your organization. It might take up to one day for your usage report to reflect the active usage of your devices.

> [!IMPORTANT]
> To access license information, you must have one of the following roles assigned in Azure Active Directory (Azure AD):
> - Security Admin
> - Global Admin
> - License Admin + MDE Admin

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** > **Endpoints** > **Licenses**.

3. Review your available and assigned licenses. The calculation is based on detected users who have accessed devices that are onboarded to Defender for Endpoint.

## More resources

- [Compare Microsoft endpoint security plans](defender-endpoint-plan-1-2.md)
- [Licensing and product terms for Microsoft 365 subscriptions](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).
- [How to contact support for Defender for Endpoint](contact-support.md).
- [Get started with Microsoft Security (trial offers)](https://www.microsoft.com/security/business/get-started/start-free-trial)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md) (endpoint protection for small and medium-sized businesses)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
