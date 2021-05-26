---
title: "Set up Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Set up Basic Mobility and Security to secure and manage your users' mobile devices by performing actions such as remotely wiping a device."
---

# Set up Basic Mobility and Security

The built-in Basic Mobility and Security for Microsoft 365 helps you secure and manage users' mobile devices such as iPhones, iPads, Androids, and Windows phones. You can create and manage device security policies, remotely wipe a device, and view detailed device reports.

Have questions? For a FAQ to help address common questions, see [Basic Mobility and Security Frequently-asked questions (FAQ)](frequently-asked-questions.md). Be aware that you cannot use a delegated administrator account to manage Basic Mobility and Security. For more info, see [Partners: Offer delegated administration](https://support.microsoft.com/office/partners-offer-delegated-administration-26530dc0-ebba-415b-86b1-b55bc06b073e). 

Device management is part of the Security & Compliance Center so you'll need to go there to kick off Basic Mobility and Security setup.

## Activate the Basic Mobility and Security service

1. Sign in to Microsoft 365 with your global admin account.

2. Go to [Activate Basic Mobility and Security](https://admin.microsoft.com/EAdmin/Device/IntuneInventory.aspx).

   It can take some time to activate Basic Mobility and Security. When it finishes, you'll receive an email that explains the next steps to take.

## Set up Mobile Device Management

When the service is ready, complete the following steps to finish setup.

### Step 1: (Required) Configure domains for Basic Mobility and Security

If you don't have a custom domain associated with Microsoft 365 or if you're not managing Windows devices, you can skip this section. Otherwise, you'll need to add DNS records for the domain at your DNS host. If you've added the records already, as part of setting up your domain with Microsoft 365, you're all set. After you add the records, Microsoft 365 users in your organization who sign in on their Windows device with an email address that uses your custom domain are redirected to enroll in Basic Mobility and Security.

Need help setting up the records? Find your domain registrar and select the registrar name to go to step-by-step help for creating DNS record in the list provided in [Add DNS records to connect your domain](/office365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider). Use those instructions to create CNAME records described in [Simplify Windows enrollment without Azure AD Premium](/mem/intune/enrollment/windows-enroll#simplify-windows-enrollment-without-azure-ad-premium).

After you add the two CNAME records, go back to the Security & Compliance Center and go to **Data loss prevention** > **Device management** to complete the next step.

### Step 2: (Required) Configure an APNs Certificate for iOS devices

To manage iOS devices like iPad and iPhones, you need to create an APNs certificate.

1. Sign in to  Microsoft 365 with your global admin account.

2. In your browser type: [https://protection.office.com](https://protection.office.com/).

3. Select **Data loss prevention** > **Device management**, and choose **APNs Certificate for iOS devices**.

4. On the Apple Push Notification Certificate Settings page, choose **Next**.

5. Select **Download your CSR file** and save the Certificate signing request to somewhere on your computer that you'll remember. Select **Next**.

6. On the Create an APNs certificate page:

   - Select Apple APNS Portal to open the Apple Push Certificates Portal.
   - Sign in with an Apple ID.

     > [!IMPORTANT]
     > Use a company Apple ID associated with an email account that will remain with your organization even if the user who manages the account leaves. Save this ID because you'll need to use the same ID when it's time to renew the certificate.

   - Select Create a Certificate and accept the Terms of Use.
   - Browse to the Certificate signing request you downloaded to your computer from Microsoft 365 and selectUpload.
   - Download the APN certificate created by the Apple Push Certificate Portal to your computer.

     > [!TIP]
     > If you're having trouble downloading the certificate, refresh your browser.

7. Go back to Microsoft 365 and select **Next**.

8. Browse to the APN certificate you downloaded from the Apple Push Certificates Portal.

9. Select  **Finish**.

### Step 3: (Recommended) Set up multi-factor authentication

MFA helps secure the sign in to Microsoft 365 for mobile device enrollment by requiring a second form of authentication. Users are required to acknowledge a phone call, text message, or app notification on their mobile device after correctly entering their work account password. They can enroll their device only after this second form of authentication is completed. After user devices are enrolled in Basic Mobility and Security, users can access Microsoft 365 resources with only their work account.

To learn how to turn on MFA in the Azure AD portal, see [Set up multi-factor authentication](../security-and-compliance/set-up-multi-factor-authentication.md).

After you set up MFA, go back to the Security & Compliance Center and navigate to **Data loss prevention** > **Device management** > **Device policies** to complete the next step.

### Step 4: (Recommended) Manage device security policies

The next step is to create and deploy device security policies to help protect your Microsoft 365 organization data. For example, you can help prevent data loss if a user loses their device by creating a policy to lock devices after five minutes of inactivity and wipe devices after three sign-in failures.

1. Sign in to Microsoft 365 with your global admin account.

2. Select [Activate Mobile Device Management](https://admin.microsoft.com/EAdmin/Device/IntuneInventory.aspx). If the service is activated, instead the activation steps you'll see a link to [Manage Devices](https://admin.microsoft.com/adminportal/home#/MifoDevices) .

3. Go to **Device policies**.

   :::image type="content" source="../../media/basic-mobility-security/bms-4-policy.png" alt-text="Basic Security and Mobility policy settings":::

4. Create and deploy device security policies appropriate for your organization following the steps in [Create device security policies in Basic Mobility and Security](create-device-security-policies.md).

> [!TIP]
>
> - When you create a new policy, you might want to set the policy to allow access and report policy violation where a user device isn't compliant with the policy. This allows you see how many mobile devices are impacted by the policy without blocking access to Microsoft 365.
>
> - Before you deploy a new policy to everyone in your organization, we recommend you test it on the devices used by a small number of users.
>
> - Also, before you deploy policies, let your organization know the potential impacts of enrolling a device in Basic Mobility and Security. Depending on how you set up the policies, devices that don't comply with policies (non-compliant devices) could be blocked from accessing Microsoft 365. Non-compliant devices might also have apps installed, photos, and other personal information which, on an enrolled device, could be deleted if the device is wiped. For more info, see [Wipe a mobile device in Basic Mobility and Security](wipe-mobile-device.md).

## Make sure users enroll their devices

After you've created and deployed a mobile device management policy, each licensed Microsoft 365 user in your organization that the device policy applies receives an enrollment message the next time they sign into Microsoft 365 from their mobile device. They must complete the enrollment and activation steps before they can access Microsoft 365 email and documents. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md).

> [!IMPORTANT]
> If a user's preferred language isn't supported by the enrollment process, users might receive enrollment notification and steps on their mobile devices in another language. Not all languages supported in Microsoft 365 are currently supported for the enrollment process on mobile devices.

Users with Android or iOS devices are required to install the Company Portal app as part of the enrollment process.

## Related content

[Capabilities of Basic Mobility and Security](capabilities.md) (article)\
[Create device security policies in Basic Mobility and Security](create-device-security-policies.md) (article)